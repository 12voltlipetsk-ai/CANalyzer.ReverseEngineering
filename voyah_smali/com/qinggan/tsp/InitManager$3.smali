.class Lcom/qinggan/tsp/InitManager$3;
.super Ljava/lang/Object;
.source "InitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/InitManager;->subscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/InitManager;

.field final synthetic val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

.field final synthetic val$topic:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/InitManager;Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
    .registers 4
    .param p1, "this$0"    # Lcom/qinggan/tsp/InitManager;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/qinggan/tsp/InitManager$3;->this$0:Lcom/qinggan/tsp/InitManager;

    iput-object p2, p0, Lcom/qinggan/tsp/InitManager$3;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/qinggan/tsp/InitManager$3;->val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 231
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/InitManager$3;->this$0:Lcom/qinggan/tsp/InitManager;

    iget-object v2, v2, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/manager/ServiceParamManager;->getTspapi()Lcom/pateo/tsp/TSPAPI;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/tsp/InitManager$3;->val$topic:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/pateo/tsp/TSPAPI;->subscribeTopic(Ljava/lang/String;)Z

    move-result v1

    .line 232
    .local v1, "res":Z
    iget-object v2, p0, Lcom/qinggan/tsp/InitManager$3;->val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

    if-eqz v2, :cond_17

    .line 233
    iget-object v2, p0, Lcom/qinggan/tsp/InitManager$3;->val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

    invoke-interface {v2, v1}, Lcom/qinggan/tsp/TspManager$SubscribeListener;->onSubscribeResult(Z)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 238
    .end local v1    # "res":Z
    :cond_17
    :goto_17
    return-void

    .line 234
    :catch_18
    move-exception v0

    .line 235
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "InitManager"

    const-string v3, "something error, maybe PDSN is empty"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method
