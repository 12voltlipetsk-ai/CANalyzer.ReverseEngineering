using System;
using System.Collections.Generic;
using System.Linq;
using CANalyzer.Core.Models;

namespace CANalyzer.Core.Analyzers
{
    public class SignalDetector
    {
        private const int MIN_BYTE_LENGTH = 1;
        private const int MAX_BYTE_LENGTH = 8;
        
        public static List<CANSignal> DetectSignals(List<CANMessage> messages, uint messageId)
        {
            var messageGroup = messages.Where(m => m.ID == messageId).ToList();
            if (messageGroup.Count < 2)
                return new List<CANSignal>();
            
            var signals = new List<CANSignal>();
            var allData = messageGroup.Select(m => m.Data).ToList();
            
            // Анализ каждого байта отдельно
            for (int byteIndex = 0; byteIndex < 8; byteIndex++)
            {
                DetectSignalInByte(allData, byteIndex, messageId, signals);
            }
            
            // Анализ мультибайтовых сигналов
            DetectMultiByteSignals(allData, messageId, signals);
            
            return signals;
        }
        
        private static void DetectSignalInByte(List<byte[]> allData, int byteIndex, 
            uint messageId, List<CANSignal> signals)
        {
            var byteValues = allData.Select(data => 
                byteIndex < data.Length ? data[byteIndex] : (byte)0).ToList();
            
            // Проверка на статический байт
            if (byteValues.All(v => v == byteValues[0]))
                return;
            
            // Проверка на вариативность
            if (IsMeaningfulByte(byteValues))
            {
                var signal = new CANSignal
                {
                    Name = $"Byte_{byteIndex}",
                    StartBit = byteIndex * 8, // Переводим в биты для совместимости
                    Length = 8, // 1 байт = 8 бит
                    ByteOrder = ByteOrder.Intel,
                    ValueType = SignalValueType.Unsigned,
                    SignalType = DetermineByteSignalType(byteValues),
                    MessageID = messageId,
                    Minimum = byteValues.Min(),
                    Maximum = byteValues.Max(),
                    Unit = DetermineByteUnit(byteValues)
                };
                
                // Автоматическое определение factor и offset
                AutoDetermineScaling(signal, byteValues.Select(v => (uint)v).ToList());
                
                signals.Add(signal);
            }
        }
        
        private static void DetectMultiByteSignals(List<byte[]> allData, uint messageId, 
            List<CANSignal> signals)
        {
            int dataLength = allData[0].Length;
            
            for (int startByte = 0; startByte < dataLength; startByte++)
            {
                for (int byteLength = 2; byteLength <= 4 && startByte + byteLength <= dataLength; byteLength++)
                {
                    int bitLength = byteLength * 8;
                    int startBit = startByte * 8;
                    
                    var signalValues = allData.Select(data => 
                        ExtractBytes(data, startByte, byteLength)).ToList();
                    
                    if (IsMeaningfulMultiByteSignal(signalValues))
                    {
                        // Проверяем, не перекрывается ли с уже обнаруженными сигналами
                        bool overlaps = signals.Any(s => 
                            (startBit >= s.StartBit && startBit < s.StartBit + s.Length) ||
                            (startBit + bitLength > s.StartBit && startBit + bitLength <= s.StartBit + s.Length));
                        
                        if (!overlaps)
                        {
                            var signal = new CANSignal
                            {
                                Name = $"MultiByte_{startByte}_{byteLength}",
                                StartBit = startBit,
                                Length = bitLength,
                                ByteOrder = DetermineMultiByteOrder(startByte, byteLength),
                                ValueType = SignalValueType.Unsigned,
                                SignalType = DetermineMultiByteSignalType(signalValues),
                                MessageID = messageId,
                                Minimum = signalValues.Min(),
                                Maximum = signalValues.Max(),
                                Unit = DetermineMultiByteUnit(signalValues)
                            };
                            
                            AutoDetermineScaling(signal, signalValues);
                            
                            signals.Add(signal);
                        }
                    }
                }
            }
        }
        
        private static uint ExtractBytes(byte[] data, int startByte, int byteLength)
        {
            if (data.Length < startByte + byteLength)
                return 0;
            
            uint result = 0;
            
            // Для Intel (little-endian) порядок
            for (int i = 0; i < byteLength; i++)
            {
                result |= (uint)data[startByte + i] << (i * 8);
            }
            
            return result;
        }
        
        private static bool IsMeaningfulByte(List<byte> values)
        {
            if (values.Distinct().Count() < 2)
                return false;
            
            // Проверка на изменение значений
            double variance = CalculateVariance(values.Select(v => (double)v).ToList());
            return variance > 1.0; // Эмпирический порог
        }
        
        private static bool IsMeaningfulMultiByteSignal(List<uint> values)
        {
            if (values.Distinct().Count() < 2)
                return false;
            
            // Проверка на монотонное изменение
            bool increasing = true;
            bool decreasing = true;
            
            for (int i = 1; i < values.Count; i++)
            {
                if (values[i] < values[i - 1])
                    increasing = false;
                if (values[i] > values[i - 1])
                    decreasing = false;
            }
            
            double variance = CalculateVariance(values.Select(v => (double)v).ToList());
            return (increasing || decreasing) && variance > 10.0;
        }
        
        private static double CalculateVariance(List<double> values)
        {
            if (values.Count < 2)
                return 0;
            
            double mean = values.Average();
            double sumOfSquares = values.Sum(x => Math.Pow(x - mean, 2));
            return sumOfSquares / values.Count;
        }
        
        private static ByteOrder DetermineMultiByteOrder(int startByte, int byteLength)
        {
            // Упрощенная логика: предполагаем Intel для большинства случаев
            return ByteOrder.Intel;
        }
        
        private static SignalType DetermineByteSignalType(List<byte> values)
        {
            var distinctValues = values.Distinct().Count();
            
            if (distinctValues <= 2)
                return SignalType.Boolean;
            else if (distinctValues <= 10)
                return SignalType.Enum;
            else if (values.Any(v => v > 127)) // Проверка на возможные отрицательные значения
                return SignalType.Integer;
            else
                return SignalType.Integer;
        }
        
        private static SignalType DetermineMultiByteSignalType(List<uint> values)
        {
            var distinctValues = values.Distinct().Count();
            
            if (distinctValues <= 2)
                return SignalType.Boolean;
            else if (distinctValues <= 10)
                return SignalType.Enum;
            else
                return SignalType.Integer;
        }
        
        private static string DetermineByteUnit(List<byte> values)
        {
            double range = values.Max() - values.Min();
            
            if (range < 10)
                return "enum";
            else if (range < 100)
                return "%";
            else if (range < 200)
                return "temp";
            else
                return "raw";
        }
        
        private static string DetermineMultiByteUnit(List<uint> values)
        {
            double range = values.Max() - values.Min();
            
            if (range < 100)
                return "enum";
            else if (range < 1000)
                return "%";
            else if (range < 10000)
                return "RPM";
            else if (range < 65535)
                return "speed";
            else
                return "raw";
        }
        
        private static void AutoDetermineScaling(CANSignal signal, List<uint> rawValues)
        {
            double minRaw = rawValues.Min();
            double maxRaw = rawValues.Max();
            
            // Простое масштабирование
            signal.Factor = 1.0;
            signal.Offset = 0.0;
            
            if (signal.SignalType == SignalType.Integer || signal.SignalType == SignalType.Float)
            {
                double range = maxRaw - minRaw;
                
                if (range > 0)
                {
                    // Масштабируем к диапазону 0-100 или другому "красивому" диапазону
                    if (range < 256) // 8-битное значение
                    {
                        signal.Factor = 100.0 / 255.0;
                        signal.Offset = 0;
                    }
                    else if (range < 65536) // 16-битное значение
                    {
                        signal.Factor = 1000.0 / 65535.0;
                        signal.Offset = 0;
                    }
                    // Для других случаев оставляем factor=1
                }
            }
        }

        // Оптимизированная версия для больших данных
        public static List<CANSignal> DetectSignalsOptimized(List<CANMessage> messages, uint messageId, 
            int sampleLimit = 100)
        {
            var messageGroup = messages.Where(m => m.ID == messageId).ToList();
            if (messageGroup.Count < 2)
                return new List<CANSignal>();
            
            // Если слишком много сообщений, берем выборку для производительности
            if (messageGroup.Count > sampleLimit)
            {
                var step = messageGroup.Count / sampleLimit;
                messageGroup = messageGroup
                    .Where((m, index) => index % step == 0)
                    .Take(sampleLimit)
                    .ToList();
            }
            
            var signals = new List<CANSignal>();
            var allData = messageGroup.Select(m => m.Data).ToList();
            
            // Анализ каждого байта отдельно
            for (int byteIndex = 0; byteIndex < 8; byteIndex++)
            {
                DetectSignalInByte(allData, byteIndex, messageId, signals);
            }
            
            // Анализ мультибайтовых сигналов (ограничиваем для производительности)
            DetectMultiByteSignalsOptimized(allData, messageId, signals);
            
            return signals;
        }

        private static void DetectMultiByteSignalsOptimized(List<byte[]> allData, uint messageId, 
            List<CANSignal> signals)
        {
            int dataLength = allData[0].Length;
            
            // Ограничиваем поиск для производительности
            int maxStartByte = Math.Min(dataLength, 6);
            
            for (int startByte = 0; startByte < maxStartByte; startByte++)
            {
                for (int byteLength = 2; byteLength <= 4 && startByte + byteLength <= dataLength; byteLength++)
                {
                    int bitLength = byteLength * 8;
                    int startBit = startByte * 8;
                    
                    var signalValues = allData.Select(data => 
                        ExtractBytes(data, startByte, byteLength)).ToList();
                    
                    if (IsMeaningfulMultiByteSignal(signalValues))
                    {
                        // Проверяем, не перекрывается ли с уже обнаруженными сигналами
                        bool overlaps = signals.Any(s => 
                            (startBit >= s.StartBit && startBit < s.StartBit + s.Length) ||
                            (startBit + bitLength > s.StartBit && startBit + bitLength <= s.StartBit + s.Length));
                        
                        if (!overlaps)
                        {
                            var signal = new CANSignal
                            {
                                Name = $"MultiByte_{startByte}_{byteLength}",
                                StartBit = startBit,
                                Length = bitLength,
                                ByteOrder = DetermineMultiByteOrder(startByte, byteLength),
                                ValueType = SignalValueType.Unsigned,
                                SignalType = DetermineMultiByteSignalType(signalValues),
                                MessageID = messageId,
                                Minimum = signalValues.Min(),
                                Maximum = signalValues.Max(),
                                Unit = DetermineMultiByteUnit(signalValues)
                            };
                            
                            AutoDetermineScaling(signal, signalValues);
                            
                            signals.Add(signal);
                        }
                    }
                }
            }
        }
    }
}