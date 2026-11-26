.class public abstract Lcom/qinggan/carsignal/ICarSignalService$Stub;
.super Landroid/os/Binder;
.source "ICarSignalService.java"

# interfaces
.implements Lcom/qinggan/carsignal/ICarSignalService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/ICarSignalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/carsignal/ICarSignalService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.carsignal.ICarSignalService"

.field static final TRANSACTION_PowerOff:I = 0x3e

.field static final TRANSACTION_getAVNStatus:I = 0x27

.field static final TRANSACTION_getAlarmState:I = 0xb

.field static final TRANSACTION_getAlarmTime:I = 0x9

.field static final TRANSACTION_getBatteryLevel:I = 0x15

.field static final TRANSACTION_getCanBoxVersion:I = 0x5

.field static final TRANSACTION_getCanBusState:I = 0x18

.field static final TRANSACTION_getCarKeyStatus:I = 0x29

.field static final TRANSACTION_getCarType:I = 0x44

.field static final TRANSACTION_getCarVideoStreamMode:I = 0x28

.field static final TRANSACTION_getCurrStateInScreenOffState:I = 0x36

.field static final TRANSACTION_getCurrentMBHighTempLevel:I = 0x34

.field static final TRANSACTION_getCurrentMBHighTempValue:I = 0x35

.field static final TRANSACTION_getDABAnt:I = 0x1f

.field static final TRANSACTION_getFactoryModeKey:I = 0x1d

.field static final TRANSACTION_getGPSAnt:I = 0x17

.field static final TRANSACTION_getHeadLampStatus:I = 0x2b

.field static final TRANSACTION_getKeyBoardBackLightValue:I = 0x32

.field static final TRANSACTION_getKeyCtlState:I = 0x41

.field static final TRANSACTION_getLCDBoardLightValue:I = 0x39

.field static final TRANSACTION_getLCDTemp:I = 0x21

.field static final TRANSACTION_getLFDoorState:I = 0x3f

.field static final TRANSACTION_getLightSensorLevel:I = 0x24

.field static final TRANSACTION_getLinBusState:I = 0x1e

.field static final TRANSACTION_getMCUHardwareVersion:I = 0x1

.field static final TRANSACTION_getMCUPlatform:I = 0x1a

.field static final TRANSACTION_getMCUPowerMode:I = 0x14

.field static final TRANSACTION_getMCUSoftVersionDate:I = 0x4

.field static final TRANSACTION_getMCUSoftwareVersion:I = 0x2

.field static final TRANSACTION_getMPUKernelVersion:I = 0x3

.field static final TRANSACTION_getMainSpeakState:I = 0x1b

.field static final TRANSACTION_getPAMuteState:I = 0x3a

.field static final TRANSACTION_getPASLCDTemp:I = 0x4a

.field static final TRANSACTION_getPASLightSensorLevel:I = 0x49

.field static final TRANSACTION_getRTCState:I = 0xd

.field static final TRANSACTION_getRTCTime:I = 0x7

.field static final TRANSACTION_getRecoveryKey:I = 0x1c

.field static final TRANSACTION_getReverseState:I = 0x2d

.field static final TRANSACTION_getScreenLightStatus:I = 0x2a

.field static final TRANSACTION_getShutdownMode:I = 0x19

.field static final TRANSACTION_getSideLightStatus:I = 0x2c

.field static final TRANSACTION_getStandbyStateRestoreMode:I = 0x37

.field static final TRANSACTION_getTboxMutePinState:I = 0x4c

.field static final TRANSACTION_getTimeModeState:I = 0x22

.field static final TRANSACTION_getTouchScreenState:I = 0x3c

.field static final TRANSACTION_getTunerAnt:I = 0x16

.field static final TRANSACTION_getVehicleConfig:I = 0x48

.field static final TRANSACTION_getVehicleSpeed:I = 0x26

.field static final TRANSACTION_getVehicleType:I = 0xf

.field static final TRANSACTION_getVoltageState:I = 0x25

.field static final TRANSACTION_getWTDogState:I = 0x20

.field static final TRANSACTION_getWakeupSrc:I = 0x6

.field static final TRANSACTION_getWheelKeyChannelLine1Value:I = 0x42

.field static final TRANSACTION_getWheelKeyChannelLine2Value:I = 0x43

.field static final TRANSACTION_isInMainBoardHighTempMode:I = 0x33

.field static final TRANSACTION_registerCallback:I = 0x2e

.field static final TRANSACTION_setAlarmState:I = 0xc

.field static final TRANSACTION_setAlarmTime:I = 0xa

.field static final TRANSACTION_setAudioSourceType:I = 0x11

.field static final TRANSACTION_setBTPhoneState:I = 0x12

.field static final TRANSACTION_setBtMacValue:I = 0x4b

.field static final TRANSACTION_setDLSKeyguardStatus:I = 0x30

.field static final TRANSACTION_setKeyBoardBackLightValue:I = 0x31

.field static final TRANSACTION_setKeyCtlState:I = 0x40

.field static final TRANSACTION_setLCDBoardLightValue:I = 0x38

.field static final TRANSACTION_setMCUMusicDiag:I = 0x45

.field static final TRANSACTION_setMCUMusicDiagEx:I = 0x46

.field static final TRANSACTION_setMPUPowerMode:I = 0x10

.field static final TRANSACTION_setPAMuteState:I = 0x3b

.field static final TRANSACTION_setRTCState:I = 0xe

.field static final TRANSACTION_setRTCTime:I = 0x8

.field static final TRANSACTION_setTimeModeState:I = 0x23

.field static final TRANSACTION_setTouchScreenState:I = 0x3d

.field static final TRANSACTION_setVehicleConfig:I = 0x47

.field static final TRANSACTION_setVehicleVinCode:I = 0x13

.field static final TRANSACTION_unregisterCallback:I = 0x2f


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.qinggan.carsignal.ICarSignalService"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/carsignal/ICarSignalService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.qinggan.carsignal.ICarSignalService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/carsignal/ICarSignalService;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/qinggan/carsignal/ICarSignalService;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/qinggan/carsignal/ICarSignalService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 13
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x1

    .line 41
    const-string v4, "com.qinggan.carsignal.ICarSignalService"

    .line 42
    .local v4, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_4b4

    .line 690
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    :goto_b
    return v6

    .line 46
    :sswitch_c
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 51
    :sswitch_10
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMCUHardwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 53
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 59
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_1e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMCUSoftwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 61
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 62
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 67
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2c
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 68
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMPUKernelVersion()Ljava/lang/String;

    move-result-object v2

    .line 69
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 75
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_3a
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMCUSoftVersionDate()Ljava/lang/String;

    move-result-object v2

    .line 77
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 78
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 83
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_48
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCanBoxVersion()Ljava/lang/String;

    move-result-object v2

    .line 85
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 91
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_56
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getWakeupSrc()I

    move-result v2

    .line 93
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 99
    .end local v2    # "_result":I
    :sswitch_64
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getRTCTime()J

    move-result-wide v2

    .line 101
    .local v2, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 102
    invoke-virtual {p3, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_b

    .line 107
    .end local v2    # "_result":J
    :sswitch_72
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 110
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setRTCTime(I)V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 116
    .end local v0    # "_arg0":I
    :sswitch_80
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getAlarmTime()I

    move-result v2

    .line 118
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 119
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 124
    .end local v2    # "_result":I
    :sswitch_8f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 126
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setAlarmTime(I)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 133
    .end local v0    # "_arg0":I
    :sswitch_9e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getAlarmState()I

    move-result v2

    .line 135
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 136
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 141
    .end local v2    # "_result":I
    :sswitch_ad
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setAlarmState(I)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 150
    .end local v0    # "_arg0":I
    :sswitch_bc
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getRTCState()I

    move-result v2

    .line 152
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 153
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 158
    .end local v2    # "_result":I
    :sswitch_cb
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 161
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setRTCState(I)V

    .line 162
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 167
    .end local v0    # "_arg0":I
    :sswitch_da
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getVehicleType()I

    move-result v2

    .line 169
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 175
    .end local v2    # "_result":I
    :sswitch_e9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 178
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setMPUPowerMode([I)V

    .line 179
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 184
    .end local v0    # "_arg0":[I
    :sswitch_f8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 186
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 187
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setAudioSourceType(I)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 193
    .end local v0    # "_arg0":I
    :sswitch_107
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 195
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 196
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setBTPhoneState(I)V

    .line 197
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 202
    .end local v0    # "_arg0":I
    :sswitch_116
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 205
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setVehicleVinCode(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 211
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_125
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMCUPowerMode()I

    move-result v2

    .line 213
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 214
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 219
    .end local v2    # "_result":I
    :sswitch_134
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getBatteryLevel()I

    move-result v2

    .line 221
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 222
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 227
    .end local v2    # "_result":I
    :sswitch_143
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 228
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getTunerAnt()I

    move-result v2

    .line 229
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 230
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 235
    .end local v2    # "_result":I
    :sswitch_152
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getGPSAnt()I

    move-result v2

    .line 237
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 243
    .end local v2    # "_result":I
    :sswitch_161
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCanBusState()I

    move-result v2

    .line 245
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 251
    .end local v2    # "_result":I
    :sswitch_170
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getShutdownMode()I

    move-result v2

    .line 253
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 259
    .end local v2    # "_result":I
    :sswitch_17f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMCUPlatform()I

    move-result v2

    .line 261
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 262
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 267
    .end local v2    # "_result":I
    :sswitch_18e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getMainSpeakState()I

    move-result v2

    .line 269
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 275
    .end local v2    # "_result":I
    :sswitch_19d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 276
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getRecoveryKey()I

    move-result v2

    .line 277
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 278
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 283
    .end local v2    # "_result":I
    :sswitch_1ac
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 284
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getFactoryModeKey()I

    move-result v2

    .line 285
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 286
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 291
    .end local v2    # "_result":I
    :sswitch_1bb
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getLinBusState()I

    move-result v2

    .line 293
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 299
    .end local v2    # "_result":I
    :sswitch_1ca
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getDABAnt()I

    move-result v2

    .line 301
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 307
    .end local v2    # "_result":I
    :sswitch_1d9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getWTDogState()I

    move-result v2

    .line 309
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 310
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 315
    .end local v2    # "_result":I
    :sswitch_1e8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getLCDTemp()I

    move-result v2

    .line 317
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 318
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 323
    .end local v2    # "_result":I
    :sswitch_1f7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getTimeModeState()I

    move-result v2

    .line 325
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 326
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 331
    .end local v2    # "_result":I
    :sswitch_206
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 334
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setTimeModeState(I)V

    .line 335
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 340
    .end local v0    # "_arg0":I
    :sswitch_215
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getLightSensorLevel()I

    move-result v2

    .line 342
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 343
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 348
    .end local v2    # "_result":I
    :sswitch_224
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 349
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getVoltageState()I

    move-result v2

    .line 350
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 351
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 356
    .end local v2    # "_result":I
    :sswitch_233
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 357
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getVehicleSpeed()F

    move-result v2

    .line 358
    .local v2, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 359
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_b

    .line 364
    .end local v2    # "_result":F
    :sswitch_242
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 365
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getAVNStatus()I

    move-result v2

    .line 366
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 367
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 372
    .end local v2    # "_result":I
    :sswitch_251
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 373
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCarVideoStreamMode()I

    move-result v2

    .line 374
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 375
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 380
    .end local v2    # "_result":I
    :sswitch_260
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 381
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCarKeyStatus()I

    move-result v2

    .line 382
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 388
    .end local v2    # "_result":I
    :sswitch_26f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getScreenLightStatus()I

    move-result v2

    .line 390
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 396
    .end local v2    # "_result":I
    :sswitch_27e
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 397
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getHeadLampStatus()I

    move-result v2

    .line 398
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 399
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 404
    .end local v2    # "_result":I
    :sswitch_28d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 405
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getSideLightStatus()I

    move-result v2

    .line 406
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 407
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 412
    .end local v2    # "_result":I
    :sswitch_29c
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 413
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getReverseState()I

    move-result v2

    .line 414
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 420
    .end local v2    # "_result":I
    :sswitch_2ab
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    move-result-object v0

    .line 423
    .local v0, "_arg0":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->registerCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z

    move-result v2

    .line 424
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 425
    if-eqz v2, :cond_2c0

    move v5, v6

    :cond_2c0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 430
    .end local v0    # "_arg0":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    .end local v2    # "_result":Z
    :sswitch_2c5
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 432
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    move-result-object v0

    .line 433
    .restart local v0    # "_arg0":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->unregisterCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z

    move-result v2

    .line 434
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    if-eqz v2, :cond_2da

    move v5, v6

    :cond_2da
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 440
    .end local v0    # "_arg0":Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    .end local v2    # "_result":Z
    :sswitch_2df
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_2f1

    move v0, v6

    .line 443
    .local v0, "_arg0":Z
    :goto_2e9
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setDLSKeyguardStatus(Z)V

    .line 444
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .end local v0    # "_arg0":Z
    :cond_2f1
    move v0, v5

    .line 442
    goto :goto_2e9

    .line 449
    :sswitch_2f3
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 451
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 452
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setKeyBoardBackLightValue(I)V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 458
    .end local v0    # "_arg0":I
    :sswitch_302
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getKeyBoardBackLightValue()I

    move-result v2

    .line 460
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 466
    .end local v2    # "_result":I
    :sswitch_311
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->isInMainBoardHighTempMode()Z

    move-result v2

    .line 468
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 469
    if-eqz v2, :cond_31e

    move v5, v6

    :cond_31e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 474
    .end local v2    # "_result":Z
    :sswitch_323
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 475
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCurrentMBHighTempLevel()I

    move-result v2

    .line 476
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 477
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 482
    .end local v2    # "_result":I
    :sswitch_332
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 483
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCurrentMBHighTempValue()I

    move-result v2

    .line 484
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 485
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 490
    .end local v2    # "_result":I
    :sswitch_341
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCurrStateInScreenOffState()Z

    move-result v2

    .line 492
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 493
    if-eqz v2, :cond_34e

    move v5, v6

    :cond_34e
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 498
    .end local v2    # "_result":Z
    :sswitch_353
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getStandbyStateRestoreMode()Z

    move-result v2

    .line 500
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 501
    if-eqz v2, :cond_360

    move v5, v6

    :cond_360
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 506
    .end local v2    # "_result":Z
    :sswitch_365
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 508
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 509
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setLCDBoardLightValue(I)V

    .line 510
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 515
    .end local v0    # "_arg0":I
    :sswitch_374
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getLCDBoardLightValue()I

    move-result v2

    .line 517
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 518
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 523
    .end local v2    # "_result":I
    :sswitch_383
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 524
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getPAMuteState()I

    move-result v2

    .line 525
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 531
    .end local v2    # "_result":I
    :sswitch_392
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 534
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setPAMuteState(I)V

    .line 535
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 540
    .end local v0    # "_arg0":I
    :sswitch_3a1
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getTouchScreenState()I

    move-result v2

    .line 542
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 543
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 548
    .end local v2    # "_result":I
    :sswitch_3b0
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 551
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setTouchScreenState(I)V

    .line 552
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 557
    .end local v0    # "_arg0":I
    :sswitch_3bf
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 558
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->PowerOff()V

    .line 559
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 564
    :sswitch_3ca
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 565
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getLFDoorState()I

    move-result v2

    .line 566
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 567
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 572
    .end local v2    # "_result":I
    :sswitch_3d9
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 574
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 575
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setKeyCtlState(I)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 581
    .end local v0    # "_arg0":I
    :sswitch_3e8
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 582
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getKeyCtlState()I

    move-result v2

    .line 583
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 584
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 589
    .end local v2    # "_result":I
    :sswitch_3f7
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 590
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getWheelKeyChannelLine1Value()I

    move-result v2

    .line 591
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 592
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 597
    .end local v2    # "_result":I
    :sswitch_406
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 598
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getWheelKeyChannelLine2Value()I

    move-result v2

    .line 599
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 600
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 605
    .end local v2    # "_result":I
    :sswitch_415
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getCarType()Ljava/lang/String;

    move-result-object v2

    .line 607
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 608
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 613
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_424
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 617
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 618
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setMCUMusicDiag(II)V

    .line 619
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 624
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_437
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 626
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_450

    .line 627
    sget-object v5, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    .line 632
    .local v0, "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    :goto_448
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setMCUMusicDiagEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V

    .line 633
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 630
    .end local v0    # "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    :cond_450
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    goto :goto_448

    .line 638
    .end local v0    # "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    :sswitch_452
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 640
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 641
    .local v0, "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setVehicleConfig([I)I

    move-result v2

    .line 642
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 643
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 648
    .end local v0    # "_arg0":[I
    .end local v2    # "_result":I
    :sswitch_465
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 649
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getVehicleConfig()[I

    move-result-object v2

    .line 650
    .local v2, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 651
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_b

    .line 656
    .end local v2    # "_result":[I
    :sswitch_474
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 657
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getPASLightSensorLevel()I

    move-result v2

    .line 658
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 659
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 664
    .end local v2    # "_result":I
    :sswitch_483
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 665
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getPASLCDTemp()I

    move-result v2

    .line 666
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 667
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 672
    .end local v2    # "_result":I
    :sswitch_492
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 674
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    .line 675
    .restart local v0    # "_arg0":[I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->setBtMacValue([I)I

    move-result v2

    .line 676
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 677
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 682
    .end local v0    # "_arg0":[I
    .end local v2    # "_result":I
    :sswitch_4a5
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->getTboxMutePinState()I

    move-result v2

    .line 684
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 685
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 42
    :sswitch_data_4b4
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3a
        0x5 -> :sswitch_48
        0x6 -> :sswitch_56
        0x7 -> :sswitch_64
        0x8 -> :sswitch_72
        0x9 -> :sswitch_80
        0xa -> :sswitch_8f
        0xb -> :sswitch_9e
        0xc -> :sswitch_ad
        0xd -> :sswitch_bc
        0xe -> :sswitch_cb
        0xf -> :sswitch_da
        0x10 -> :sswitch_e9
        0x11 -> :sswitch_f8
        0x12 -> :sswitch_107
        0x13 -> :sswitch_116
        0x14 -> :sswitch_125
        0x15 -> :sswitch_134
        0x16 -> :sswitch_143
        0x17 -> :sswitch_152
        0x18 -> :sswitch_161
        0x19 -> :sswitch_170
        0x1a -> :sswitch_17f
        0x1b -> :sswitch_18e
        0x1c -> :sswitch_19d
        0x1d -> :sswitch_1ac
        0x1e -> :sswitch_1bb
        0x1f -> :sswitch_1ca
        0x20 -> :sswitch_1d9
        0x21 -> :sswitch_1e8
        0x22 -> :sswitch_1f7
        0x23 -> :sswitch_206
        0x24 -> :sswitch_215
        0x25 -> :sswitch_224
        0x26 -> :sswitch_233
        0x27 -> :sswitch_242
        0x28 -> :sswitch_251
        0x29 -> :sswitch_260
        0x2a -> :sswitch_26f
        0x2b -> :sswitch_27e
        0x2c -> :sswitch_28d
        0x2d -> :sswitch_29c
        0x2e -> :sswitch_2ab
        0x2f -> :sswitch_2c5
        0x30 -> :sswitch_2df
        0x31 -> :sswitch_2f3
        0x32 -> :sswitch_302
        0x33 -> :sswitch_311
        0x34 -> :sswitch_323
        0x35 -> :sswitch_332
        0x36 -> :sswitch_341
        0x37 -> :sswitch_353
        0x38 -> :sswitch_365
        0x39 -> :sswitch_374
        0x3a -> :sswitch_383
        0x3b -> :sswitch_392
        0x3c -> :sswitch_3a1
        0x3d -> :sswitch_3b0
        0x3e -> :sswitch_3bf
        0x3f -> :sswitch_3ca
        0x40 -> :sswitch_3d9
        0x41 -> :sswitch_3e8
        0x42 -> :sswitch_3f7
        0x43 -> :sswitch_406
        0x44 -> :sswitch_415
        0x45 -> :sswitch_424
        0x46 -> :sswitch_437
        0x47 -> :sswitch_452
        0x48 -> :sswitch_465
        0x49 -> :sswitch_474
        0x4a -> :sswitch_483
        0x4b -> :sswitch_492
        0x4c -> :sswitch_4a5
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
