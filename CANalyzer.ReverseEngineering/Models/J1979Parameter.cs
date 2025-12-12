namespace CANalyzer.ReverseEngineering.Models
{
    /// <summary>
    /// SAE J1979 standard parameters for OBD-II
    /// </summary>
    public class J1979Parameter
    {
        public uint ID { get; set; }
        public string Name { get; set; } = string.Empty;
        public string Description { get; set; } = string.Empty;
        public string Unit { get; set; } = string.Empty;
        public double ScalingFactor { get; set; } = 1.0;
        public double Offset { get; set; } = 0.0;
        public int BytePosition { get; set; }
        public int Length { get; set; } = 1; // Usually 1-2 bytes
        
        // Common J1979 PIDs
        public static readonly Dictionary<uint, J1979Parameter> StandardParameters = new()
        {
            // Mode 01 PIDs
            { 0x201, new J1979Parameter { ID = 0x201, Name = "EngineRPM", Description = "Engine RPM", Unit = "RPM", ScalingFactor = 0.25, Offset = 0.0, BytePosition = 0, Length = 2 } },
            { 0x203, new J1979Parameter { ID = 0x203, Name = "VehicleSpeed", Description = "Vehicle Speed", Unit = "km/h", ScalingFactor = 1.0, Offset = 0.0, BytePosition = 0, Length = 1 } },
            { 0x205, new J1979Parameter { ID = 0x205, Name = "EngineCoolantTemp", Description = "Engine Coolant Temperature", Unit = "°C", ScalingFactor = 1.0, Offset = -40.0, BytePosition = 0, Length = 1 } },
            { 0x20B, new J1979Parameter { ID = 0x20B, Name = "IntakeManifoldPressure", Description = "Intake Manifold Pressure", Unit = "kPa", ScalingFactor = 1.0, Offset = 0.0, BytePosition = 0, Length = 1 } },
            { 0x20C, new J1979Parameter { ID = 0x20C, Name = "EngineLoad", Description = "Engine Load", Unit = "%", ScalingFactor = 100.0/255.0, Offset = 0.0, BytePosition = 0, Length = 1 } },
            { 0x210, new J1979Parameter { ID = 0x210, Name = "MAFAirFlowRate", Description = "MAF Air Flow Rate", Unit = "g/s", ScalingFactor = 0.01, Offset = 0.0, BytePosition = 0, Length = 2 } },
            
            // Mode 09 PIDs
            { 0x901, new J1979Parameter { ID = 0x901, Name = "VIN", Description = "Vehicle Identification Number", Unit = "string", BytePosition = 0, Length = 17 } },
            { 0x902, new J1979Parameter { ID = 0x902, Name = "CalibrationID", Description = "Calibration ID", Unit = "string", BytePosition = 0, Length = 16 } },
        };
        
        public static bool IsJ1979ID(uint id)
        {
            // J1979 IDs typically in ranges: 0x7E0-0x7EF (transmission), 0x7E8-0x7EF (reception)
            return (id >= 0x7E0 && id <= 0x7EF) || StandardParameters.ContainsKey(id);
        }
        
        public static J1979Parameter? GetParameter(uint id)
        {
            return StandardParameters.TryGetValue(id, out var param) ? param : null;
        }
    }
}