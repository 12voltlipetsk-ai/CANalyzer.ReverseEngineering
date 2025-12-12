using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using CANalyzer.Core.Models;
using CANalyzer.Core.Analyzers; // ДОБАВЛЕНО: для доступа к SignalDetector

namespace CANalyzer.Core.DBC
{
    public class DBCGenerator
    {
        public static string GenerateDBCFile(List<CANMessage> messages, 
            Dictionary<uint, List<CANSignal>> messageSignals)
        {
            var sb = new StringBuilder();
            
            // Заголовок
            sb.AppendLine("VERSION \"CANalyzer Generated DBC\"");
            sb.AppendLine();
            sb.AppendLine("NS_ :");
            sb.AppendLine("    NS_DESC_");
            sb.AppendLine("    CM_");
            sb.AppendLine("    BA_DEF_");
            sb.AppendLine("    BA_");
            sb.AppendLine("    VAL_");
            sb.AppendLine("    CAT_DEF_");
            sb.AppendLine("    CAT_");
            sb.AppendLine("    FILTER");
            sb.AppendLine("    BA_DEF_DEF_");
            sb.AppendLine("    EV_DATA_");
            sb.AppendLine("    ENVVAR_DATA_");
            sb.AppendLine("    SGTYPE_");
            sb.AppendLine("    SGTYPE_VAL_");
            sb.AppendLine("    BA_DEF_SGTYPE_");
            sb.AppendLine("    BA_SGTYPE_");
            sb.AppendLine("    SIG_TYPE_REF_");
            sb.AppendLine("    VAL_TABLE_");
            sb.AppendLine("    SIG_GROUP_");
            sb.AppendLine("    SIG_VALTYPE_");
            sb.AppendLine("    SIGTYPE_VALTYPE_");
            sb.AppendLine("    BO_TX_BU_");
            sb.AppendLine("    BA_DEF_REL_");
            sb.AppendLine("    BA_REL_");
            sb.AppendLine("    BA_DEF_DEF_REL_");
            sb.AppendLine("    BU_SG_REL_");
            sb.AppendLine("    BU_EV_REL_");
            sb.AppendLine("    BU_BO_REL_");
            sb.AppendLine();
            
            // Сообщения
            foreach (var msgId in messageSignals.Keys)
            {
                var message = messages.FirstOrDefault(m => m.ID == msgId);
                if (message == null) continue;
                
                var signals = messageSignals[msgId];
                int dlc = message.DLC;
                
                sb.AppendLine($"BO_ {msgId} Message_{msgId:X}: {dlc} Vector__XXX");
                
                foreach (var signal in signals)
                {
                    string byteOrder = signal.ByteOrder == ByteOrder.Intel ? "0" : "1";
                    // ИСПРАВЛЕНО: SignalValueType вместо ValueType
                    string valueType = signal.ValueType == SignalValueType.Signed ? "-" : "+";
                    
                    sb.AppendLine($" SG_ {signal.Name} : {signal.StartBit}|{signal.Length}@{byteOrder}{valueType} " +
                                 $"({signal.Factor},{signal.Offset}) [{signal.Minimum}|{signal.Maximum}] \"{signal.Unit}\" Vector__XXX");
                }
                
                sb.AppendLine();
            }
            
            // Таблицы значений для enum сигналов
            foreach (var msgId in messageSignals.Keys)
            {
                var signals = messageSignals[msgId];
                
                foreach (var signal in signals.Where(s => s.SignalType == SignalType.Enum))
                {
                    if (signal.ValueTable.Any())
                    {
                        sb.Append($"VAL_ {msgId} {signal.Name} ");
                        
                        foreach (var entry in signal.ValueTable)
                        {
                            sb.Append($" {entry.Key} \"{entry.Value}\"");
                        }
                        
                        sb.AppendLine(" ;");
                    }
                }
            }
            
            return sb.ToString();
        }
        
        public static void SaveDBCToFile(string dbcContent, string filePath)
        {
            File.WriteAllText(filePath, dbcContent, Encoding.UTF8);
        }
        
        public static void GenerateDBCForAllMessages(List<CANMessage> messages, 
            List<MessageStatistics> statistics, string outputPath)
        {
            var messageSignals = new Dictionary<uint, List<CANSignal>>();
            
            // Детекция сигналов для каждого сообщения
            foreach (var stat in statistics.Where(s => s.Count > 10))
            {
                // ИСПРАВЛЕНО: Доступ к SignalDetector через полное пространство имен
                var signals = SignalDetector.DetectSignals(messages, stat.ID);
                if (signals.Any())
                {
                    messageSignals[stat.ID] = signals;
                }
            }
            
            // Генерация DBC
            string dbcContent = GenerateDBCFile(messages, messageSignals);
            SaveDBCToFile(dbcContent, outputPath);
        }
    }
}