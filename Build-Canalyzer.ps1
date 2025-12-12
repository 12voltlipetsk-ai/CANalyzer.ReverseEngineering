@echo off
echo Building CANalyzer solution...
echo.

cd /d "C:\Users\rveremeev\Documents\CANalyzer"

echo Cleaning previous builds...
dotnet clean
echo.

echo Restoring packages...
dotnet restore
echo.

echo Building all projects...
dotnet build CANalyzer.sln
if %ERRORLEVEL% NEQ 0 (
    echo Build failed!
    pause
    exit /b 1
)

echo.
echo Build successful! Starting application...
timeout /t 2 /nobreak >nul

dotnet run --project CANalyzer.WPF\CANalyzer.WPF.csproj