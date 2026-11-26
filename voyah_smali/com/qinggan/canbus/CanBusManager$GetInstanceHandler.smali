.class Lcom/qinggan/canbus/CanBusManager$GetInstanceHandler;
.super Landroid/os/Handler;
.source "CanBusManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CanBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GetInstanceHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/canbus/CanBusManager;


# direct methods
.method public constructor <init>(Lcom/qinggan/canbus/CanBusManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/canbus/CanBusManager;

    .prologue
    .line 2281
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager$GetInstanceHandler;->this$0:Lcom/qinggan/canbus/CanBusManager;

    .line 2282
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2283
    return-void
.end method

.method public constructor <init>(Lcom/qinggan/canbus/CanBusManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/canbus/CanBusManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 2285
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager$GetInstanceHandler;->this$0:Lcom/qinggan/canbus/CanBusManager;

    .line 2286
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2287
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 2291
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2292
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 2294
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_1a

    .line 2295
    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2296
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 2298
    :cond_13
    # getter for: Lcom/qinggan/canbus/CanBusManager;->mGetIntanceList:Ljava/util/Set;
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$400()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2300
    :cond_1a
    return-void
.end method
