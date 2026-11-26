.class public Lcom/pateo/tsp/call/XCallHandler$Default;
.super Ljava/lang/Object;
.source "XCallHandler.java"

# interfaces
.implements Lcom/pateo/tsp/call/XCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/call/XCallHandler;
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
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V
    .registers 3
    .param p1, "xcallObject"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "event"    # Lcom/pateo/tsp/call/XCallEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 12
    return-void
.end method
