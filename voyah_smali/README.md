# Voyah H97X (f6802h) - Smali decompilation

Decompiled DEX classes from Voyah Free H97X IVI system.

## Contents

| Directory | Files | Size | Source |
|-----------|-------|------|--------|
| `com/` | 2121 | 17.4 MB | IVI system APKs (CanBusService, DoIPServer, DAB, etc.) |
| `okhttp3/` | 197 | 2.3 MB | OkHttp3 HTTP client |
| `okio/` | 40 | 0.5 MB | Okio I/O library |
| `retrofit/` | 124 | 0.5 MB | Retrofit HTTP client |
| `retrofit2/` | 85 | 0.5 MB | Retrofit2 HTTP client |

**Total: 2567 files, ~21 MB**

## Key packages

- `com.qinggan.canbus` - CAN bus service (DongfengH97CCanBusComponentImpl, CanBusService, ICanBusService)
- `com.qingos.doipserver` - DoIP server (DoIPService, DoIPManager)
- `com.adayo.dab` - Adayo DAB radio service (DABService)
- `com.qinggan.system` - System services (IDoIPService, KeyManager)
- `com.qinggan.tbox` - T-Box manager
- `com.excelfore.hmiagent` - HMI agent (DiagOnlineReq, DiagTaskInfo, VehicleDiagState)

## Extraction method

1. Pull APKs from IVI via ADB: `adb pull /system/app/.../*.apk`
2. Extract DEX: `apktool d` or `dex` from APK
3. Disassemble: `baksmali d classes.dex -o smali/`

## Vehicle

- **Model**: Voyah Free H97X (H97 platform, f6802h)
- **IVI**: Android (QingOS), user build, ro.debuggable=1
- **CAN**: 4 buses (CH, PT, Body, INFO) via CIS MCU inside IVI
- **UDS**: 51 diagnostic addresses (0x705-0x7F9), GAIA seedkey
