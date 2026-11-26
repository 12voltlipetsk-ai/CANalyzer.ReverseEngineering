.class public interface abstract Lcom/qinggan/ipksync/IIpkLogCallback;
.super Ljava/lang/Object;
.source "IIpkLogCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkLogCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract onExtractIpkLogState(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onExtractLogProgress(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
