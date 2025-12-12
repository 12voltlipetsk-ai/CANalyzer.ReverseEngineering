@echo off
echo Building CANalyzer solution...
echo.

REM Переходим в папку с проектом
cd /d "C:\Users\rveremeev\Documents\CANalyzer"

REM Очистка предыдущих сборок
echo Cleaning previous builds...
dotnet clean
echo.

REM Восстановление пакетов
echo Restoring packages...
dotnet restore
echo.

REM Сборка проекта Core
echo Building Core project...
dotnet build CANalyzer.Core\CANalyzer.Core.csproj
if %ERRORLEVEL% NEQ 0 (
    echo Core project build failed!
    pause
    exit /b 1
)
echo.

REM Сборка проекта ML
echo Building ML project...
dotnet build CANalyzer.ML\CANalyzer.ML.csproj
if %ERRORLEVEL% NEQ 0 (
    echo ML project build failed!
    pause
    exit /b 1
)
echo.

REM Сборка проекта Correlation
echo Building Correlation project...
dotnet build CANalyzer.Correlation\CANalyzer.Correlation.csproj
if %ERRORLEVEL% NEQ 0 (
    echo Correlation project build failed!
    pause
    exit /b 1
)
echo.

REM Сборка проекта WPF
echo Building WPF project...
dotnet build CANalyzer.WPF\CANalyzer.WPF.csproj
if %ERRORLEVEL% NEQ 0 (
    echo WPF project build failed!
    pause
    exit /b 1
)
echo.

REM Сборка проекта ReverseEngineering
echo Building ReverseEngineering project...
dotnet build CANalyzer.ReverseEngineering\CANalyzer.ReverseEngineering.csproj
if %ERRORLEVEL% NEQ 0 (
    echo ReverseEngineering project build failed!
    pause
    exit /b 1
)
echo.

REM Проверка успешности сборки
echo Build successful! Starting application...
echo.
timeout /t 3 /nobreak >nul

REM Запуск приложения
dotnet run --project CANalyzer.WPF\CANalyzer.WPF.csproj