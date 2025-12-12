using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using MathNet.Numerics.Statistics;
using CANalyzer.ReverseEngineering.Models;

namespace CANalyzer.ReverseEngineering.Analyzers
{
    /// <summary>
    /// Represents a cluster dendrogram node
    /// </summary>
    public class ClusterDendrogram
    {
        public int ClusterId { get; set; }
        public List<int> Members { get; set; } = new List<int>();
        public double Distance { get; set; }
        public int Level { get; set; }
    }

    /// <summary>
    /// Performs semantic analysis including correlation and clustering
    /// Based on SemanticAnalysis.py from CAN_Reverse_Engineering pipeline
    /// </summary>
    public class CANSemanticAnalyzer
    {
        public DataTable CorrelationMatrix { get; private set; } = new DataTable();
        public Dictionary<int, List<Signal>> Clusters { get; private set; } = new Dictionary<int, List<Signal>>();
        public Dictionary<string, int> SignalClusterMap { get; private set; } = new Dictionary<string, int>();
        public List<ClusterDendrogram> DendrogramData { get; private set; } = new List<ClusterDendrogram>();
        
        private const double CorrelationThreshold = 0.7;
        private const int MaxClusters = 10;
        
        public void Analyze(List<Signal> signals, int minClusterSize = 3)
        {
            Console.WriteLine("Starting semantic analysis...");
            
            if (signals.Count < 2)
            {
                Console.WriteLine("Not enough signals for semantic analysis");
                return;
            }
            
            // Build correlation matrix
            BuildCorrelationMatrix(signals);
            
            // Perform hierarchical clustering
            PerformHierarchicalClustering(signals);
            
            // Create clusters
            CreateClusters(signals, minClusterSize);
            
            Console.WriteLine($"Semantic analysis complete: {Clusters.Count} clusters found");
        }
        
        private void BuildCorrelationMatrix(List<Signal> signals)
        {
            Console.WriteLine("Building correlation matrix...");
            
            CorrelationMatrix = new DataTable();
            CorrelationMatrix.Columns.Add("Signal", typeof(string));
            
            // Add columns for each signal
            foreach (var signal in signals)
            {
                CorrelationMatrix.Columns.Add(signal.Name, typeof(double));
            }
            
            // Calculate pairwise correlations
            for (int i = 0; i < signals.Count; i++)
            {
                DataRow row = CorrelationMatrix.NewRow();
                row["Signal"] = signals[i].Name;
                
                for (int j = 0; j < signals.Count; j++)
                {
                    double correlation = CalculateCorrelation(signals[i], signals[j]);
                    row[signals[j].Name] = correlation;
                    
                    // Store in signal's correlation dictionary
                    signals[i].Correlations[signals[j].Name] = correlation;
                }
                
                CorrelationMatrix.Rows.Add(row);
            }
        }
        
        private double CalculateCorrelation(Signal signalA, Signal signalB)
        {
            if (signalA == signalB)
                return 1.0;
            
            if (signalA.TimeSeries.Count != signalB.TimeSeries.Count || signalA.TimeSeries.Count < 10)
                return 0.0;
            
            try
            {
                // Align time series
                var alignedA = signalA.TimeSeries.ToArray();
                var alignedB = signalB.TimeSeries.ToArray();
                
                // Calculate Pearson correlation
                return Correlation.Pearson(alignedA, alignedB);
            }
            catch (Exception)
            {
                return 0.0;
            }
        }
        
        private void PerformHierarchicalClustering(List<Signal> signals)
        {
            Console.WriteLine("Performing hierarchical clustering...");
            
            if (signals.Count < 2) return;
            
            // Create distance matrix
            int n = signals.Count;
            double[,] distanceMatrix = new double[n, n];
            
            for (int i = 0; i < n; i++)
            {
                for (int j = 0; j < n; j++)
                {
                    if (i == j)
                    {
                        distanceMatrix[i, j] = 0.0;
                    }
                    else
                    {
                        double correlation = signals[i].Correlations[signals[j].Name];
                        distanceMatrix[i, j] = 1.0 - Math.Abs(correlation); // Convert to distance
                    }
                }
            }
            
            // Simple hierarchical clustering (single linkage)
            var clusters = new List<List<int>>();
            for (int i = 0; i < n; i++)
            {
                clusters.Add(new List<int> { i });
            }
            
            DendrogramData.Clear();
            
            while (clusters.Count > 1)
            {
                // Find closest clusters
                double minDistance = double.MaxValue;
                int clusterA = -1, clusterB = -1;
                
                for (int i = 0; i < clusters.Count; i++)
                {
                    for (int j = i + 1; j < clusters.Count; j++)
                    {
                        double distance = CalculateClusterDistance(clusters[i], clusters[j], distanceMatrix);
                        if (distance < minDistance)
                        {
                            minDistance = distance;
                            clusterA = i;
                            clusterB = j;
                        }
                    }
                }
                
                if (clusterA == -1 || clusterB == -1) break;
                
                // Merge clusters
                var newCluster = new List<int>(clusters[clusterA]);
                newCluster.AddRange(clusters[clusterB]);
                
                // Record dendrogram data
                DendrogramData.Add(new ClusterDendrogram
                {
                    ClusterId = DendrogramData.Count,
                    Members = new List<int>(newCluster),
                    Distance = minDistance,
                    Level = clusters.Count
                });
                
                // Replace clusterA with merged cluster
                clusters[clusterA] = newCluster;
                
                // Remove clusterB
                clusters.RemoveAt(clusterB);
            }
        }
        
        private double CalculateClusterDistance(List<int> clusterA, List<int> clusterB, double[,] distanceMatrix)
        {
            // Single linkage (minimum distance)
            double minDistance = double.MaxValue;
            
            foreach (int a in clusterA)
            {
                foreach (int b in clusterB)
                {
                    double distance = distanceMatrix[a, b];
                    if (distance < minDistance)
                        minDistance = distance;
                }
            }
            
            return minDistance;
        }
        
        private void CreateClusters(List<Signal> signals, int minClusterSize)
        {
            Console.WriteLine("Creating clusters from dendrogram...");
            
            Clusters.Clear();
            SignalClusterMap.Clear();
            
            if (DendrogramData.Count == 0)
            {
                // Create one cluster per signal
                for (int i = 0; i < signals.Count; i++)
                {
                    Clusters[i] = new List<Signal> { signals[i] };
                    SignalClusterMap[signals[i].Name] = i;
                }
                return;
            }
            
            // Determine optimal clusters based on distance threshold
            double maxDistance = DendrogramData.Max(d => d.Distance);
            double threshold = maxDistance * 0.3; // 30% of max distance
            
            // Find clusters at threshold level
            var clustersAtThreshold = new List<List<int>>();
            var assignedSignals = new HashSet<int>();
            
            // Start from largest distance and work backwards
            var sortedDendrogram = DendrogramData.OrderByDescending(d => d.Distance).ToList();
            
            foreach (var dendrogram in sortedDendrogram)
            {
                if (dendrogram.Distance > threshold)
                {
                    // This is a valid cluster at threshold
                    bool alreadyAssigned = false;
                    foreach (int member in dendrogram.Members)
                    {
                        if (assignedSignals.Contains(member))
                        {
                            alreadyAssigned = true;
                            break;
                        }
                    }
                    
                    if (!alreadyAssigned && dendrogram.Members.Count >= minClusterSize)
                    {
                        clustersAtThreshold.Add(new List<int>(dendrogram.Members));
                        foreach (int member in dendrogram.Members)
                        {
                            assignedSignals.Add(member);
                        }
                    }
                }
            }
            
            // Add unassigned signals to their own clusters
            for (int i = 0; i < signals.Count; i++)
            {
                if (!assignedSignals.Contains(i))
                {
                    clustersAtThreshold.Add(new List<int> { i });
                }
            }
            
            // Create final clusters
            int clusterId = 0;
            foreach (var clusterIndices in clustersAtThreshold)
            {
                if (clusterIndices.Count == 0) continue;
                
                var clusterSignals = new List<Signal>();
                foreach (int index in clusterIndices)
                {
                    if (index < signals.Count)
                    {
                        var signal = signals[index];
                        clusterSignals.Add(signal);
                        SignalClusterMap[signal.Name] = clusterId;
                        
                        // Update signal cluster info
                        signal.ClusterId = clusterId;
                        signal.ClusterLabel = $"Cluster_{clusterId}";
                    }
                }
                
                Clusters[clusterId] = clusterSignals;
                clusterId++;
            }
            
            // Label clusters based on signal types
            foreach (var kvp in Clusters)
            {
                var cluster = kvp.Value;
                if (cluster.Count > 0)
                {
                    // Count signal types in cluster
                    var typeCounts = new Dictionary<Core.Models.SignalType, int>();
                    foreach (var signal in cluster)
                    {
                        if (!typeCounts.ContainsKey(signal.SignalType))
                            typeCounts[signal.SignalType] = 0;
                        typeCounts[signal.SignalType]++;
                    }
                    
                    // Determine dominant type
                    var dominantType = typeCounts.OrderByDescending(t => t.Value).FirstOrDefault();
                    Console.WriteLine($"  Cluster {kvp.Key}: {cluster.Count} signals, dominant type: {dominantType.Key}");
                }
            }
        }
        
        public List<Signal> GetSignalsInCluster(int clusterId)
        {
            return Clusters.TryGetValue(clusterId, out var signals) ? signals : new List<Signal>();
        }
        
        public List<Signal> GetStronglyCorrelatedSignals(string signalName, double threshold = 0.8)
        {
            var result = new List<Signal>();
            
            var signal = SignalList.FirstOrDefault(s => s.Name == signalName);
            if (signal == null) return result;
            
            foreach (var correlation in signal.Correlations)
            {
                if (Math.Abs(correlation.Value) > threshold && correlation.Key != signalName)
                {
                    var correlatedSignal = SignalList.FirstOrDefault(s => s.Name == correlation.Key);
                    if (correlatedSignal != null)
                        result.Add(correlatedSignal);
                }
            }
            
            return result;
        }
        
        // Helper property for external access
        public List<Signal> SignalList { get; private set; } = new List<Signal>();
        
        public void SetSignals(List<Signal> signals)
        {
            SignalList = signals;
        }
    }
}