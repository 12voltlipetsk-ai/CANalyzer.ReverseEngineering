.class Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;
.super Landroid/os/Handler;
.source "CarSignalManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetInstanceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/carsignal/CarSignalManager;


# direct methods
.method public constructor <init>(Lcom/qinggan/carsignal/CarSignalManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/carsignal/CarSignalManager;

    .prologue
    .line 1418
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    .line 1419
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1420
    return-void
.end method

.method public constructor <init>(Lcom/qinggan/carsignal/CarSignalManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/carsignal/CarSignalManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 1422
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    .line 1423
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1424
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1428
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1429
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .line 1431
    .local v0, "listener":Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;
    if-eqz v0, :cond_21

    .line 1432
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    iget-boolean v1, v1, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-interface {v0, v1}, Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;->IsServiceConnected(Z)V

    .line 1433
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_21

    .line 1434
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$200()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1437
    :cond_21
    return-void
.end method
