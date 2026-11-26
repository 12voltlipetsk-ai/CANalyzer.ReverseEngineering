.class public Lcom/qinggan/qgsecurityservice/IPKICallback$Default;
.super Ljava/lang/Object;
.source "IPKICallback.java"

# interfaces
.implements Lcom/qinggan/qgsecurityservice/IPKICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/qgsecurityservice/IPKICallback;
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
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCertInited(Z)V
    .registers 2
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    return-void
.end method

.method public onCertRevoked(Z)V
    .registers 2
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method
