.class Lcom/qinggan/tsp/InitManager$4;
.super Ljava/lang/Object;
.source "InitManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/InitManager;->unSubscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
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
    .line 251
    iput-object p1, p0, Lcom/qinggan/tsp/InitManager$4;->this$0:Lcom/qinggan/tsp/InitManager;

    iput-object p2, p0, Lcom/qinggan/tsp/InitManager$4;->val$topic:Ljava/lang/String;

    iput-object p3, p0, Lcom/qinggan/tsp/InitManager$4;->val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 254
    iget-object v1, p0, Lcom/qinggan/tsp/InitManager$4;->this$0:Lcom/qinggan/tsp/InitManager;

    iget-object v1, v1, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-virtual {v1}, Lcom/qinggan/tsp/manager/ServiceParamManager;->getTspapi()Lcom/pateo/tsp/TSPAPI;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/InitManager$4;->val$topic:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/pateo/tsp/TSPAPI;->unSubscribeTopic(Ljava/lang/String;)Z

    move-result v0

    .line 255
    .local v0, "res":Z
    iget-object v1, p0, Lcom/qinggan/tsp/InitManager$4;->val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

    if-eqz v1, :cond_17

    .line 256
    iget-object v1, p0, Lcom/qinggan/tsp/InitManager$4;->val$subscribeListener:Lcom/qinggan/tsp/TspManager$SubscribeListener;

    invoke-interface {v1, v0}, Lcom/qinggan/tsp/TspManager$SubscribeListener;->onSubscribeResult(Z)V

    .line 257
    :cond_17
    return-void
.end method
