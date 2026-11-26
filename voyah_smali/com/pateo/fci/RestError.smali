.class public Lcom/pateo/fci/RestError;
.super Ljava/lang/Object;
.source "RestError.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/fci/RestError$Kind;
    }
.end annotation


# instance fields
.field private kind:Lcom/pateo/fci/RestError$Kind;

.field private response:Lcom/pateo/fci/RestResponse;

.field retrofitError:Lretrofit/RetrofitError;

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pateo/fci/RestError;->retrofitError:Lretrofit/RetrofitError;

    .line 94
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->UNEXPECTED:Lcom/pateo/fci/RestError$Kind;

    iput-object v0, p0, Lcom/pateo/fci/RestError;->kind:Lcom/pateo/fci/RestError$Kind;

    .line 95
    return-void
.end method

.method public constructor <init>(Lcom/pateo/fci/RestResponse;)V
    .registers 3
    .param p1, "response"    # Lcom/pateo/fci/RestResponse;

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pateo/fci/RestError;->retrofitError:Lretrofit/RetrofitError;

    .line 81
    iput-object p1, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    .line 82
    return-void
.end method


# virtual methods
.method public getCode()I
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    if-eqz v0, :cond_b

    .line 19
    iget-object v0, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    invoke-virtual {v0}, Lcom/pateo/fci/RestResponse;->getStatus()I

    move-result v0

    .line 21
    :goto_a
    return v0

    :cond_b
    const/4 v0, -0x1

    goto :goto_a
.end method

.method public getKind()Lcom/pateo/fci/RestError$Kind;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/pateo/fci/RestError;->kind:Lcom/pateo/fci/RestError$Kind;

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 4

    .prologue
    .line 8
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 9
    .local v0, "sb":Ljava/lang/StringBuffer;
    iget-object v1, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    if-eqz v1, :cond_12

    .line 10
    iget-object v1, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    invoke-virtual {v1}, Lcom/pateo/fci/RestResponse;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 12
    :cond_12
    iget-object v1, p0, Lcom/pateo/fci/RestError;->retrofitError:Lretrofit/RetrofitError;

    if-eqz v1, :cond_25

    .line 13
    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/pateo/fci/RestError;->retrofitError:Lretrofit/RetrofitError;

    invoke-virtual {v2}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 14
    :cond_25
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getResponse()Lcom/pateo/fci/RestResponse;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    return-object v0
.end method

.method public getRetrofitError()Lretrofit/RetrofitError;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pateo/fci/RestError;->retrofitError:Lretrofit/RetrofitError;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/pateo/fci/RestError;->url:Ljava/lang/String;

    return-object v0
.end method

.method public setKind(Lcom/pateo/fci/RestError$Kind;)V
    .registers 2
    .param p1, "kind"    # Lcom/pateo/fci/RestError$Kind;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/pateo/fci/RestError;->kind:Lcom/pateo/fci/RestError$Kind;

    .line 78
    return-void
.end method

.method public setResponse(Lcom/pateo/fci/RestResponse;)V
    .registers 2
    .param p1, "response"    # Lcom/pateo/fci/RestResponse;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    .line 103
    return-void
.end method

.method public setRetrofitError(Lretrofit/RetrofitError;)V
    .registers 2
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pateo/fci/RestError;->retrofitError:Lretrofit/RetrofitError;

    .line 87
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/pateo/fci/RestError;->url:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestError{url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/fci/RestError;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", kind="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/fci/RestError;->kind:Lcom/pateo/fci/RestError$Kind;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/fci/RestError;->response:Lcom/pateo/fci/RestResponse;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
