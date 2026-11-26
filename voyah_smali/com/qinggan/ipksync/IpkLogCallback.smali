.class public Lcom/qinggan/ipksync/IpkLogCallback;
.super Lcom/qinggan/ipksync/IIpkLogCallback$Stub;
.source "IpkLogCallback.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/qinggan/ipksync/IIpkLogCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onExtractIpkLogState(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15
    return-void
.end method

.method public onExtractLogProgress(I)V
    .registers 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method
