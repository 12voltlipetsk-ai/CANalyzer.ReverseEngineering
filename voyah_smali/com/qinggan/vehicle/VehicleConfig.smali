.class public Lcom/qinggan/vehicle/VehicleConfig;
.super Ljava/lang/Object;
.source "VehicleConfig.java"


# instance fields
.field private mCameraType:Lcom/qinggan/vehicle/ReverseCameraType;

.field private mCarType:Ljava/lang/String;

.field private mShutDownMode:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .param p1, "carType"    # Ljava/lang/String;
    .param p2, "shutDownMode"    # I

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCarType:Ljava/lang/String;

    .line 23
    const/4 v0, 0x1

    iput v0, p0, Lcom/qinggan/vehicle/VehicleConfig;->mShutDownMode:I

    .line 24
    sget-object v0, Lcom/qinggan/vehicle/ReverseCameraType;->Normal:Lcom/qinggan/vehicle/ReverseCameraType;

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCameraType:Lcom/qinggan/vehicle/ReverseCameraType;

    .line 27
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCarType:Ljava/lang/String;

    .line 28
    iput p2, p0, Lcom/qinggan/vehicle/VehicleConfig;->mShutDownMode:I

    .line 29
    return-void
.end method


# virtual methods
.method public getCameraType()Lcom/qinggan/vehicle/ReverseCameraType;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCameraType:Lcom/qinggan/vehicle/ReverseCameraType;

    return-object v0
.end method

.method public getCarType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCarType:Ljava/lang/String;

    return-object v0
.end method

.method public getShutDownMode()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/qinggan/vehicle/VehicleConfig;->mShutDownMode:I

    return v0
.end method

.method public printString()V
    .registers 4

    .prologue
    .line 56
    const-string v0, "VehicleConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCarType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v0, "VehicleConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ShutDownMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/vehicle/VehicleConfig;->mShutDownMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    const-string v0, "VehicleConfigManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCameraType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCameraType:Lcom/qinggan/vehicle/ReverseCameraType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public setCameraType(Lcom/qinggan/vehicle/ReverseCameraType;)V
    .registers 2
    .param p1, "type"    # Lcom/qinggan/vehicle/ReverseCameraType;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCameraType:Lcom/qinggan/vehicle/ReverseCameraType;

    .line 49
    return-void
.end method

.method public setCarType(Ljava/lang/String;)V
    .registers 2
    .param p1, "carType"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfig;->mCarType:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setShutDownMode(I)V
    .registers 2
    .param p1, "mode"    # I

    .prologue
    .line 40
    iput p1, p0, Lcom/qinggan/vehicle/VehicleConfig;->mShutDownMode:I

    .line 41
    return-void
.end method
