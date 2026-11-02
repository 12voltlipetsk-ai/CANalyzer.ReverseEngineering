using System;
using System.Net.Http;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using Microsoft.Win32;
using CANalyzer.ML.NeuralNetworks;

namespace CANalyzer.WPF.Views
{
    public partial class SettingsWindow : Window
    {
        public SettingsWindow()
        {
            InitializeComponent();
            Loaded += SettingsWindow_Loaded;
            
            // Привязка событий изменения значений
            sldClassificationThreshold.ValueChanged += ThresholdSlider_ValueChanged;
            sldCorrelationThreshold.ValueChanged += CorrelationSlider_ValueChanged;
        }
        
        private void SettingsWindow_Loaded(object sender, RoutedEventArgs e)
        {
            // Инициализация значений из настроек
            txtThresholdValue.Text = sldClassificationThreshold.Value.ToString("F2");
            txtCorrelationValue.Text = sldCorrelationThreshold.Value.ToString("F2");
        }
        
        private void ThresholdSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            txtThresholdValue.Text = sldClassificationThreshold.Value.ToString("F2");
        }
        
        private void CorrelationSlider_ValueChanged(object sender, RoutedPropertyChangedEventArgs<double> e)
        {
            txtCorrelationValue.Text = sldCorrelationThreshold.Value.ToString("F2");
        }
        
        private void BtnOK_Click(object sender, RoutedEventArgs e)
        {
            SaveSettings();
            DialogResult = true;
            Close();
        }
        
        private void BtnCancel_Click(object sender, RoutedEventArgs e)
        {
            DialogResult = false;
            Close();
        }
        
        private void BtnApply_Click(object sender, RoutedEventArgs e)
        {
            SaveSettings();
            MessageBox.Show("Settings applied successfully.", "Settings", 
                MessageBoxButton.OK, MessageBoxImage.Information);
        }
        
        private async void BtnTrainModel_Click(object sender, RoutedEventArgs e)
        {
            try
            {
                btnTrainModel.IsEnabled = false;
                btnTrainModel.Content = "Training...";
                
                await Task.Run(async () =>
                {
                    var classifier = new SignalClassifier();
                    
                    // Загрузка данных из указанных источников
                    await classifier.LoadTrainingDataFromSources(
                        useCommaAI: chkUseCommaAI.IsChecked == true,
                        useBYD: chkUseBYD.IsChecked == true,
                        useJejuSoul: chkUseJejuSoul.IsChecked == true,
                        useGENIVI: chkUseGENIVI.IsChecked == true,
                        useBukapilot: chkUseBukapilot.IsChecked == true
                    );
                    
                    // Обучение модели с параметрами из UI
                    int epochs = int.TryParse(txtTrainingEpochs.Text, out int e) ? e : 100;
                    int batchSize = int.TryParse(txtBatchSize.Text, out int b) ? b : 32;
                    double learningRate = double.TryParse(txtLearningRate.Text, out double lr) ? lr : 0.001;
                    
                    await classifier.TrainModelAsync(epochs, batchSize, learningRate);
                    
                    // Сохранение модели
                    classifier.SaveModel("signal_classifier.model");
                });
                
                MessageBox.Show("Model trained and saved successfully!", "Training Complete", 
                    MessageBoxButton.OK, MessageBoxImage.Information);
            }
            catch (Exception ex)
            {
                MessageBox.Show($"Error training model: {ex.Message}", "Training Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);
            }
            finally
            {
                btnTrainModel.IsEnabled = true;
                btnTrainModel.Content = "Train Model";
            }
        }
        
        private void SaveSettings()
        {
            try
            {
                // Здесь можно сохранить настройки в файл или базу данных
                Console.WriteLine("Settings saved:");
                Console.WriteLine($"Default DLC: {txtDefaultDLC.Text}");
                Console.WriteLine($"Min Signal Length: {txtMinSignalLength.Text}");
                Console.WriteLine($"Max Signal Length: {txtMaxSignalLength.Text}");
                Console.WriteLine($"Classification Threshold: {sldClassificationThreshold.Value:F2}");
                Console.WriteLine($"Correlation Threshold: {sldCorrelationThreshold.Value:F2}");
                Console.WriteLine($"Update Interval: {txtUpdateInterval.Text}ms");
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error saving settings: {ex.Message}");
            }
        }
    }
}