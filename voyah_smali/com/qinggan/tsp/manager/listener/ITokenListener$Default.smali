.class public Lcom/qinggan/tsp/manager/listener/ITokenListener$Default;
.super Ljava/lang/Object;
.source "ITokenListener.java"

# interfaces
.implements Lcom/qinggan/tsp/manager/listener/ITokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/listener/ITokenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 2
    .param p1, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 16
    return-void
.end method
