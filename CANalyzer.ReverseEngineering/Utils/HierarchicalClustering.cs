using System;
using System.Collections.Generic;
using System.Linq;

namespace CANalyzer.ReverseEngineering.Utils
{
    /// <summary>
    /// Implementation of hierarchical clustering algorithm
    /// </summary>
    public static class HierarchicalClustering
    {
        public class ClusterNode
        {
            public int Id { get; set; }
            public List<int> Members { get; set; } = new List<int>();
            public double Distance { get; set; }
            public ClusterNode? Left { get; set; }
            public ClusterNode? Right { get; set; }
            public int Height { get; set; }
        }

        public static List<ClusterNode> Cluster(double[,] distanceMatrix, string linkage = "single")
        {
            int n = distanceMatrix.GetLength(0);
            
            // Initialize clusters: each point is its own cluster
            var clusters = new List<ClusterNode>();
            for (int i = 0; i < n; i++)
            {
                clusters.Add(new ClusterNode
                {
                    Id = i,
                    Members = new List<int> { i },
                    Height = 0
                });
            }

            var dendrogram = new List<ClusterNode>();

            while (clusters.Count > 1)
            {
                // Find the two closest clusters
                double minDistance = double.MaxValue;
                int clusterA = -1, clusterB = -1;

                for (int i = 0; i < clusters.Count; i++)
                {
                    for (int j = i + 1; j < clusters.Count; j++)
                    {
                        double distance = GetClusterDistance(
                            clusters[i], clusters[j], distanceMatrix, linkage);
                        
                        if (distance < minDistance)
                        {
                            minDistance = distance;
                            clusterA = i;
                            clusterB = j;
                        }
                    }
                }

                if (clusterA == -1 || clusterB == -1)
                    break;

                // Merge the two clusters
                var newCluster = new ClusterNode
                {
                    Id = n + dendrogram.Count,
                    Members = new List<int>(clusters[clusterA].Members),
                    Distance = minDistance,
                    Left = clusters[clusterA],
                    Right = clusters[clusterB],
                    Height = Math.Max(clusters[clusterA].Height, clusters[clusterB].Height) + 1
                };
                
                newCluster.Members.AddRange(clusters[clusterB].Members);

                // Add to dendrogram
                dendrogram.Add(newCluster);

                // Update cluster list
                clusters.RemoveAt(Math.Max(clusterA, clusterB));
                clusters.RemoveAt(Math.Min(clusterA, clusterB));
                clusters.Add(newCluster);
            }

            return dendrogram;
        }

        private static double GetClusterDistance(
            ClusterNode clusterA, ClusterNode clusterB, 
            double[,] distanceMatrix, string linkage)
        {
            return linkage.ToLower() switch
            {
                "single" => GetSingleLinkageDistance(clusterA, clusterB, distanceMatrix),
                "complete" => GetCompleteLinkageDistance(clusterA, clusterB, distanceMatrix),
                "average" => GetAverageLinkageDistance(clusterA, clusterB, distanceMatrix),
                _ => GetSingleLinkageDistance(clusterA, clusterB, distanceMatrix)
            };
        }

        private static double GetSingleLinkageDistance(
            ClusterNode clusterA, ClusterNode clusterB, double[,] distanceMatrix)
        {
            double minDistance = double.MaxValue;
            
            foreach (int a in clusterA.Members)
            {
                foreach (int b in clusterB.Members)
                {
                    double distance = distanceMatrix[a, b];
                    if (distance < minDistance)
                        minDistance = distance;
                }
            }
            
            return minDistance;
        }

        private static double GetCompleteLinkageDistance(
            ClusterNode clusterA, ClusterNode clusterB, double[,] distanceMatrix)
        {
            double maxDistance = double.MinValue;
            
            foreach (int a in clusterA.Members)
            {
                foreach (int b in clusterB.Members)
                {
                    double distance = distanceMatrix[a, b];
                    if (distance > maxDistance)
                        maxDistance = distance;
                }
            }
            
            return maxDistance;
        }

        private static double GetAverageLinkageDistance(
            ClusterNode clusterA, ClusterNode clusterB, double[,] distanceMatrix)
        {
            double totalDistance = 0;
            int count = 0;
            
            foreach (int a in clusterA.Members)
            {
                foreach (int b in clusterB.Members)
                {
                    totalDistance += distanceMatrix[a, b];
                    count++;
                }
            }
            
            return count > 0 ? totalDistance / count : 0;
        }

        public static List<List<int>> CutDendrogram(List<ClusterNode> dendrogram, int numClusters)
        {
            var result = new List<List<int>>();
            
            if (numClusters <= 0 || dendrogram.Count == 0)
                return result;

            // Sort dendrogram by distance in descending order
            var sortedDendrogram = dendrogram.OrderByDescending(d => d.Distance).ToList();

            // Take the top (numClusters - 1) merges
            var clusters = new Dictionary<int, List<int>>();
            var clusterMap = new Dictionary<int, int>();
            int nextClusterId = 0;

            // Process dendrogram
            for (int i = 0; i < sortedDendrogram.Count; i++)
            {
                var node = sortedDendrogram[i];
                
                if (i < numClusters - 1)
                {
                    // This merge becomes a cluster
                    var clusterMembers = new List<int>(node.Members);
                    clusters[nextClusterId] = clusterMembers;
                    
                    foreach (int member in clusterMembers)
                    {
                        clusterMap[member] = nextClusterId;
                    }
                    
                    nextClusterId++;
                }
                else
                {
                    // Assign members to existing clusters
                    foreach (int member in node.Members)
                    {
                        if (!clusterMap.ContainsKey(member))
                        {
                            // Create new cluster for unassigned member
                            clusters[nextClusterId] = new List<int> { member };
                            clusterMap[member] = nextClusterId;
                            nextClusterId++;
                        }
                    }
                }
            }

            // Handle any unassigned members
            int maxMemberId = 0;
            foreach (var node in sortedDendrogram)
            {
                maxMemberId = Math.Max(maxMemberId, node.Members.Max());
            }

            for (int i = 0; i <= maxMemberId; i++)
            {
                if (!clusterMap.ContainsKey(i))
                {
                    clusters[nextClusterId] = new List<int> { i };
                    clusterMap[i] = nextClusterId;
                    nextClusterId++;
                }
            }

            return clusters.Values.ToList();
        }

        public static List<List<int>> CutDendrogramByDistance(List<ClusterNode> dendrogram, double distanceThreshold)
        {
            var result = new List<List<int>>();
            
            if (dendrogram.Count == 0)
                return result;

            // Sort dendrogram by distance in descending order
            var sortedDendrogram = dendrogram.OrderByDescending(d => d.Distance).ToList();

            var clusters = new Dictionary<int, List<int>>();
            var clusterMap = new Dictionary<int, int>();
            int nextClusterId = 0;

            // Process dendrogram
            foreach (var node in sortedDendrogram)
            {
                if (node.Distance > distanceThreshold)
                {
                    // This merge is above threshold, create cluster
                    bool anyAssigned = false;
                    foreach (int member in node.Members)
                    {
                        if (clusterMap.ContainsKey(member))
                        {
                            anyAssigned = true;
                            break;
                        }
                    }
                    
                    if (!anyAssigned)
                    {
                        clusters[nextClusterId] = new List<int>(node.Members);
                        foreach (int member in node.Members)
                        {
                            clusterMap[member] = nextClusterId;
                        }
                        nextClusterId++;
                    }
                }
            }

            // Handle any unassigned members
            int maxMemberId = 0;
            foreach (var node in sortedDendrogram)
            {
                maxMemberId = Math.Max(maxMemberId, node.Members.Max());
            }

            for (int i = 0; i <= maxMemberId; i++)
            {
                if (!clusterMap.ContainsKey(i))
                {
                    clusters[nextClusterId] = new List<int> { i };
                    clusterMap[i] = nextClusterId;
                    nextClusterId++;
                }
            }

            return clusters.Values.ToList();
        }
    }
}