.class public interface abstract Lcom/pateo/tsp/push/PushHandler;
.super Ljava/lang/Object;
.source "PushHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/push/PushHandler$Stub;,
        Lcom/pateo/tsp/push/PushHandler$Default;
    }
.end annotation


# virtual methods
.method public abstract onPushGuidance(Lcom/pateo/tsp/push/PushGuidance;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPushMessage(Lcom/pateo/tsp/push/PushMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPushPoi(Lcom/pateo/tsp/push/PushPoi;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPushStringMessage(Lcom/qinggan/tsp/push/PushStringMessage;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onPushUrlBack(Lcom/pateo/tsp/push/PushUrlBack;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
