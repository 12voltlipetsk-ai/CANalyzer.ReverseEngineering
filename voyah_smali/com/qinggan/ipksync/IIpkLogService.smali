.class public interface abstract Lcom/qinggan/ipksync/IIpkLogService;
.super Ljava/lang/Object;
.source "IIpkLogService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkLogService$Stub;
    }
.end annotation


# virtual methods
.method public abstract exitExtractIpkLog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setIpkLogCallback(Lcom/qinggan/ipksync/IIpkLogCallback;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract startExtractIpkLog()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
