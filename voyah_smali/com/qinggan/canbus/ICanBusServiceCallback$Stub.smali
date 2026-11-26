.class public abstract Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;
.super Landroid/os/Binder;
.source "ICanBusServiceCallback.java"

# interfaces
.implements Lcom/qinggan/canbus/ICanBusServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/ICanBusServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.canbus.ICanBusServiceCallback"

.field static final TRANSACTION_onAccStateChanged:I = 0x27

.field static final TRANSACTION_onAirConditionChanged:I = 0x4

.field static final TRANSACTION_onAlarmDataChanged:I = 0x21

.field static final TRANSACTION_onAmbientTemperatureChanged:I = 0xe

.field static final TRANSACTION_onBatteryRemainingCapacityChanged:I = 0x2e

.field static final TRANSACTION_onBatteryStateChanged:I = 0x1a

.field static final TRANSACTION_onBrakeFluidStatusChanged:I = 0x15

.field static final TRANSACTION_onBrakePadStatusChanged:I = 0x14

.field static final TRANSACTION_onCameraChanged:I = 0x39

.field static final TRANSACTION_onCanBoxVersionChange:I = 0x2

.field static final TRANSACTION_onCanRawDataChanged:I = 0x33

.field static final TRANSACTION_onCarKeyChanged:I = 0x1b

.field static final TRANSACTION_onDVRStateChenaged:I = 0x5

.field static final TRANSACTION_onDoorStatusChanged:I = 0x1

.field static final TRANSACTION_onEnergyConsumptionInfoChanged:I = 0x3c

.field static final TRANSACTION_onEnergyConsumptionPercentChanged:I = 0x3b

.field static final TRANSACTION_onEngineFluidStatusChanged:I = 0xb

.field static final TRANSACTION_onEngineSpeedChanged:I = 0xd

.field static final TRANSACTION_onEngineStatusChanged:I = 0x18

.field static final TRANSACTION_onEngineTemperatureChanged:I = 0x13

.field static final TRANSACTION_onFactoryModeChanged:I = 0x2a

.field static final TRANSACTION_onFuelConsumptionChanged:I = 0x17

.field static final TRANSACTION_onFuelLevelChanged:I = 0x11

.field static final TRANSACTION_onGearStatusChanged:I = 0xc

.field static final TRANSACTION_onHEVSystemModelChanged:I = 0x23

.field static final TRANSACTION_onHandBrakeStatusChanged:I = 0x9

.field static final TRANSACTION_onICMReqCallModeChanged:I = 0x37

.field static final TRANSACTION_onICMReqCallStatusChanged:I = 0x38

.field static final TRANSACTION_onICMReqDialing:I = 0x35

.field static final TRANSACTION_onICMReqMediaChanged:I = 0x34

.field static final TRANSACTION_onICMReqMuteModeChanged:I = 0x36

.field static final TRANSACTION_onIlluminationChanged:I = 0x1c

.field static final TRANSACTION_onInstantaneousFuelConsumptionChanged:I = 0x30

.field static final TRANSACTION_onLightStatusChanged:I = 0xa

.field static final TRANSACTION_onOdometerChanged:I = 0x19

.field static final TRANSACTION_onParkStateChanged:I = 0x7

.field static final TRANSACTION_onPowerLevelChanged:I = 0x2f

.field static final TRANSACTION_onRadarDataChanged:I = 0x6

.field static final TRANSACTION_onRainFallLevelChanged:I = 0x31

.field static final TRANSACTION_onReTrackingChanged:I = 0x8

.field static final TRANSACTION_onRealityWarningInfoChange:I = 0x2b

.field static final TRANSACTION_onRealityWarningInfoChanged:I = 0x2c

.field static final TRANSACTION_onSWCAngleChanged:I = 0x22

.field static final TRANSACTION_onSeatAdjustStateChanged:I = 0x3a

.field static final TRANSACTION_onSeatBeltChanged:I = 0x3

.field static final TRANSACTION_onSecondaryOdometerChanged:I = 0x1e

.field static final TRANSACTION_onTPMSInfoChange:I = 0x2d

.field static final TRANSACTION_onTravellingInfo:I = 0x26

.field static final TRANSACTION_onVehicleCenterControlEnabledChanged:I = 0x25

.field static final TRANSACTION_onVehicleIOChanged:I = 0x1d

.field static final TRANSACTION_onVehicleKeyStateChanged:I = 0x1f

.field static final TRANSACTION_onVehicleSceneModeChanged:I = 0x32

.field static final TRANSACTION_onVehicleSpeedChanged:I = 0x10

.field static final TRANSACTION_onVehicleStateChanged:I = 0x24

.field static final TRANSACTION_onVehicleStateSettingResponse:I = 0x28

.field static final TRANSACTION_onVehicleStateSettingResponseEx:I = 0x29

.field static final TRANSACTION_onWheelCountChanged:I = 0x12

.field static final TRANSACTION_onWheelSpeedChanged:I = 0xf

.field static final TRANSACTION_onWindowsStatusChanged:I = 0x20

.field static final TRANSACTION_onWiperFluidStatusChanged:I = 0x16


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusServiceCallback;
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
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/canbus/ICanBusServiceCallback;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qinggan/canbus/ICanBusServiceCallback;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 11
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
    const/4 v1, 0x0

    const/4 v4, 0x1

    .line 38
    const-string v3, "com.qinggan.canbus.ICanBusServiceCallback"

    .line 39
    .local v3, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_470

    .line 695
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_b
    return v4

    .line 43
    :sswitch_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 48
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_25

    .line 51
    sget-object v5, Lcom/qinggan/canbus/DoorStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/DoorStatus;

    .line 56
    .local v0, "_arg0":Lcom/qinggan/canbus/DoorStatus;
    :goto_21
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onDoorStatusChanged(Lcom/qinggan/canbus/DoorStatus;)V

    goto :goto_b

    .line 54
    .end local v0    # "_arg0":Lcom/qinggan/canbus/DoorStatus;
    :cond_25
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/DoorStatus;
    goto :goto_21

    .line 61
    .end local v0    # "_arg0":Lcom/qinggan/canbus/DoorStatus;
    :sswitch_27
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 64
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onCanBoxVersionChange(Ljava/lang/String;)V

    goto :goto_b

    .line 69
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_32
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_47

    .line 72
    sget-object v5, Lcom/qinggan/canbus/SeatBelt;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/SeatBelt;

    .line 77
    .local v0, "_arg0":Lcom/qinggan/canbus/SeatBelt;
    :goto_43
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onSeatBeltChanged(Lcom/qinggan/canbus/SeatBelt;)V

    goto :goto_b

    .line 75
    .end local v0    # "_arg0":Lcom/qinggan/canbus/SeatBelt;
    :cond_47
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/SeatBelt;
    goto :goto_43

    .line 82
    .end local v0    # "_arg0":Lcom/qinggan/canbus/SeatBelt;
    :sswitch_49
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_5e

    .line 85
    sget-object v5, Lcom/qinggan/canbus/AirCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/AirCondition;

    .line 90
    .local v0, "_arg0":Lcom/qinggan/canbus/AirCondition;
    :goto_5a
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onAirConditionChanged(Lcom/qinggan/canbus/AirCondition;)V

    goto :goto_b

    .line 88
    .end local v0    # "_arg0":Lcom/qinggan/canbus/AirCondition;
    :cond_5e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/AirCondition;
    goto :goto_5a

    .line 95
    .end local v0    # "_arg0":Lcom/qinggan/canbus/AirCondition;
    :sswitch_60
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_75

    .line 98
    sget-object v5, Lcom/qinggan/canbus/DVRState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/DVRState;

    .line 103
    .local v0, "_arg0":Lcom/qinggan/canbus/DVRState;
    :goto_71
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onDVRStateChenaged(Lcom/qinggan/canbus/DVRState;)V

    goto :goto_b

    .line 101
    .end local v0    # "_arg0":Lcom/qinggan/canbus/DVRState;
    :cond_75
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/DVRState;
    goto :goto_71

    .line 108
    .end local v0    # "_arg0":Lcom/qinggan/canbus/DVRState;
    :sswitch_77
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_8c

    .line 111
    sget-object v5, Lcom/qinggan/canbus/RadarData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/RadarData;

    .line 116
    .local v0, "_arg0":Lcom/qinggan/canbus/RadarData;
    :goto_88
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onRadarDataChanged(Lcom/qinggan/canbus/RadarData;)V

    goto :goto_b

    .line 114
    .end local v0    # "_arg0":Lcom/qinggan/canbus/RadarData;
    :cond_8c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/RadarData;
    goto :goto_88

    .line 121
    .end local v0    # "_arg0":Lcom/qinggan/canbus/RadarData;
    :sswitch_8e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 125
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 126
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onParkStateChanged(II)V

    goto/16 :goto_b

    .line 131
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_9e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 134
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onReTrackingChanged(I)V

    goto/16 :goto_b

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_aa
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 142
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onHandBrakeStatusChanged(I)V

    goto/16 :goto_b

    .line 147
    .end local v0    # "_arg0":I
    :sswitch_b6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_cc

    .line 150
    sget-object v5, Lcom/qinggan/canbus/LightStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/LightStatus;

    .line 155
    .local v0, "_arg0":Lcom/qinggan/canbus/LightStatus;
    :goto_c7
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onLightStatusChanged(Lcom/qinggan/canbus/LightStatus;)V

    goto/16 :goto_b

    .line 153
    .end local v0    # "_arg0":Lcom/qinggan/canbus/LightStatus;
    :cond_cc
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/LightStatus;
    goto :goto_c7

    .line 160
    .end local v0    # "_arg0":Lcom/qinggan/canbus/LightStatus;
    :sswitch_ce
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 163
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onEngineFluidStatusChanged(I)V

    goto/16 :goto_b

    .line 168
    .end local v0    # "_arg0":I
    :sswitch_da
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_f0

    .line 171
    sget-object v5, Lcom/qinggan/canbus/GearState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/GearState;

    .line 176
    .local v0, "_arg0":Lcom/qinggan/canbus/GearState;
    :goto_eb
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onGearStatusChanged(Lcom/qinggan/canbus/GearState;)V

    goto/16 :goto_b

    .line 174
    .end local v0    # "_arg0":Lcom/qinggan/canbus/GearState;
    :cond_f0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/GearState;
    goto :goto_eb

    .line 181
    .end local v0    # "_arg0":Lcom/qinggan/canbus/GearState;
    :sswitch_f2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onEngineSpeedChanged(I)V

    goto/16 :goto_b

    .line 189
    .end local v0    # "_arg0":I
    :sswitch_fe
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onAmbientTemperatureChanged(I)V

    goto/16 :goto_b

    .line 197
    .end local v0    # "_arg0":I
    :sswitch_10a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_120

    .line 200
    sget-object v5, Lcom/qinggan/canbus/WheelSpeed;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/WheelSpeed;

    .line 205
    .local v0, "_arg0":Lcom/qinggan/canbus/WheelSpeed;
    :goto_11b
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onWheelSpeedChanged(Lcom/qinggan/canbus/WheelSpeed;)V

    goto/16 :goto_b

    .line 203
    .end local v0    # "_arg0":Lcom/qinggan/canbus/WheelSpeed;
    :cond_120
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/WheelSpeed;
    goto :goto_11b

    .line 210
    .end local v0    # "_arg0":Lcom/qinggan/canbus/WheelSpeed;
    :sswitch_122
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 213
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleSpeedChanged(I)V

    goto/16 :goto_b

    .line 218
    .end local v0    # "_arg0":I
    :sswitch_12e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_144

    .line 221
    sget-object v5, Lcom/qinggan/canbus/FuelLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/FuelLevel;

    .line 226
    .local v0, "_arg0":Lcom/qinggan/canbus/FuelLevel;
    :goto_13f
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onFuelLevelChanged(Lcom/qinggan/canbus/FuelLevel;)V

    goto/16 :goto_b

    .line 224
    .end local v0    # "_arg0":Lcom/qinggan/canbus/FuelLevel;
    :cond_144
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/FuelLevel;
    goto :goto_13f

    .line 231
    .end local v0    # "_arg0":Lcom/qinggan/canbus/FuelLevel;
    :sswitch_146
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_15c

    .line 234
    sget-object v5, Lcom/qinggan/canbus/WheelCount;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/WheelCount;

    .line 239
    .local v0, "_arg0":Lcom/qinggan/canbus/WheelCount;
    :goto_157
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onWheelCountChanged(Lcom/qinggan/canbus/WheelCount;)V

    goto/16 :goto_b

    .line 237
    .end local v0    # "_arg0":Lcom/qinggan/canbus/WheelCount;
    :cond_15c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/WheelCount;
    goto :goto_157

    .line 244
    .end local v0    # "_arg0":Lcom/qinggan/canbus/WheelCount;
    :sswitch_15e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 246
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 247
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onEngineTemperatureChanged(I)V

    goto/16 :goto_b

    .line 252
    .end local v0    # "_arg0":I
    :sswitch_16a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_180

    .line 255
    sget-object v5, Lcom/qinggan/canbus/BrakePadStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/BrakePadStatus;

    .line 260
    .local v0, "_arg0":Lcom/qinggan/canbus/BrakePadStatus;
    :goto_17b
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onBrakePadStatusChanged(Lcom/qinggan/canbus/BrakePadStatus;)V

    goto/16 :goto_b

    .line 258
    .end local v0    # "_arg0":Lcom/qinggan/canbus/BrakePadStatus;
    :cond_180
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/BrakePadStatus;
    goto :goto_17b

    .line 265
    .end local v0    # "_arg0":Lcom/qinggan/canbus/BrakePadStatus;
    :sswitch_182
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 267
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 268
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onBrakeFluidStatusChanged(I)V

    goto/16 :goto_b

    .line 273
    .end local v0    # "_arg0":I
    :sswitch_18e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 276
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onWiperFluidStatusChanged(I)V

    goto/16 :goto_b

    .line 281
    .end local v0    # "_arg0":I
    :sswitch_19a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 284
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onFuelConsumptionChanged(I)V

    goto/16 :goto_b

    .line 289
    .end local v0    # "_arg0":I
    :sswitch_1a6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 292
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onEngineStatusChanged(I)V

    goto/16 :goto_b

    .line 297
    .end local v0    # "_arg0":I
    :sswitch_1b2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1c8

    .line 300
    sget-object v5, Lcom/qinggan/canbus/Odometer;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/Odometer;

    .line 305
    .local v0, "_arg0":Lcom/qinggan/canbus/Odometer;
    :goto_1c3
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onOdometerChanged(Lcom/qinggan/canbus/Odometer;)V

    goto/16 :goto_b

    .line 303
    .end local v0    # "_arg0":Lcom/qinggan/canbus/Odometer;
    :cond_1c8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/Odometer;
    goto :goto_1c3

    .line 310
    .end local v0    # "_arg0":Lcom/qinggan/canbus/Odometer;
    :sswitch_1ca
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 312
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_1e0

    .line 313
    sget-object v5, Lcom/qinggan/canbus/BatteryState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/BatteryState;

    .line 318
    .local v0, "_arg0":Lcom/qinggan/canbus/BatteryState;
    :goto_1db
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onBatteryStateChanged(Lcom/qinggan/canbus/BatteryState;)V

    goto/16 :goto_b

    .line 316
    .end local v0    # "_arg0":Lcom/qinggan/canbus/BatteryState;
    :cond_1e0
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/BatteryState;
    goto :goto_1db

    .line 323
    .end local v0    # "_arg0":Lcom/qinggan/canbus/BatteryState;
    :sswitch_1e2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 327
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 328
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onCarKeyChanged(II)V

    goto/16 :goto_b

    .line 333
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1f2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 336
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onIlluminationChanged(I)V

    goto/16 :goto_b

    .line 341
    .end local v0    # "_arg0":I
    :sswitch_1fe
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_214

    .line 344
    sget-object v5, Lcom/qinggan/canbus/VehicleIO;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleIO;

    .line 349
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleIO;
    :goto_20f
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleIOChanged(Lcom/qinggan/canbus/VehicleIO;)V

    goto/16 :goto_b

    .line 347
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleIO;
    :cond_214
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleIO;
    goto :goto_20f

    .line 354
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleIO;
    :sswitch_216
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 357
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onSecondaryOdometerChanged(I)V

    goto/16 :goto_b

    .line 362
    .end local v0    # "_arg0":I
    :sswitch_222
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 364
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 365
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleKeyStateChanged(I)V

    goto/16 :goto_b

    .line 370
    .end local v0    # "_arg0":I
    :sswitch_22e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_244

    .line 373
    sget-object v5, Lcom/qinggan/canbus/WindowStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/WindowStatus;

    .line 378
    .local v0, "_arg0":Lcom/qinggan/canbus/WindowStatus;
    :goto_23f
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onWindowsStatusChanged(Lcom/qinggan/canbus/WindowStatus;)V

    goto/16 :goto_b

    .line 376
    .end local v0    # "_arg0":Lcom/qinggan/canbus/WindowStatus;
    :cond_244
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/WindowStatus;
    goto :goto_23f

    .line 383
    .end local v0    # "_arg0":Lcom/qinggan/canbus/WindowStatus;
    :sswitch_246
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 385
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 386
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onAlarmDataChanged(I)V

    goto/16 :goto_b

    .line 391
    .end local v0    # "_arg0":I
    :sswitch_252
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 393
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_268

    .line 394
    sget-object v5, Lcom/qinggan/canbus/SWCAngle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/SWCAngle;

    .line 399
    .local v0, "_arg0":Lcom/qinggan/canbus/SWCAngle;
    :goto_263
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onSWCAngleChanged(Lcom/qinggan/canbus/SWCAngle;)V

    goto/16 :goto_b

    .line 397
    .end local v0    # "_arg0":Lcom/qinggan/canbus/SWCAngle;
    :cond_268
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/SWCAngle;
    goto :goto_263

    .line 404
    .end local v0    # "_arg0":Lcom/qinggan/canbus/SWCAngle;
    :sswitch_26a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 406
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 407
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onHEVSystemModelChanged(I)V

    goto/16 :goto_b

    .line 412
    .end local v0    # "_arg0":I
    :sswitch_276
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 414
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_290

    .line 415
    sget-object v5, Lcom/qinggan/canbus/VehicleState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleState;

    .line 421
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleState;
    :goto_287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 422
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleStateChanged(Lcom/qinggan/canbus/VehicleState;I)V

    goto/16 :goto_b

    .line 418
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    .end local v1    # "_arg1":I
    :cond_290
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    goto :goto_287

    .line 427
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :sswitch_292
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 429
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2ac

    .line 430
    sget-object v5, Lcom/qinggan/canbus/VehicleCenterControlEnabled;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    .line 436
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    :goto_2a3
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 437
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleCenterControlEnabledChanged(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)V

    goto/16 :goto_b

    .line 433
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .end local v1    # "_arg1":I
    :cond_2ac
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    goto :goto_2a3

    .line 442
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    :sswitch_2ae
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2c8

    .line 445
    sget-object v5, Lcom/qinggan/canbus/TravellingInfoType;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/TravellingInfoType;

    .line 451
    .local v0, "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    :goto_2bf
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    .line 452
    .local v1, "_arg1":F
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;F)V

    goto/16 :goto_b

    .line 448
    .end local v0    # "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    .end local v1    # "_arg1":F
    :cond_2c8
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    goto :goto_2bf

    .line 457
    .end local v0    # "_arg0":Lcom/qinggan/canbus/TravellingInfoType;
    :sswitch_2ca
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 460
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onAccStateChanged(I)V

    goto/16 :goto_b

    .line 465
    .end local v0    # "_arg0":I
    :sswitch_2d6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2f3

    .line 468
    sget-object v5, Lcom/qinggan/canbus/VehicleState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleState;

    .line 474
    .local v0, "_arg0":Lcom/qinggan/canbus/VehicleState;
    :goto_2e7
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2ee

    move v1, v4

    .line 475
    .local v1, "_arg1":Z
    :cond_2ee
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleStateSettingResponse(Lcom/qinggan/canbus/VehicleState;Z)V

    goto/16 :goto_b

    .line 471
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    .end local v1    # "_arg1":Z
    :cond_2f3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    goto :goto_2e7

    .line 480
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :sswitch_2f5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 482
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_30f

    .line 483
    sget-object v5, Lcom/qinggan/canbus/VehicleState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/VehicleState;

    .line 489
    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :goto_306
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 490
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleStateSettingResponseEx(Lcom/qinggan/canbus/VehicleState;I)V

    goto/16 :goto_b

    .line 486
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    .end local v1    # "_arg1":I
    :cond_30f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    goto :goto_306

    .line 495
    .end local v0    # "_arg0":Lcom/qinggan/canbus/VehicleState;
    :sswitch_311
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 498
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onFactoryModeChanged(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 503
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_31d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 505
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_333

    .line 506
    sget-object v5, Lcom/qinggan/canbus/RealityWarningInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/RealityWarningInfo;

    .line 511
    .local v0, "_arg0":Lcom/qinggan/canbus/RealityWarningInfo;
    :goto_32e
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onRealityWarningInfoChange(Lcom/qinggan/canbus/RealityWarningInfo;)V

    goto/16 :goto_b

    .line 509
    .end local v0    # "_arg0":Lcom/qinggan/canbus/RealityWarningInfo;
    :cond_333
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/RealityWarningInfo;
    goto :goto_32e

    .line 516
    .end local v0    # "_arg0":Lcom/qinggan/canbus/RealityWarningInfo;
    :sswitch_335
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 518
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 520
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 521
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onRealityWarningInfoChanged(II)V

    goto/16 :goto_b

    .line 526
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_345
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 528
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_35b

    .line 529
    sget-object v5, Lcom/qinggan/canbus/TPMSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/TPMSInfo;

    .line 534
    .local v0, "_arg0":Lcom/qinggan/canbus/TPMSInfo;
    :goto_356
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onTPMSInfoChange(Lcom/qinggan/canbus/TPMSInfo;)V

    goto/16 :goto_b

    .line 532
    .end local v0    # "_arg0":Lcom/qinggan/canbus/TPMSInfo;
    :cond_35b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/TPMSInfo;
    goto :goto_356

    .line 539
    .end local v0    # "_arg0":Lcom/qinggan/canbus/TPMSInfo;
    :sswitch_35d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 541
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 542
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onBatteryRemainingCapacityChanged(F)V

    goto/16 :goto_b

    .line 547
    .end local v0    # "_arg0":F
    :sswitch_369
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 549
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_37f

    .line 550
    sget-object v5, Lcom/qinggan/canbus/PowerLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/PowerLevel;

    .line 555
    .local v0, "_arg0":Lcom/qinggan/canbus/PowerLevel;
    :goto_37a
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onPowerLevelChanged(Lcom/qinggan/canbus/PowerLevel;)V

    goto/16 :goto_b

    .line 553
    .end local v0    # "_arg0":Lcom/qinggan/canbus/PowerLevel;
    :cond_37f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/PowerLevel;
    goto :goto_37a

    .line 560
    .end local v0    # "_arg0":Lcom/qinggan/canbus/PowerLevel;
    :sswitch_381
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 562
    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    .line 563
    .local v0, "_arg0":F
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onInstantaneousFuelConsumptionChanged(F)V

    goto/16 :goto_b

    .line 568
    .end local v0    # "_arg0":F
    :sswitch_38d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 570
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 571
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onRainFallLevelChanged(I)V

    goto/16 :goto_b

    .line 576
    .end local v0    # "_arg0":I
    :sswitch_399
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 578
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 579
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onVehicleSceneModeChanged(I)V

    goto/16 :goto_b

    .line 584
    .end local v0    # "_arg0":I
    :sswitch_3a5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 586
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 588
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3bf

    .line 589
    sget-object v5, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 594
    .local v1, "_arg1":Landroid/os/Bundle;
    :goto_3ba
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onCanRawDataChanged(ILandroid/os/Bundle;)V

    goto/16 :goto_b

    .line 592
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :cond_3bf
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Landroid/os/Bundle;
    goto :goto_3ba

    .line 599
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Landroid/os/Bundle;
    :sswitch_3c1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 603
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 605
    .local v1, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 606
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onICMReqMediaChanged(III)V

    goto/16 :goto_b

    .line 611
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_3d5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 613
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 614
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onICMReqDialing(I)V

    goto/16 :goto_b

    .line 619
    .end local v0    # "_arg0":I
    :sswitch_3e1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 621
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_3f0

    move v0, v4

    .line 622
    .local v0, "_arg0":Z
    :goto_3eb
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onICMReqMuteModeChanged(Z)V

    goto/16 :goto_b

    .end local v0    # "_arg0":Z
    :cond_3f0
    move v0, v1

    .line 621
    goto :goto_3eb

    .line 627
    :sswitch_3f2
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 629
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_401

    move v0, v4

    .line 630
    .restart local v0    # "_arg0":Z
    :goto_3fc
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onICMReqCallModeChanged(Z)V

    goto/16 :goto_b

    .end local v0    # "_arg0":Z
    :cond_401
    move v0, v1

    .line 629
    goto :goto_3fc

    .line 635
    :sswitch_403
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 637
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 638
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onICMReqCallStatusChanged(I)V

    goto/16 :goto_b

    .line 643
    .end local v0    # "_arg0":I
    :sswitch_40f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 645
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_425

    .line 646
    sget-object v5, Lcom/qinggan/canbus/CameraState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/CameraState;

    .line 651
    .local v0, "_arg0":Lcom/qinggan/canbus/CameraState;
    :goto_420
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onCameraChanged(Lcom/qinggan/canbus/CameraState;)V

    goto/16 :goto_b

    .line 649
    .end local v0    # "_arg0":Lcom/qinggan/canbus/CameraState;
    :cond_425
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/CameraState;
    goto :goto_420

    .line 656
    .end local v0    # "_arg0":Lcom/qinggan/canbus/CameraState;
    :sswitch_427
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 658
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_43d

    .line 659
    sget-object v5, Lcom/qinggan/canbus/SeatAdjustState;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/SeatAdjustState;

    .line 664
    .local v0, "_arg0":Lcom/qinggan/canbus/SeatAdjustState;
    :goto_438
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onSeatAdjustStateChanged(Lcom/qinggan/canbus/SeatAdjustState;)V

    goto/16 :goto_b

    .line 662
    .end local v0    # "_arg0":Lcom/qinggan/canbus/SeatAdjustState;
    :cond_43d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/SeatAdjustState;
    goto :goto_438

    .line 669
    .end local v0    # "_arg0":Lcom/qinggan/canbus/SeatAdjustState;
    :sswitch_43f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 671
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_455

    .line 672
    sget-object v5, Lcom/qinggan/canbus/EnergyConsumptionPercent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/EnergyConsumptionPercent;

    .line 677
    .local v0, "_arg0":Lcom/qinggan/canbus/EnergyConsumptionPercent;
    :goto_450
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onEnergyConsumptionPercentChanged(Lcom/qinggan/canbus/EnergyConsumptionPercent;)V

    goto/16 :goto_b

    .line 675
    .end local v0    # "_arg0":Lcom/qinggan/canbus/EnergyConsumptionPercent;
    :cond_455
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/EnergyConsumptionPercent;
    goto :goto_450

    .line 682
    .end local v0    # "_arg0":Lcom/qinggan/canbus/EnergyConsumptionPercent;
    :sswitch_457
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 684
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_46d

    .line 685
    sget-object v5, Lcom/qinggan/canbus/EnergyConsumptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/EnergyConsumptionInfo;

    .line 690
    .local v0, "_arg0":Lcom/qinggan/canbus/EnergyConsumptionInfo;
    :goto_468
    invoke-virtual {p0, v0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;->onEnergyConsumptionInfoChanged(Lcom/qinggan/canbus/EnergyConsumptionInfo;)V

    goto/16 :goto_b

    .line 688
    .end local v0    # "_arg0":Lcom/qinggan/canbus/EnergyConsumptionInfo;
    :cond_46d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/canbus/EnergyConsumptionInfo;
    goto :goto_468

    .line 39
    nop

    :sswitch_data_470
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_27
        0x3 -> :sswitch_32
        0x4 -> :sswitch_49
        0x5 -> :sswitch_60
        0x6 -> :sswitch_77
        0x7 -> :sswitch_8e
        0x8 -> :sswitch_9e
        0x9 -> :sswitch_aa
        0xa -> :sswitch_b6
        0xb -> :sswitch_ce
        0xc -> :sswitch_da
        0xd -> :sswitch_f2
        0xe -> :sswitch_fe
        0xf -> :sswitch_10a
        0x10 -> :sswitch_122
        0x11 -> :sswitch_12e
        0x12 -> :sswitch_146
        0x13 -> :sswitch_15e
        0x14 -> :sswitch_16a
        0x15 -> :sswitch_182
        0x16 -> :sswitch_18e
        0x17 -> :sswitch_19a
        0x18 -> :sswitch_1a6
        0x19 -> :sswitch_1b2
        0x1a -> :sswitch_1ca
        0x1b -> :sswitch_1e2
        0x1c -> :sswitch_1f2
        0x1d -> :sswitch_1fe
        0x1e -> :sswitch_216
        0x1f -> :sswitch_222
        0x20 -> :sswitch_22e
        0x21 -> :sswitch_246
        0x22 -> :sswitch_252
        0x23 -> :sswitch_26a
        0x24 -> :sswitch_276
        0x25 -> :sswitch_292
        0x26 -> :sswitch_2ae
        0x27 -> :sswitch_2ca
        0x28 -> :sswitch_2d6
        0x29 -> :sswitch_2f5
        0x2a -> :sswitch_311
        0x2b -> :sswitch_31d
        0x2c -> :sswitch_335
        0x2d -> :sswitch_345
        0x2e -> :sswitch_35d
        0x2f -> :sswitch_369
        0x30 -> :sswitch_381
        0x31 -> :sswitch_38d
        0x32 -> :sswitch_399
        0x33 -> :sswitch_3a5
        0x34 -> :sswitch_3c1
        0x35 -> :sswitch_3d5
        0x36 -> :sswitch_3e1
        0x37 -> :sswitch_3f2
        0x38 -> :sswitch_403
        0x39 -> :sswitch_40f
        0x3a -> :sswitch_427
        0x3b -> :sswitch_43f
        0x3c -> :sswitch_457
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
