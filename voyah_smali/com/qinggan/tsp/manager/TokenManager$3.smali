.class Lcom/qinggan/tsp/manager/TokenManager$3;
.super Lcom/qinggan/tsp/restmiddle/RestCallback;
.source "TokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/TokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/qinggan/tsp/restmiddle/RestCallback",
        "<",
        "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/TokenManager;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/TokenManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 161
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-direct {p0}, Lcom/qinggan/tsp/restmiddle/RestCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/qinggan/tsp/restmiddle/RestError;)V
    .registers 6
    .param p1, "restError"    # Lcom/qinggan/tsp/restmiddle/RestError;

    .prologue
    .line 175
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure restError:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    new-instance v0, Lcom/qinggan/tsp/models/TokenBean;

    invoke-direct {v0}, Lcom/qinggan/tsp/models/TokenBean;-><init>()V

    .line 177
    .local v0, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    if-eqz p1, :cond_2c

    .line 178
    iget-object v1, p1, Lcom/qinggan/tsp/restmiddle/RestError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/TokenBean;->setErrorStr(Ljava/lang/String;)V

    .line 182
    :goto_24
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v1, v1, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    invoke-interface {v1, v0}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 183
    return-void

    .line 180
    :cond_2c
    const-string v1, "no message error!"

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/TokenBean;->setErrorStr(Ljava/lang/String;)V

    goto :goto_24
.end method

.method public success(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;Lcom/qinggan/tsp/restmiddle/RestResponse;)V
    .registers 6
    .param p1, "arg0"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;
    .param p2, "response"    # Lcom/qinggan/tsp/restmiddle/RestResponse;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v1, v1, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    if-nez v1, :cond_7

    .line 171
    :goto_6
    return-void

    .line 166
    :cond_7
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->TAG:Ljava/lang/String;

    const-string v2, "async login success"

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->transToTokenBean(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;
    invoke-static {v1, p1}, Lcom/qinggan/tsp/manager/TokenManager;->access$300(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    .line 168
    .local v0, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V
    invoke-static {v1, v0}, Lcom/qinggan/tsp/manager/TokenManager;->access$100(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/TokenBean;)V

    .line 169
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v1, v1, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    invoke-interface {v1, v0}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 170
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager$3;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshTokenAsync(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    invoke-static {v1, p1}, Lcom/qinggan/tsp/manager/TokenManager;->access$400(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V

    goto :goto_6
.end method

.method public bridge synthetic success(Ljava/lang/Object;Lcom/qinggan/tsp/restmiddle/RestResponse;)V
    .registers 3

    .prologue
    .line 161
    check-cast p1, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    invoke-virtual {p0, p1, p2}, Lcom/qinggan/tsp/manager/TokenManager$3;->success(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;Lcom/qinggan/tsp/restmiddle/RestResponse;)V

    return-void
.end method
