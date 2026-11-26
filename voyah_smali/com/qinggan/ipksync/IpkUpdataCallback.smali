.class public Lcom/qinggan/ipksync/IpkUpdataCallback;
.super Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;
.source "IpkUpdataCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogState(I)V
    .registers 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 58
    return-void
.end method

.method public onReqFile(I)V
    .registers 2
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 53
    return-void
.end method

.method public onUpgradeProgress(I)V
    .registers 2
    .param p1, "present"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 63
    return-void
.end method

.method public onUploadProgress(Ljava/lang/String;J)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uploadSize"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public onUploadState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 48
    return-void
.end method
