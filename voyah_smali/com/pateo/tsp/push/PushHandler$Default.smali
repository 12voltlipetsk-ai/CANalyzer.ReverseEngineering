.class public Lcom/pateo/tsp/push/PushHandler$Default;
.super Ljava/lang/Object;
.source "PushHandler.java"

# interfaces
.implements Lcom/pateo/tsp/push/PushHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushHandler;
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
    .line 27
    const/4 v0, 0x0

    return-object v0
.end method

.method public onPushGuidance(Lcom/pateo/tsp/push/PushGuidance;)V
    .registers 2
    .param p1, "guidance"    # Lcom/pateo/tsp/push/PushGuidance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15
    return-void
.end method

.method public onPushMessage(Lcom/pateo/tsp/push/PushMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/pateo/tsp/push/PushMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    return-void
.end method

.method public onPushPoi(Lcom/pateo/tsp/push/PushPoi;)V
    .registers 2
    .param p1, "poi"    # Lcom/pateo/tsp/push/PushPoi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    return-void
.end method

.method public onPushStringMessage(Lcom/qinggan/tsp/push/PushStringMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/qinggan/tsp/push/PushStringMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public onPushUrlBack(Lcom/pateo/tsp/push/PushUrlBack;)V
    .registers 2
    .param p1, "urlBack"    # Lcom/pateo/tsp/push/PushUrlBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 18
    return-void
.end method
