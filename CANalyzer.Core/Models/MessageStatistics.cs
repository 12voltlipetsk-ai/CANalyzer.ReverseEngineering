using System;
using System.Collections.Generic;

namespace CANalyzer.Core.Models
{
    public class MessageStatistics
    {
        public uint ID { get; set; }
        public string Name { get; set; } = string.Empty;
        public long Count { get; set; }
        public double Frequency { get; set; }
        public double MinInterval { get; set; }
        public double MaxInterval { get; set; }
        public double AvgInterval { get; set; }
        public double FirstSeen { get; set; }
        public double LastSeen { get; set; }
        public Dictionary<byte, long> DataPatterns { get; set; } = new Dictionary<byte, long>();
        public List<double> Timestamps { get; set; } = new List<double>();
        public double Jitter { get; set; }
        public bool IsCyclic { get; set; }
        public int EstimatedCycleTime { get; set; }
    }
}