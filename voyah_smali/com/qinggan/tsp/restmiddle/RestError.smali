.class public Lcom/qinggan/tsp/restmiddle/RestError;
.super Lcom/qinggan/tsp/models/ErrorBean;
.source "RestError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/restmiddle/RestError$Kind;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private kind:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field private msg:Ljava/lang/String;

.field private response:Lcom/qinggan/tsp/restmiddle/RestResponse;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/qinggan/tsp/models/ErrorBean;-><init>()V

    .line 10
    const-class v0, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->msg:Ljava/lang/String;

    .line 103
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->UNEXPECTED:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    iput-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->kind:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 104
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->errorCode:I

    return v0
.end method

.method public getKind()Lcom/qinggan/tsp/restmiddle/RestError$Kind;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->kind:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->msg:Ljava/lang/String;

    return-object v0
.end method

.method public getResponse()Lcom/qinggan/tsp/restmiddle/RestResponse;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestError;->response:Lcom/qinggan/tsp/restmiddle/RestResponse;

    return-object v0
.end method

.method public setKind(Lcom/qinggan/tsp/restmiddle/RestError$Kind;)V
    .registers 2
    .param p1, "kind"    # Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->kind:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 99
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 10
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    const/4 v7, -0x1

    const/4 v6, -0x2

    .line 19
    iput-object p1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->msg:Ljava/lang/String;

    .line 20
    iget-object v3, p0, Lcom/qinggan/tsp/restmiddle/RestError;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMessage : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_35

    .line 22
    const-string v3, "failed to connect"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 23
    new-instance v1, Lcom/qinggan/tsp/models/ErrorBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/ErrorBean;-><init>()V

    .line 24
    .local v1, "errorBean":Lcom/qinggan/tsp/models/ErrorBean;
    iput v7, v1, Lcom/qinggan/tsp/models/ErrorBean;->errorCode:I

    .line 25
    iput v7, v1, Lcom/qinggan/tsp/models/ErrorBean;->httpCode:I

    .line 26
    iput-object p1, v1, Lcom/qinggan/tsp/models/ErrorBean;->errorMsg:Ljava/lang/String;

    .line 46
    .end local v1    # "errorBean":Lcom/qinggan/tsp/models/ErrorBean;
    :cond_35
    :goto_35
    return-void

    .line 27
    :cond_36
    const-string v3, "Unable to resolve host"

    invoke-virtual {p1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4a

    .line 28
    new-instance v1, Lcom/qinggan/tsp/models/ErrorBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/ErrorBean;-><init>()V

    .line 29
    .restart local v1    # "errorBean":Lcom/qinggan/tsp/models/ErrorBean;
    iput v6, v1, Lcom/qinggan/tsp/models/ErrorBean;->errorCode:I

    .line 30
    iput v6, v1, Lcom/qinggan/tsp/models/ErrorBean;->httpCode:I

    .line 31
    iput-object p1, v1, Lcom/qinggan/tsp/models/ErrorBean;->errorMsg:Ljava/lang/String;

    goto :goto_35

    .line 34
    .end local v1    # "errorBean":Lcom/qinggan/tsp/models/ErrorBean;
    :cond_4a
    :try_start_4a
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 35
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v3, Lcom/qinggan/tsp/models/ErrorBean;

    invoke-virtual {v2, p1, v3}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/ErrorBean;

    .line 36
    .restart local v1    # "errorBean":Lcom/qinggan/tsp/models/ErrorBean;
    iget v3, v1, Lcom/qinggan/tsp/models/ErrorBean;->errorCode:I

    iput v3, p0, Lcom/qinggan/tsp/restmiddle/RestError;->errorCode:I

    .line 37
    iget-object v3, v1, Lcom/qinggan/tsp/models/ErrorBean;->errorMsg:Ljava/lang/String;

    iput-object v3, p0, Lcom/qinggan/tsp/restmiddle/RestError;->errorMsg:Ljava/lang/String;

    .line 38
    iget v3, v1, Lcom/qinggan/tsp/models/ErrorBean;->httpCode:I

    iput v3, p0, Lcom/qinggan/tsp/restmiddle/RestError;->httpCode:I

    .line 39
    iget-object v3, p0, Lcom/qinggan/tsp/restmiddle/RestError;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "errorMsg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/tsp/restmiddle/RestError;->errorMsg:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_4a .. :try_end_7d} :catch_7e

    goto :goto_35

    .line 40
    .end local v1    # "errorBean":Lcom/qinggan/tsp/models/ErrorBean;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :catch_7e
    move-exception v0

    .line 41
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qinggan/tsp/restmiddle/RestError;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setMessage() msg to ErrorBean error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_35
.end method

.method public setResponse(Lcom/qinggan/tsp/restmiddle/RestResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/qinggan/tsp/restmiddle/RestResponse;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->response:Lcom/qinggan/tsp/restmiddle/RestResponse;

    .line 112
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestError{TAG=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msg=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->msg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->kind:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/restmiddle/RestError;->response:Lcom/qinggan/tsp/restmiddle/RestResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 121
    invoke-super {p0}, Lcom/qinggan/tsp/models/ErrorBean;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 116
    return-object v0
.end method
