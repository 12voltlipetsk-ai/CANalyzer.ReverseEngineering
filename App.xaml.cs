using System;
using System.IO;
using System.Reflection;
using System.Threading;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Threading;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.DependencyInjection;
using Microsoft.Extensions.Logging;
using CANalyzer.WPF.Views;

namespace CANalyzer.WPF
{
    public partial class App : Application
    {
        private static readonly Mutex _appMutex = new Mutex(true, "{12Volt-CANalyzer-2024-APP-ID}");
        private IServiceProvider? _serviceProvider;
        private ILogger<App>? _logger;

        private void Application_Startup(object sender, StartupEventArgs e)
        {
            // Check for single instance
            if (!_appMutex.WaitOne(TimeSpan.Zero, true))
            {
                MessageBox.Show("CANalyzer is already running!", "Application Running", 
                    MessageBoxButton.OK, MessageBoxImage.Information);
                Current.Shutdown();
                return;
            }

            try
            {
                // Setup global exception handling
                SetupExceptionHandling();

                // Configure services
                _serviceProvider = ConfigureServices();

                // Create necessary directories
                CreateApplicationDirectories();

                // Show main window
                var mainWindow = _serviceProvider.GetRequiredService<MainWindow>();
                mainWindow.Show();

                _logger?.LogInformation("Application started successfully");
            }
            catch (Exception ex)
            {
                HandleFatalStartupError(ex);
            }
        }

        protected override void OnExit(ExitEventArgs e)
        {
            try
            {
                _logger?.LogInformation("Application shutting down...");

                // Clean up temp files
                CleanupTempFiles();

                _logger?.LogInformation("Application shutdown complete");
            }
            catch (Exception ex)
            {
                LogError("Error during shutdown", ex);
            }
            finally
            {
                // Ensure mutex is released
                try { _appMutex?.Close(); } catch { }
                
                base.OnExit(e);
            }
        }

        private IServiceProvider ConfigureServices()
        {
            var services = new ServiceCollection();

            // Configuration
            var configuration = new ConfigurationBuilder()
                .SetBasePath(AppDomain.CurrentDomain.BaseDirectory)
                .AddJsonFile("appsettings.json", optional: true, reloadOnChange: true)
                .Build();
            
            services.AddSingleton<IConfiguration>(configuration);

            // Logging
            services.AddLogging(logging =>
            {
                logging.ClearProviders();
                logging.AddConsole();
                logging.AddDebug();
                logging.AddConfiguration(configuration.GetSection("Logging"));
            });

            // Windows
            services.AddSingleton<MainWindow>();
            services.AddTransient<SettingsWindow>();

            // Build and return service provider
            var serviceProvider = services.BuildServiceProvider();
            
            // Get logger instance
            _logger = serviceProvider.GetRequiredService<ILogger<App>>();
            
            return serviceProvider;
        }

        private void SetupExceptionHandling()
        {
            // Global WPF exceptions
            DispatcherUnhandledException += (sender, args) =>
            {
                LogError("Dispatcher Unhandled Exception", args.Exception);
                args.Handled = true;
                ShowErrorDialog("UI Error", 
                    $"An error occurred in the user interface:\n\n{args.Exception.Message}", 
                    args.Exception);
            };

            // Global AppDomain exceptions
            AppDomain.CurrentDomain.UnhandledException += (sender, args) =>
            {
                var exception = args.ExceptionObject as Exception;
                LogError("AppDomain Unhandled Exception", exception);
                ShowFatalErrorDialog(exception);
            };

            // Task scheduler exceptions
            TaskScheduler.UnobservedTaskException += (sender, args) =>
            {
                LogError("Unobserved Task Exception", args.Exception);
                args.SetObserved();
            };
        }

        private void CreateApplicationDirectories()
        {
            var basePath = AppDomain.CurrentDomain.BaseDirectory;
            var directories = new[]
            {
                Path.Combine(basePath, "Logs"),
                Path.Combine(basePath, "Exports"),
                Path.Combine(basePath, "DBC_Exports"),
                Path.Combine(basePath, "Temp"),
                Path.Combine(basePath, "Models")
            };

            foreach (var directory in directories)
            {
                if (!Directory.Exists(directory))
                {
                    Directory.CreateDirectory(directory);
                    Console.WriteLine($"Created directory: {directory}");
                }
            }
        }

        private void CleanupTempFiles()
        {
            try
            {
                var tempPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Temp");
                if (Directory.Exists(tempPath))
                {
                    var files = Directory.GetFiles(tempPath, "*.*", SearchOption.AllDirectories);
                    foreach (var file in files)
                    {
                        try
                        {
                            File.Delete(file);
                        }
                        catch { /* Ignore delete errors */ }
                    }
                    Console.WriteLine("Cleaned up temp files");
                }
            }
            catch (Exception ex)
            {
                Console.WriteLine($"Error cleaning up temp files: {ex.Message}");
            }
        }

        private void LogError(string context, Exception? exception)
        {
            try
            {
                string logPath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Logs", "error.log");
                string logMessage = $"[{DateTime.Now:yyyy-MM-dd HH:mm:ss}] {context}\n" +
                                   $"Message: {exception?.Message}\n" +
                                   $"Type: {exception?.GetType().Name}\n" +
                                   $"Stack Trace: {exception?.StackTrace}\n" +
                                   "----------------------------------------\n";

                File.AppendAllText(logPath, logMessage);
            }
            catch { /* Ignore logging errors */ }
        }

        private void ShowErrorDialog(string title, string message, Exception? exception = null)
        {
            Dispatcher.Invoke(() =>
            {
                var fullMessage = message;
                if (exception != null)
                {
                    fullMessage += $"\n\nTechnical Details:\n{exception.Message}";
                }

                MessageBox.Show(fullMessage, title, 
                    MessageBoxButton.OK, MessageBoxImage.Error);
            });
        }

        private void ShowFatalErrorDialog(Exception? exception)
        {
            Dispatcher.Invoke(() =>
            {
                var message = $"A fatal error has occurred and the application must close.\n\n" +
                            $"Error: {exception?.Message}\n\n" +
                            "Please check the error log for more details.";

                MessageBox.Show(message, "Fatal Error", 
                    MessageBoxButton.OK, MessageBoxImage.Error);

                Current.Shutdown(1);
            });
        }

        private void HandleFatalStartupError(Exception exception)
        {
            string errorMessage = $"Failed to start CANalyzer:\n\n{exception.Message}\n\n" +
                                "Please check the following:\n" +
                                "1. You have .NET 8.0 Runtime installed\n" +
                                "2. Required dependencies are available\n" +
                                "3. The application has necessary permissions";

            MessageBox.Show(errorMessage, "Startup Error", 
                MessageBoxButton.OK, MessageBoxImage.Error);

            LogError("Fatal Startup Error", exception);
            Current.Shutdown(1);
        }
    }
}