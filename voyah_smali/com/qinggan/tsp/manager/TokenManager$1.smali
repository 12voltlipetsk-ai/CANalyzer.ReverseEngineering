.class Lcom/qinggan/tsp/manager/TokenManager$1;
.super Ljava/lang/Object;
.source "TokenManager.java"

# interfaces
.implements Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/TokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/TokenManager;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/TokenManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager$1;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 5
    .param p1, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;

    .prologue
    .line 90
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/qinggan/tsp/manager/TokenManager$1;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # getter for: Lcom/qinggan/tsp/manager/TokenManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/tsp/manager/TokenManager;->access$000(Lcom/qinggan/tsp/manager/TokenManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " onGlobalTokenUpdate : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager$1;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V
    invoke-static {v0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->access$100(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/TokenBean;)V

    .line 94
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager$1;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v0, v0, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    if-nez v0, :cond_32

    .line 97
    :goto_31
    return-void

    .line 96
    :cond_32
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager$1;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v0, v0, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    invoke-interface {v0, p1}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    goto :goto_31
.end method
