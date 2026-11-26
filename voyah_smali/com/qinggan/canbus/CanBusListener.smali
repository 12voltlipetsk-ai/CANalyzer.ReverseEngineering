.class public Lcom/qinggan/canbus/CanBusListener;
.super Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;
.source "CanBusListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 381
    return-void
.end method

.method public onAirConditionChanged(Lcom/qinggan/canbus/AirCondition;)V
    .registers 2
    .param p1, "airConditionData"    # Lcom/qinggan/canbus/AirCondition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public onAlarmDataChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 334
    return-void
.end method

.method public onAmbientTemperatureChanged(I)V
    .registers 2
    .param p1, "temperature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    return-void
.end method

.method public onBatteryRemainingCapacityChanged(F)V
    .registers 2
    .param p1, "data"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 448
    return-void
.end method

.method public onBatteryStateChanged(Lcom/qinggan/canbus/BatteryState;)V
    .registers 2
    .param p1, "state"    # Lcom/qinggan/canbus/BatteryState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    return-void
.end method

.method public onBrakeFluidStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 221
    return-void
.end method

.method public onBrakePadStatusChanged(Lcom/qinggan/canbus/BrakePadStatus;)V
    .registers 2
    .param p1, "status"    # Lcom/qinggan/canbus/BrakePadStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 210
    return-void
.end method

.method public onCameraChanged(Lcom/qinggan/canbus/CameraState;)V
    .registers 2
    .param p1, "cameraState"    # Lcom/qinggan/canbus/CameraState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 556
    return-void
.end method

.method public onCanBoxVersionChange(Ljava/lang/String;)V
    .registers 2
    .param p1, "ver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public onCanRawDataChanged(ILandroid/os/Bundle;)V
    .registers 3
    .param p1, "canID"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 503
    return-void
.end method

.method public onCarKeyChanged(II)V
    .registers 3
    .param p1, "keycode"    # I
    .param p2, "keyStatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    return-void
.end method

.method public onDVRStateChenaged(Lcom/qinggan/canbus/DVRState;)V
    .registers 2
    .param p1, "DVRState"    # Lcom/qinggan/canbus/DVRState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    return-void
.end method

.method public onDoorStatusChanged(Lcom/qinggan/canbus/DoorStatus;)V
    .registers 2
    .param p1, "doorStatus"    # Lcom/qinggan/canbus/DoorStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    return-void
.end method

.method public onEnergyConsumptionInfoChanged(Lcom/qinggan/canbus/EnergyConsumptionInfo;)V
    .registers 2
    .param p1, "consumptionInfo"    # Lcom/qinggan/canbus/EnergyConsumptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 575
    return-void
.end method

.method public onEnergyConsumptionPercentChanged(Lcom/qinggan/canbus/EnergyConsumptionPercent;)V
    .registers 2
    .param p1, "consumptionPercent"    # Lcom/qinggan/canbus/EnergyConsumptionPercent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 570
    return-void
.end method

.method public onEngineFluidStatusChanged(I)V
    .registers 2
    .param p1, "values"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onEngineSpeedChanged(I)V
    .registers 2
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    return-void
.end method

.method public onEngineStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    return-void
.end method

.method public onEngineTemperatureChanged(I)V
    .registers 2
    .param p1, "temperature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 199
    return-void
.end method

.method public onFactoryModeChanged(Ljava/lang/String;)V
    .registers 2
    .param p1, "sResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 395
    return-void
.end method

.method public onFuelConsumptionChanged(I)V
    .registers 2
    .param p1, "consumption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    return-void
.end method

.method public onFuelLevelChanged(Lcom/qinggan/canbus/FuelLevel;)V
    .registers 2
    .param p1, "level"    # Lcom/qinggan/canbus/FuelLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 182
    return-void
.end method

.method public onGearStatusChanged(Lcom/qinggan/canbus/GearState;)V
    .registers 2
    .param p1, "gear"    # Lcom/qinggan/canbus/GearState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    return-void
.end method

.method public onHEVSystemModelChanged(I)V
    .registers 2
    .param p1, "hevMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    return-void
.end method

.method public onHandBrakeStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    return-void
.end method

.method public onICMReqCallModeChanged(Z)V
    .registers 2
    .param p1, "isVehicleCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 542
    return-void
.end method

.method public onICMReqCallStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 551
    return-void
.end method

.method public onICMReqDialing(I)V
    .registers 2
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 523
    return-void
.end method

.method public onICMReqMediaChanged(III)V
    .registers 4
    .param p1, "flag"    # I
    .param p2, "action"    # I
    .param p3, "targetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    return-void
.end method

.method public onICMReqMuteModeChanged(Z)V
    .registers 2
    .param p1, "isMute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 533
    return-void
.end method

.method public onIlluminationChanged(I)V
    .registers 2
    .param p1, "illumination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    return-void
.end method

.method public onInstantaneousFuelConsumptionChanged(F)V
    .registers 2
    .param p1, "consumption"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 474
    return-void
.end method

.method public onLightStatusChanged(Lcom/qinggan/canbus/LightStatus;)V
    .registers 2
    .param p1, "lightStatus"    # Lcom/qinggan/canbus/LightStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    return-void
.end method

.method public onOdometerChanged(Lcom/qinggan/canbus/Odometer;)V
    .registers 2
    .param p1, "odometer"    # Lcom/qinggan/canbus/Odometer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 265
    return-void
.end method

.method public onParkStateChanged(II)V
    .registers 3
    .param p1, "soundState"    # I
    .param p2, "systemState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 83
    return-void
.end method

.method public onPowerLevelChanged(Lcom/qinggan/canbus/PowerLevel;)V
    .registers 2
    .param p1, "powerLevel"    # Lcom/qinggan/canbus/PowerLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    return-void
.end method

.method public onRadarDataChanged(Lcom/qinggan/canbus/RadarData;)V
    .registers 2
    .param p1, "radarDate"    # Lcom/qinggan/canbus/RadarData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    return-void
.end method

.method public onRainFallLevelChanged(I)V
    .registers 2
    .param p1, "rainfallLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    return-void
.end method

.method public onReTrackingChanged(I)V
    .registers 2
    .param p1, "angle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    return-void
.end method

.method public onRealityWarningInfoChange(Lcom/qinggan/canbus/RealityWarningInfo;)V
    .registers 2
    .param p1, "realityWarningInfo"    # Lcom/qinggan/canbus/RealityWarningInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 405
    return-void
.end method

.method public onRealityWarningInfoChanged(II)V
    .registers 3
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 417
    return-void
.end method

.method public onSWCAngleChanged(Lcom/qinggan/canbus/SWCAngle;)V
    .registers 2
    .param p1, "swcAngle"    # Lcom/qinggan/canbus/SWCAngle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 345
    return-void
.end method

.method public onSeatAdjustStateChanged(Lcom/qinggan/canbus/SeatAdjustState;)V
    .registers 2
    .param p1, "state"    # Lcom/qinggan/canbus/SeatAdjustState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 565
    return-void
.end method

.method public onSeatBeltChanged(Lcom/qinggan/canbus/SeatBelt;)V
    .registers 2
    .param p1, "state"    # Lcom/qinggan/canbus/SeatBelt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public onSecondaryOdometerChanged(I)V
    .registers 2
    .param p1, "odometer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    return-void
.end method

.method public onTPMSInfoChange(Lcom/qinggan/canbus/TPMSInfo;)V
    .registers 2
    .param p1, "tpmsInfo"    # Lcom/qinggan/canbus/TPMSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method public onTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;F)V
    .registers 3
    .param p1, "type"    # Lcom/qinggan/canbus/TravellingInfoType;
    .param p2, "data"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 369
    return-void
.end method

.method public onVehicleCenterControlEnabledChanged(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)V
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .param p2, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 362
    return-void
.end method

.method public onVehicleIOChanged(Lcom/qinggan/canbus/VehicleIO;)V
    .registers 2
    .param p1, "state"    # Lcom/qinggan/canbus/VehicleIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    return-void
.end method

.method public onVehicleKeyStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    return-void
.end method

.method public onVehicleSceneModeChanged(I)V
    .registers 2
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 491
    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .registers 2
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 171
    return-void
.end method

.method public onVehicleStateChanged(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 355
    return-void
.end method

.method public onVehicleStateSettingResponse(Lcom/qinggan/canbus/VehicleState;Z)V
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 387
    return-void
.end method

.method public onVehicleStateSettingResponseEx(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 429
    return-void
.end method

.method public onWheelCountChanged(Lcom/qinggan/canbus/WheelCount;)V
    .registers 2
    .param p1, "count"    # Lcom/qinggan/canbus/WheelCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public onWheelSpeedChanged(Lcom/qinggan/canbus/WheelSpeed;)V
    .registers 2
    .param p1, "speed"    # Lcom/qinggan/canbus/WheelSpeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 160
    return-void
.end method

.method public onWindowsStatusChanged(Lcom/qinggan/canbus/WindowStatus;)V
    .registers 2
    .param p1, "state"    # Lcom/qinggan/canbus/WindowStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 328
    return-void
.end method

.method public onWiperFluidStatusChanged(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method
