.class public abstract Lcom/qinggan/canbus/ICanBusService$Stub;
.super Landroid/os/Binder;
.source "ICanBusService.java"

# interfaces
.implements Lcom/qinggan/canbus/ICanBusService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/ICanBusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/canbus/ICanBusService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.canbus.ICanBusService"

.field static final TRANSACTION_addCallback:I = 0x1c

.field static final TRANSACTION_getAccStatus:I = 0x42

.field static final TRANSACTION_getAirCondition:I = 0x1e

.field static final TRANSACTION_getAirConditionState:I = 0x21

.field static final TRANSACTION_getAlarmData:I = 0x29

.field static final TRANSACTION_getAmbientTemperature:I = 0x7

.field static final TRANSACTION_getBatteryRemainingCapacity:I = 0x47

.field static final TRANSACTION_getBatteryState:I = 0x13

.field static final TRANSACTION_getBrakeFluidStatus:I = 0xd

.field static final TRANSACTION_getBrakePadStatus:I = 0xc

.field static final TRANSACTION_getCameraState:I = 0x4e

.field static final TRANSACTION_getCanBoxVersion:I = 0x4

.field static final TRANSACTION_getCanRawData:I = 0x38

.field static final TRANSACTION_getComprehensiveFuelConsumption:I = 0x10

.field static final TRANSACTION_getComprehensiveFuelConsumptionEX:I = 0x11

.field static final TRANSACTION_getDVRState:I = 0x3

.field static final TRANSACTION_getDoorStatus:I = 0x2

.field static final TRANSACTION_getEnergyConsumptionInfo:I = 0x50

.field static final TRANSACTION_getEnergyConsumptionPercent:I = 0x4f

.field static final TRANSACTION_getEngineFluidStatus:I = 0x28

.field static final TRANSACTION_getEngineSpeed:I = 0x1b

.field static final TRANSACTION_getEngineStatus:I = 0x12

.field static final TRANSACTION_getEngineTemperature:I = 0xb

.field static final TRANSACTION_getFrontRadarData:I = 0x22

.field static final TRANSACTION_getFuelLevel:I = 0x9

.field static final TRANSACTION_getGearStatus:I = 0x6

.field static final TRANSACTION_getHandBrakeStatus:I = 0x27

.field static final TRANSACTION_getHevSysMode:I = 0x2b

.field static final TRANSACTION_getIllumination:I = 0x16

.field static final TRANSACTION_getInstantFuelConsumption:I = 0xf

.field static final TRANSACTION_getIpkSyncSvr:I = 0x45

.field static final TRANSACTION_getLeftRadarData:I = 0x24

.field static final TRANSACTION_getLightStatus:I = 0x5

.field static final TRANSACTION_getOdometer:I = 0x1

.field static final TRANSACTION_getPowerlLevel:I = 0x48

.field static final TRANSACTION_getRainfallLevel:I = 0x49

.field static final TRANSACTION_getReTracking:I = 0x26

.field static final TRANSACTION_getRealityWarningInfo:I = 0x4c

.field static final TRANSACTION_getRearRadarData:I = 0x23

.field static final TRANSACTION_getRightRadarData:I = 0x25

.field static final TRANSACTION_getSWCAngle:I = 0x2a

.field static final TRANSACTION_getSeatBeltStatus:I = 0x15

.field static final TRANSACTION_getSecondaryOdometer:I = 0x18

.field static final TRANSACTION_getTPMSInfo:I = 0x46

.field static final TRANSACTION_getVehicleCenterControlEnabled:I = 0x3c

.field static final TRANSACTION_getVehicleIO:I = 0x17

.field static final TRANSACTION_getVehicleKeyState:I = 0x19

.field static final TRANSACTION_getVehicleSceneMode:I = 0x4b

.field static final TRANSACTION_getVehicleSpeed:I = 0x1a

.field static final TRANSACTION_getVehicleState:I = 0x39

.field static final TRANSACTION_getWheelCount:I = 0xa

.field static final TRANSACTION_getWheelSpeed:I = 0x8

.field static final TRANSACTION_getWindowStatus:I = 0x2c

.field static final TRANSACTION_getWiperFluidStatus:I = 0xe

.field static final TRANSACTION_isSupportFunction:I = 0x40

.field static final TRANSACTION_queryVehicleState:I = 0x14

.field static final TRANSACTION_removeCallback:I = 0x1d

.field static final TRANSACTION_requestTravellingInfo:I = 0x3f

.field static final TRANSACTION_requestVehicleCenterControlEnabledInfo:I = 0x3e

.field static final TRANSACTION_setAirConditionBundleState:I = 0x20

.field static final TRANSACTION_setAirConditionState:I = 0x1f

.field static final TRANSACTION_setCanRawData:I = 0x37

.field static final TRANSACTION_setFactoryModeResult:I = 0x44

.field static final TRANSACTION_setFactoryModeState:I = 0x43

.field static final TRANSACTION_setGearBoxType:I = 0x41

.field static final TRANSACTION_setVehicleAndAirConditionBundleState:I = 0x4d

.field static final TRANSACTION_setVehicleBundleState:I = 0x3b

.field static final TRANSACTION_setVehicleCenterControlEnabled:I = 0x3d

.field static final TRANSACTION_setVehicleSceneMode:I = 0x4a

.field static final TRANSACTION_setVehicleState:I = 0x3a

.field static final TRANSACTION_updateCallListInfo:I = 0x36

.field static final TRANSACTION_updateMediaPlayInfo:I = 0x2e

.field static final TRANSACTION_updateMediaPlayMode:I = 0x31

.field static final TRANSACTION_updateMediaPlayProgressInfo:I = 0x2f

.field static final TRANSACTION_updateMediaSeqType:I = 0x30

.field static final TRANSACTION_updateMediaSrcInfo:I = 0x2d

.field static final TRANSACTION_updateMediaVolume:I = 0x32

.field static final TRANSACTION_updateNaviInfo:I = 0x33

.field static final TRANSACTION_updateNaviLaneInfo:I = 0x34

.field static final TRANSACTION_updatePhoneInfo:I = 0x35


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qinggan.canbus.ICanBusService"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.qinggan.canbus.ICanBusService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/canbus/ICanBusService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qinggan/canbus/ICanBusService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/qinggan/canbus/ICanBusService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/canbus/ICanBusService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
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
    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 38
    const-string v3, "com.qinggan.canbus.ICanBusService"

    .line 39
    .local v3, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_72e

    .line 1007
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 43
    :sswitch_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 48
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getOdometer()Lcom/qinggan/canbus/Odometer;

    move-result-object v4

    .line 50
    .local v4, "_result":Lcom/qinggan/canbus/Odometer;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 51
    if-eqz v4, :cond_23

    .line 52
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/Odometer;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 56
    :cond_23
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 62
    .end local v4    # "_result":Lcom/qinggan/canbus/Odometer;
    :sswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getDoorStatus()Lcom/qinggan/canbus/DoorStatus;

    move-result-object v4

    .line 64
    .local v4, "_result":Lcom/qinggan/canbus/DoorStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    if-eqz v4, :cond_3a

    .line 66
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/DoorStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 70
    :cond_3a
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 76
    .end local v4    # "_result":Lcom/qinggan/canbus/DoorStatus;
    :sswitch_3e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getDVRState()Lcom/qinggan/canbus/DVRState;

    move-result-object v4

    .line 78
    .local v4, "_result":Lcom/qinggan/canbus/DVRState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 79
    if-eqz v4, :cond_51

    .line 80
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/DVRState;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 84
    :cond_51
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 90
    .end local v4    # "_result":Lcom/qinggan/canbus/DVRState;
    :sswitch_55
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getCanBoxVersion()Ljava/lang/String;

    move-result-object v4

    .line 92
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 98
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_63
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getLightStatus()Lcom/qinggan/canbus/LightStatus;

    move-result-object v4

    .line 100
    .local v4, "_result":Lcom/qinggan/canbus/LightStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v4, :cond_76

    .line 102
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/LightStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_b

    .line 106
    :cond_76
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 112
    .end local v4    # "_result":Lcom/qinggan/canbus/LightStatus;
    :sswitch_7a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getGearStatus()Lcom/qinggan/canbus/GearState;

    move-result-object v4

    .line 114
    .local v4, "_result":Lcom/qinggan/canbus/GearState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 115
    if-eqz v4, :cond_8e

    .line 116
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/GearState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 120
    :cond_8e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 126
    .end local v4    # "_result":Lcom/qinggan/canbus/GearState;
    :sswitch_93
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getAmbientTemperature()I

    move-result v4

    .line 128
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 134
    .end local v4    # "_result":I
    :sswitch_a2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getWheelSpeed()Lcom/qinggan/canbus/WheelSpeed;

    move-result-object v4

    .line 136
    .local v4, "_result":Lcom/qinggan/canbus/WheelSpeed;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 137
    if-eqz v4, :cond_b6

    .line 138
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 139
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/WheelSpeed;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 142
    :cond_b6
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 148
    .end local v4    # "_result":Lcom/qinggan/canbus/WheelSpeed;
    :sswitch_bb
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getFuelLevel()Lcom/qinggan/canbus/FuelLevel;

    move-result-object v4

    .line 150
    .local v4, "_result":Lcom/qinggan/canbus/FuelLevel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 151
    if-eqz v4, :cond_cf

    .line 152
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/FuelLevel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 156
    :cond_cf
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 162
    .end local v4    # "_result":Lcom/qinggan/canbus/FuelLevel;
    :sswitch_d4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getWheelCount()Lcom/qinggan/canbus/WheelCount;

    move-result-object v4

    .line 164
    .local v4, "_result":Lcom/qinggan/canbus/WheelCount;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 165
    if-eqz v4, :cond_e8

    .line 166
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/WheelCount;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 170
    :cond_e8
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 176
    .end local v4    # "_result":Lcom/qinggan/canbus/WheelCount;
    :sswitch_ed
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getEngineTemperature()I

    move-result v4

    .line 178
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 184
    .end local v4    # "_result":I
    :sswitch_fc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getBrakePadStatus()Lcom/qinggan/canbus/BrakePadStatus;

    move-result-object v4

    .line 186
    .local v4, "_result":Lcom/qinggan/canbus/BrakePadStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v4, :cond_110

    .line 188
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/BrakePadStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 192
    :cond_110
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 198
    .end local v4    # "_result":Lcom/qinggan/canbus/BrakePadStatus;
    :sswitch_115
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getBrakeFluidStatus()I

    move-result v4

    .line 200
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 201
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 206
    .end local v4    # "_result":I
    :sswitch_124
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getWiperFluidStatus()I

    move-result v4

    .line 208
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 209
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 214
    .end local v4    # "_result":I
    :sswitch_133
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getInstantFuelConsumption()I

    move-result v4

    .line 216
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 217
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 222
    .end local v4    # "_result":I
    :sswitch_142
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getComprehensiveFuelConsumption()I

    move-result v4

    .line 224
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 225
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 230
    .end local v4    # "_result":I
    :sswitch_151
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getComprehensiveFuelConsumptionEX()F

    move-result v4

    .line 232
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 233
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_b

    .line 238
    .end local v4    # "_result":F
    :sswitch_160
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getEngineStatus()I

    move-result v4

    .line 240
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 241
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 246
    .end local v4    # "_result":I
    :sswitch_16f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 247
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getBatteryState()Lcom/qinggan/canbus/BatteryState;

    move-result-object v4

    .line 248
    .local v4, "_result":Lcom/qinggan/canbus/BatteryState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 249
    if-eqz v4, :cond_183

    .line 250
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/BatteryState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 254
    :cond_183
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 260
    .end local v4    # "_result":Lcom/qinggan/canbus/BatteryState;
    :sswitch_188
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->queryVehicleState()V

    .line 262
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 267
    :sswitch_193
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getSeatBeltStatus()Lcom/qinggan/canbus/SeatBelt;

    move-result-object v4

    .line 269
    .local v4, "_result":Lcom/qinggan/canbus/SeatBelt;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 270
    if-eqz v4, :cond_1a7

    .line 271
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 272
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/SeatBelt;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 275
    :cond_1a7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 281
    .end local v4    # "_result":Lcom/qinggan/canbus/SeatBelt;
    :sswitch_1ac
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getIllumination()I

    move-result v4

    .line 283
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 289
    .end local v4    # "_result":I
    :sswitch_1bb
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getVehicleIO()Lcom/qinggan/canbus/VehicleIO;

    move-result-object v4

    .line 291
    .local v4, "_result":Lcom/qinggan/canbus/VehicleIO;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v4, :cond_1cf

    .line 293
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/VehicleIO;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 297
    :cond_1cf
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 303
    .end local v4    # "_result":Lcom/qinggan/canbus/VehicleIO;
    :sswitch_1d4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 304
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getSecondaryOdometer()J

    move-result-wide v4

    .line 305
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 306
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_b

    .line 311
    .end local v4    # "_result":J
    :sswitch_1e3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getVehicleKeyState()I

    move-result v4

    .line 313
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 314
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 319
    .end local v4    # "_result":I
    :sswitch_1f2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getVehicleSpeed()I

    move-result v4

    .line 321
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 322
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 327
    .end local v4    # "_result":I
    :sswitch_201
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 328
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getEngineSpeed()I

    move-result v4

    .line 329
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 330
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 335
    .end local v4    # "_result":I
    :sswitch_210
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 337
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusServiceCallback;

    move-result-object v0

    .line 338
    .local v0, "_arg0":Lcom/qinggan/canbus/ICanBusServiceCallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->addCallback(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z

    move-result v4

    .line 339
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    if-eqz v4, :cond_225

    move v6, v7

    :cond_225
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 345
    .end local v0    # "_arg0":Lcom/qinggan/canbus/ICanBusServiceCallback;
    .end local v4    # "_result":Z
    :sswitch_22a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 347
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusServiceCallback;

    move-result-object v0

    .line 348
    .restart local v0    # "_arg0":Lcom/qinggan/canbus/ICanBusServiceCallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->removeCallback(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z

    move-result v4

    .line 349
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 350
    if-eqz v4, :cond_23f

    move v6, v7

    :cond_23f
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 355
    .end local v0    # "_arg0":Lcom/qinggan/canbus/ICanBusServiceCallback;
    .end local v4    # "_result":Z
    :sswitch_244
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getAirCondition()Lcom/qinggan/canbus/AirCondition;

    move-result-object v4

    .line 357
    .local v4, "_result":Lcom/qinggan/canbus/AirCondition;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 358
    if-eqz v4, :cond_258

    .line 359
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/AirCondition;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 363
    :cond_258
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 369
    .end local v4    # "_result":Lcom/qinggan/canbus/AirCondition;
    :sswitch_25d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 371
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_27a

    .line 372
    sget-object v6, Lcom/qinggan/canbus/AirConditionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/AirConditionState;

    .line 378
    .local v0, "_arg0":Lcom/qinggan/canbus/AirConditionState;
    :goto_26e
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 379
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->setAirConditionState(Lcom/qinggan/canbus/AirConditionState;I)V

    .line 380
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 375
    .end local v0    # "_arg0":Lcom/qinggan/canbus/AirConditionState;
    .end local v1    # "_arg1":I
    :cond_27a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/AirConditionState;
    goto :goto_26e

    .line 385
    .end local v0    # "_arg0":Lcom/qinggan/canbus/AirConditionState;
    :sswitch_27c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 387
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_299

    .line 388
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 393
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_28d
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->setAirConditionBundleState(Landroid/os/Bundle;)I

    move-result v4

    .line 394
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 395
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 391
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :cond_299
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_28d

    .line 400
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_29b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_2b8

    .line 403
    sget-object v6, Lcom/qinggan/canbus/AirConditionState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/AirConditionState;

    .line 408
    .local v0, "_arg0":Lcom/qinggan/canbus/AirConditionState;
    :goto_2ac
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getAirConditionState(Lcom/qinggan/canbus/AirConditionState;)I

    move-result v4

    .line 409
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 410
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 406
    .end local v0    # "_arg0":Lcom/qinggan/canbus/AirConditionState;
    .end local v4    # "_result":I
    :cond_2b8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/AirConditionState;
    goto :goto_2ac

    .line 415
    .end local v0    # "_arg0":Lcom/qinggan/canbus/AirConditionState;
    :sswitch_2ba
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getFrontRadarData()Lcom/qinggan/canbus/RadarData;

    move-result-object v4

    .line 417
    .local v4, "_result":Lcom/qinggan/canbus/RadarData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 418
    if-eqz v4, :cond_2ce

    .line 419
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/RadarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 423
    :cond_2ce
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 429
    .end local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    :sswitch_2d3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 430
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getRearRadarData()Lcom/qinggan/canbus/RadarData;

    move-result-object v4

    .line 431
    .restart local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 432
    if-eqz v4, :cond_2e7

    .line 433
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/RadarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 437
    :cond_2e7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 443
    .end local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    :sswitch_2ec
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getLeftRadarData()Lcom/qinggan/canbus/RadarData;

    move-result-object v4

    .line 445
    .restart local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 446
    if-eqz v4, :cond_300

    .line 447
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 448
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/RadarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 451
    :cond_300
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 457
    .end local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    :sswitch_305
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getRightRadarData()Lcom/qinggan/canbus/RadarData;

    move-result-object v4

    .line 459
    .restart local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    if-eqz v4, :cond_319

    .line 461
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/RadarData;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 465
    :cond_319
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 471
    .end local v4    # "_result":Lcom/qinggan/canbus/RadarData;
    :sswitch_31e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 472
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getReTracking()I

    move-result v4

    .line 473
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 474
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 479
    .end local v4    # "_result":I
    :sswitch_32d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getHandBrakeStatus()I

    move-result v4

    .line 481
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 487
    .end local v4    # "_result":I
    :sswitch_33c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getEngineFluidStatus()I

    move-result v4

    .line 489
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 490
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 495
    .end local v4    # "_result":I
    :sswitch_34b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getAlarmData()I

    move-result v4

    .line 497
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 498
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 503
    .end local v4    # "_result":I
    :sswitch_35a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 504
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getSWCAngle()Lcom/qinggan/canbus/SWCAngle;

    move-result-object v4

    .line 505
    .local v4, "_result":Lcom/qinggan/canbus/SWCAngle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 506
    if-eqz v4, :cond_36e

    .line 507
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 508
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/SWCAngle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 511
    :cond_36e
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 517
    .end local v4    # "_result":Lcom/qinggan/canbus/SWCAngle;
    :sswitch_373
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getHevSysMode()I

    move-result v4

    .line 519
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 520
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 525
    .end local v4    # "_result":I
    :sswitch_382
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 526
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getWindowStatus()Lcom/qinggan/canbus/WindowStatus;

    move-result-object v4

    .line 527
    .local v4, "_result":Lcom/qinggan/canbus/WindowStatus;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 528
    if-eqz v4, :cond_396

    .line 529
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 530
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/WindowStatus;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 533
    :cond_396
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 539
    .end local v4    # "_result":Lcom/qinggan/canbus/WindowStatus;
    :sswitch_39b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3b4

    .line 542
    sget-object v6, Lcom/qinggan/canbus/MediaSrcInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaSrcInfo;

    .line 547
    .local v0, "_arg0":Lcom/qinggan/canbus/MediaSrcInfo;
    :goto_3ac
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateMediaSrcInfo(Lcom/qinggan/canbus/MediaSrcInfo;)V

    .line 548
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 545
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaSrcInfo;
    :cond_3b4
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/MediaSrcInfo;
    goto :goto_3ac

    .line 553
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaSrcInfo;
    :sswitch_3b6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3cf

    .line 556
    sget-object v6, Lcom/qinggan/canbus/MediaPlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaPlayInfo;

    .line 561
    .local v0, "_arg0":Lcom/qinggan/canbus/MediaPlayInfo;
    :goto_3c7
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateMediaPlayInfo(Lcom/qinggan/canbus/MediaPlayInfo;)V

    .line 562
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 559
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayInfo;
    :cond_3cf
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayInfo;
    goto :goto_3c7

    .line 567
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayInfo;
    :sswitch_3d1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 569
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3ea

    .line 570
    sget-object v6, Lcom/qinggan/canbus/MediaPlayProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;

    .line 575
    .local v0, "_arg0":Lcom/qinggan/canbus/MediaPlayProgressInfo;
    :goto_3e2
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateMediaPlayProgressInfo(Lcom/qinggan/canbus/MediaPlayProgressInfo;)V

    .line 576
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 573
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayProgressInfo;
    :cond_3ea
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayProgressInfo;
    goto :goto_3e2

    .line 581
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayProgressInfo;
    :sswitch_3ec
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 583
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 584
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateMediaSeqType(I)V

    .line 585
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 590
    .end local v0    # "_arg0":I
    :sswitch_3fb
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 592
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_414

    .line 593
    sget-object v6, Lcom/qinggan/canbus/MediaPlayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaPlayMode;

    .line 598
    .local v0, "_arg0":Lcom/qinggan/canbus/MediaPlayMode;
    :goto_40c
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateMediaPlayMode(Lcom/qinggan/canbus/MediaPlayMode;)V

    .line 599
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 596
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayMode;
    :cond_414
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayMode;
    goto :goto_40c

    .line 604
    .end local v0    # "_arg0":Lcom/qinggan/canbus/MediaPlayMode;
    :sswitch_416
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 607
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateMediaVolume(I)V

    .line 608
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 613
    .end local v0    # "_arg0":I
    :sswitch_425
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 615
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_43e

    .line 616
    sget-object v6, Lcom/qinggan/canbus/NaviInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/NaviInfo;

    .line 621
    .local v0, "_arg0":Lcom/qinggan/canbus/NaviInfo;
    :goto_436
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateNaviInfo(Lcom/qinggan/canbus/NaviInfo;)V

    .line 622
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 619
    .end local v0    # "_arg0":Lcom/qinggan/canbus/NaviInfo;
    :cond_43e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/NaviInfo;
    goto :goto_436

    .line 627
    .end local v0    # "_arg0":Lcom/qinggan/canbus/NaviInfo;
    :sswitch_440
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_460

    move v0, v7

    .line 631
    .local v0, "_arg0":Z
    :goto_44a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_462

    .line 632
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 637
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_458
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateNaviLaneInfo(ZLandroid/os/Bundle;)V

    .line 638
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_460
    move v0, v6

    .line 629
    goto :goto_44a

    .line 635
    .restart local v0    # "_arg0":Z
    :cond_462
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_458

    .line 643
    .end local v0    # "_arg0":Z
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_464
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_47d

    .line 646
    sget-object v6, Lcom/qinggan/canbus/PhoneInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/PhoneInfo;

    .line 651
    .local v0, "_arg0":Lcom/qinggan/canbus/PhoneInfo;
    :goto_475
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updatePhoneInfo(Lcom/qinggan/canbus/PhoneInfo;)V

    .line 652
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 649
    .end local v0    # "_arg0":Lcom/qinggan/canbus/PhoneInfo;
    :cond_47d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/PhoneInfo;
    goto :goto_475

    .line 657
    .end local v0    # "_arg0":Lcom/qinggan/canbus/PhoneInfo;
    :sswitch_47f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 659
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_498

    .line 660
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 665
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_490
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->updateCallListInfo(Landroid/os/Bundle;)V

    .line 666
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 663
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :cond_498
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_490

    .line 671
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_49a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 673
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 675
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 676
    .local v1, "_arg1":[I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->setCanRawData(I[I)V

    .line 677
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 682
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":[I
    :sswitch_4ad
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 685
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getCanRawData(I)[I

    move-result-object v4

    .line 686
    .local v4, "_result":[I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 687
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeIntArray([I)V

    goto/16 :goto_b

    .line 692
    .end local v0    # "_arg0":I
    .end local v4    # "_result":[I
    :sswitch_4c0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 694
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4dd

    .line 695
    sget-object v6, Lcom/qinggan/canbus/VehicleState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleState;

    .line 700
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleState;
    :goto_4d1
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getVehicleState(Lcom/qinggan/canbus/VehicleState;)I

    move-result v4

    .line 701
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 702
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 698
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    .end local v4    # "_result":I
    :cond_4dd
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    goto :goto_4d1

    .line 707
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :sswitch_4df
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 709
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_4fc

    .line 710
    sget-object v6, Lcom/qinggan/canbus/VehicleState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleState;

    .line 716
    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :goto_4f0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 717
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->setVehicleState(Lcom/qinggan/canbus/VehicleState;I)V

    .line 718
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 713
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    .end local v1    # "_arg1":I
    :cond_4fc
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    goto :goto_4f0

    .line 723
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :sswitch_4fe
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 725
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_51b

    .line 726
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 731
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_50f
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->setVehicleBundleState(Landroid/os/Bundle;)I

    move-result v4

    .line 732
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 733
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 729
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :cond_51b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_50f

    .line 738
    .end local v0    # "_arg0":Landroid/os/Bundle;
    :sswitch_51d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 740
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_53a

    .line 741
    sget-object v6, Lcom/qinggan/canbus/VehicleCenterControlEnabled;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    .line 746
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    :goto_52e
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;)I

    move-result v4

    .line 747
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 748
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 744
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .end local v4    # "_result":I
    :cond_53a
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    goto :goto_52e

    .line 753
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    :sswitch_53c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 755
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_560

    .line 756
    sget-object v8, Lcom/qinggan/canbus/VehicleCenterControlEnabled;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    .line 762
    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    :goto_54d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 763
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->setVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)Z

    move-result v4

    .line 764
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 765
    if-eqz v4, :cond_55b

    move v6, v7

    :cond_55b
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 759
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .end local v1    # "_arg1":I
    .end local v4    # "_result":Z
    :cond_560
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    goto :goto_54d

    .line 770
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    :sswitch_562
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 771
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->requestVehicleCenterControlEnabledInfo()I

    move-result v4

    .line 772
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 773
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 778
    .end local v4    # "_result":I
    :sswitch_571
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 780
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_58e

    .line 781
    sget-object v6, Lcom/qinggan/canbus/TravellingInfoType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/TravellingInfoType;

    .line 786
    .local v0, "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    :goto_582
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->requestTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;)I

    move-result v4

    .line 787
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 788
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 784
    .end local v0    # "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    .end local v4    # "_result":I
    :cond_58e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    goto :goto_582

    .line 793
    .end local v0    # "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    :sswitch_590
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 795
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_5b0

    .line 796
    sget-object v8, Lcom/qinggan/canbus/FunctionType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v8, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/FunctionType;

    .line 801
    .local v0, "_arg0":Lcom/qinggan/canbus/FunctionType;
    :goto_5a1
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->isSupportFunction(Lcom/qinggan/canbus/FunctionType;)Z

    move-result v4

    .line 802
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 803
    if-eqz v4, :cond_5ab

    move v6, v7

    :cond_5ab
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 799
    .end local v0    # "_arg0":Lcom/qinggan/canbus/FunctionType;
    .end local v4    # "_result":Z
    :cond_5b0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/FunctionType;
    goto :goto_5a1

    .line 808
    .end local v0    # "_arg0":Lcom/qinggan/canbus/FunctionType;
    :sswitch_5b2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 810
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5cb

    .line 811
    sget-object v6, Lcom/qinggan/canbus/GearBoxType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/GearBoxType;

    .line 816
    .local v0, "_arg0":Lcom/qinggan/canbus/GearBoxType;
    :goto_5c3
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->setGearBoxType(Lcom/qinggan/canbus/GearBoxType;)V

    .line 817
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 814
    .end local v0    # "_arg0":Lcom/qinggan/canbus/GearBoxType;
    :cond_5cb
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/GearBoxType;
    goto :goto_5c3

    .line 822
    .end local v0    # "_arg0":Lcom/qinggan/canbus/GearBoxType;
    :sswitch_5cd
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 823
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getAccStatus()I

    move-result v4

    .line 824
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 825
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 830
    .end local v4    # "_result":I
    :sswitch_5dc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 832
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_5fd

    .line 833
    sget-object v6, Lcom/qinggan/canbus/VehicleStateAutoTest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleStateAutoTest;

    .line 839
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleStateAutoTest;
    :goto_5ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 841
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 842
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/qinggan/canbus/ICanBusService$Stub;->setFactoryModeState(Lcom/qinggan/canbus/VehicleStateAutoTest;Ljava/lang/String;I)V

    .line 843
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 836
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleStateAutoTest;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":I
    :cond_5fd
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleStateAutoTest;
    goto :goto_5ed

    .line 848
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleStateAutoTest;
    :sswitch_5ff
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 850
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 852
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 853
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->setFactoryModeResult(ILjava/lang/String;)V

    .line 854
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 859
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_612
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 860
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getIpkSyncSvr()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v4

    .line 861
    .local v4, "_result":Lcom/qinggan/ipksync/IIpkSyncService;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 862
    if-eqz v4, :cond_627

    invoke-interface {v4}, Lcom/qinggan/ipksync/IIpkSyncService;->asBinder()Landroid/os/IBinder;

    move-result-object v6

    :goto_622
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    goto/16 :goto_b

    :cond_627
    const/4 v6, 0x0

    goto :goto_622

    .line 867
    .end local v4    # "_result":Lcom/qinggan/ipksync/IIpkSyncService;
    :sswitch_629
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 868
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getTPMSInfo()Lcom/qinggan/canbus/TPMSInfo;

    move-result-object v4

    .line 869
    .local v4, "_result":Lcom/qinggan/canbus/TPMSInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 870
    if-eqz v4, :cond_63d

    .line 871
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 872
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/TPMSInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 875
    :cond_63d
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 881
    .end local v4    # "_result":Lcom/qinggan/canbus/TPMSInfo;
    :sswitch_642
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 882
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getBatteryRemainingCapacity()F

    move-result v4

    .line 883
    .local v4, "_result":F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 884
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeFloat(F)V

    goto/16 :goto_b

    .line 889
    .end local v4    # "_result":F
    :sswitch_651
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 890
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getPowerlLevel()Lcom/qinggan/canbus/PowerLevel;

    move-result-object v4

    .line 891
    .local v4, "_result":Lcom/qinggan/canbus/PowerLevel;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 892
    if-eqz v4, :cond_665

    .line 893
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 894
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/PowerLevel;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 897
    :cond_665
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 903
    .end local v4    # "_result":Lcom/qinggan/canbus/PowerLevel;
    :sswitch_66a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 904
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getRainfallLevel()I

    move-result v4

    .line 905
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 906
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 911
    .end local v4    # "_result":I
    :sswitch_679
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 913
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 914
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->setVehicleSceneMode(I)I

    move-result v4

    .line 915
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 916
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 921
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_68c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 922
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getVehicleSceneMode()I

    move-result v4

    .line 923
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 924
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 929
    .end local v4    # "_result":I
    :sswitch_69b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 930
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getRealityWarningInfo()Lcom/qinggan/canbus/RealityWarningInfo;

    move-result-object v4

    .line 931
    .local v4, "_result":Lcom/qinggan/canbus/RealityWarningInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 932
    if-eqz v4, :cond_6af

    .line 933
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 934
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/RealityWarningInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 937
    :cond_6af
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 943
    .end local v4    # "_result":Lcom/qinggan/canbus/RealityWarningInfo;
    :sswitch_6b4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 945
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6df

    .line 946
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 952
    .local v0, "_arg0":Landroid/os/Bundle;
    :goto_6c5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_6e1

    .line 953
    sget-object v6, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 958
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_6d3
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusService$Stub;->setVehicleAndAirConditionBundleState(Landroid/os/Bundle;Landroid/os/Bundle;)I

    move-result v4

    .line 959
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 960
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 949
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    .end local v4    # "_result":I
    :cond_6df
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/os/Bundle;
    goto :goto_6c5

    .line 956
    :cond_6e1
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_6d3

    .line 965
    .end local v0    # "_arg0":Landroid/os/Bundle;
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_6e3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 966
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getCameraState()Lcom/qinggan/canbus/CameraState;

    move-result-object v4

    .line 967
    .local v4, "_result":Lcom/qinggan/canbus/CameraState;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 968
    if-eqz v4, :cond_6f7

    .line 969
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 970
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/CameraState;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 973
    :cond_6f7
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 979
    .end local v4    # "_result":Lcom/qinggan/canbus/CameraState;
    :sswitch_6fc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 980
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getEnergyConsumptionPercent()Lcom/qinggan/canbus/EnergyConsumptionPercent;

    move-result-object v4

    .line 981
    .local v4, "_result":Lcom/qinggan/canbus/EnergyConsumptionPercent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 982
    if-eqz v4, :cond_710

    .line 983
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 984
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/EnergyConsumptionPercent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 987
    :cond_710
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 993
    .end local v4    # "_result":Lcom/qinggan/canbus/EnergyConsumptionPercent;
    :sswitch_715
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 994
    invoke-virtual {p0}, Lcom/qinggan/canbus/ICanBusService$Stub;->getEnergyConsumptionInfo()Lcom/qinggan/canbus/EnergyConsumptionInfo;

    move-result-object v4

    .line 995
    .local v4, "_result":Lcom/qinggan/canbus/EnergyConsumptionInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 996
    if-eqz v4, :cond_729

    .line 997
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 998
    invoke-virtual {v4, p3, v7}, Lcom/qinggan/canbus/EnergyConsumptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_b

    .line 1001
    :cond_729
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 39
    :sswitch_data_72e
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_3e
        0x4 -> :sswitch_55
        0x5 -> :sswitch_63
        0x6 -> :sswitch_7a
        0x7 -> :sswitch_93
        0x8 -> :sswitch_a2
        0x9 -> :sswitch_bb
        0xa -> :sswitch_d4
        0xb -> :sswitch_ed
        0xc -> :sswitch_fc
        0xd -> :sswitch_115
        0xe -> :sswitch_124
        0xf -> :sswitch_133
        0x10 -> :sswitch_142
        0x11 -> :sswitch_151
        0x12 -> :sswitch_160
        0x13 -> :sswitch_16f
        0x14 -> :sswitch_188
        0x15 -> :sswitch_193
        0x16 -> :sswitch_1ac
        0x17 -> :sswitch_1bb
        0x18 -> :sswitch_1d4
        0x19 -> :sswitch_1e3
        0x1a -> :sswitch_1f2
        0x1b -> :sswitch_201
        0x1c -> :sswitch_210
        0x1d -> :sswitch_22a
        0x1e -> :sswitch_244
        0x1f -> :sswitch_25d
        0x20 -> :sswitch_27c
        0x21 -> :sswitch_29b
        0x22 -> :sswitch_2ba
        0x23 -> :sswitch_2d3
        0x24 -> :sswitch_2ec
        0x25 -> :sswitch_305
        0x26 -> :sswitch_31e
        0x27 -> :sswitch_32d
        0x28 -> :sswitch_33c
        0x29 -> :sswitch_34b
        0x2a -> :sswitch_35a
        0x2b -> :sswitch_373
        0x2c -> :sswitch_382
        0x2d -> :sswitch_39b
        0x2e -> :sswitch_3b6
        0x2f -> :sswitch_3d1
        0x30 -> :sswitch_3ec
        0x31 -> :sswitch_3fb
        0x32 -> :sswitch_416
        0x33 -> :sswitch_425
        0x34 -> :sswitch_440
        0x35 -> :sswitch_464
        0x36 -> :sswitch_47f
        0x37 -> :sswitch_49a
        0x38 -> :sswitch_4ad
        0x39 -> :sswitch_4c0
        0x3a -> :sswitch_4df
        0x3b -> :sswitch_4fe
        0x3c -> :sswitch_51d
        0x3d -> :sswitch_53c
        0x3e -> :sswitch_562
        0x3f -> :sswitch_571
        0x40 -> :sswitch_590
        0x41 -> :sswitch_5b2
        0x42 -> :sswitch_5cd
        0x43 -> :sswitch_5dc
        0x44 -> :sswitch_5ff
        0x45 -> :sswitch_612
        0x46 -> :sswitch_629
        0x47 -> :sswitch_642
        0x48 -> :sswitch_651
        0x49 -> :sswitch_66a
        0x4a -> :sswitch_679
        0x4b -> :sswitch_68c
        0x4c -> :sswitch_69b
        0x4d -> :sswitch_6b4
        0x4e -> :sswitch_6e3
        0x4f -> :sswitch_6fc
        0x50 -> :sswitch_715
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
