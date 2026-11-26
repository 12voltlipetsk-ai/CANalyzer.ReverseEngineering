.class Lcom/qinggan/tsp/util/NetUtil$1;
.super Landroid/content/BroadcastReceiver;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/util/NetUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/util/NetUtil;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/util/NetUtil;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/util/NetUtil;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qinggan/tsp/util/NetUtil$1;->this$0:Lcom/qinggan/tsp/util/NetUtil;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 41
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 42
    .local v0, "action":Ljava/lang/String;
    # getter for: Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/tsp/util/NetUtil;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Received intent action :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_27

    .line 51
    :cond_26
    :goto_26
    return-void

    .line 46
    :cond_27
    # getter for: Lcom/qinggan/tsp/util/NetUtil;->mLastNetConnected:Z
    invoke-static {}, Lcom/qinggan/tsp/util/NetUtil;->access$100()Z

    move-result v2

    .line 47
    .local v2, "lastConnected":Z
    invoke-static {p1}, Lcom/qinggan/tsp/util/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v1

    .line 48
    .local v1, "curConnected":Z
    if-eq v2, v1, :cond_26

    .line 50
    iget-object v3, p0, Lcom/qinggan/tsp/util/NetUtil$1;->this$0:Lcom/qinggan/tsp/util/NetUtil;

    # invokes: Lcom/qinggan/tsp/util/NetUtil;->notifyNetworkState(Z)V
    invoke-static {v3, v1}, Lcom/qinggan/tsp/util/NetUtil;->access$200(Lcom/qinggan/tsp/util/NetUtil;Z)V

    goto :goto_26
.end method
