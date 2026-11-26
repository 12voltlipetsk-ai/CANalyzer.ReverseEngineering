.class Lcom/qinggan/canbus/CanBusManager$4;
.super Ljava/lang/Object;
.source "CanBusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/canbus/CanBusManager;->initCanBusService()Z
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
    .line 276
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager$4;->this$0:Lcom/qinggan/canbus/CanBusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 279
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager$4;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qinggan/canbus/CanBusManager;->access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;

    move-result-object v2

    if-eqz v2, :cond_34

    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager$4;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qinggan/canbus/CanBusManager;->access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-lez v2, :cond_34

    .line 280
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager$4;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qinggan/canbus/CanBusManager;->access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager$4;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/qinggan/canbus/CanBusManager;->access$300(Lcom/qinggan/canbus/CanBusManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 282
    .local v0, "callback":Lcom/qinggan/common/OnInitListener;
    const-wide/16 v2, 0x32

    :try_start_28
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2b
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2b} :catch_35

    .line 286
    :goto_2b
    if-eqz v0, :cond_34

    .line 287
    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v2

    invoke-interface {v0, v2}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 290
    .end local v0    # "callback":Lcom/qinggan/common/OnInitListener;
    :cond_34
    return-void

    .line 283
    .restart local v0    # "callback":Lcom/qinggan/common/OnInitListener;
    :catch_35
    move-exception v1

    .line 284
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2b
.end method
