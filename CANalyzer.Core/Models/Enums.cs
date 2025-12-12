using System;

namespace CANalyzer.Core.Models
{
    public enum SignalType
    {
        Unknown,
        Boolean,
        Integer,
        Float,
        Enum
    }

    public enum ByteOrder
    {
        Intel,
        Motorola
    }

    // ИЗМЕНЕНО: переименовано во избежание конфликта с System.ValueType
    public enum SignalValueType
    {
        Signed,
        Unsigned
    }

    public enum LogFormat
    {
        CSV,
        ASC,
        BLF,
        MDF
    }

    public enum SignalClassification
    {
        Unknown,
        Sensor,
        Actuator,
        Status,
        Diagnostic,
        Control
    }

    // ДОБАВЛЕНО: новый enum для типа CAN сообщения
    public enum CANType
    {
        CAN,
        CANFD
    }
}