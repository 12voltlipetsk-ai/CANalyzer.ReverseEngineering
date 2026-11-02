# CANalyzer

Инструмент для анализа CAN-логов и reverse engineering CAN-протоколов: загружает логи в форматах CSV/ASC, автоматически обнаруживает сигналы и генерирует DBC-файлы.

## Возможности

- **Парсинг CAN-логов** — форматы CSV, ASC (PEAK), BLF
- **Статистический анализ** — частота сообщений, цикличность, джиттер
- **Детекция сигналов** — автоматический поиск сигналов внутри сообщений (start bit, длина, масштабирование)
- **ML-классификация** — определение типа сигнала (сенсор, счётчик, контрольная сумма и т.д.)
- **Корреляционный анализ** — поиск связей между сигналами
- **Reverse Engineering pipeline** — препроцессинг, лексический и семантический анализ, кластеризация сигналов
- **Генерация DBC** — экспорт обнаруженных сигналов в DBC-файл

## Структура решения

```
CANalyzer.sln
├── CANalyzer.WPF/                  # WPF-приложение (точка входа)
│   ├── App.xaml(.cs)
│   ├── appsettings.json
│   └── Views/                      # MainWindow, SettingsWindow
├── CANalyzer.Core/                 # Модели, парсеры, анализаторы, генератор DBC
│   ├── Models/
│   ├── Parsers/
│   ├── Analyzers/
│   └── DBC/
├── CANalyzer.ML/                   # ML-классификация сигналов
│   └── NeuralNetworks/
├── CANalyzer.Correlation/          # Корреляционный анализ
│   └── Analyzers/
├── CANalyzer.ReverseEngineering/   # Pipeline reverse engineering
│   ├── Analyzers/
│   ├── Models/
│   └── Utils/
├── CANalyzer.Scripts/              # Консольные утилиты
├── CANalyzer.Tests/                # Тесты
├── scripts/                        # Скрипты сборки и обслуживания
├── samples/                        # Примеры CAN-логов
└── docs/                           # Документация
```

## Требования

- Windows 10/11
- [.NET 8.0 SDK](https://dotnet.microsoft.com/download)
- PowerShell 7+ (для скриптов, опционально)

Подробная инструкция по настройке окружения — в [docs/SETUP.md](docs/SETUP.md).

## Быстрый старт

```powershell
git clone https://github.com/12voltlipetsk-ai/CANalyzer.ReverseEngineering.git
cd CANalyzer.ReverseEngineering

dotnet restore CANalyzer.sln
dotnet build CANalyzer.sln
dotnet run --project CANalyzer.WPF\CANalyzer.WPF.csproj
```

Тесты:

```powershell
dotnet test CANalyzer.Tests\CANalyzer.Tests.csproj
```

## Примеры данных

В папке [samples/](samples/) лежат тестовые логи (`test_log.csv`, `test_log.asc`) — их можно загрузить в приложение через кнопку **Load CAN Log**.

## Ресурсы для обучения ML-модели

- [commaai/opendbc](https://github.com/commaai/opendbc)
- [BYDcar/opendbc-byd](https://github.com/BYDcar/opendbc-byd)
- [JejuSoul/OBD-PIDs-for-HKMC-EVs](https://github.com/JejuSoul/OBD-PIDs-for-HKMC-EVs)
- [GENIVI/CANdevStudio](https://github.com/GENIVI/CANdevStudio)
- [kommuai/bukapilot](https://github.com/kommuai/bukapilot)
