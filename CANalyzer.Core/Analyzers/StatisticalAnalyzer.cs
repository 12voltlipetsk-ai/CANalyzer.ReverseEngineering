using System;
using System.Collections.Generic;
using System.Linq;
using CANalyzer.Core.Models;

namespace CANalyzer.Core.Analyzers
{
    public class StatisticalAnalyzer
    {
        public static List<MessageStatistics> CalculateStatistics(List<CANMessage> messages)
        {
            var statsDict = new Dictionary<uint, MessageStatistics>();
            var messageGroups = messages.GroupBy(m => m.ID);
            
            foreach (var group in messageGroups)
            {
                var timestamps = group.Select(m => m.Timestamp).OrderBy(t => t).ToList();
                var intervals = new List<double>();
                
                for (int i = 1; i < timestamps.Count; i++)
                {
                    intervals.Add(timestamps[i] - timestamps[i - 1]);
                }
                
                var stats = new MessageStatistics
                {
                    ID = group.Key,
                    Count = group.Count(),
                    FirstSeen = timestamps.First(),
                    LastSeen = timestamps.Last(),
                    Timestamps = timestamps,
                    Frequency = group.Count() / (timestamps.Last() - timestamps.First()),
                    MinInterval = intervals.Any() ? intervals.Min() : 0,
                    MaxInterval = intervals.Any() ? intervals.Max() : 0,
                    AvgInterval = intervals.Any() ? intervals.Average() : 0,
                    Jitter = intervals.Any() ? CalculateJitter(intervals) : 0,
                    IsCyclic = intervals.Any() && IsCyclicMessage(intervals),
                    EstimatedCycleTime = intervals.Any() ? (int)Math.Round(intervals.Average() * 1000) : 0
                };
                
                // Анализ паттернов данных
                foreach (var message in group)
                {
                    foreach (var b in message.Data)
                    {
                        if (stats.DataPatterns.ContainsKey(b))
                            stats.DataPatterns[b]++;
                        else
                            stats.DataPatterns[b] = 1;
                    }
                }
                
                statsDict[group.Key] = stats;
            }
            
            return statsDict.Values.ToList();
        }
        
        private static double CalculateJitter(List<double> intervals)
        {
            if (intervals.Count < 2) return 0;
            
            double mean = intervals.Average();
            double sumOfSquares = intervals.Sum(x => Math.Pow(x - mean, 2));
            return Math.Sqrt(sumOfSquares / intervals.Count);
        }
        
        private static bool IsCyclicMessage(List<double> intervals)
        {
            if (intervals.Count < 3) return false;
            
            double mean = intervals.Average();
            double tolerance = mean * 0.2; // 20% допуск
            
            return intervals.All(i => Math.Abs(i - mean) <= tolerance);
        }
    }
}