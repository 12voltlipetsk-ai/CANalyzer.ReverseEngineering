.class public Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Default;
.super Ljava/lang/Object;
.source "IAnalyticsService.java"

# interfaces
.implements Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;
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
    .line 24
    const/4 v0, 0x0

    return-object v0
.end method

.method public sendGzipMessage(Ljava/lang/String;)I
    .registers 3
    .param p1, "gzipMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public sendGzipMsgPath(Ljava/lang/String;)I
    .registers 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(Ljava/lang/String;)I
    .registers 3
    .param p1, "gsonMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    const/4 v0, 0x0

    return v0
.end method
