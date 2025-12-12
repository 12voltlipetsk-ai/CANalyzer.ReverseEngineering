using System;
using System.Collections.Generic;
using System.Linq;

namespace CANalyzer.ReverseEngineering.Models
{
    /// <summary>
    /// Represents a detected signal in the CAN data
    /// Based on Signal.py from CAN_Reverse_Engineering pipeline
    /// </summary>
    public class Signal
    {
        public string Name { get; set; } = string.Empty;
        public string ArbIDName { get; set; } = string.Empty;
        public uint ArbID { get; set; }
        public int ByteIndex { get; set; }
        public int StartBit { get; set; }
        public int Length { get; set; } = 8; // Default to byte-aligned
        public Core.Models.SignalType SignalType { get; set; }
        public Core.Models.SignalValueType ValueType { get; set; }
        public double Factor { get; set; } = 1.0;
        public double Offset { get; set; } = 0.0;
        public double Minimum { get; set; }
        public double Maximum { get; set; }
        public string Unit { get; set; } = string.Empty;
        public List<double> TimeSeries { get; set; } = new List<double>();
        public List<double> Timestamps { get; set; } = new List<double>();
        public double[] RawBytes { get; set; } = Array.Empty<double>();
        public string ClusterLabel { get; set; } = string.Empty;
        public int ClusterId { get; set; } = -1;
        
        // Statistical properties
        public double Mean { get; set; }
        public double StdDev { get; set; }
        public double Variance { get; set; }
        public double Range { get; set; }
        public int UniqueValues { get; set; }
        
        // For correlation analysis
        public Dictionary<string, double> Correlations { get; set; } = new Dictionary<string, double>();
        
        public void CalculateStatistics()
        {
            if (!TimeSeries.Any()) return;
            
            Mean = TimeSeries.Average();
            Variance = TimeSeries.Select(v => Math.Pow(v - Mean, 2)).Average();
            StdDev = Math.Sqrt(Variance);
            Minimum = TimeSeries.Min();
            Maximum = TimeSeries.Max();
            Range = Maximum - Minimum;
            UniqueValues = TimeSeries.Distinct().Count();
        }
        
        public bool IsBoolean()
        {
            return UniqueValues <= 2;
        }
        
        public bool IsEnum()
        {
            return UniqueValues > 2 && UniqueValues <= 10;
        }
        
        public bool IsContinuous()
        {
            return UniqueValues > 10 && Range > 10;
        }
        
        public void AutoDetermineType()
        {
            if (IsBoolean())
            {
                SignalType = Core.Models.SignalType.Boolean;
                Unit = "bool";
            }
            else if (IsEnum())
            {
                SignalType = Core.Models.SignalType.Enum;
                Unit = "enum";
            }
            else if (IsContinuous())
            {
                SignalType = Core.Models.SignalType.Integer;
                
                // Auto-determine unit based on statistical properties
                if (Range < 100)
                    Unit = "%";
                else if (Range < 1000)
                    Unit = "RPM";
                else if (Range < 10000)
                    Unit = "speed";
                else
                    Unit = "raw";
            }
            else
            {
                SignalType = Core.Models.SignalType.Unknown;
                Unit = "raw";
            }
        }
        
        public override string ToString()
        {
            return $"{Name} ({ArbIDName}:Byte{ByteIndex}) [{SignalType}] {Minimum:F2}-{Maximum:F2} {Unit}";
        }
    }
}