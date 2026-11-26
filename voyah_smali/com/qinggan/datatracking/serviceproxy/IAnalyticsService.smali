.class public interface abstract Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;
.super Ljava/lang/Object;
.source "IAnalyticsService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;,
        Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Default;
    }
.end annotation


# virtual methods
.method public abstract sendGzipMessage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendGzipMsgPath(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract sendMessage(Ljava/lang/String;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
