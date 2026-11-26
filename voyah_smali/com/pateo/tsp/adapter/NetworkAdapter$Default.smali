.class public Lcom/pateo/tsp/adapter/NetworkAdapter$Default;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/NetworkAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/NetworkAdapter;
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
    .line 93
    const/4 v0, 0x0

    return-object v0
.end method

.method public destroy()I
    .registers 2
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

.method public getDNSAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "addr1"    # Ljava/lang/String;
    .param p2, "addr2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 70
    return-void
.end method

.method public getDataNetworkState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public getGatewayAddress()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public getNetState()I
    .registers 2
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

.method public getNetworkType()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public getSessionState()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getSignalQuality()I
    .registers 2
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

.method public goOffLine()Z
    .registers 2
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

.method public goOnLine()Z
    .registers 2
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

.method public init()I
    .registers 2
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

.method public setAPN(Ljava/lang/String;)Z
    .registers 3
    .param p1, "apn"    # Ljava/lang/String;
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
