using Xunit;
using CANalyzer.Core.Models;
using CANalyzer.Core.Analyzers;
using System.Collections.Generic;

namespace CANalyzer.Tests
{
    public class SignalDetectorTests
    {
        [Fact]
        public void DetectSignals_ShouldFindBooleanSignal()
        {
            // Arrange
            var messages = new List<CANMessage>
            {
                new CANMessage { ID = 0x100, Data = new byte[] { 0x00, 0x00, 0x00, 0x00 } },
                new CANMessage { ID = 0x100, Data = new byte[] { 0x01, 0x00, 0x00, 0x00 } },
                new CANMessage { ID = 0x100, Data = new byte[] { 0x00, 0x00, 0x00, 0x00 } },
                new CANMessage { ID = 0x100, Data = new byte[] { 0x01, 0x00, 0x00, 0x00 } }
            };
            
            // Act
            var signals = SignalDetector.DetectSignals(messages, 0x100);
            
            // Assert
            Assert.NotEmpty(signals);
            Assert.Contains(signals, s => s.Length == 1 && s.SignalType == SignalType.Boolean);
        }
        
        [Fact]
        public void DetectSignals_ShouldFindMultiBitSignal()
        {
            // Arrange
            var messages = new List<CANMessage>();
            for (int i = 0; i < 10; i++)
            {
                messages.Add(new CANMessage 
                { 
                    ID = 0x200, 
                    Data = new byte[] { (byte)i, 0x00, 0x00, 0x00 } 
                });
            }
            
            // Act
            var signals = SignalDetector.DetectSignals(messages, 0x200);
            
            // Assert
            Assert.NotEmpty(signals);
            Assert.Contains(signals, s => s.Length > 1);
        }
        
        [Fact]
        public void StatisticalAnalyzer_ShouldCalculateCorrectStatistics()
        {
            // Arrange
            var messages = new List<CANMessage>
            {
                new CANMessage { ID = 0x300, Timestamp = 0.0 },
                new CANMessage { ID = 0x300, Timestamp = 0.1 },
                new CANMessage { ID = 0x300, Timestamp = 0.2 },
                new CANMessage { ID = 0x300, Timestamp = 0.3 }
            };
            
            // Act
            var stats = StatisticalAnalyzer.CalculateStatistics(messages);
            
            // Assert
            Assert.Single(stats);
            Assert.Equal(4, stats[0].Count);
            Assert.Equal(10.0, stats[0].Frequency, 1);
        }
    }
}