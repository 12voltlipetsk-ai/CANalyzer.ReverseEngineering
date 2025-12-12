using System;
using System.Collections.Generic;
using System.Data;
using CANalyzer.Core.Models;

namespace CANalyzer.ReverseEngineering.Models
{
    /// <summary>
    /// Represents an Arbitration ID (ArbID) with its time series data
    /// Based on ArbID.py from CAN_Reverse_Engineering pipeline
    /// </summary>
    public class ArbID
    {
        public uint ID { get; set; }
        public string Name { get; set; } = string.Empty;
        public int DLC { get; set; }
        public int MessageCount { get; set; }
        public double FirstTimestamp { get; set; }
        public double LastTimestamp { get; set; }
        public double Frequency { get; set; }
        public bool IsCyclic { get; set; }
        public int EstimatedCycleTime { get; set; }
        public DataTable TimeSeriesData { get; set; }
        public Dictionary<int, DataColumn> ByteColumns { get; set; } = new Dictionary<int, DataColumn>();
        public Dictionary<string, Signal> Signals { get; set; } = new Dictionary<string, Signal>();
        public List<byte[]> RawDataSamples { get; set; } = new List<byte[]>();
        
        // J1979 Standard IDs (SAE Standard)
        public bool IsJ1979Standard { get; set; }
        public string J1979Parameter { get; set; } = string.Empty;
        public string J1979Description { get; set; } = string.Empty;
        
        public ArbID(uint id)
        {
            ID = id;
            Name = $"ID_{id:X}";
            TimeSeriesData = new DataTable();
            TimeSeriesData.Columns.Add("Timestamp", typeof(double));
        }
        
        public void AddDataSample(double timestamp, byte[] data)
        {
            if (data == null) return;
            
            // Update DLC if larger data encountered
            DLC = Math.Max(DLC, data.Length);
            
            // Add raw data sample
            RawDataSamples.Add(data);
            
            // Create row for time series data
            DataRow row = TimeSeriesData.NewRow();
            row["Timestamp"] = timestamp;
            
            // Ensure byte columns exist
            for (int i = 0; i < data.Length; i++)
            {
                string columnName = $"Byte_{i}";
                if (!TimeSeriesData.Columns.Contains(columnName))
                {
                    DataColumn column = new DataColumn(columnName, typeof(byte));
                    TimeSeriesData.Columns.Add(column);
                    ByteColumns[i] = column;
                }
                row[columnName] = data[i];
            }
            
            TimeSeriesData.Rows.Add(row);
            MessageCount++;
            
            // Update timestamps
            if (MessageCount == 1)
            {
                FirstTimestamp = timestamp;
            }
            LastTimestamp = timestamp;
            
            // Calculate frequency
            double timeSpan = LastTimestamp - FirstTimestamp;
            if (timeSpan > 0)
            {
                Frequency = MessageCount / timeSpan;
            }
        }
        
        public void CalculateFrequency()
        {
            // Этот метод уже вызывается в AddDataSample, но оставляем для явного пересчета
            if (MessageCount > 1)
            {
                double timeSpan = LastTimestamp - FirstTimestamp;
                if (timeSpan > 0)
                {
                    Frequency = MessageCount / timeSpan;
                }
                else
                {
                    Frequency = 0;
                }
                
                // Попробуем определить, является ли сообщение циклическим
                // (разница во времени между сообщениями относительно постоянна)
                IsCyclic = CalculateCyclicity();
                
                if (IsCyclic && Frequency > 0)
                {
                    EstimatedCycleTime = (int)(1000.0 / Frequency); // в миллисекундах
                }
            }
            else
            {
                Frequency = 0;
                IsCyclic = false;
                EstimatedCycleTime = 0;
            }
        }
        
        private bool CalculateCyclicity()
        {
            if (TimeSeriesData.Rows.Count < 10)
                return false;
                
            try
            {
                // Получаем временные метки
                double[] timestamps = GetTimestampSeries();
                if (timestamps.Length < 3)
                    return false;
                
                // Вычисляем интервалы между сообщениями
                double[] intervals = new double[timestamps.Length - 1];
                for (int i = 0; i < timestamps.Length - 1; i++)
                {
                    intervals[i] = timestamps[i + 1] - timestamps[i];
                }
                
                // Вычисляем среднее и стандартное отклонение
                double sum = 0;
                foreach (double interval in intervals)
                {
                    sum += interval;
                }
                double mean = sum / intervals.Length;
                
                double sumSquares = 0;
                foreach (double interval in intervals)
                {
                    double diff = interval - mean;
                    sumSquares += diff * diff;
                }
                double stdDev = Math.Sqrt(sumSquares / intervals.Length);
                
                // Если стандартное отклонение меньше 10% от среднего, считаем циклическим
                return stdDev < mean * 0.1;
            }
            catch
            {
                return false;
            }
        }
        
        public byte[] GetByteTimeSeries(int byteIndex)
        {
            if (byteIndex >= DLC || !TimeSeriesData.Columns.Contains($"Byte_{byteIndex}"))
                return Array.Empty<byte>();
                
            var result = new byte[TimeSeriesData.Rows.Count];
            for (int i = 0; i < TimeSeriesData.Rows.Count; i++)
            {
                result[i] = (byte)TimeSeriesData.Rows[i][$"Byte_{byteIndex}"];
            }
            return result;
        }
        
        public double[] GetTimestampSeries()
        {
            var result = new double[TimeSeriesData.Rows.Count];
            for (int i = 0; i < TimeSeriesData.Rows.Count; i++)
            {
                result[i] = (double)TimeSeriesData.Rows[i]["Timestamp"];
            }
            return result;
        }
        
        public override string ToString()
        {
            return $"{Name} ({ID:X}): {MessageCount} messages, {Frequency:F2} Hz, DLC: {DLC}";
        }
    }
}