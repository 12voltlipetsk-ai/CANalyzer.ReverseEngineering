.class public Lcom/pateo/tsp/ITSPService$Default;
.super Ljava/lang/Object;
.source "ITSPService.java"

# interfaces
.implements Lcom/pateo/tsp/ITSPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/ITSPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 172
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 4
    .param p1, "xcall"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public getRemoteConfigItem(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 114
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeDial(Ljava/lang/String;)V
    .registers 2
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    return-void
.end method

.method public nativeGetCurrentLocation()Landroid/location/Location;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeGetIMEI()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 146
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeGetIMSI()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 142
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeGetPDSN()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 150
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeGetRemoteConfigPath()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    return-object v0
.end method

.method public nativeIsNetworkAvailable()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public nativeRemoveLocationListener()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method

.method public nativeSendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method public nativeSetLocationListener()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 162
    return-void
.end method

.method public nativeSetSmsReceiverListener()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    return-void
.end method

.method public onCanbusStateChanged(II)I
    .registers 4
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 98
    const/4 v0, 0x0

    return v0
.end method

.method public onGpsStateChanged(I)I
    .registers 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 110
    const/4 v0, 0x0

    return v0
.end method

.method public onLocationChanged(Lcom/pateo/tsp/adapter/NaviLocationInfo;)I
    .registers 3
    .param p1, "location"    # Lcom/pateo/tsp/adapter/NaviLocationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 106
    const/4 v0, 0x0

    return v0
.end method

.method public onNetworkStateChanged(I)I
    .registers 3
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public onPhoneStateChanged(Ljava/lang/String;I)I
    .registers 4
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 78
    const/4 v0, 0x0

    return v0
.end method

.method public onSmsReceived(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public onSmsSendResult(Ljava/lang/String;I)I
    .registers 4
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public registerAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 3
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public registerCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 3
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public registerPushHandler(Lcom/pateo/tsp/push/PushHandler;)I
    .registers 3
    .param p1, "handler"    # Lcom/pateo/tsp/push/PushHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public removeTSPListener(Lcom/pateo/tsp/ITSPListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pateo/tsp/ITSPListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    return-void
.end method

.method public setCanbusAdapter(Lcom/pateo/tsp/adapter/CanbusAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/CanbusAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 94
    const/4 v0, 0x0

    return v0
.end method

.method public setCmsHuToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "huToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public setCmsHuTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmsHuTokenListener"    # Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    return-void
.end method

.method public setDeviceInfoAdapter(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return v0
.end method

.method public setGlobalToken(Ljava/lang/String;Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public setGlobalTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ITokenListener;)V
    .registers 3
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tokenListener"    # Lcom/qinggan/tsp/manager/listener/ITokenListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 50
    return-void
.end method

.method public setLocationInfoAdapter(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/LocationInfoAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public setNetworkAdapter(Lcom/pateo/tsp/adapter/NetworkAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/NetworkAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public setPhoneAdapter(Lcom/pateo/tsp/adapter/PhoneAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/PhoneAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 74
    const/4 v0, 0x0

    return v0
.end method

.method public setSmsAdapter(Lcom/pateo/tsp/adapter/SmsAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/SmsAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 62
    const/4 v0, 0x0

    return v0
.end method

.method public setTSPListener(Lcom/pateo/tsp/ITSPListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/pateo/tsp/ITSPListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public startXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 4
    .param p1, "xcall"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method

.method public subscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public unSubscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 3
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 3
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterPushHandler(Lcom/pateo/tsp/push/PushHandler;)I
    .registers 3
    .param p1, "handler"    # Lcom/pateo/tsp/push/PushHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method
