.class public abstract Lcom/qinggan/canbus/service/AbstractCanBusComponent;
.super Ljava/lang/Object;
.source "AbstractCanBusComponent.java"

# interfaces
.implements Lcom/qinggan/canbus/service/ICanBusComponent;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
.end method

.method public abstract getAccStatus()I
.end method

.method public abstract getAirCondition()Lcom/qinggan/canbus/AirCondition;
.end method

.method public abstract getAirConditionState(Lcom/qinggan/canbus/AirConditionState;)I
.end method

.method public abstract getAlarmData()I
.end method

.method public abstract getAmbientTemperatureValue()I
.end method

.method public abstract getBatteryState()Lcom/qinggan/canbus/BatteryState;
.end method

.method public abstract getBrakeFluidStatus()I
.end method

.method public abstract getBrakePadStatus()Lcom/qinggan/canbus/BrakePadStatus;
.end method

.method public abstract getCameraState()Lcom/qinggan/canbus/CameraState;
.end method

.method public abstract getCanBoxVersion()Ljava/lang/String;
.end method

.method public abstract getCanRawData(I)[I
.end method

.method public abstract getComprehensiveFuelConsumption()I
.end method

.method public abstract getComprehensiveFuelConsumptionEX()F
.end method

.method public abstract getDVRState()Lcom/qinggan/canbus/DVRState;
.end method

.method public abstract getDoorStatus()Lcom/qinggan/canbus/DoorStatus;
.end method

.method public abstract getEnergyConsumptionInfo()Lcom/qinggan/canbus/EnergyConsumptionInfo;
.end method

.method public abstract getEnergyConsumptionPercent()Lcom/qinggan/canbus/EnergyConsumptionPercent;
.end method

.method public abstract getEngineFluidStatus()I
.end method

.method public abstract getEngineSpeed()I
.end method

.method public abstract getEngineStatus()I
.end method

.method public abstract getEngineTemperature()I
.end method

.method public abstract getFrontRadarData()Lcom/qinggan/canbus/RadarData;
.end method

.method public abstract getFuelLevel()Lcom/qinggan/canbus/FuelLevel;
.end method

.method public abstract getGearStatus()Lcom/qinggan/canbus/GearState;
.end method

.method public abstract getHandBrakeStatus()I
.end method

.method public abstract getHevSysMode()I
.end method

.method public abstract getIllumination()I
.end method

.method public abstract getInstantFuelConsumption()I
.end method

.method public abstract getLeftRadarData()Lcom/qinggan/canbus/RadarData;
.end method

.method public abstract getLightStatus()Lcom/qinggan/canbus/LightStatus;
.end method

.method public abstract getOdometer()Lcom/qinggan/canbus/Odometer;
.end method

.method public abstract getPowerLevel()Lcom/qinggan/canbus/PowerLevel;
.end method

.method public abstract getRainfallLevel()I
.end method

.method public abstract getReTracking()I
.end method

.method public abstract getRealityWarningInfo()Lcom/qinggan/canbus/RealityWarningInfo;
.end method

.method public abstract getRearRadarData()Lcom/qinggan/canbus/RadarData;
.end method

.method public abstract getRightRadarData()Lcom/qinggan/canbus/RadarData;
.end method

.method public abstract getSWCAngle()Lcom/qinggan/canbus/SWCAngle;
.end method

.method public abstract getSeatBeltStatus()Lcom/qinggan/canbus/SeatBelt;
.end method

.method public abstract getSecondaryOdometer()J
.end method

.method public abstract getTPMSInfo()Lcom/qinggan/canbus/TPMSInfo;
.end method

.method public abstract getVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;)I
.end method

.method public abstract getVehicleIO()Lcom/qinggan/canbus/VehicleIO;
.end method

.method public abstract getVehicleKeyState()I
.end method

.method public abstract getVehicleSceneMode()I
.end method

.method public abstract getVehicleSpeed()I
.end method

.method public abstract getVehicleState(Lcom/qinggan/canbus/VehicleState;)I
.end method

.method public abstract getWheelCountValue()Lcom/qinggan/canbus/WheelCount;
.end method

.method public abstract getWheelSpeed()Lcom/qinggan/canbus/WheelSpeed;
.end method

.method public abstract getWindowStatus()Lcom/qinggan/canbus/WindowStatus;
.end method

.method public abstract getWiperFluidStatus()I
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract isSupportFunction(Lcom/qinggan/canbus/FunctionType;)Z
.end method

.method public abstract notify(ILandroid/os/Bundle;)Z
.end method

.method public abstract notify(I[I)Z
.end method

.method public abstract onCANBusState(I)Z
.end method

.method public abstract queryVehicleState()V
.end method

.method public abstract requestTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;)I
.end method

.method public abstract requestVehicleCenterControlEnabledInfo()I
.end method

.method public abstract setAirConditionBundleState(Landroid/os/Bundle;)I
.end method

.method public abstract setAirConditionState(Lcom/qinggan/canbus/AirConditionState;I)V
.end method

.method public abstract setCanRawData(I[I)V
.end method

.method public abstract setFactoryModeState(Lcom/qinggan/canbus/VehicleStateAutoTest;Ljava/lang/String;I)V
.end method

.method public abstract setGearBoxType(Lcom/qinggan/canbus/GearBoxType;)V
.end method

.method public abstract setVehicleAndAirConditionBundleState(Landroid/os/Bundle;Landroid/os/Bundle;)I
.end method

.method public abstract setVehicleBundleState(Landroid/os/Bundle;)I
.end method

.method public abstract setVehicleSceneMode(I)I
.end method

.method public abstract setVehicleState(Lcom/qinggan/canbus/VehicleState;I)V
.end method

.method public abstract socketNotify(I[I)Z
.end method

.method public abstract updateCallListInfo(Landroid/os/Bundle;)V
.end method

.method public abstract updateMediaPlayInfo(Lcom/qinggan/canbus/MediaPlayInfo;)V
.end method

.method public abstract updateMediaPlayMode(Lcom/qinggan/canbus/MediaPlayMode;)V
.end method

.method public abstract updateMediaPlayProgressInfo(Lcom/qinggan/canbus/MediaPlayProgressInfo;)V
.end method

.method public abstract updateMediaSeqType(I)V
.end method

.method public abstract updateMediaSrcInfo(Lcom/qinggan/canbus/MediaSrcInfo;)V
.end method

.method public abstract updateMediaVolume(I)V
.end method

.method public abstract updateNaviInfo(Lcom/qinggan/canbus/NaviInfo;)V
.end method

.method public abstract updateNaviLaneInfo(ZLandroid/os/Bundle;)V
.end method

.method public abstract updatePhoneInfo(Lcom/qinggan/canbus/PhoneInfo;)V
.end method
