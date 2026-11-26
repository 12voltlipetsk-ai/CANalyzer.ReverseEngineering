.class public Lcom/qinggan/carsignal/CarSignalListener;
.super Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;
.source "CarSignalListener.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public OnBackLightStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public onACCStateChanged(I)V
    .registers 2
    .param p1, "accState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    return-void
.end method

.method public onAVINStateChanged(I)V
    .registers 2
    .param p1, "avinState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    return-void
.end method

.method public onBatteryChanged(I)V
    .registers 2
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 2
    .param p1, "cameraState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 80
    return-void
.end method

.method public onCanBusStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 130
    return-void
.end method

.method public onCarSafeStateChanged(I)V
    .registers 2
    .param p1, "carSafe"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 85
    return-void
.end method

.method public onHeadLightStateChanged(I)V
    .registers 2
    .param p1, "lightState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 75
    return-void
.end method

.method public onKeyChannelLine1ValueChanged(I)V
    .registers 2
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 140
    return-void
.end method

.method public onKeyChannelLine2ValueChanged(I)V
    .registers 2
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    return-void
.end method

.method public onKeyEvent(II)V
    .registers 3
    .param p1, "keyCode"    # I
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public onLCDTempChanged(I)V
    .registers 2
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public onLightKeyChanged(I)V
    .registers 2
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 120
    return-void
.end method

.method public onLightSensorChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 105
    return-void
.end method

.method public onMCUDiagRequest(I)V
    .registers 2
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 155
    return-void
.end method

.method public onMCUDiagRequestEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V
    .registers 2
    .param p1, "diagnosticInfo"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    return-void
.end method

.method public onMuteKeyChanged(I)V
    .registers 2
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 115
    return-void
.end method

.method public onPADistortionStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method

.method public onPASLCDTempChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 172
    return-void
.end method

.method public onPASLightSensorChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 166
    return-void
.end method

.method public onPowerKeyStateChanged(I)V
    .registers 2
    .param p1, "accState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 65
    return-void
.end method

.method public onPowerStateChanged(I)V
    .registers 2
    .param p1, "powerState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    return-void
.end method

.method public onTboxMutePinStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public onTemValueChanged(I)V
    .registers 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public onTouchScreenStateChanged(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 95
    return-void
.end method

.method public onVoltageStateChanged(I)V
    .registers 2
    .param p1, "voltageValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 135
    return-void
.end method

.method public onVolumeKeyChanged(I)V
    .registers 2
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    return-void
.end method
