.class Lcom/qinggan/tsp/manager/TokenManager$4;
.super Ljava/lang/Object;
.source "TokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshTokenAsync(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/TokenManager;

.field final synthetic val$authLoginResponseItem:Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager$4;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iput-object p2, p0, Lcom/qinggan/tsp/manager/TokenManager$4;->val$authLoginResponseItem:Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 231
    iget-object v2, p0, Lcom/qinggan/tsp/manager/TokenManager$4;->val$authLoginResponseItem:Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    invoke-virtual {v2}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v2

    if-nez v2, :cond_9

    .line 235
    :goto_8
    return-void

    .line 233
    :cond_9
    iget-object v2, p0, Lcom/qinggan/tsp/manager/TokenManager$4;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v3, p0, Lcom/qinggan/tsp/manager/TokenManager$4;->val$authLoginResponseItem:Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getAccesstoken()Ljava/lang/String;

    move-result-object v3

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->getExpTime(Ljava/lang/String;)J
    invoke-static {v2, v3}, Lcom/qinggan/tsp/manager/TokenManager;->access$700(Lcom/qinggan/tsp/manager/TokenManager;Ljava/lang/String;)J

    move-result-wide v0

    .line 234
    .local v0, "expTime":J
    iget-object v2, p0, Lcom/qinggan/tsp/manager/TokenManager$4;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    const/16 v3, 0x23

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshToken(JI)V
    invoke-static {v2, v0, v1, v3}, Lcom/qinggan/tsp/manager/TokenManager;->access$800(Lcom/qinggan/tsp/manager/TokenManager;JI)V

    goto :goto_8
.end method
