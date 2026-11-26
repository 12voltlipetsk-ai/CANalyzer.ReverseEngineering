.class public interface abstract Lcom/pateo/tsp/call/XCallHandler;
.super Ljava/lang/Object;
.source "XCallHandler.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/call/XCallHandler$Stub;,
        Lcom/pateo/tsp/call/XCallHandler$Default;
    }
.end annotation


# virtual methods
.method public abstract onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
