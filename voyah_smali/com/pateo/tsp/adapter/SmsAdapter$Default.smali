.class public Lcom/pateo/tsp/adapter/SmsAdapter$Default;
.super Ljava/lang/Object;
.source "SmsAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/SmsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/SmsAdapter;
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
    .line 42
    const/4 v0, 0x0

    return-object v0
.end method

.method public deleteAllSmsMsg()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 39
    return-void
.end method

.method public destroy()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public init()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 15
    const/4 v0, 0x0

    return v0
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 4
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method
