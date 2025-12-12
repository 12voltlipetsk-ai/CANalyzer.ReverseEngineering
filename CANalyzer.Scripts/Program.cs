using System;
using System.IO;
using System.Linq;
using System.Collections.Generic;
using System.Threading.Tasks;
using CANalyzer.Core.Models;
using CANalyzer.Core.Parsers;
using CANalyzer.Core.Analyzers;
using CANalyzer.Core.DBC;
using CANalyzer.ML.NeuralNetworks;

namespace CANalyzer.Scripts
{
    class Program
    {
        static async Task Main(string[] args)
        {
            Console.WriteLine("=== CANalyzer Scripting Interface ===");
            Console.WriteLine();
            
            if (args.Length == 0)
            {
                PrintUsage();
                return;
            }
            
            string command = args[0].ToLower();
            
            switch (command)
            {
                case "analyze":
                    await AnalyzeCommandAsync(args);
                    break;
                    
                case "generate-dbc":
                    await GenerateDBCCommandAsync(args);
                    break;
                    
                case "train-model":
                    await TrainModelCommandAsync(args);
                    break;
                    
                case "batch-process":
                    await BatchProcessCommandAsync(args);
                    break;
                    
                default:
                    Console.WriteLine($"Unknown command: {command}");
                    PrintUsage();
                    break;
            }
        }
        
        static void PrintUsage()
        {
            Console.WriteLine("Usage:");
            Console.WriteLine("  CANalyzer.Scripts analyze <logfile> [format]");
            Console.WriteLine("  CANalyzer.Scripts generate-dbc <logfile> <output.dbc>");
            Console.WriteLine("  CANalyzer.Scripts train-model [output-model-path]");
            Console.WriteLine("  CANalyzer.Scripts batch-process <folder>");
            Console.WriteLine();
            Console.WriteLine("Formats: CSV, ASC, BLF");
        }
        
        static async Task AnalyzeCommandAsync(string[] args)
        {
            if (args.Length < 2)
            {
                Console.WriteLine("Error: Missing log file path");
                return;
            }
            
            string logPath = args[1];
            LogFormat format = args.Length > 2 ? 
                Enum.Parse<LogFormat>(args[2].ToUpper()) : 
                LogFormat.CSV;
            
            if (!File.Exists(logPath))
            {
                Console.WriteLine($"Error: File not found: {logPath}");
                return;
            }
            
            Console.WriteLine($"Analyzing {logPath} ({format})...");
            
            try
            {
                // 1. Загрузка лога
                var messages = await Task.Run(() => LogParser.Parse(logPath, format));
                Console.WriteLine($"  Loaded {messages.Count} messages");
                
                // 2. Статистический анализ
                var stats = await Task.Run(() => StatisticalAnalyzer.CalculateStatistics(messages));
                Console.WriteLine($"  Found {stats.Count} unique message IDs");
                
                // 3. Детекция сигналов
                int totalSignals = 0;
                var allSignals = new List<CANSignal>();
                
                var statsWithEnoughMessages = stats.Where(s => s.Count > 10).ToList();
                foreach (var stat in statsWithEnoughMessages)
                {
                    var signals = await Task.Run(() => SignalDetector.DetectSignals(messages, stat.ID));
                    if (signals.Any())
                    {
                        totalSignals += signals.Count;
                        allSignals.AddRange(signals);
                        Console.WriteLine($"    ID 0x{stat.ID:X}: {signals.Count} signals");
                    }
                }
                
                Console.WriteLine($"  Total signals detected: {totalSignals}");
                
                // 4. ML классификация
                if (allSignals.Any())
                {
                    var classifier = new SignalClassifier();
                    
                    foreach (var signal in allSignals)
                    {
                        signal.Classification = await Task.Run(() => classifier.ClassifySignal(signal));
                    }
                    
                    var byClassification = allSignals.GroupBy(s => s.Classification);
                    Console.WriteLine("  Signal classification:");
                    foreach (var group in byClassification)
                    {
                        Console.WriteLine($"    {group.Key}: {group.Count()} signals");
                    }
                }
                
                // 5. Экспорт статистики
                string statsFile = Path.ChangeExtension(logPath, ".stats.json");
                await Task.Run(() => ExportStatistics(stats, statsFile));
                Console.WriteLine($"  Statistics exported to: {statsFile}");
                
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                Console.WriteLine($"Stack trace: {ex.StackTrace}");
            }
        }
        
        static async Task GenerateDBCCommandAsync(string[] args)
        {
            if (args.Length < 3)
            {
                Console.WriteLine("Error: Missing parameters");
                Console.WriteLine("Usage: generate-dbc <logfile> <output.dbc>");
                return;
            }
            
            string logPath = args[1];
            string outputPath = args[2];
            
            if (!File.Exists(logPath))
            {
                Console.WriteLine($"Error: File not found: {logPath}");
                return;
            }
            
            Console.WriteLine($"Generating DBC from {logPath}...");
            
            try
            {
                // Определение формата по расширению
                string ext = Path.GetExtension(logPath).ToLower();
                LogFormat format = ext switch
                {
                    ".csv" => LogFormat.CSV,
                    ".asc" => LogFormat.ASC,
                    ".blf" => LogFormat.BLF,
                    _ => LogFormat.CSV
                };
                
                // Загрузка и анализ
                var messages = await Task.Run(() => LogParser.Parse(logPath, format));
                var stats = await Task.Run(() => StatisticalAnalyzer.CalculateStatistics(messages));
                
                // Генерация DBC
                await Task.Run(() => DBCGenerator.GenerateDBCForAllMessages(messages, stats, outputPath));
                
                Console.WriteLine($"DBC file generated: {outputPath}");
                
                var statsWithEnoughMessages = stats.Where(s => s.Count > 10).ToList();
                Console.WriteLine($"  Messages: {statsWithEnoughMessages.Count}");
                
                // Подсчет сигналов
                int signalCount = 0;
                foreach (var stat in statsWithEnoughMessages)
                {
                    var signals = await Task.Run(() => SignalDetector.DetectSignals(messages, stat.ID));
                    signalCount += signals.Count;
                }
                
                Console.WriteLine($"  Signals: {signalCount}");
                
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error: {ex.Message}");
                Console.WriteLine($"Stack trace: {ex.StackTrace}");
            }
        }
        
        static async Task TrainModelCommandAsync(string[] args)
        {
            Console.WriteLine("Training ML model...");
            
            try
            {
                var classifier = new SignalClassifier();
                
                // Загрузка тренировочных данных из OpenDBC репозиториев
                Console.WriteLine("Loading training data from OpenDBC repositories...");
                await classifier.LoadTrainingDataFromSources(
                    useCommaAI: true,
                    useBYD: true,
                    useJejuSoul: true,
                    useGENIVI: true,
                    useBukapilot: true
                );
                
                // Обучение модели
                Console.WriteLine("Training model...");
                
                int epochs = 100;
                int batchSize = 32;
                double learningRate = 0.001;
                
                await classifier.TrainModelAsync(epochs, batchSize, learningRate);
                
                // Сохранение модели
                string modelPath = args.Length > 1 ? args[1] : "signal_classifier.model";
                classifier.SaveModel(modelPath);
                
                Console.WriteLine($"Model trained and saved to: {modelPath}");
                
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error training model: {ex.Message}");
                Console.WriteLine($"Stack trace: {ex.StackTrace}");
            }
        }
        
        static async Task BatchProcessCommandAsync(string[] args)
        {
            if (args.Length < 2)
            {
                Console.WriteLine("Error: Missing folder path");
                return;
            }
            
            string folderPath = args[1];
            
            if (!Directory.Exists(folderPath))
            {
                Console.WriteLine($"Error: Folder not found: {folderPath}");
                return;
            }
            
            var logFiles = Directory.GetFiles(folderPath, "*.csv")
                .Concat(Directory.GetFiles(folderPath, "*.asc"))
                .Concat(Directory.GetFiles(folderPath, "*.blf"))
                .ToList();
            
            Console.WriteLine($"Found {logFiles.Count} log files in {folderPath}");
            Console.WriteLine();
            
            foreach (var logFile in logFiles)
            {
                Console.WriteLine($"Processing: {Path.GetFileName(logFile)}");
                
                try
                {
                    // Автоматическое определение формата
                    string ext = Path.GetExtension(logFile).ToLower();
                    LogFormat format = ext switch
                    {
                        ".csv" => LogFormat.CSV,
                        ".asc" => LogFormat.ASC,
                        ".blf" => LogFormat.BLF,
                        _ => LogFormat.CSV
                    };
                    
                    // Анализ
                    var messages = await Task.Run(() => LogParser.Parse(logFile, format));
                    var stats = await Task.Run(() => StatisticalAnalyzer.CalculateStatistics(messages));
                    
                    Console.WriteLine($"  Messages: {messages.Count}, IDs: {stats.Count}");
                    
                    // Генерация DBC
                    string dbcFile = Path.ChangeExtension(logFile, ".dbc");
                    await Task.Run(() => DBCGenerator.GenerateDBCForAllMessages(messages, stats, dbcFile));
                    
                    Console.WriteLine($"  DBC generated: {Path.GetFileName(dbcFile)}");
                    
                }
                catch (Exception ex)
                {
                    Console.WriteLine($"  Error: {ex.Message}");
                    Console.WriteLine($"  Stack trace: {ex.StackTrace}");
                }
                
                Console.WriteLine();
            }
        }
        
        static void ExportStatistics(List<MessageStatistics> stats, string filePath)
        {
            try
            {
                using var writer = new StreamWriter(filePath);
                writer.WriteLine("[");
                
                for (int i = 0; i < stats.Count; i++)
                {
                    var stat = stats[i];
                    writer.WriteLine("  {");
                    writer.WriteLine($"    \"ID\": \"0x{stat.ID:X}\",");
                    writer.WriteLine($"    \"Count\": {stat.Count},");
                    writer.WriteLine($"    \"Frequency\": {stat.Frequency:F2},");
                    writer.WriteLine($"    \"MinInterval\": {stat.MinInterval:F6},");
                    writer.WriteLine($"    \"MaxInterval\": {stat.MaxInterval:F6},");
                    writer.WriteLine($"    \"AvgInterval\": {stat.AvgInterval:F6},");
                    writer.WriteLine($"    \"Jitter\": {stat.Jitter:F6},");
                    writer.WriteLine($"    \"IsCyclic\": {stat.IsCyclic.ToString().ToLower()},");
                    writer.WriteLine($"    \"CycleTime\": {stat.EstimatedCycleTime}");
                    writer.Write(i < stats.Count - 1 ? "  }," : "  }");
                    writer.WriteLine();
                }
                
                writer.WriteLine("]");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error exporting statistics: {ex.Message}");
            }
        }
    }
}