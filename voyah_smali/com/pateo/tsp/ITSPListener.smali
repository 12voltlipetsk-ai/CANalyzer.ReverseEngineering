.class public interface abstract Lcom/pateo/tsp/ITSPListener;
.super Ljava/lang/Object;
.source "ITSPListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/ITSPListener$Stub;,
        Lcom/pateo/tsp/ITSPListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onTSPImplReady()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
