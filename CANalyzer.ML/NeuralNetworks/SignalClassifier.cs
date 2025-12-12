// CANalyzer.ML/NeuralNetworks/SignalClassifier.cs
using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;
using System.Net.Http;
using System.Threading.Tasks;
using CANalyzer.Core.Models;

namespace CANalyzer.ML.NeuralNetworks
{
    public class SignalClassifier
    {
        private readonly HttpClient _httpClient;
        
        public SignalClassifier()
        {
            _httpClient = new HttpClient();
        }
        
        // Упрощенная версия без ML зависимостей
        public SignalClassification ClassifySignal(CANSignal signal)
        {
            if (signal.RawValues == null || signal.RawValues.Count < 10)
                return SignalClassification.Unknown;
            
            // Простая эвристическая классификация без ML
            return ClassifyByHeuristics(signal);
        }
        
        private SignalClassification ClassifyByHeuristics(CANSignal signal)
        {
            var values = signal.PhysicalValues ?? new List<double>();
            
            if (values.Count == 0)
                return SignalClassification.Unknown;
            
            // Анализ имени сигнала
            string nameLower = signal.Name.ToLower();
            
            if (nameLower.Contains("temp") || nameLower.Contains("temperature"))
                return SignalClassification.Sensor;
            
            if (nameLower.Contains("rpm") || nameLower.Contains("speed") || nameLower.Contains("velocity"))
                return SignalClassification.Sensor;
            
            if (nameLower.Contains("voltage") || nameLower.Contains("current") || nameLower.Contains("ampere"))
                return SignalClassification.Sensor;
            
            if (nameLower.Contains("pressure") || nameLower.Contains("force") || nameLower.Contains("torque"))
                return SignalClassification.Sensor;
            
            if (nameLower.Contains("position") || nameLower.Contains("angle") || nameLower.Contains("distance"))
                return SignalClassification.Sensor;
            
            if (nameLower.Contains("status") || nameLower.Contains("state") || nameLower.Contains("mode"))
                return SignalClassification.Status;
            
            if (nameLower.Contains("error") || nameLower.Contains("fault") || nameLower.Contains("warning"))
                return SignalClassification.Diagnostic;
            
            if (nameLower.Contains("command") || nameLower.Contains("control") || nameLower.Contains("setpoint"))
                return SignalClassification.Control;
            
            if (nameLower.Contains("actuator") || nameLower.Contains("motor") || nameLower.Contains("valve"))
                return SignalClassification.Actuator;
            
            // Анализ значений
            if (signal.SignalType == SignalType.Boolean)
                return SignalClassification.Status;
            
            if (signal.SignalType == SignalType.Enum)
                return SignalClassification.Status;
            
            // Анализ статистики значений
            if (values.Count >= 10)
            {
                double mean = values.Average();
                double variance = values.Select(v => Math.Pow(v - mean, 2)).Average();
                double stdDev = Math.Sqrt(variance);
                
                // Если значения почти не меняются - статус
                if (stdDev < 0.01 * mean)
                    return SignalClassification.Status;
                
                // Если значения постоянно меняются - сенсор
                if (stdDev > 0.1 * mean)
                    return SignalClassification.Sensor;
            }
            
            return SignalClassification.Unknown;
        }
        
        // Простые методы для совместимости
        public async Task LoadTrainingDataFromSources(bool useCommaAI, bool useBYD, 
            bool useJejuSoul, bool useGENIVI, bool useBukapilot)
        {
            // Заглушка для совместимости
            await Task.CompletedTask;
        }
        
        public async Task TrainModelAsync(int epochs = 100, int batchSize = 32, double learningRate = 0.001)
        {
            // Заглушка для совместимости
            await Task.CompletedTask;
        }
        
        public void SaveModel(string path)
        {
            try
            {
                // Просто создаем пустой файл для совместимости
                File.WriteAllText(path, "Simple heuristic model - no ML dependencies");
            }
            catch { }
        }
        
        public void LoadModel(string path)
        {
            // Заглушка для совместимости
        }
    }
}