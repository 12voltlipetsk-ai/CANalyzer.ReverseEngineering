using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using CANalyzer.Core.Models;
using CANalyzer.Core.Parsers;
using CANalyzer.ReverseEngineering.Models;

namespace CANalyzer.ReverseEngineering.Analyzers
{
    /// <summary>
    /// Pre-processes CAN log files and converts them to runtime data structures
    /// Based on PreProcessor.py from CAN_Reverse_Engineering pipeline
    /// </summary>
    public class CANPreProcessor
    {
        public Dictionary<uint, ArbID> ArbIDDictionary { get; private set; } = new Dictionary<uint, ArbID>();
        public DataTable CANDataFrame { get; private set; } = new DataTable();
        public List<J1979Parameter> J1979Parameters { get; private set; } = new List<J1979Parameter>();
        public int TotalMessages { get; private set; }
        public double TimeSpan { get; private set; }
        
        public void ProcessLogFile(string filePath, LogFormat format)
        {
            Debug.WriteLine($"Pre-processing {filePath} in {format} format...");
            
            try
            {
                // Проверяем существование файла
                if (!File.Exists(filePath))
                {
                    Debug.WriteLine($"File not found: {filePath}");
                    return;
                }
                
                Debug.WriteLine($"File exists, size: {new FileInfo(filePath).Length} bytes");
                
                // Clear previous data
                ArbIDDictionary.Clear();
                CANDataFrame = new DataTable();
                J1979Parameters.Clear();
                
                // Load messages using existing parser
                Debug.WriteLine($"Calling LogParser.Parse for format: {format}");
                var messages = LogParser.Parse(filePath, format);
                TotalMessages = messages.Count;
                
                Debug.WriteLine($"Loaded {TotalMessages} messages");
                
                if (TotalMessages == 0)
                {
                    Debug.WriteLine("No messages found in log file");
                    return;
                }
                
                // Логируем информацию о первых сообщениях
                Debug.WriteLine($"First 5 messages:");
                for (int i = 0; i < Math.Min(5, messages.Count); i++)
                {
                    var msg = messages[i];
                    Debug.WriteLine($"  Message {i}: ID=0x{msg.ID:X}, DLC={msg.DLC}, DataLength={msg.Data?.Length ?? 0}, Timestamp={msg.Timestamp:F6}");
                }
                
                // Create DataFrame structure
                InitializeDataFrame();
                
                // Process each message
                int processedCount = 0;
                foreach (var message in messages)
                {
                    try
                    {
                        Debug.WriteLine($"Processing message {processedCount}: ID=0x{message.ID:X}, DLC={message.DLC}, DataLength={message.Data?.Length ?? 0}");
                        ProcessMessage(message);
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine($"Error processing message {processedCount}: {ex.Message}");
                    }
                    
                    processedCount++;
                    
                    if (processedCount % 1000 == 0)
                    {
                        Debug.WriteLine($"Processed {processedCount}/{TotalMessages} messages...");
                    }
                }
                
                // Calculate time span
                if (messages.Count > 0)
                {
                    TimeSpan = messages.Last().Timestamp - messages.First().Timestamp;
                    Debug.WriteLine($"Time span: {TimeSpan:F3} seconds");
                }
                
                // Calculate frequencies for each ArbID
                CalculateArbIDFrequencies();
                
                // Identify J1979 standard parameters
                IdentifyJ1979Parameters();
                
                Debug.WriteLine($"Pre-processing complete: {ArbIDDictionary.Count} unique ArbIDs, {J1979Parameters.Count} J1979 parameters");
                
                // Логируем информацию о ArbID
                Debug.WriteLine("ArbID Dictionary contents:");
                foreach (var kvp in ArbIDDictionary)
                {
                    var arbId = kvp.Value;
                    Debug.WriteLine($"  ID=0x{arbId.ID:X}: Count={arbId.MessageCount}, DLC={arbId.DLC}, Frequency={arbId.Frequency:F2} Hz");
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error in ProcessLogFile: {ex.Message}");
                Debug.WriteLine($"StackTrace: {ex.StackTrace}");
                throw;
            }
        }
        
        private void InitializeDataFrame()
        {
            CANDataFrame.Columns.Add("Timestamp", typeof(double));
            CANDataFrame.Columns.Add("ArbID", typeof(string));
            CANDataFrame.Columns.Add("DLC", typeof(int));
            
            // Add byte columns (up to 64 bytes for CAN FD support)
            for (int i = 0; i < 64; i++)
            {
                CANDataFrame.Columns.Add($"Byte_{i}", typeof(byte));
            }
        }
        
        private void ProcessMessage(CANMessage message)
        {
            try
            {
                // Add to DataFrame
                DataRow row = CANDataFrame.NewRow();
                row["Timestamp"] = message.Timestamp;
                row["ArbID"] = $"0x{message.ID:X}";
                row["DLC"] = message.DLC;
                
                // Fill data bytes
                int bytesToCopy = Math.Min(message.Data.Length, 64);
                for (int i = 0; i < bytesToCopy; i++)
                {
                    row[$"Byte_{i}"] = message.Data[i];
                }
                
                // Fill remaining bytes with 0
                for (int i = bytesToCopy; i < 64; i++)
                {
                    row[$"Byte_{i}"] = (byte)0;
                }
                
                CANDataFrame.Rows.Add(row);
                
                // Add to ArbID dictionary
                if (!ArbIDDictionary.ContainsKey(message.ID))
                {
                    ArbIDDictionary[message.ID] = new ArbID(message.ID);
                    Debug.WriteLine($"  Created new ArbID: 0x{message.ID:X}");
                }
                
                ArbIDDictionary[message.ID].AddDataSample(message.Timestamp, message.Data);
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error processing message ID 0x{message.ID:X}: {ex.Message}");
            }
        }
        
        private void CalculateArbIDFrequencies()
        {
            Debug.WriteLine("Calculating ArbID frequencies...");
            
            foreach (var arbId in ArbIDDictionary.Values)
            {
                arbId.CalculateFrequency();
                Debug.WriteLine($"  ArbID 0x{arbId.ID:X}: Count={arbId.MessageCount}, Frequency={arbId.Frequency:F2} Hz");
            }
        }
        
        private void IdentifyJ1979Parameters()
        {
            Debug.WriteLine("Identifying J1979 standard parameters...");
            
            foreach (var arbId in ArbIDDictionary.Values)
            {
                if (J1979Parameter.IsJ1979ID(arbId.ID))
                {
                    arbId.IsJ1979Standard = true;
                    
                    var j1979Param = J1979Parameter.GetParameter(arbId.ID);
                    if (j1979Param != null)
                    {
                        arbId.J1979Parameter = j1979Param.Name;
                        arbId.J1979Description = j1979Param.Description;
                        J1979Parameters.Add(j1979Param);
                        
                        Debug.WriteLine($"  Found J1979: {arbId.ID:X} = {j1979Param.Name} ({j1979Param.Description})");
                    }
                }
            }
        }
        
        public ArbID? GetArbID(uint id)
        {
            return ArbIDDictionary.TryGetValue(id, out var arbId) ? arbId : null;
        }
        
        public List<ArbID> GetMostFrequentArbIDs(int count = 20)
        {
            return ArbIDDictionary.Values
                .OrderByDescending(a => a.MessageCount)
                .Take(count)
                .ToList();
        }
        
        public DataTable GetArbIDTimeSeries(uint id, int byteIndex)
        {
            var table = new DataTable();
            table.Columns.Add("Timestamp", typeof(double));
            table.Columns.Add($"Byte_{byteIndex}", typeof(byte));
            
            var arbId = GetArbID(id);
            if (arbId == null || byteIndex >= arbId.DLC)
                return table;
            
            foreach (DataRow row in arbId.TimeSeriesData.Rows)
            {
                DataRow newRow = table.NewRow();
                newRow["Timestamp"] = row["Timestamp"];
                newRow[$"Byte_{byteIndex}"] = row[$"Byte_{byteIndex}"];
                table.Rows.Add(newRow);
            }
            
            return table;
        }
    }
}