.class public interface abstract Lcom/qinggan/tsp/manager/listener/ITokenListener;
.super Ljava/lang/Object;
.source "ITokenListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;,
        Lcom/qinggan/tsp/manager/listener/ITokenListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
