using System;
using System.Collections.Generic;
using System.Linq;
using CANalyzer.ReverseEngineering.Models;

namespace CANalyzer.ReverseEngineering.Analyzers
{
    /// <summary>
    /// Performs lexical analysis to detect signals in CAN data
    /// Based on LexicalAnalysis.py from CAN_Reverse_Engineering pipeline
    /// </summary>
    public class CANLexicalAnalyzer
    {
        public Dictionary<string, Signal> DetectedSignals { get; private set; } = new Dictionary<string, Signal>();
        public List<Signal> SignalList { get; private set; } = new List<Signal>();
        
        public void Analyze(Dictionary<uint, ArbID> arbIDDictionary, int minSamples = 10)
        {
            Console.WriteLine("Starting lexical analysis...");
            DetectedSignals.Clear();
            SignalList.Clear();
            
            // Analyze each ArbID
            foreach (var arbId in arbIDDictionary.Values)
            {
                if (arbId.MessageCount < minSamples)
                {
                    Console.WriteLine($"  Skipping {arbId.Name} (only {arbId.MessageCount} samples)");
                    continue;
                }
                
                Console.WriteLine($"  Analyzing {arbId.Name} ({arbId.MessageCount} samples, DLC: {arbId.DLC})");
                
                // Analyze each byte position
                for (int byteIndex = 0; byteIndex < arbId.DLC; byteIndex++)
                {
                    AnalyzeBytePosition(arbId, byteIndex);
                }
                
                // Analyze multi-byte signals (2-4 bytes)
                for (int startByte = 0; startByte < arbId.DLC - 1; startByte++)
                {
                    for (int byteLength = 2; byteLength <= 4 && startByte + byteLength <= arbId.DLC; byteLength++)
                    {
                        AnalyzeMultiByteSignal(arbId, startByte, byteLength);
                    }
                }
            }
            
            Console.WriteLine($"Lexical analysis complete: {DetectedSignals.Count} signals detected");
            
            // Calculate statistics for each signal
            foreach (var signal in SignalList)
            {
                signal.CalculateStatistics();
                signal.AutoDetermineType();
            }
        }
        
        private void AnalyzeBytePosition(ArbID arbId, int byteIndex)
        {
            var byteData = arbId.GetByteTimeSeries(byteIndex);
            if (byteData.Length < 10) return;
            
            // Calculate basic statistics
            var values = byteData.Select(b => (double)b).ToArray();
            double mean = values.Average();
            double variance = values.Select(v => Math.Pow(v - mean, 2)).Average();
            double stdDev = Math.Sqrt(variance);
            double min = values.Min();
            double max = values.Max();
            int uniqueValues = values.Distinct().Count();
            
            // Check if this byte contains meaningful data
            if (uniqueValues < 2 || (max - min) < 2)
            {
                // Static or nearly static data - not a signal
                return;
            }
            
            // Create signal
            string signalName = $"{arbId.Name}_Byte{byteIndex}";
            var signal = new Signal
            {
                Name = signalName,
                ArbIDName = arbId.Name,
                ArbID = arbId.ID,
                ByteIndex = byteIndex,
                StartBit = byteIndex * 8,
                Length = 8,
                TimeSeries = values.ToList(),
                Timestamps = arbId.GetTimestampSeries().ToList(),
                RawBytes = values,
                Mean = mean,
                StdDev = stdDev,
                Variance = variance,
                Minimum = min,
                Maximum = max,
                UniqueValues = uniqueValues
            };
            
            DetectedSignals[signalName] = signal;
            SignalList.Add(signal);
            
            Console.WriteLine($"    Detected signal: {signalName} ({uniqueValues} unique values, range: {min}-{max})");
        }
        
        private void AnalyzeMultiByteSignal(ArbID arbId, int startByte, int byteLength)
        {
            // Extract multi-byte values (little-endian)
            var timestamps = arbId.GetTimestampSeries();
            if (timestamps.Length < 10) return;
            
            List<double> multiByteValues = new List<double>();
            
            for (int i = 0; i < timestamps.Length; i++)
            {
                uint value = 0;
                for (int j = 0; j < byteLength; j++)
                {
                    if (startByte + j < arbId.DLC)
                    {
                        byte byteValue = arbId.GetByteTimeSeries(startByte + j)[i];
                        value |= (uint)(byteValue << (j * 8));
                    }
                }
                multiByteValues.Add(value);
            }
            
            // Calculate statistics
            var values = multiByteValues.ToArray();
            double mean = values.Average();
            double variance = values.Select(v => Math.Pow(v - mean, 2)).Average();
            double stdDev = Math.Sqrt(variance);
            double min = values.Min();
            double max = values.Max();
            int uniqueValues = values.Distinct().Count();
            
            // Check if meaningful
            if (uniqueValues < 5 || (max - min) < 10)
                return;
            
            // Check for monotonic patterns
            bool increasing = true;
            bool decreasing = true;
            for (int i = 1; i < values.Length; i++)
            {
                if (values[i] <= values[i - 1]) increasing = false;
                if (values[i] >= values[i - 1]) decreasing = false;
            }
            
            // Only keep if shows clear pattern
            if (!increasing && !decreasing && uniqueValues < values.Length / 2)
                return;
            
            string signalName = $"{arbId.Name}_Bytes{startByte}-{startByte + byteLength - 1}";
            var signal = new Signal
            {
                Name = signalName,
                ArbIDName = arbId.Name,
                ArbID = arbId.ID,
                ByteIndex = startByte,
                StartBit = startByte * 8,
                Length = byteLength * 8,
                TimeSeries = values.ToList(),
                Timestamps = timestamps.ToList(),
                RawBytes = values,
                Mean = mean,
                StdDev = stdDev,
                Variance = variance,
                Minimum = min,
                Maximum = max,
                UniqueValues = uniqueValues
            };
            
            DetectedSignals[signalName] = signal;
            SignalList.Add(signal);
            
            Console.WriteLine($"    Detected multi-byte signal: {signalName} ({byteLength} bytes, {uniqueValues} unique values)");
        }
        
        public List<Signal> GetSignalsByArbID(uint arbId)
        {
            return SignalList.Where(s => s.ArbID == arbId).ToList();
        }
        
        public List<Signal> GetBooleanSignals()
        {
            return SignalList.Where(s => s.IsBoolean()).ToList();
        }
        
        public List<Signal> GetEnumSignals()
        {
            return SignalList.Where(s => s.IsEnum()).ToList();
        }
        
        public List<Signal> GetContinuousSignals()
        {
            return SignalList.Where(s => s.IsContinuous()).ToList();
        }
        
        public Signal? GetSignal(string name)
        {
            return DetectedSignals.TryGetValue(name, out var signal) ? signal : null;
        }
    }
}