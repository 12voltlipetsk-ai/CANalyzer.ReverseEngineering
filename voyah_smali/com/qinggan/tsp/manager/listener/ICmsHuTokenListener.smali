.class public interface abstract Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;
.super Ljava/lang/Object;
.source "ICmsHuTokenListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub;,
        Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Default;
    }
.end annotation


# virtual methods
.method public abstract onCmsHuTokenUpdate(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
