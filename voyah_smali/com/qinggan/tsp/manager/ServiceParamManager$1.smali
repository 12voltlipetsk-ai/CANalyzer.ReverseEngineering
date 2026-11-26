.class Lcom/qinggan/tsp/manager/ServiceParamManager$1;
.super Ljava/lang/Object;
.source "ServiceParamManager.java"

# interfaces
.implements Lcom/pateo/tsp/TSPAPI$OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/manager/ServiceParamManager;->initParamConfig(Lcom/qinggan/tsp/manager/ServiceParamManager$ParamInitListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/ServiceParamManager;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/ServiceParamManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/ServiceParamManager;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager$1;->this$0:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Z)V
    .registers 5
    .param p1, "isConnected"    # Z

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager$1;->this$0:Lcom/qinggan/tsp/manager/ServiceParamManager;

    iget-object v0, v0, Lcom/qinggan/tsp/manager/ServiceParamManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TspManager onResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager$1;->this$0:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    # setter for: Lcom/qinggan/tsp/manager/ServiceParamManager;->mIsConnected:Ljava/lang/Boolean;
    invoke-static {v0, v1}, Lcom/qinggan/tsp/manager/ServiceParamManager;->access$002(Lcom/qinggan/tsp/manager/ServiceParamManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    .line 75
    return-void
.end method

.method public onTSPReady()V
    .registers 1

    .prologue
    .line 79
    return-void
.end method
