.class Lcom/qinggan/carsignal/CarSignalManager$4;
.super Ljava/lang/Object;
.source "CarSignalManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/carsignal/CarSignalManager;->initCarSignalService()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/carsignal/CarSignalManager;


# direct methods
.method constructor <init>(Lcom/qinggan/carsignal/CarSignalManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/carsignal/CarSignalManager;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalManager$4;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 233
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2f

    .line 234
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$200()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .line 235
    .local v0, "callback":Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;
    :goto_15
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$400()Lcom/qinggan/carsignal/CarSignalManager;

    move-result-object v2

    if-nez v2, :cond_26

    .line 237
    const-wide/16 v2, 0x1e

    :try_start_1d
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_21

    goto :goto_15

    .line 238
    :catch_21
    move-exception v1

    .line 239
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_15

    .line 242
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_26
    if-eqz v0, :cond_2f

    .line 243
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager$4;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    iget-boolean v2, v2, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-interface {v0, v2}, Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;->IsServiceConnected(Z)V

    .line 246
    .end local v0    # "callback":Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;
    :cond_2f
    return-void
.end method
