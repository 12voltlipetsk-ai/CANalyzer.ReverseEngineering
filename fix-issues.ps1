# fix-issues.ps1
Write-Host "=== CANalyzer Build Fix ===" -ForegroundColor Cyan
Write-Host "Current directory: $((Get-Location).Path)" -ForegroundColor Yellow

# 1. Проверим структуру
Write-Host "`n1. Checking project structure..." -ForegroundColor Cyan
$projects = @(
    "CANalyzer.Core",
    "CANalyzer.WPF", 
    "CANalyzer.ML",
    "CANalyzer.ReverseEngineering",
    "CANalyzer.Correlation",
    "CANalyzer.Tests",
    "CANalyzer.Scripts"
)

foreach ($proj in $projects) {
    if (Test-Path ".\$proj") {
        Write-Host "  ✓ $proj found" -ForegroundColor Green
    } else {
        Write-Host "  ✗ $proj NOT found" -ForegroundColor Red
    }
}

# 2. Проверим файл Enums.cs
Write-Host "`n2. Checking Enums.cs..." -ForegroundColor Cyan
$enumsPath = ".\CANalyzer.Core\Models\Enums.cs"
if (Test-Path $enumsPath) {
    $content = Get-Content $enumsPath -Raw
    if ($content -match "enum SignalClassification" -and $content -match "enum SignalType") {
        Write-Host "  ✓ Enums.cs contains required enums" -ForegroundColor Green
    } else {
        Write-Host "  ! Enums.cs needs to be fixed" -ForegroundColor Yellow
        # Создаем правильный файл
        $correctEnums = @"
namespace CANalyzer.Core.Models
{
    public enum SignalClassification
    {
        Unknown,
        Sensor,
        Status,
        Diagnostic,
        Control,
        Actuator,
        Counter,
        Boolean,
        Enum,
        Continuous
    }

    public enum SignalType
    {
        Unknown,
        Boolean,
        Enum,
        Continuous,
        Counter,
        Constant
    }
}
"@
        Set-Content -Path $enumsPath -Value $correctEnums
        Write-Host "  ✓ Enums.cs fixed" -ForegroundColor Green
    }
} else {
    Write-Host "  ✗ Enums.cs not found!" -ForegroundColor Red
}

# 3. Обновим ссылки в проектах
Write-Host "`n3. Updating project references..." -ForegroundColor Cyan
$projFiles = Get-ChildItem -Recurse -Filter "*.csproj" | Where-Object { 
    $_.Name -notlike "CANalyzer.Core.csproj" -and $_.Directory.Name -ne "CANalyzer.Core"
}

foreach ($projFile in $projFiles) {
    $content = Get-Content $projFile.FullName -Raw
    if (-not $content.Contains("<ProjectReference Include=`"..\CANalyzer.Core\CANalyzer.Core.csproj`">")) {
        # Добавляем ссылку на Core
        $newContent = $content -replace 
            '(<ItemGroup>)', 
            '$1' + [Environment]::NewLine + '    <ProjectReference Include="..\CANalyzer.Core\CANalyzer.Core.csproj" />'
        Set-Content -Path $projFile.FullName -Value $newContent
        Write-Host "  ✓ Added Core reference to $($projFile.Name)" -ForegroundColor Green
    } else {
        Write-Host "  ✓ Core reference already exists in $($projFile.Name)" -ForegroundColor Gray
    }
}

# 4. Очистка
Write-Host "`n4. Cleaning..." -ForegroundColor Cyan
dotnet clean CANalyzer.sln
Get-ChildItem -Directory -Recurse -Filter "bin" | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue
Get-ChildItem -Directory -Recurse -Filter "obj" | Remove-Item -Recurse -Force -ErrorAction SilentlyContinue

# 5. Восстановление
Write-Host "`n5. Restoring packages..." -ForegroundColor Cyan
dotnet restore CANalyzer.sln

# 6. Сборка
Write-Host "`n6. Building solution..." -ForegroundColor Cyan
dotnet build CANalyzer.sln --configuration Debug --verbosity minimal

# 7. Проверка результата
if ($LASTEXITCODE -eq 0) {
    Write-Host "`n✅ BUILD SUCCESSFUL!" -ForegroundColor Green
    Write-Host "`nTo run the application:" -ForegroundColor Yellow
    Write-Host "  dotnet run --project .\CANalyzer.WPF\" -ForegroundColor White
    Write-Host "`nOr simply run the batch file:" -ForegroundColor Yellow
    Write-Host "  .\build_and_run.bat" -ForegroundColor White
} else {
    Write-Host "`n❌ BUILD FAILED!" -ForegroundColor Red
    Write-Host "`nLast 5 errors:" -ForegroundColor Red
    # Покажем последние ошибки
    $buildOutput = dotnet build CANalyzer.sln --configuration Debug --verbosity normal 2>&1
    $errors = $buildOutput | Where-Object { $_ -match "error" } | Select-Object -Last 5
    foreach ($err in $errors) {
        Write-Host "  $err" -ForegroundColor Red
    }
    
    Write-Host "`nTrying to build just WPF project..." -ForegroundColor Yellow
    dotnet build .\CANalyzer.WPF\CANalyzer.WPF.csproj
    if ($LASTEXITCODE -eq 0) {
        Write-Host "`n✅ WPF project builds successfully!" -ForegroundColor Green
        Write-Host "You can run: dotnet run --project .\CANalyzer.WPF\" -ForegroundColor White
    }
}