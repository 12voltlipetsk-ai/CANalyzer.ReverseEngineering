using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Win32;
using OxyPlot;
using OxyPlot.Series;
using OxyPlot.Axes;
using CANalyzer.Core.Models;
using CANalyzer.Core.Parsers;
using CANalyzer.Core.Analyzers;
using CANalyzer.Core.DBC;
using CANalyzer.ML.NeuralNetworks;
using CANalyzer.Correlation.Analyzers;
using CANalyzer.ReverseEngineering.Analyzers;
using CANalyzer.ReverseEngineering.Models;

namespace CANalyzer.WPF.Views
{
    public partial class MainWindow : Window
    {
        // Original analysis fields
        private List<CANMessage> _messages = new List<CANMessage>();
        private List<MessageStatistics> _statistics = new List<MessageStatistics>();
        private Dictionary<uint, List<CANSignal>> _detectedSignals = new Dictionary<uint, List<CANSignal>>();
        private List<CANSignal> _allSignals = new List<CANSignal>();
        private List<CorrelationResult> _correlations = new List<CorrelationResult>();
        private BackgroundWorker? _analysisWorker;
        private volatile bool _analysisCancelled = false;
        
        // Reverse Engineering pipeline fields
        private CANPreProcessor? _preProcessor;
        private CANLexicalAnalyzer? _lexicalAnalyzer;
        private CANSemanticAnalyzer? _semanticAnalyzer;
        private List<Signal> _pipelineSignals = new List<Signal>();
        
        // Plot models
        public PlotModel SignalPlotModel { get; private set; }
        public PlotModel CorrelationPlotModel { get; private set; }
        public PlotModel PipelinePlotModel { get; private set; }
        public PlotModel ClusterPlotModel { get; private set; }
        
        public MainWindow()
        {
            InitializeComponent();
            
            // Initialize plot models
            SignalPlotModel = new PlotModel { Title = "Signal Values" };
            CorrelationPlotModel = new PlotModel { Title = "Signal Correlation" };
            PipelinePlotModel = new PlotModel { Title = "Pipeline Signal" };
            ClusterPlotModel = new PlotModel { Title = "Cluster Visualization" };
            
            DataContext = this;
            
            // Initialize BackgroundWorker for asynchronous analysis
            InitializeBackgroundWorker();
            
            // Initialize reverse engineering analyzers
            InitializeReverseEngineeringAnalyzers();
        }
        
        private void InitializeBackgroundWorker()
        {
            _analysisWorker = new BackgroundWorker();
            _analysisWorker.WorkerReportsProgress = true;
            _analysisWorker.WorkerSupportsCancellation = true;
            
            _analysisWorker.DoWork += AnalysisWorker_DoWork;
            _analysisWorker.ProgressChanged += AnalysisWorker_ProgressChanged;
            _analysisWorker.RunWorkerCompleted += AnalysisWorker_RunWorkerCompleted;
        }
        
        private void InitializeReverseEngineeringAnalyzers()
        {
            _preProcessor = new CANPreProcessor();
            _lexicalAnalyzer = new CANLexicalAnalyzer();
            _semanticAnalyzer = new CANSemanticAnalyzer();
        }
        
        #region Original Analysis Methods
        
        private async void BtnLoadLog_Click(object sender, RoutedEventArgs e)
        {
            var openFileDialog = new OpenFileDialog
            {
                Filter = "CAN Log Files (*.csv;*.asc;*.blf)|*.csv;*.asc;*.blf|All Files (*.*)|*.*",
                Title = "Select CAN Log File"
            };
        
            if (openFileDialog.ShowDialog() == true)
            {
                try
                {
                    txtStatus.Text = "Loading log file...";
                    progressBar.IsIndeterminate = true;
                    
                    string filePath = openFileDialog.FileName;
                    txtFileName.Text = System.IO.Path.GetFileName(filePath);
                    
                    // Determine file format
                    LogFormat format = DetermineLogFormat(filePath);
                    
                    // Load log using LogParser - используем Task.Run для асинхронной загрузки
                    _messages = await Task.Run(() => LogParser.Parse(filePath, format));
                    
                    // Check if data is loaded
                    if (_messages == null || _messages.Count == 0)
                    {
                        MessageBox.Show("No messages found in the log file.", "Warning", 
                            MessageBoxButton.OK, MessageBoxImage.Warning);
                        txtStatus.Text = "No messages loaded";
                        return;
                    }
                    
                    // Remove possible duplicates
                    _messages = RemoveDuplicateMessages(_messages);
            
                    MessageBox.Show($"Successfully loaded {_messages.Count} messages", "Success", 
                        MessageBoxButton.OK, MessageBoxImage.Information);
            
                    txtMessageCount.Text = _messages.Count.ToString();
                    UpdateRawDataGrid();
            
                    txtStatus.Text = $"Loaded {_messages.Count} messages from {txtFileName.Text}";
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error loading file: {ex.Message}\n\nStack trace: {ex.StackTrace}", 
                        "Error", MessageBoxButton.OK, MessageBoxImage.Error);
                    txtStatus.Text = "Error loading file";
                }
                finally
                {
                    progressBar.IsIndeterminate = false;
                }
            }
        }
        
        private List<CANMessage> RemoveDuplicateMessages(List<CANMessage> messages)
        {
            var uniqueMessages = new Dictionary<string, CANMessage>();
            
            foreach (var msg in messages)
            {
                // Create unique key: timestamp + ID + first 8 bytes of data
                string key = $"{msg.Timestamp:F6}_{msg.ID:X}_{BitConverter.ToString(msg.Data, 0, Math.Min(8, msg.Data.Length))}";
                
                if (!uniqueMessages.ContainsKey(key))
                {
                    uniqueMessages[key] = msg;
                }
                else
                {
                    Debug.WriteLine($"Found duplicate message: {key}");
                }
            }
            
            return uniqueMessages.Values.ToList();
        }
        
        private LogFormat DetermineLogFormat(string filePath)
        {
            string extension = System.IO.Path.GetExtension(filePath).ToLower();
            
            return extension switch
            {
                ".csv" => LogFormat.CSV,
                ".asc" => LogFormat.ASC,
                ".blf" => LogFormat.BLF,
                _ => LogFormat.CSV
            };
        }
        
        private void BtnAnalyze_Click(object sender, RoutedEventArgs e)
        {
            if (_messages.Count == 0)
            {
                MessageBox.Show("Please load a log file first.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            if (_analysisWorker?.IsBusy == true)
            {
                var result = MessageBox.Show("Analysis is already running. Do you want to cancel?", 
                    "Analysis in Progress", MessageBoxButton.YesNo, MessageBoxImage.Question);
                
                if (result == MessageBoxResult.Yes)
                {
                    _analysisCancelled = true;
                    _analysisWorker?.CancelAsync();
                }
                return;
            }
            
            try
            {
                _analysisCancelled = false;
                
                // Reset previous results
                _statistics.Clear();
                _detectedSignals.Clear();
                _allSignals.Clear();
                _correlations.Clear();
                
                // Update UI
                btnAnalyze.IsEnabled = false;
                btnAnalyze.Content = "Analyzing...";
                progressBar.IsIndeterminate = false;
                progressBar.Value = 0;
                txtStatus.Text = "Starting analysis...";
                
                // Start background analysis
                var analysisParams = new AnalysisParameters
                {
                    Messages = _messages,
                    MessageCount = _messages.Count
                };
                
                _analysisWorker?.RunWorkerAsync(analysisParams);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error starting analysis: {ex.Message}", "Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
                ResetAnalysisUI();
            }
        }
        
        private void AnalysisWorker_DoWork(object? sender, DoWorkEventArgs e)
        {
            try
            {
                var worker = sender as BackgroundWorker;
                var parameters = e.Argument as AnalysisParameters;
                
                if (parameters == null || parameters.Messages == null)
                {
                    e.Result = "Invalid analysis parameters";
                    return;
                }
                
                var messages = parameters.Messages;
                int totalSteps = 6;
                int currentStep = 0;
                
                // Check for cancellation
                if (_analysisCancelled || worker?.CancellationPending == true)
                {
                    e.Cancel = true;
                    return;
                }
                
                // Step 1: Statistical analysis
                worker?.ReportProgress(0, "Calculating message statistics...");
                var statistics = StatisticalAnalyzer.CalculateStatistics(messages);
                currentStep++;
                worker?.ReportProgress((currentStep * 100) / totalSteps, 
                    $"Calculated statistics for {statistics.Count} message IDs");
                
                // Step 2: Signal detection
                if (_analysisCancelled || worker?.CancellationPending == true)
                {
                    e.Cancel = true;
                    return;
                }
                
                worker?.ReportProgress((currentStep * 100) / totalSteps, 
                    "Detecting signals...");
                
                var detectedSignals = new Dictionary<uint, List<CANSignal>>();
                var allSignals = new List<CANSignal>();
                
                // Analyze only messages with sufficient data
                var messagesToAnalyze = statistics
                    .Where(s => s.Count > 10)
                    .OrderByDescending(s => s.Count)
                    .Take(50) // Limit for performance
                    .ToList();
                
                int processedMessages = 0;
                int totalMessagesToAnalyze = messagesToAnalyze.Count;
                
                foreach (var stat in messagesToAnalyze)
                {
                    // Check for cancellation
                    if (_analysisCancelled || worker?.CancellationPending == true)
                    {
                        e.Cancel = true;
                        return;
                    }
                    
                    try
                    {
                        var signals = SignalDetector.DetectSignals(messages, stat.ID);
                        if (signals.Any())
                        {
                            detectedSignals[stat.ID] = signals;
                            allSignals.AddRange(signals);
                            
                            // Add raw values for each signal
                            var messageGroup = messages.Where(m => m.ID == stat.ID).ToList();
                            foreach (var signal in signals)
                            {
                                foreach (var msg in messageGroup.Take(100)) // Limit number of values
                                {
                                    uint rawValue = ExtractBits(msg.Data, signal.StartBit, signal.Length);
                                    signal.RawValues.Add(rawValue);
                                    signal.PhysicalValues.Add(signal.GetPhysicalValue(rawValue));
                                }
                            }
                        }
                        
                        processedMessages++;
                        int progress = 20 + (processedMessages * 40 / Math.Max(1, totalMessagesToAnalyze));
                        worker?.ReportProgress(progress, 
                            $"Analyzed {processedMessages}/{totalMessagesToAnalyze} messages...");
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine($"Error detecting signals for ID 0x{stat.ID:X}: {ex.Message}");
                        // Continue analysis of other messages
                    }
                }
                
                currentStep = 3;
                worker?.ReportProgress(60, $"Detected {allSignals.Count} signals");
                
                // Step 3: ML classification
                if (_analysisCancelled || worker?.CancellationPending == true)
                {
                    e.Cancel = true;
                    return;
                }
                
                if (allSignals.Any())
                {
                    worker?.ReportProgress(60, "Classifying signals using ML...");
                    
                    var classifier = new SignalClassifier();
                    int classifiedSignals = 0;
                    
                    foreach (var signal in allSignals.Where(s => s.RawValues.Count > 5))
                    {
                        // Check for cancellation
                        if (_analysisCancelled || worker?.CancellationPending == true)
                        {
                            e.Cancel = true;
                            return;
                        }
                        
                        try
                        {
                            signal.Classification = classifier.ClassifySignal(signal);
                            classifiedSignals++;
                            
                            if (classifiedSignals % 10 == 0)
                            {
                                worker?.ReportProgress(70, 
                                    $"Classified {classifiedSignals}/{allSignals.Count} signals...");
                            }
                        }
                        catch (Exception ex)
                        {
                            Debug.WriteLine($"Error classifying signal {signal.Name}: {ex.Message}");
                        }
                    }
                    
                    currentStep = 4;
                    worker?.ReportProgress(75, 
                        $"Classified {classifiedSignals} signals using ML");
                }
                
                // Step 4: Correlation analysis
                if (_analysisCancelled || worker?.CancellationPending == true)
                {
                    e.Cancel = true;
                    return;
                }
                
                if (allSignals.Count > 1)
                {
                    worker?.ReportProgress(75, "Analyzing signal correlations...");
                    
                    try
                    {
                        var correlationAnalyzer = new CorrelationAnalyzer();
                        var correlations = correlationAnalyzer.AnalyzeCorrelations(allSignals);
                        
                        currentStep = 5;
                        worker?.ReportProgress(85, 
                            $"Found {correlations.Count} significant correlations");
                        
                        // Step 5: Prepare results
                        if (_analysisCancelled || worker?.CancellationPending == true)
                        {
                            e.Cancel = true;
                            return;
                        }
                        
                        worker?.ReportProgress(90, "Preparing results...");
                        
                        // Return results
                        var results = new AnalysisResults
                        {
                            Statistics = statistics,
                            DetectedSignals = detectedSignals,
                            AllSignals = allSignals,
                            Correlations = correlations
                        };
                        
                        e.Result = results;
                    }
                    catch (Exception ex)
                    {
                        Debug.WriteLine($"Error in correlation analysis: {ex.Message}");
                        e.Result = new AnalysisResults
                        {
                            Statistics = statistics,
                            DetectedSignals = detectedSignals,
                            AllSignals = allSignals,
                            Correlations = new List<CorrelationResult>()
                        };
                    }
                }
                else
                {
                    e.Result = new AnalysisResults
                    {
                        Statistics = statistics,
                        DetectedSignals = detectedSignals,
                        AllSignals = allSignals,
                        Correlations = new List<CorrelationResult>()
                    };
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error in analysis worker: {ex.Message}");
                e.Result = $"Analysis error: {ex.Message}";
            }
        }
        
        private void AnalysisWorker_ProgressChanged(object? sender, ProgressChangedEventArgs e)
        {
            try
            {
                progressBar.Value = e.ProgressPercentage;
                
                if (e.UserState != null)
                {
                    txtStatus.Text = e.UserState.ToString();
                    txtProgress.Text = $"{e.ProgressPercentage}%";
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating progress: {ex.Message}");
            }
        }
        
        private void AnalysisWorker_RunWorkerCompleted(object? sender, RunWorkerCompletedEventArgs e)
        {
            try
            {
                if (e.Cancelled)
                {
                    txtStatus.Text = "Analysis cancelled";
                    MessageBox.Show("Analysis was cancelled by user.", "Cancelled", 
                        MessageBoxButton.OK, MessageBoxImage.Information);
                }
                else if (e.Error != null)
                {
                    txtStatus.Text = "Analysis error";
                    MessageBox.Show($"Error during analysis: {e.Error.Message}", "Error", 
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
                else
                {
                    if (e.Result is AnalysisResults results)
                    {
                        // Save results
                        _statistics = results.Statistics;
                        _detectedSignals = results.DetectedSignals;
                        _allSignals = results.AllSignals;
                        _correlations = results.Correlations;
                        
                        // Update UI
                        UpdateAnalysisUI();
                        
                        txtStatus.Text = $"Analysis complete: {_allSignals.Count} signals, {_correlations.Count} correlations";
                        
                        MessageBox.Show($"Analysis complete!\n\n" +
                                      $"Messages analyzed: {_statistics.Count}\n" +
                                      $"Signals detected: {_allSignals.Count}\n" +
                                      $"Correlations found: {_correlations.Count}", 
                                      "Analysis Complete", 
                                      MessageBoxButton.OK, MessageBoxImage.Information);
                    }
                    else if (e.Result is string errorMessage)
                    {
                        txtStatus.Text = "Analysis error";
                        MessageBox.Show(errorMessage, "Error", 
                            MessageBoxButton.OK, MessageBoxImage.Error);
                    }
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error completing analysis: {ex.Message}", "Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
                txtStatus.Text = "Analysis error";
            }
            finally
            {
                ResetAnalysisUI();
            }
        }
        
        private void UpdateAnalysisUI()
        {
            try
            {
                // Update signal list
                UpdateSignalList();
                
                // Update correlation list
                UpdateCorrelationList();
                
                // Update decoded signals tab
                UpdateDecodedSignalsTab();
                
                // If there are signals, select first for display
                if (_allSignals.Any())
                {
                    lvSignals.SelectedIndex = 0;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating analysis UI: {ex.Message}");
            }
        }
        
        private void ResetAnalysisUI()
        {
            btnAnalyze.IsEnabled = true;
            btnAnalyze.Content = "🔍 Analyze";
            progressBar.IsIndeterminate = false;
            progressBar.Value = 0;
            txtProgress.Text = "";
            _analysisCancelled = false;
        }
        
        private async void BtnGenerateDBC_Click(object sender, RoutedEventArgs e)
        {
            if (!_messages.Any() || !_detectedSignals.Any())
            {
                MessageBox.Show("Please analyze the log first to detect signals.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            var saveFileDialog = new SaveFileDialog
            {
                Filter = "DBC Files (*.dbc)|*.dbc|All Files (*.*)|*.*",
                Title = "Save DBC File",
                DefaultExt = "dbc",
                FileName = $"generated_{DateTime.Now:yyyyMMdd_HHmmss}.dbc"
            };
            
            if (saveFileDialog.ShowDialog() == true)
            {
                try
                {
                    txtStatus.Text = "Generating DBC file...";
                    progressBar.IsIndeterminate = true;
                    
                    await Task.Run(() =>
                    {
                        DBCGenerator.GenerateDBCForAllMessages(_messages, _statistics, saveFileDialog.FileName);
                    });
                    
                    txtStatus.Text = $"DBC file saved: {System.IO.Path.GetFileName(saveFileDialog.FileName)}";
                    MessageBox.Show($"DBC file successfully generated!\n\n" +
                                  $"Messages: {_detectedSignals.Count}\n" +
                                  $"Signals: {_allSignals.Count}\n" +
                                  $"File: {saveFileDialog.FileName}", 
                                  "DBC Generation Complete", 
                                  MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error generating DBC: {ex.Message}", "Error", 
                        MessageBoxButton.OK, MessageBoxImage.Error);
                    txtStatus.Text = "DBC generation error";
                }
                finally
                {
                    progressBar.IsIndeterminate = false;
                }
            }
        }
        
        private void BtnExport_Click(object sender, RoutedEventArgs e)
        {
            if (!_messages.Any())
            {
                MessageBox.Show("No data to export. Please load and analyze a log file first.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            var saveDialog = new SaveFileDialog
            {
                Filter = "JSON Files (*.json)|*.json|CSV Files (*.csv)|*.csv|All Files (*.*)|*.*",
                Title = "Export Results",
                DefaultExt = "json"
            };
            
            if (saveDialog.ShowDialog() == true)
            {
                try
                {
                    ExportResults(saveDialog.FileName);
                    MessageBox.Show($"Results exported to {saveDialog.FileName}", "Export Complete", 
                        MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error exporting results: {ex.Message}", "Error", 
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
        
        private void BtnSettings_Click(object sender, RoutedEventArgs e)
        {
            var settingsDialog = new SettingsWindow();
            settingsDialog.Owner = this;
            settingsDialog.ShowDialog();
        }
        
        private void LvSignals_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lvSignals.SelectedItem is CANSignal selectedSignal)
            {
                // Update signal details
                txtSignalName.Text = selectedSignal.Name;
                txtSignalRange.Text = $"{selectedSignal.Minimum:F2} - {selectedSignal.Maximum:F2}";
                txtSignalBits.Text = $"{selectedSignal.StartBit}:{selectedSignal.Length}";
                txtSignalUnit.Text = selectedSignal.Unit;
                txtSignalScaling.Text = $"{selectedSignal.Factor:F3} * x + {selectedSignal.Offset:F3}";
                txtSignalClassification.Text = selectedSignal.Classification.ToString();
                
                // Update signal plot
                UpdateSignalPlot(selectedSignal);
            }
        }
        
        private void LvCorrelations_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lvCorrelations.SelectedIndex >= 0 && lvCorrelations.SelectedIndex < _correlations.Count)
            {
                var correlation = _correlations[lvCorrelations.SelectedIndex];
                txtCorrelationDetails.Text = $"{correlation.SignalA?.Name ?? "Unknown"} ↔ {correlation.SignalB?.Name ?? "Unknown"}: {correlation.Correlation:F3}";
                
                // Update correlation plot
                UpdateCorrelationPlot(correlation);
            }
        }
        
        // Methods for updating interface
        
        private void UpdateRawDataGrid()
        {
            try
            {
                // Create correct data source for DataGrid
                var dataSource = _messages.Select(m => new
                {
                    Timestamp = m.Timestamp.ToString("F6"),
                    Channel = m.Channel,
                    ID = $"0x{m.ID:X}",
                    DLC = m.DLC.ToString(),
                    DataHex = m.DataHex,
                    SignalsCount = m.SignalsCount,
                    Type = m.CANType.ToString()
                }).ToList();
                
                dgRawData.ItemsSource = dataSource;
                dgRawData.Items.Refresh();
                
                Debug.WriteLine($"Raw data grid updated with {dataSource.Count} items");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating raw data grid: {ex.Message}");
            }
        }
        
        private void UpdateSignalList()
        {
            try
            {
                var signalList = _allSignals.Select(s => new
                {
                    Name = s.Name,
                    Type = s.SignalType.ToString(),
                    MessageID = $"0x{s.MessageID:X}",
                    Classification = s.Classification.ToString(),
                    StartBit = s.StartBit,
                    Length = s.Length
                }).ToList();
                
                lvSignals.ItemsSource = signalList;
                
                Debug.WriteLine($"Signal list updated with {signalList.Count} items");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating signal list: {ex.Message}");
            }
        }
        
        private void UpdateCorrelationList()
        {
            try
            {
                var correlationList = _correlations
                    .Where(c => c.IsSignificant && Math.Abs(c.Correlation) > 0.7)
                    .Take(500)
                    .Select(c => new
                    {
                        SignalAName = c.SignalA?.Name ?? "Unknown",
                        SignalBName = c.SignalB?.Name ?? "Unknown",
                        Correlation = c.Correlation.ToString("F3"),
                        Lag = c.Lag,
                        IsSignificant = c.IsSignificant ? "Yes" : "No"
                    }).ToList();
                
                lvCorrelations.ItemsSource = correlationList;
                
                Debug.WriteLine($"Correlation list updated with {correlationList.Count} items");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating correlation list: {ex.Message}");
            }
        }
        
        private void UpdateDecodedSignalsTab()
        {
            try
            {
                if (_allSignals.Any())
                {
                    lvSignals.ItemsSource = _allSignals;
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating decoded signals tab: {ex.Message}");
            }
        }
        
        private void UpdateSignalPlot(CANSignal signal)
        {
            try
            {
                SignalPlotModel.Series.Clear();
                SignalPlotModel.Axes.Clear();
                
                if (signal.PhysicalValues.Any())
                {
                    var lineSeries = new LineSeries
                    {
                        Title = signal.Name,
                        Color = OxyColors.Blue,
                        MarkerType = MarkerType.Circle,
                        MarkerSize = 3
                    };
                    
                    for (int i = 0; i < signal.PhysicalValues.Count && i < 100; i++) // Limit to 100 points
                    {
                        lineSeries.Points.Add(new DataPoint(i, signal.PhysicalValues[i]));
                    }
                    
                    SignalPlotModel.Series.Add(lineSeries);
                    
                    SignalPlotModel.Axes.Add(new LinearAxis 
                    { 
                        Position = AxisPosition.Bottom, 
                        Title = "Sample Index",
                        MajorGridlineStyle = LineStyle.Solid,
                        MinorGridlineStyle = LineStyle.Dot
                    });
                    
                    SignalPlotModel.Axes.Add(new LinearAxis 
                    { 
                        Position = AxisPosition.Left, 
                        Title = $"{signal.Unit}",
                        MajorGridlineStyle = LineStyle.Solid,
                        MinorGridlineStyle = LineStyle.Dot
                    });
                    
                    SignalPlotModel.InvalidatePlot(true);
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating signal plot: {ex.Message}");
            }
        }
        
        private void UpdateCorrelationPlot(CorrelationResult correlation)
        {
            try
            {
                CorrelationPlotModel.Series.Clear();
                CorrelationPlotModel.Axes.Clear();
                
                if (correlation.SignalA != null && correlation.SignalB != null)
                {
                    var seriesA = new LineSeries
                    {
                        Title = correlation.SignalA.Name,
                        Color = OxyColors.Blue,
                        MarkerType = MarkerType.Circle,
                        MarkerSize = 3
                    };
                    
                    var seriesB = new LineSeries
                    {
                        Title = correlation.SignalB.Name,
                        Color = OxyColors.Red,
                        MarkerType = MarkerType.Circle,
                        MarkerSize = 3
                    };
                    
                    var valuesA = correlation.SignalA.PhysicalValues;
                    var valuesB = correlation.SignalB.PhysicalValues;
                    
                    if (valuesA.Any() && valuesB.Any())
                    {
                        double minA = valuesA.Min();
                        double maxA = valuesA.Max();
                        double minB = valuesB.Min();
                        double maxB = valuesB.Max();
                        
                        double rangeA = maxA - minA;
                        double rangeB = maxB - minB;
                        
                        int pointCount = Math.Min(valuesA.Count, valuesB.Count);
                        pointCount = Math.Min(pointCount, 100); // Limit to 100 points
                        
                        for (int i = 0; i < pointCount; i++)
                        {
                            double normA = rangeA != 0 ? (valuesA[i] - minA) / rangeA : 0;
                            double normB = rangeB != 0 ? (valuesB[i] - minB) / rangeB : 0;
                            
                            seriesA.Points.Add(new DataPoint(i, normA));
                            seriesB.Points.Add(new DataPoint(i, normB));
                        }
                        
                        CorrelationPlotModel.Series.Add(seriesA);
                        CorrelationPlotModel.Series.Add(seriesB);
                        
                        CorrelationPlotModel.Axes.Add(new LinearAxis 
                        { 
                            Position = AxisPosition.Bottom, 
                            Title = "Sample Index",
                            MajorGridlineStyle = LineStyle.Solid
                        });
                        
                        CorrelationPlotModel.Axes.Add(new LinearAxis 
                        { 
                            Position = AxisPosition.Left, 
                            Title = "Normalized Value",
                            MajorGridlineStyle = LineStyle.Solid
                        });
                        
                        CorrelationPlotModel.InvalidatePlot(true);
                    }
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating correlation plot: {ex.Message}");
            }
        }
        
        private uint ExtractBits(byte[] data, int startBit, int length)
        {
            uint result = 0;
            for (int i = 0; i < length; i++)
            {
                int bitPosition = startBit + i;
                int byteIndex = bitPosition / 8;
                int bitIndex = bitPosition % 8;
                
                if (byteIndex < data.Length)
                {
                    int bitValue = (data[byteIndex] >> bitIndex) & 1;
                    result |= (uint)(bitValue << i);
                }
            }
            return result;
        }
        
        private void ExportResults(string filePath)
        {
            try
            {
                using var writer = new System.IO.StreamWriter(filePath);
                
                writer.WriteLine("CANalyzer Analysis Results");
                writer.WriteLine($"Generated: {DateTime.Now}");
                writer.WriteLine($"Messages: {_messages.Count}");
                writer.WriteLine($"Signals: {_allSignals.Count}");
                writer.WriteLine($"Correlations: {_correlations.Count}");
                writer.WriteLine();
                
                writer.WriteLine("=== MESSAGE STATISTICS ===");
                foreach (var stat in _statistics.OrderByDescending(s => s.Count).Take(20))
                {
                    writer.WriteLine($"ID 0x{stat.ID:X}: {stat.Count} messages, Freq: {stat.Frequency:F2} Hz, Cycle: {stat.EstimatedCycleTime}ms");
                }
                writer.WriteLine();
                
                writer.WriteLine("=== DETECTED SIGNALS ===");
                foreach (var signal in _allSignals)
                {
                    writer.WriteLine($"Name: {signal.Name}");
                    writer.WriteLine($"  Message ID: 0x{signal.MessageID:X}");
                    writer.WriteLine($"  Bits: {signal.StartBit}:{signal.Length}");
                    writer.WriteLine($"  Type: {signal.SignalType}");
                    writer.WriteLine($"  Classification: {signal.Classification}");
                    writer.WriteLine($"  Range: {signal.Minimum:F2} - {signal.Maximum:F2}");
                    writer.WriteLine($"  Unit: {signal.Unit}");
                    writer.WriteLine($"  Scaling: {signal.Factor:F3} * x + {signal.Offset:F3}");
                    writer.WriteLine();
                }
                
                writer.WriteLine("=== CORRELATIONS ===");
                foreach (var corr in _correlations.Where(c => c.IsSignificant).Take(20))
                {
                    writer.WriteLine($"{corr.SignalA?.Name ?? "Unknown"} ↔ {corr.SignalB?.Name ?? "Unknown"}: {corr.Correlation:F3} (lag: {corr.Lag})");
                }
                
                Debug.WriteLine($"Results exported to {filePath}");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error exporting results: {ex.Message}");
                throw;
            }
        }
        
        private void Exit_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
        
        #endregion
        
        #region Reverse Engineering Pipeline Methods
        
        private async void BtnRunPipeline_Click(object sender, RoutedEventArgs e)
        {
            if (_messages.Count == 0)
            {
                MessageBox.Show("Please load a log file first.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            try
            {
                txtStatus.Text = "Starting reverse engineering pipeline...";
                progressBar.IsIndeterminate = true;
                btnRunPipeline.IsEnabled = false;
                btnPreProcess.IsEnabled = false;
                btnLexicalAnalysis.IsEnabled = false;
                btnSemanticAnalysis.IsEnabled = false;
                
                // Сохраняем текущий файл во временный файл
                string tempFile = Path.GetTempFileName();
                
                try
                {
                    // Сохраняем во временный файл
                    SaveMessagesToTempFile(tempFile);
                    
                    // Шаг 1: Pre-processing
                    txtStatus.Text = "Step 1: Pre-processing...";
                    await Task.Run(() => RunPreProcessing(tempFile));
                    
                    // Проверяем результаты препроцессинга
                    if (_preProcessor == null || _preProcessor.ArbIDDictionary.Count == 0)
                    {
                        MessageBox.Show("Pre-processing failed. No ArbIDs found.", "Error", 
                            MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    
                    // Шаг 2: Lexical Analysis
                    txtStatus.Text = "Step 2: Lexical Analysis...";
                    await Task.Run(() => RunLexicalAnalysis());
                    
                    // Проверяем результаты лексического анализа
                    if (_pipelineSignals.Count == 0)
                    {
                        MessageBox.Show("Lexical analysis failed. No signals detected.", "Error", 
                            MessageBoxButton.OK, MessageBoxImage.Error);
                        return;
                    }
                    
                    // Шаг 3: Semantic Analysis
                    txtStatus.Text = "Step 3: Semantic Analysis...";
                    await Task.Run(() => RunSemanticAnalysis());
                    
                    // Обновляем UI
                    await Dispatcher.InvokeAsync(() => UpdatePipelineUI());
                    
                    txtStatus.Text = $"Pipeline complete: {_pipelineSignals.Count} signals, {_semanticAnalyzer?.Clusters?.Count ?? 0} clusters";
                    
                    MessageBox.Show($"Reverse engineering pipeline complete!\n\n" +
                                   $"ArbIDs: {_preProcessor?.ArbIDDictionary?.Count ?? 0}\n" +
                                   $"Signals: {_pipelineSignals.Count}\n" +
                                   $"Clusters: {_semanticAnalyzer?.Clusters?.Count ?? 0}", 
                                   "Pipeline Complete", 
                                   MessageBoxButton.OK, MessageBoxImage.Information);
                }
                finally
                {
                    // Удаляем временный файл
                    if (File.Exists(tempFile))
                        File.Delete(tempFile);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Pipeline error: {ex.Message}\n\n{ex.StackTrace}", "Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
                txtStatus.Text = "Pipeline error";
            }
            finally
            {
                progressBar.IsIndeterminate = false;
                btnRunPipeline.IsEnabled = true;
                btnPreProcess.IsEnabled = true;
                btnLexicalAnalysis.IsEnabled = true;
                btnSemanticAnalysis.IsEnabled = true;
            }
        }
        
        private async void BtnPreProcess_Click(object sender, RoutedEventArgs e)
        {
            if (_messages.Count == 0)
            {
                MessageBox.Show("Please load a log file first.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            try
            {
                txtStatus.Text = "Pre-processing...";
                progressBar.IsIndeterminate = true;
                btnPreProcess.IsEnabled = false;
                
                string tempFile = Path.GetTempFileName();
                SaveMessagesToTempFile(tempFile);
                
                try
                {
                    await Task.Run(() => RunPreProcessing(tempFile));
                    
                    await Dispatcher.InvokeAsync(() => 
                    {
                        UpdatePipelineUI();
                        txtStatus.Text = $"Pre-processing complete: {_preProcessor?.ArbIDDictionary?.Count ?? 0} ArbIDs";
                        
                        if (_preProcessor != null && _preProcessor.ArbIDDictionary.Count > 0)
                        {
                            // Enable next step button
                            btnLexicalAnalysis.IsEnabled = true;
                            
                            // Show detailed info
                            var firstArbId = _preProcessor.ArbIDDictionary.Values.First();
                            Debug.WriteLine($"First ArbID: 0x{firstArbId.ID:X}, Count: {firstArbId.MessageCount}");
                        }
                    });
                }
                finally
                {
                    if (File.Exists(tempFile))
                        File.Delete(tempFile);
                }
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Pre-processing error: {ex.Message}\n\n{ex.StackTrace}", "Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
                txtStatus.Text = "Pre-processing error";
            }
            finally
            {
                progressBar.IsIndeterminate = false;
                btnPreProcess.IsEnabled = true;
            }
        }
        
        private async void BtnLexicalAnalysis_Click(object sender, RoutedEventArgs e)
        {
            if (_preProcessor == null || _preProcessor.ArbIDDictionary.Count == 0)
            {
                MessageBox.Show("Please run pre-processing first.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            try
            {
                txtStatus.Text = "Lexical Analysis...";
                progressBar.IsIndeterminate = true;
                btnLexicalAnalysis.IsEnabled = false;
                
                await Task.Run(() => RunLexicalAnalysis());
                
                await Dispatcher.InvokeAsync(() => 
                {
                    UpdatePipelineUI();
                    txtStatus.Text = $"Lexical analysis complete: {_pipelineSignals.Count} signals";
                    
                    if (_pipelineSignals.Count > 0)
                    {
                        // Enable next step button
                        btnSemanticAnalysis.IsEnabled = true;
                        
                        // Show detailed info
                        var firstSignal = _pipelineSignals.First();
                        Debug.WriteLine($"First signal: {firstSignal.Name}, Type: {firstSignal.SignalType}");
                    }
                });
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Lexical analysis error: {ex.Message}\n\n{ex.StackTrace}", "Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
                txtStatus.Text = "Lexical analysis error";
            }
            finally
            {
                progressBar.IsIndeterminate = false;
                btnLexicalAnalysis.IsEnabled = true;
            }
        }
        
        private async void BtnSemanticAnalysis_Click(object sender, RoutedEventArgs e)
        {
            if (_lexicalAnalyzer == null || _pipelineSignals.Count == 0)
            {
                MessageBox.Show("Please run lexical analysis first.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            try
            {
                txtStatus.Text = "Semantic Analysis...";
                progressBar.IsIndeterminate = true;
                btnSemanticAnalysis.IsEnabled = false;
                
                await Task.Run(() => RunSemanticAnalysis());
                
                await Dispatcher.InvokeAsync(() => 
                {
                    UpdatePipelineUI();
                    txtStatus.Text = $"Semantic analysis complete: {_semanticAnalyzer?.Clusters?.Count ?? 0} clusters";
                    
                    if (_semanticAnalyzer != null && _semanticAnalyzer.Clusters.Count > 0)
                    {
                        // Show detailed info
                        var firstCluster = _semanticAnalyzer.Clusters.First();
                        Debug.WriteLine($"First cluster: {firstCluster.Key}, Signals: {firstCluster.Value.Count}");
                    }
                });
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Semantic analysis error: {ex.Message}\n\n{ex.StackTrace}", "Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
                txtStatus.Text = "Semantic analysis error";
            }
            finally
            {
                progressBar.IsIndeterminate = false;
                btnSemanticAnalysis.IsEnabled = true;
            }
        }
        
        private void RunPreProcessing(string filePath)
        {
            try
            {
                Debug.WriteLine($"Running pre-processing on: {filePath}");
                
                _preProcessor = new CANPreProcessor();
                
                // Определяем формат файла - временный файл всегда в CSV формате
                LogFormat format = LogFormat.CSV;
                
                // Обрабатываем файл с помощью CANPreProcessor
                _preProcessor.ProcessLogFile(filePath, format);
                
                Debug.WriteLine($"Pre-processing complete: {_preProcessor.ArbIDDictionary.Count} ArbIDs, " +
                               $"{_preProcessor.TotalMessages} messages processed");
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error in RunPreProcessing: {ex.Message}\n{ex.StackTrace}");
                throw;
            }
        }
        
        private void SaveMessagesToTempFile(string tempFile)
        {
            using var writer = new StreamWriter(tempFile, false, Encoding.UTF8);
            
            // Write PEAK-Converter compatible CSV header
            writer.WriteLine("Time (ms),ID/PID (hex),Length,Data0,Data1,Data2,Data3,Data4,Data5,Data6,Data7");
            
            // Write messages
            foreach (var message in _messages)
            {
                // Convert timestamp to milliseconds (PEAK-Converter format)
                double timestampMs = message.Timestamp * 1000.0;
                
                // Format ID as hex
                string idHex = message.ID.ToString("X");
                
                // Format data bytes
                string[] dataBytes = new string[8];
                for (int i = 0; i < 8; i++)
                {
                    if (i < message.Data.Length && i < message.DLC)
                    {
                        dataBytes[i] = message.Data[i].ToString("X2");
                    }
                    else
                    {
                        dataBytes[i] = "00"; // Fill with zeros
                    }
                }
                
                // Write CSV line
                writer.WriteLine($"{timestampMs:F6},{idHex},{message.DLC}," +
                                $"{dataBytes[0]},{dataBytes[1]},{dataBytes[2]},{dataBytes[3]}," +
                                $"{dataBytes[4]},{dataBytes[5]},{dataBytes[6]},{dataBytes[7]}");
            }
            
            Debug.WriteLine($"Saved {_messages.Count} messages to temp file: {tempFile}");
        }
        
        private void RunLexicalAnalysis()
        {
            if (_preProcessor == null || _preProcessor.ArbIDDictionary.Count == 0)
                throw new InvalidOperationException("Pre-processing not completed");
            
            _lexicalAnalyzer = new CANLexicalAnalyzer();
            _lexicalAnalyzer.Analyze(_preProcessor.ArbIDDictionary);
            _pipelineSignals = _lexicalAnalyzer.SignalList;
        }
        
        private void RunSemanticAnalysis()
        {
            if (_lexicalAnalyzer == null || _pipelineSignals.Count == 0)
                throw new InvalidOperationException("Lexical analysis not completed");
            
            _semanticAnalyzer = new CANSemanticAnalyzer();
            _semanticAnalyzer.SetSignals(_pipelineSignals);
            _semanticAnalyzer.Analyze(_pipelineSignals);
        }
        
        private void UpdatePipelineUI()
        {
            try
            {
                // Update ArbIDs grid
                if (_preProcessor != null)
                {
                    var arbIDList = _preProcessor.ArbIDDictionary.Values
                        .Select(a => new
                        {
                            ID = $"0x{a.ID:X}",
                            a.Name,
                            a.MessageCount,
                            Frequency = $"{a.Frequency:F2} Hz",
                            a.DLC,
                            a.IsJ1979Standard,
                            J1979Param = a.J1979Parameter
                        })
                        .OrderByDescending(a => a.MessageCount)
                        .ToList();
                    
                    dgPipelineArbIDs.ItemsSource = arbIDList;
                    dgPipelineArbIDs.Items.Refresh();
                    
                    Debug.WriteLine($"Updated ArbIDs grid with {arbIDList.Count} items");
                }
                
                // Update signals list
                var pipelineSignalDisplay = _pipelineSignals
                    .Select(s => new
                    {
                        s.Name,
                        ArbID = s.ArbIDName,
                        Byte = s.ByteIndex,
                        Type = s.SignalType.ToString(),
                        Min = s.Minimum.ToString("F2"),
                        Max = s.Maximum.ToString("F2"),
                        s.Unit,
                        s.ClusterLabel
                    })
                    .ToList();
                
                lvPipelineSignals.ItemsSource = pipelineSignalDisplay;
                lvPipelineSignals.Items.Refresh();
                
                Debug.WriteLine($"Updated signals list with {pipelineSignalDisplay.Count} items");
                
                // Update clusters
                if (_semanticAnalyzer != null && _semanticAnalyzer.Clusters != null)
                {
                    var clusterInfo = _semanticAnalyzer.Clusters
                        .Select(c => new
                        {
                            ClusterId = c.Key,
                            SignalCount = c.Value.Count,
                            SignalNames = string.Join(", ", c.Value.Select(s => s.Name).Take(3))
                        })
                        .ToList();
                    
                    lvClusters.ItemsSource = clusterInfo;
                    lvClusters.Items.Refresh();
                    
                    Debug.WriteLine($"Updated clusters list with {clusterInfo.Count} items");
                }
            }
            catch (Exception ex)
            {
                Debug.WriteLine($"Error updating pipeline UI: {ex.Message}\n{ex.StackTrace}");
            }
        }
        
        private void LvPipelineSignals_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lvPipelineSignals.SelectedItem != null)
            {
                dynamic selectedItem = lvPipelineSignals.SelectedItem;
                string signalName = selectedItem.Name;
                
                var selectedSignal = _pipelineSignals.FirstOrDefault(s => s.Name == signalName);
                if (selectedSignal != null)
                {
                    txtPipelineArbID.Text = selectedSignal.ArbIDName;
                    txtPipelineByte.Text = selectedSignal.ByteIndex.ToString();
                    txtPipelineRange.Text = $"{selectedSignal.Minimum:F2} - {selectedSignal.Maximum:F2}";
                    txtPipelineUnique.Text = selectedSignal.UniqueValues.ToString();
                    txtPipelineMean.Text = $"{selectedSignal.Mean:F2}";
                    txtPipelineStdDev.Text = $"{selectedSignal.StdDev:F2}";
                    
                    // Update plot
                    UpdatePipelineSignalPlot(selectedSignal);
                }
            }
        }
        
        private void LvClusters_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (lvClusters.SelectedItem != null && _semanticAnalyzer != null)
            {
                dynamic selectedItem = lvClusters.SelectedItem;
                int clusterId = selectedItem.ClusterId;
                
                var clusterSignals = _semanticAnalyzer.GetSignalsInCluster(clusterId);
                txtClusterInfo.Text = $"Cluster {clusterId}: {clusterSignals.Count} signals";
                
                // Update cluster plot
                UpdateClusterPlot(clusterSignals, clusterId);
            }
        }
        
        private void UpdatePipelineSignalPlot(Signal signal)
        {
            PipelinePlotModel.Series.Clear();
            PipelinePlotModel.Axes.Clear();
            
            if (signal.TimeSeries.Any() && signal.Timestamps.Any())
            {
                var lineSeries = new LineSeries
                {
                    Title = signal.Name,
                    Color = OxyColors.Blue,
                    MarkerType = MarkerType.Circle,
                    MarkerSize = 2
                };
                
                // Limit to 200 points for performance
                int step = Math.Max(1, signal.TimeSeries.Count / 200);
                for (int i = 0; i < signal.TimeSeries.Count; i += step)
                {
                    if (i < signal.Timestamps.Count)
                    {
                        lineSeries.Points.Add(new DataPoint(signal.Timestamps[i], signal.TimeSeries[i]));
                    }
                }
                
                PipelinePlotModel.Series.Add(lineSeries);
                
                PipelinePlotModel.Axes.Add(new LinearAxis 
                { 
                    Position = AxisPosition.Bottom, 
                    Title = "Time (s)",
                    MajorGridlineStyle = LineStyle.Solid
                });
                
                PipelinePlotModel.Axes.Add(new LinearAxis 
                { 
                    Position = AxisPosition.Left, 
                    Title = signal.Unit,
                    MajorGridlineStyle = LineStyle.Solid
                });
                
                PipelinePlotModel.InvalidatePlot(true);
            }
        }
        
        private void UpdateClusterPlot(List<Signal> signals, int clusterId)
        {
            ClusterPlotModel.Series.Clear();
            ClusterPlotModel.Axes.Clear();
            
            if (!signals.Any()) return;
            
            // Create a series for each signal in the cluster (normalized)
            var colors = new[] { OxyColors.Blue, OxyColors.Red, OxyColors.Green, OxyColors.Orange, 
                                 OxyColors.Purple, OxyColors.Brown, OxyColors.Pink };
            
            for (int i = 0; i < Math.Min(signals.Count, 7); i++)
            {
                var signal = signals[i];
                if (!signal.TimeSeries.Any() || !signal.Timestamps.Any()) continue;
                
                var lineSeries = new LineSeries
                {
                    Title = signal.Name,
                    Color = colors[i % colors.Length],
                    MarkerType = MarkerType.None,
                    LineStyle = i == 0 ? LineStyle.Solid : LineStyle.Dash
                };
                
                // Normalize the signal to 0-1 range for comparison
                double min = signal.TimeSeries.Min();
                double max = signal.TimeSeries.Max();
                double range = max - min;
                
                int step = Math.Max(1, signal.TimeSeries.Count / 100);
                for (int j = 0; j < signal.TimeSeries.Count; j += step)
                {
                    if (j < signal.Timestamps.Count)
                    {
                        double normalizedValue = range > 0 ? (signal.TimeSeries[j] - min) / range : 0.5;
                        lineSeries.Points.Add(new DataPoint(signal.Timestamps[j], normalizedValue));
                    }
                }
                
                ClusterPlotModel.Series.Add(lineSeries);
            }
            
            ClusterPlotModel.Axes.Add(new LinearAxis 
            { 
                Position = AxisPosition.Bottom, 
                Title = "Time (s)",
                MajorGridlineStyle = LineStyle.Solid
            });
            
            ClusterPlotModel.Axes.Add(new LinearAxis 
            { 
                Position = AxisPosition.Left, 
                Title = "Normalized Value",
                MajorGridlineStyle = LineStyle.Solid
            });
            
            ClusterPlotModel.Title = $"Cluster {clusterId} Signals";
            ClusterPlotModel.InvalidatePlot(true);
        }
        
        private void BtnExportPipeline_Click(object sender, RoutedEventArgs e)
        {
            if (_pipelineSignals.Count == 0)
            {
                MessageBox.Show("Run the pipeline first to generate results.", "Warning", 
                    MessageBoxButton.OK, MessageBoxImage.Warning);
                return;
            }
            
            var saveDialog = new SaveFileDialog
            {
                Filter = "CSV Files (*.csv)|*.csv|JSON Files (*.json)|*.json|All Files (*.*)|*.*",
                Title = "Export Pipeline Results",
                DefaultExt = "csv"
            };
            
            if (saveDialog.ShowDialog() == true)
            {
                try
                {
                    ExportPipelineResults(saveDialog.FileName);
                    MessageBox.Show($"Pipeline results exported to {saveDialog.FileName}", "Export Complete", 
                        MessageBoxButton.OK, MessageBoxImage.Information);
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Error exporting results: {ex.Message}", "Error", 
                        MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }
        
        private void ExportPipelineResults(string filePath)
        {
            using var writer = new StreamWriter(filePath);
            
            // Write header
            writer.WriteLine("Reverse Engineering Pipeline Results");
            writer.WriteLine($"Generated: {DateTime.Now}");
            writer.WriteLine($"Pipeline based on CAN_Reverse_Engineering methodology");
            writer.WriteLine();
            
            if (_preProcessor != null)
            {
                writer.WriteLine("=== ARBID STATISTICS ===");
                writer.WriteLine("ID,Name,Count,Frequency,DLC,J1979");
                
                foreach (var arbId in _preProcessor.ArbIDDictionary.Values.OrderByDescending(a => a.MessageCount))
                {
                    writer.WriteLine($"{arbId.ID:X},{arbId.Name},{arbId.MessageCount},{arbId.Frequency:F2},{arbId.DLC},{arbId.J1979Parameter}");
                }
                writer.WriteLine();
            }
            
            writer.WriteLine("=== DETECTED SIGNALS ===");
            writer.WriteLine("Name,ArbID,Byte,Type,Min,Max,Mean,StdDev,UniqueValues,Cluster");
            
            foreach (var signal in _pipelineSignals)
            {
                writer.WriteLine($"{signal.Name},{signal.ArbIDName},{signal.ByteIndex},{signal.SignalType}," +
                                $"{signal.Minimum:F2},{signal.Maximum:F2},{signal.Mean:F2},{signal.StdDev:F2}," +
                                $"{signal.UniqueValues},{signal.ClusterLabel}");
            }
            writer.WriteLine();
            
            if (_semanticAnalyzer != null)
            {
                writer.WriteLine("=== CLUSTERS ===");
                foreach (var cluster in _semanticAnalyzer.Clusters)
                {
                    writer.WriteLine($"Cluster {cluster.Key}: {cluster.Value.Count} signals");
                    foreach (var signal in cluster.Value)
                    {
                        writer.WriteLine($"  {signal.Name} ({signal.SignalType})");
                    }
                    writer.WriteLine();
                }
            }
        }
        
        #endregion
        
        // Helper classes for data transfer
        private class AnalysisParameters
        {
            public List<CANMessage> Messages { get; set; } = new List<CANMessage>();
            public int MessageCount { get; set; }
        }
        
        private class AnalysisResults
        {
            public List<MessageStatistics> Statistics { get; set; } = new List<MessageStatistics>();
            public Dictionary<uint, List<CANSignal>> DetectedSignals { get; set; } = new Dictionary<uint, List<CANSignal>>();
            public List<CANSignal> AllSignals { get; set; } = new List<CANSignal>();
            public List<CorrelationResult> Correlations { get; set; } = new List<CorrelationResult>();
        }
    }
}