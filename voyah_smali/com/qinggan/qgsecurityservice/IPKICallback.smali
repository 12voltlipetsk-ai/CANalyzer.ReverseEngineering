.class public interface abstract Lcom/qinggan/qgsecurityservice/IPKICallback;
.super Ljava/lang/Object;
.source "IPKICallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;,
        Lcom/qinggan/qgsecurityservice/IPKICallback$Default;
    }
.end annotation


# virtual methods
.method public abstract onCertInited(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onCertRevoked(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
