using System;
using System.Collections.Generic;

namespace CANalyzer.Core.Models
{
    public class CANSignal
    {
        public string Name { get; set; } = string.Empty;
        public int StartBit { get; set; }
        public int Length { get; set; }
        public ByteOrder ByteOrder { get; set; }
        public SignalValueType ValueType { get; set; }
        public double Factor { get; set; } = 1.0;
        public double Offset { get; set; } = 0.0;
        public double Minimum { get; set; }
        public double Maximum { get; set; }
        public string Unit { get; set; } = string.Empty;
        public SignalType SignalType { get; set; }
        public SignalClassification Classification { get; set; }
        public uint MessageID { get; set; }
        public Dictionary<uint, string> ValueTable { get; set; } = new Dictionary<uint, string>();
        public List<double> RawValues { get; set; } = new List<double>();
        public List<double> PhysicalValues { get; set; } = new List<double>();
        
        public double GetPhysicalValue(double rawValue)
        {
            return rawValue * Factor + Offset;
        }
        
        public override string ToString()
        {
            return $"{Name} ({StartBit}:{Length}) {SignalType} [{Minimum:F2}..{Maximum:F2}] {Unit}";
        }
    }
}