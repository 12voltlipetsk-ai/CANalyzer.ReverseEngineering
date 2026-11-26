.class public Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Default;
.super Ljava/lang/Object;
.source "IPKIAidlInterface.java"

# interfaces
.implements Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public CertApply(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "VIN"    # Ljava/lang/String;
    .param p2, "PDSN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 43
    const/4 v0, 0x0

    return-object v0
.end method

.method public certUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "pdsn"    # Ljava/lang/String;
    .param p3, "certSn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public certrevoke(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "transId"    # Ljava/lang/String;
    .param p2, "certSn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 27
    return-void
.end method

.method public readRPMB(Ljava/lang/String;)[B
    .registers 3
    .param p1, "FileTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    const/4 v0, 0x0

    return-object v0
.end method

.method public registerPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/qinggan/qgsecurityservice/IPKICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public requestCert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "VIN"    # Ljava/lang/String;
    .param p2, "PDSN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public unregisterPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V
    .registers 2
    .param p1, "cb"    # Lcom/qinggan/qgsecurityservice/IPKICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 33
    return-void
.end method

.method public writeRPMB(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3
    .param p1, "FileTag"    # Ljava/lang/String;
    .param p2, "Filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 36
    return-void
.end method
