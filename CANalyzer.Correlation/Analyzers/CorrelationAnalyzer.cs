using System;
using System.Collections.Generic;
using System.Linq;
using MathNet.Numerics.Statistics;
using CANalyzer.Core.Models;

namespace CANalyzer.Correlation.Analyzers
{
    public class CorrelationResult
    {
        public CANSignal? SignalA { get; set; }
        public CANSignal? SignalB { get; set; }
        public double Correlation { get; set; }
        public int Lag { get; set; }
        public bool IsSignificant { get; set; }
        public double PValue { get; set; }
        public string Relationship { get; set; } = string.Empty;
    }

    public class CorrelationAnalyzer
    {
        private const double SIGNIFICANCE_THRESHOLD = 0.7;
        private const double PVALUE_THRESHOLD = 0.05;

        public List<CorrelationResult> AnalyzeCorrelations(List<CANSignal> signals)
        {
            var results = new List<CorrelationResult>();

            if (signals == null || signals.Count < 2)
                return results;

            // Фильтруем сигналы для корреляционного анализа
            var validSignals = signals
                .Where(s => s.PhysicalValues != null && s.PhysicalValues.Count > 10)
                .ToList();

            if (validSignals.Count < 2)
                return results;

            // Группируем сигналы по сообщениям для анализа внутри одного сообщения
            var signalsByMessage = validSignals
                .GroupBy(s => s.MessageID)
                .Where(g => g.Count() > 1)
                .ToList();

            // Анализ корреляций внутри одного сообщения
            foreach (var messageGroup in signalsByMessage)
            {
                var messageSignals = messageGroup.ToList();
                
                for (int i = 0; i < messageSignals.Count; i++)
                {
                    for (int j = i + 1; j < messageSignals.Count; j++)
                    {
                        var signalA = messageSignals[i];
                        var signalB = messageSignals[j];
                        
                        // Пропускаем если сигналы перекрываются по байтам
                        if (SignalsOverlap(signalA, signalB))
                            continue;
                            
                        var correlation = CalculateByteCorrelation(signalA, signalB);
                        if (correlation != null)
                        {
                            results.Add(correlation);
                        }
                    }
                }
            }

            // Анализ корреляций между разными сообщениями (только для сильных корреляций)
            if (validSignals.Count > 20)
            {
                // Берем только первые 20 сигналов для производительности
                var limitedSignals = validSignals.Take(20).ToList();
                
                for (int i = 0; i < limitedSignals.Count; i++)
                {
                    for (int j = i + 1; j < limitedSignals.Count; j++)
                    {
                        var signalA = limitedSignals[i];
                        var signalB = limitedSignals[j];
                        
                        // Пропускаем если сигналы из одного сообщения (уже проанализированы)
                        if (signalA.MessageID == signalB.MessageID)
                            continue;
                            
                        var correlation = CalculateByteCorrelation(signalA, signalB);
                        if (correlation != null && correlation.IsSignificant)
                        {
                            results.Add(correlation);
                        }
                    }
                }
            }

            // Сортировка по силе корреляции
            return results.OrderByDescending(r => Math.Abs(r.Correlation)).ToList();
        }

        private bool SignalsOverlap(CANSignal signalA, CANSignal signalB)
        {
            // Проверка перекрытия байтов
            int aStartByte = signalA.StartBit / 8;
            int aEndByte = (signalA.StartBit + signalA.Length - 1) / 8;
            int bStartByte = signalB.StartBit / 8;
            int bEndByte = (signalB.StartBit + signalB.Length - 1) / 8;
            
            return !(aEndByte < bStartByte || bEndByte < aStartByte);
        }

        private CorrelationResult? CalculateByteCorrelation(CANSignal signalA, CANSignal signalB)
        {
            if (signalA.PhysicalValues == null || signalB.PhysicalValues == null)
                return null;

            var valuesA = signalA.PhysicalValues;
            var valuesB = signalB.PhysicalValues;

            // Выравнивание временных рядов по минимальной длине
            int minLength = Math.Min(valuesA.Count, valuesB.Count);
            if (minLength < 10) return null;

            var alignedA = valuesA.Take(minLength).ToList();
            var alignedB = valuesB.Take(minLength).ToList();

            try
            {
                // Расчет корреляции для байтовых данных
                double correlation = CalculatePearsonCorrelation(alignedA, alignedB);

                // Расчет запаздывания
                int lag = CalculateByteLag(alignedA, alignedB);

                // Проверка статистической значимости
                double pValue = CalculatePValue(correlation, minLength);
                bool isSignificant = Math.Abs(correlation) > SIGNIFICANCE_THRESHOLD && pValue < PVALUE_THRESHOLD;

                // Определение типа зависимости
                string relationship = DetermineByteRelationship(correlation, lag);

                return new CorrelationResult
                {
                    SignalA = signalA,
                    SignalB = signalB,
                    Correlation = correlation,
                    Lag = lag,
                    PValue = pValue,
                    IsSignificant = isSignificant,
                    Relationship = relationship
                };
            }
            catch (Exception)
            {
                return null;
            }
        }

        // Собственная реализация корреляции Пирсона
        private double CalculatePearsonCorrelation(List<double> x, List<double> y)
        {
            if (x.Count != y.Count)
                throw new ArgumentException("Arrays must have the same length");

            if (x.Count < 2)
                return 0;

            double meanX = x.Average();
            double meanY = y.Average();

            double numerator = 0;
            double denominatorX = 0;
            double denominatorY = 0;

            for (int i = 0; i < x.Count; i++)
            {
                double diffX = x[i] - meanX;
                double diffY = y[i] - meanY;

                numerator += diffX * diffY;
                denominatorX += diffX * diffX;
                denominatorY += diffY * diffY;
            }

            if (denominatorX == 0 || denominatorY == 0)
                return 0;

            return numerator / Math.Sqrt(denominatorX * denominatorY);
        }

        private int CalculateByteLag(List<double> seriesA, List<double> seriesB)
        {
            // Для байтовых данных используем меньший диапазон лагов
            int maxLag = Math.Min(10, seriesA.Count / 10);
            double maxCorrelation = 0;
            int bestLag = 0;

            for (int lag = -maxLag; lag <= maxLag; lag++)
            {
                double correlation = CalculateCrossCorrelation(seriesA, seriesB, lag);
                if (Math.Abs(correlation) > Math.Abs(maxCorrelation))
                {
                    maxCorrelation = correlation;
                    bestLag = lag;
                }
            }

            return bestLag;
        }

        private double CalculateCrossCorrelation(List<double> seriesA, List<double> seriesB, int lag)
        {
            int n = seriesA.Count;
            List<double> shiftedA, shiftedB;

            if (lag >= 0)
            {
                shiftedA = seriesA.Skip(lag).ToList();
                shiftedB = seriesB.Take(n - lag).ToList();
            }
            else
            {
                shiftedA = seriesA.Take(n + lag).ToList();
                shiftedB = seriesB.Skip(-lag).ToList();
            }

            int overlap = Math.Min(shiftedA.Count, shiftedB.Count);
            if (overlap < 10) return 0;

            shiftedA = shiftedA.Take(overlap).ToList();
            shiftedB = shiftedB.Take(overlap).ToList();

            try
            {
                return CalculatePearsonCorrelation(shiftedA, shiftedB);
            }
            catch (Exception)
            {
                return 0;
            }
        }

        private double CalculatePValue(double correlation, int n)
        {
            if (n <= 2) return 1.0;

            // Приблизительный расчет p-value для корреляции Пирсона
            double t = correlation * Math.Sqrt((n - 2) / (1 - correlation * correlation));
            double df = n - 2;

            // Используем аппроксимацию t-распределения
            double p = 2 * (1 - TDistributionCDF(Math.Abs(t), df));
            return Math.Min(Math.Max(p, 0), 1);
        }

        private double TDistributionCDF(double t, double df)
        {
            // Аппроксимация CDF t-распределения
            double x = df / (df + t * t);
            double ibeta = IncompleteBeta(0.5 * df, 0.5, x);
            return 1 - 0.5 * ibeta;
        }

        private double IncompleteBeta(double a, double b, double x)
        {
            // Упрощенная реализация неполной бета-функции
            if (x < 0 || x > 1) return 0;
            if (x == 0) return 0;
            if (x == 1) return 1;

            // Аппроксимация
            return Math.Pow(x, a) * Math.Pow(1 - x, b) / (a * Beta(a, b));
        }

        private double Beta(double a, double b)
        {
            return Math.Exp(GammaLn(a) + GammaLn(b) - GammaLn(a + b));
        }

        private double GammaLn(double x)
        {
            // Аппроксимация логарифма гамма-функции
            double[] coef = {76.18009172947146, -86.50532032941677,
                           24.01409824083091, -1.231739572450155,
                           0.1208650973866179e-2, -0.5395239384953e-5};

            double y = x;
            double tmp = x + 5.5;
            tmp -= (x + 0.5) * Math.Log(tmp);
            double ser = 1.000000000190015;

            for (int j = 0; j < 6; j++)
            {
                y += 1;
                ser += coef[j] / y;
            }

            return -tmp + Math.Log(2.5066282746310005 * ser / x);
        }

        private string DetermineByteRelationship(double correlation, int lag)
        {
            string relationship = "";

            if (correlation > 0.8)
                relationship = "Strong positive";
            else if (correlation > 0.5)
                relationship = "Moderate positive";
            else if (correlation > 0.3)
                relationship = "Weak positive";
            else if (correlation < -0.8)
                relationship = "Strong negative";
            else if (correlation < -0.5)
                relationship = "Moderate negative";
            else if (correlation < -0.3)
                relationship = "Weak negative";
            else
                relationship = "No correlation";

            // Для байтовых данных добавляем информацию о запаздывании
            if (Math.Abs(lag) > 0)
            {
                relationship += $", lag: {lag} samples";
                
                // Определение возможной причинно-следственной связи
                if (lag > 0 && correlation > 0.7)
                    relationship += $" (A → B)";
                else if (lag < 0 && correlation > 0.7)
                    relationship += $" (B → A)";
            }

            return relationship;
        }

        public List<CorrelationResult> FindCausalRelationships(List<CANSignal> signals)
        {
            // Поиск причинно-следственных связей для байтовых данных
            var correlations = AnalyzeCorrelations(signals);
            var causalResults = new List<CorrelationResult>();

            foreach (var corr in correlations.Where(c => c.IsSignificant))
            {
                // Для байтовых данных используем более строгий порог
                if (Math.Abs(corr.Lag) > 1 && Math.Abs(corr.Correlation) > 0.8)
                {
                    if (corr.Lag > 0)
                    {
                        corr.Relationship = $"Byte causation: {corr.SignalA?.Name ?? "Unknown"} → {corr.SignalB?.Name ?? "Unknown"} (lag: {corr.Lag})";
                        causalResults.Add(corr);
                    }
                    else if (corr.Lag < 0)
                    {
                        corr.Relationship = $"Byte causation: {corr.SignalB?.Name ?? "Unknown"} → {corr.SignalA?.Name ?? "Unknown"} (lag: {-corr.Lag})";
                        causalResults.Add(corr);
                    }
                }
            }

            return causalResults;
        }
    }
}