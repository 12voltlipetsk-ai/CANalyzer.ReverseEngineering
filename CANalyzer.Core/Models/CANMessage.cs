using System;
using System.Collections.Generic;

namespace CANalyzer.Core.Models
{
    public class CANMessage
    {
        public uint ID { get; set; }
        public string Name { get; set; } = string.Empty;
        public int DLC { get; set; }
        public byte[] Data { get; set; } = Array.Empty<byte>();
        public double Timestamp { get; set; }
        public string Channel { get; set; } = "CAN1";
        public bool IsExtended { get; set; }
        public bool IsRemoteFrame { get; set; }
        public List<CANSignal> Signals { get; set; } = new List<CANSignal>();
        public int CycleTime { get; set; }
        public double Frequency { get; set; }
        
        // ДОБАВЛЕНО: Свойство для отображения данных в шестнадцатеричном формате
        public string DataHex 
        { 
            get
            {
                if (Data == null || Data.Length == 0)
                    return string.Empty;
                    
                int bytesToShow = Math.Min(DLC, Data.Length);
                return BitConverter.ToString(Data, 0, bytesToShow).Replace("-", " ");
            }
        }
        
        // ДОБАВЛЕНО: Свойство для отображения количества сигналов
        public int SignalsCount => Signals?.Count ?? 0;
        
        // ДОБАВЛЕНО: Свойство для типа CAN (CAN или CANFD)
        public CANType CANType { get; set; } = CANType.CAN;

        public override string ToString()
        {
            return $"{Timestamp:F6} {Channel} {ID:X3} [{DLC}] {DataHex}";
        }
    }
}