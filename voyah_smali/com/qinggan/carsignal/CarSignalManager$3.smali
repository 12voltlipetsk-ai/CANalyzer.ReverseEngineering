.class Lcom/qinggan/carsignal/CarSignalManager$3;
.super Ljava/lang/Object;
.source "CarSignalManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalManager;
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
    .line 148
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalManager$3;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalManager$3;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    const/4 v1, 0x0

    # setter for: Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/CarSignalManager;->access$002(Lcom/qinggan/carsignal/CarSignalManager;Lcom/qinggan/carsignal/ICarSignalService;)Lcom/qinggan/carsignal/ICarSignalService;

    .line 153
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalManager$3;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    .line 154
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager$3;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mReObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/qinggan/carsignal/CarSignalManager;->access$300(Lcom/qinggan/carsignal/CarSignalManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 155
    const-string v0, "CarSignalManager"

    const-string v1, "CarSignalService is recreate ============================================= "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    return-void
.end method
