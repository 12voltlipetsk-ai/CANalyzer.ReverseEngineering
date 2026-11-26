.class Lcom/qinggan/canbus/CanBusManager$3;
.super Ljava/lang/Object;
.source "CanBusManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CanBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/canbus/CanBusManager;


# direct methods
.method constructor <init>(Lcom/qinggan/canbus/CanBusManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/canbus/CanBusManager;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager$3;->this$0:Lcom/qinggan/canbus/CanBusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 3

    .prologue
    .line 244
    iget-object v0, p0, Lcom/qinggan/canbus/CanBusManager$3;->this$0:Lcom/qinggan/canbus/CanBusManager;

    const/4 v1, 0x0

    # setter for: Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CanBusManager;->access$102(Lcom/qinggan/canbus/CanBusManager;Lcom/qinggan/canbus/ICanBusService;)Lcom/qinggan/canbus/ICanBusService;

    .line 245
    const/4 v0, 0x0

    # setter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {v0}, Lcom/qinggan/canbus/CanBusManager;->access$002(Z)Z

    .line 246
    new-instance v0, Ljava/lang/Thread;

    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager$3;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mReObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/qinggan/canbus/CanBusManager;->access$600(Lcom/qinggan/canbus/CanBusManager;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 247
    const-string v0, "CanBusManager"

    const-string v1, "CanBusManager is recreate ============================================= "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    return-void
.end method
