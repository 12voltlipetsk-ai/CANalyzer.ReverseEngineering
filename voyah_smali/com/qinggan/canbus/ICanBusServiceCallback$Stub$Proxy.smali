.class Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICanBusServiceCallback.java"

# interfaces
.implements Lcom/qinggan/canbus/ICanBusServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/ICanBusServiceCallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 703
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 705
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 712
    const-string v0, "com.qinggan.canbus.ICanBusServiceCallback"

    return-object v0
.end method

.method public onAccStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1293
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1294
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1295
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x27

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1300
    return-void

    .line 1298
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1299
    throw v1
.end method

.method public onAirConditionChanged(Lcom/qinggan/canbus/AirCondition;)V
    .registers 7
    .param p1, "airConditionData"    # Lcom/qinggan/canbus/AirCondition;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 764
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 766
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 767
    if-eqz p1, :cond_1f

    .line 768
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 769
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/AirCondition;->writeToParcel(Landroid/os/Parcel;I)V

    .line 774
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 777
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 779
    return-void

    .line 772
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 777
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 778
    throw v1
.end method

.method public onAlarmDataChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1192
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1194
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1195
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x21

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1199
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1201
    return-void

    .line 1199
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1200
    throw v1
.end method

.method public onAmbientTemperatureChanged(I)V
    .registers 7
    .param p1, "temperature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 915
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 917
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 918
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 919
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    return-void

    .line 922
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 923
    throw v1
.end method

.method public onBatteryRemainingCapacityChanged(F)V
    .registers 7
    .param p1, "data"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1402
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1404
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1405
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1406
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1409
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1411
    return-void

    .line 1409
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1410
    throw v1
.end method

.method public onBatteryStateChanged(Lcom/qinggan/canbus/BatteryState;)V
    .registers 7
    .param p1, "state"    # Lcom/qinggan/canbus/BatteryState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1089
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1091
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1092
    if-eqz p1, :cond_20

    .line 1093
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1094
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/BatteryState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1099
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1102
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1104
    return-void

    .line 1097
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1102
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1103
    throw v1
.end method

.method public onBrakeFluidStatusChanged(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1023
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1025
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1026
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1027
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1030
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1032
    return-void

    .line 1030
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1031
    throw v1
.end method

.method public onBrakePadStatusChanged(Lcom/qinggan/canbus/BrakePadStatus;)V
    .registers 7
    .param p1, "status"    # Lcom/qinggan/canbus/BrakePadStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1005
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1007
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1008
    if-eqz p1, :cond_20

    .line 1009
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1010
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/BrakePadStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1015
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1018
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1020
    return-void

    .line 1013
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1018
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    throw v1
.end method

.method public onCameraChanged(Lcom/qinggan/canbus/CameraState;)V
    .registers 7
    .param p1, "cameraState"    # Lcom/qinggan/canbus/CameraState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1549
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1551
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1552
    if-eqz p1, :cond_20

    .line 1553
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1554
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/CameraState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1559
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x39

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1564
    return-void

    .line 1557
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1562
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1563
    throw v1
.end method

.method public onCanBoxVersionChange(Ljava/lang/String;)V
    .registers 7
    .param p1, "ver"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 734
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 736
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 737
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 738
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 741
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 743
    return-void

    .line 741
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 742
    throw v1
.end method

.method public onCanRawDataChanged(ILandroid/os/Bundle;)V
    .registers 8
    .param p1, "canID"    # I
    .param p2, "data"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1470
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1471
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1472
    if-eqz p2, :cond_23

    .line 1473
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1474
    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1479
    :goto_16
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x33

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    .line 1482
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1484
    return-void

    .line 1477
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_16

    .line 1482
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1483
    throw v1
.end method

.method public onCarKeyChanged(II)V
    .registers 8
    .param p1, "keycode"    # I
    .param p2, "keystatus"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1107
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1109
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1110
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1111
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1112
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 1115
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1117
    return-void

    .line 1115
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    throw v1
.end method

.method public onDVRStateChenaged(Lcom/qinggan/canbus/DVRState;)V
    .registers 7
    .param p1, "DVRState"    # Lcom/qinggan/canbus/DVRState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 782
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 784
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 785
    if-eqz p1, :cond_1f

    .line 786
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 787
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/DVRState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 792
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 795
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 797
    return-void

    .line 790
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 795
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 796
    throw v1
.end method

.method public onDoorStatusChanged(Lcom/qinggan/canbus/DoorStatus;)V
    .registers 7
    .param p1, "doorStatus"    # Lcom/qinggan/canbus/DoorStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 716
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 718
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 719
    if-eqz p1, :cond_1f

    .line 720
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 721
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/DoorStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 726
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 729
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 731
    return-void

    .line 724
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 729
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 730
    throw v1
.end method

.method public onEnergyConsumptionInfoChanged(Lcom/qinggan/canbus/EnergyConsumptionInfo;)V
    .registers 7
    .param p1, "consumptionInfo"    # Lcom/qinggan/canbus/EnergyConsumptionInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1603
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1605
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1606
    if-eqz p1, :cond_20

    .line 1607
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1608
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/EnergyConsumptionInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1613
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1618
    return-void

    .line 1611
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1616
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1617
    throw v1
.end method

.method public onEnergyConsumptionPercentChanged(Lcom/qinggan/canbus/EnergyConsumptionPercent;)V
    .registers 7
    .param p1, "consumptionPercent"    # Lcom/qinggan/canbus/EnergyConsumptionPercent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1585
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1587
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1588
    if-eqz p1, :cond_20

    .line 1589
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1590
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/EnergyConsumptionPercent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1595
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1598
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1600
    return-void

    .line 1593
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1598
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1599
    throw v1
.end method

.method public onEngineFluidStatusChanged(I)V
    .registers 7
    .param p1, "values"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 873
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 875
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 876
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 877
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 882
    return-void

    .line 880
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 881
    throw v1
.end method

.method public onEngineSpeedChanged(I)V
    .registers 7
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 905
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 907
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 910
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 912
    return-void

    .line 910
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 911
    throw v1
.end method

.method public onEngineStatusChanged(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1059
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1061
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1062
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1063
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1066
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    return-void

    .line 1066
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1067
    throw v1
.end method

.method public onEngineTemperatureChanged(I)V
    .registers 7
    .param p1, "temperature"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 993
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 995
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 996
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 997
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1000
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1002
    return-void

    .line 1000
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1001
    throw v1
.end method

.method public onFactoryModeChanged(Ljava/lang/String;)V
    .registers 7
    .param p1, "sResult"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1341
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1343
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1344
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1345
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1348
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1350
    return-void

    .line 1348
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1349
    throw v1
.end method

.method public onFuelConsumptionChanged(I)V
    .registers 7
    .param p1, "consumption"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1047
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1049
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1050
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1051
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1054
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1056
    return-void

    .line 1054
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1055
    throw v1
.end method

.method public onFuelLevelChanged(Lcom/qinggan/canbus/FuelLevel;)V
    .registers 7
    .param p1, "level"    # Lcom/qinggan/canbus/FuelLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 957
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 959
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    if-eqz p1, :cond_20

    .line 961
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 962
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/FuelLevel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 967
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 970
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 972
    return-void

    .line 965
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 970
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    throw v1
.end method

.method public onGearStatusChanged(Lcom/qinggan/canbus/GearState;)V
    .registers 7
    .param p1, "gear"    # Lcom/qinggan/canbus/GearState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 887
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    if-eqz p1, :cond_20

    .line 889
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 890
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/GearState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 895
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 900
    return-void

    .line 893
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 898
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    throw v1
.end method

.method public onHEVSystemModelChanged(I)V
    .registers 7
    .param p1, "hevMode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1224
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1225
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x23

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1231
    return-void

    .line 1229
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1230
    throw v1
.end method

.method public onHandBrakeStatusChanged(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 843
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 845
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 846
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 847
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 850
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 852
    return-void

    .line 850
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 851
    throw v1
.end method

.method public onICMReqCallModeChanged(Z)V
    .registers 7
    .param p1, "isVehicleCall"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1525
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1527
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v2, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1528
    if-eqz p1, :cond_1c

    :goto_c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1529
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x37

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    .line 1532
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1534
    return-void

    .line 1528
    :cond_1c
    const/4 v1, 0x0

    goto :goto_c

    .line 1532
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1533
    throw v1
.end method

.method public onICMReqCallStatusChanged(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1539
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1540
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1541
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x38

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1544
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1546
    return-void

    .line 1544
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1545
    throw v1
.end method

.method public onICMReqDialing(I)V
    .registers 7
    .param p1, "serialNumber"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1501
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1503
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1504
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1505
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x35

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1508
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1510
    return-void

    .line 1508
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1509
    throw v1
.end method

.method public onICMReqMediaChanged(III)V
    .registers 9
    .param p1, "flag"    # I
    .param p2, "action"    # I
    .param p3, "targetType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1487
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1489
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1490
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1491
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1492
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1493
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x34

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_1f

    .line 1496
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1498
    return-void

    .line 1496
    :catchall_1f
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1497
    throw v1
.end method

.method public onICMReqMuteModeChanged(Z)V
    .registers 7
    .param p1, "isMute"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 1513
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1515
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_5
    const-string v2, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1516
    if-eqz p1, :cond_1c

    :goto_c
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1517
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x36

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_1e

    .line 1520
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1522
    return-void

    .line 1516
    :cond_1c
    const/4 v1, 0x0

    goto :goto_c

    .line 1520
    :catchall_1e
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1521
    throw v1
.end method

.method public onIlluminationChanged(I)V
    .registers 7
    .param p1, "illumination"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1120
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1122
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1124
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1129
    return-void

    .line 1127
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1128
    throw v1
.end method

.method public onInstantaneousFuelConsumptionChanged(F)V
    .registers 7
    .param p1, "consumption"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1432
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1434
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1435
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1436
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x30

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1439
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1441
    return-void

    .line 1439
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1440
    throw v1
.end method

.method public onLightStatusChanged(Lcom/qinggan/canbus/LightStatus;)V
    .registers 7
    .param p1, "lightStatus"    # Lcom/qinggan/canbus/LightStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 855
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 857
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 858
    if-eqz p1, :cond_20

    .line 859
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 860
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/LightStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 865
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 868
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 870
    return-void

    .line 863
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 868
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 869
    throw v1
.end method

.method public onOdometerChanged(Lcom/qinggan/canbus/Odometer;)V
    .registers 7
    .param p1, "odometer"    # Lcom/qinggan/canbus/Odometer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1071
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1073
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1074
    if-eqz p1, :cond_20

    .line 1075
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1076
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/Odometer;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1081
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1084
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1086
    return-void

    .line 1079
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1084
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1085
    throw v1
.end method

.method public onParkStateChanged(II)V
    .registers 8
    .param p1, "soundState"    # I
    .param p2, "systemState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 820
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 822
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 823
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 826
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 828
    return-void

    .line 826
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 827
    throw v1
.end method

.method public onPowerLevelChanged(Lcom/qinggan/canbus/PowerLevel;)V
    .registers 7
    .param p1, "powerLevel"    # Lcom/qinggan/canbus/PowerLevel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1414
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1416
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1417
    if-eqz p1, :cond_20

    .line 1418
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1419
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/PowerLevel;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1424
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1427
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1429
    return-void

    .line 1422
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1427
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1428
    throw v1
.end method

.method public onRadarDataChanged(Lcom/qinggan/canbus/RadarData;)V
    .registers 7
    .param p1, "radarData"    # Lcom/qinggan/canbus/RadarData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 802
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 803
    if-eqz p1, :cond_1f

    .line 804
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 805
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/RadarData;->writeToParcel(Landroid/os/Parcel;I)V

    .line 810
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 815
    return-void

    .line 808
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 813
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 814
    throw v1
.end method

.method public onRainFallLevelChanged(I)V
    .registers 7
    .param p1, "rainfallLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1446
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1447
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1448
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x31

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1453
    return-void

    .line 1451
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1452
    throw v1
.end method

.method public onReTrackingChanged(I)V
    .registers 7
    .param p1, "Angle"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 831
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 833
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 834
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 835
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 838
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 840
    return-void

    .line 838
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 839
    throw v1
.end method

.method public onRealityWarningInfoChange(Lcom/qinggan/canbus/RealityWarningInfo;)V
    .registers 7
    .param p1, "realityWarningInfo"    # Lcom/qinggan/canbus/RealityWarningInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1353
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1355
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1356
    if-eqz p1, :cond_20

    .line 1357
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1358
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1363
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1366
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1368
    return-void

    .line 1361
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1366
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1367
    throw v1
.end method

.method public onRealityWarningInfoChanged(II)V
    .registers 8
    .param p1, "key"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1371
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1373
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1374
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1375
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1376
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2c

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_1c

    .line 1379
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1381
    return-void

    .line 1379
    :catchall_1c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1380
    throw v1
.end method

.method public onSWCAngleChanged(Lcom/qinggan/canbus/SWCAngle;)V
    .registers 7
    .param p1, "swcAngle"    # Lcom/qinggan/canbus/SWCAngle;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1204
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1206
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1207
    if-eqz p1, :cond_20

    .line 1208
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1209
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/SWCAngle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1214
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x22

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1217
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1219
    return-void

    .line 1212
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1217
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    throw v1
.end method

.method public onSeatAdjustStateChanged(Lcom/qinggan/canbus/SeatAdjustState;)V
    .registers 7
    .param p1, "state"    # Lcom/qinggan/canbus/SeatAdjustState;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1569
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1570
    if-eqz p1, :cond_20

    .line 1571
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1572
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1577
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x3a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1580
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1582
    return-void

    .line 1575
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1580
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1581
    throw v1
.end method

.method public onSeatBeltChanged(Lcom/qinggan/canbus/SeatBelt;)V
    .registers 7
    .param p1, "state"    # Lcom/qinggan/canbus/SeatBelt;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 746
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 748
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 749
    if-eqz p1, :cond_1f

    .line 750
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 751
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/SeatBelt;->writeToParcel(Landroid/os/Parcel;I)V

    .line 756
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1b
    .catchall {:try_start_4 .. :try_end_1b} :catchall_24

    .line 759
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 761
    return-void

    .line 754
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_23
    .catchall {:try_start_20 .. :try_end_23} :catchall_24

    goto :goto_13

    .line 759
    :catchall_24
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 760
    throw v1
.end method

.method public onSecondaryOdometerChanged(I)V
    .registers 7
    .param p1, "odometer"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1150
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1152
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1153
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1154
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1e

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1159
    return-void

    .line 1157
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1158
    throw v1
.end method

.method public onTPMSInfoChange(Lcom/qinggan/canbus/TPMSInfo;)V
    .registers 7
    .param p1, "tpmsInfo"    # Lcom/qinggan/canbus/TPMSInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1384
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1386
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1387
    if-eqz p1, :cond_20

    .line 1388
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1389
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/TPMSInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1394
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x2d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1397
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1399
    return-void

    .line 1392
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1397
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1398
    throw v1
.end method

.method public onTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;F)V
    .registers 8
    .param p1, "type"    # Lcom/qinggan/canbus/TravellingInfoType;
    .param p2, "data"    # F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1272
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1274
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1275
    if-eqz p1, :cond_23

    .line 1276
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/TravellingInfoType;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1282
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1283
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x26

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    return-void

    .line 1280
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_13

    .line 1286
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    throw v1
.end method

.method public onVehicleCenterControlEnabledChanged(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)V
    .registers 8
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .param p2, "enabled"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1253
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1255
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1256
    if-eqz p1, :cond_23

    .line 1257
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/VehicleCenterControlEnabled;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1263
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x25

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    .line 1267
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1269
    return-void

    .line 1261
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_13

    .line 1267
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1268
    throw v1
.end method

.method public onVehicleIOChanged(Lcom/qinggan/canbus/VehicleIO;)V
    .registers 7
    .param p1, "state"    # Lcom/qinggan/canbus/VehicleIO;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1132
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1134
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1135
    if-eqz p1, :cond_20

    .line 1136
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1137
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/VehicleIO;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1142
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1d

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1145
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1147
    return-void

    .line 1140
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1145
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1146
    throw v1
.end method

.method public onVehicleKeyStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1162
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1164
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1166
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1f

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1169
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1171
    return-void

    .line 1169
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1170
    throw v1
.end method

.method public onVehicleSceneModeChanged(I)V
    .registers 7
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1456
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1458
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1459
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1460
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x32

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1463
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1465
    return-void

    .line 1463
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1464
    throw v1
.end method

.method public onVehicleSpeedChanged(I)V
    .registers 7
    .param p1, "speed"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 945
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 947
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 948
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 949
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 952
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 954
    return-void

    .line 952
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 953
    throw v1
.end method

.method public onVehicleStateChanged(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 8
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1234
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1236
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1237
    if-eqz p1, :cond_23

    .line 1238
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/VehicleState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1244
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x24

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    .line 1248
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1250
    return-void

    .line 1242
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_13

    .line 1248
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1249
    throw v1
.end method

.method public onVehicleStateSettingResponse(Lcom/qinggan/canbus/VehicleState;Z)V
    .registers 8
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 1303
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1305
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_6
    const-string v3, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1306
    if-eqz p1, :cond_27

    .line 1307
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 1308
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qinggan/canbus/VehicleState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1313
    :goto_15
    if-eqz p2, :cond_31

    :goto_17
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1314
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x28

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_23
    .catchall {:try_start_6 .. :try_end_23} :catchall_2c

    .line 1317
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1319
    return-void

    .line 1311
    :cond_27
    const/4 v3, 0x0

    :try_start_28
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_2b
    .catchall {:try_start_28 .. :try_end_2b} :catchall_2c

    goto :goto_15

    .line 1317
    :catchall_2c
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1318
    throw v1

    :cond_31
    move v1, v2

    .line 1313
    goto :goto_17
.end method

.method public onVehicleStateSettingResponseEx(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 8
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1322
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1324
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1325
    if-eqz p1, :cond_23

    .line 1326
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1327
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/VehicleState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1332
    :goto_13
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1333
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x29

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1f
    .catchall {:try_start_4 .. :try_end_1f} :catchall_28

    .line 1336
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1338
    return-void

    .line 1330
    :cond_23
    const/4 v1, 0x0

    :try_start_24
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_28

    goto :goto_13

    .line 1336
    :catchall_28
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1337
    throw v1
.end method

.method public onWheelCountChanged(Lcom/qinggan/canbus/WheelCount;)V
    .registers 7
    .param p1, "count"    # Lcom/qinggan/canbus/WheelCount;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 975
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 977
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 978
    if-eqz p1, :cond_20

    .line 979
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 980
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/WheelCount;->writeToParcel(Landroid/os/Parcel;I)V

    .line 985
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 988
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 990
    return-void

    .line 983
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 988
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 989
    throw v1
.end method

.method public onWheelSpeedChanged(Lcom/qinggan/canbus/WheelSpeed;)V
    .registers 7
    .param p1, "speed"    # Lcom/qinggan/canbus/WheelSpeed;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 927
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 929
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 930
    if-eqz p1, :cond_20

    .line 931
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 932
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/WheelSpeed;->writeToParcel(Landroid/os/Parcel;I)V

    .line 937
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 940
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 942
    return-void

    .line 935
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 940
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 941
    throw v1
.end method

.method public onWindowsStatusChanged(Lcom/qinggan/canbus/WindowStatus;)V
    .registers 7
    .param p1, "state"    # Lcom/qinggan/canbus/WindowStatus;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1174
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1176
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1177
    if-eqz p1, :cond_20

    .line 1178
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1179
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/canbus/WindowStatus;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1184
    :goto_13
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x20

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 1187
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1189
    return-void

    .line 1182
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 1187
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1188
    throw v1
.end method

.method public onWiperFluidStatusChanged(I)V
    .registers 7
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1035
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1037
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.canbus.ICanBusServiceCallback"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1038
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1039
    iget-object v1, p0, Lcom/qinggan/canbus/ICanBusServiceCallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    return-void

    .line 1042
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1043
    throw v1
.end method
