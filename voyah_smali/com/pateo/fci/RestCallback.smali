.class public abstract Lcom/pateo/fci/RestCallback;
.super Ljava/lang/Object;
.source "RestCallback.java"

# interfaces
.implements Lretrofit/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit/Callback",
        "<TT;>;"
    }
.end annotation


# instance fields
.field public TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 10
    .local p0, "this":Lcom/pateo/fci/RestCallback;, "Lcom/pateo/fci/RestCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/pateo/fci/RestCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/RestCallback;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract failure(Lcom/pateo/fci/RestError;)V
.end method

.method public failure(Lretrofit/RetrofitError;)V
    .registers 7
    .param p1, "error"    # Lretrofit/RetrofitError;

    .prologue
    .line 27
    .local p0, "this":Lcom/pateo/fci/RestCallback;, "Lcom/pateo/fci/RestCallback<TT;>;"
    iget-object v2, p0, Lcom/pateo/fci/RestCallback;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failure error= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lretrofit/RetrofitError;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    if-eqz p1, :cond_51

    .line 30
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getResponse()Lretrofit/client/Response;

    move-result-object v0

    .line 31
    .local v0, "response":Lretrofit/client/Response;
    if-eqz v0, :cond_4b

    .line 32
    new-instance v1, Lcom/pateo/fci/RestError;

    new-instance v2, Lcom/pateo/fci/RestResponse;

    invoke-direct {v2, v0}, Lcom/pateo/fci/RestResponse;-><init>(Lretrofit/client/Response;)V

    invoke-direct {v1, v2}, Lcom/pateo/fci/RestError;-><init>(Lcom/pateo/fci/RestResponse;)V

    .line 36
    .local v1, "restError":Lcom/pateo/fci/RestError;
    :goto_2e
    invoke-virtual {v1, p1}, Lcom/pateo/fci/RestError;->setRetrofitError(Lretrofit/RetrofitError;)V

    .line 37
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getKind()Lretrofit/RetrofitError$Kind;

    move-result-object v2

    invoke-virtual {v2}, Lretrofit/RetrofitError$Kind;->ordinal()I

    move-result v2

    invoke-static {v2}, Lcom/pateo/fci/RestError$Kind;->valueOf(I)Lcom/pateo/fci/RestError$Kind;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pateo/fci/RestError;->setKind(Lcom/pateo/fci/RestError$Kind;)V

    .line 38
    invoke-virtual {p1}, Lretrofit/RetrofitError;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/pateo/fci/RestError;->setUrl(Ljava/lang/String;)V

    .line 39
    invoke-virtual {p0, v1}, Lcom/pateo/fci/RestCallback;->failure(Lcom/pateo/fci/RestError;)V

    .line 45
    .end local v0    # "response":Lretrofit/client/Response;
    .end local v1    # "restError":Lcom/pateo/fci/RestError;
    :goto_4a
    return-void

    .line 34
    .restart local v0    # "response":Lretrofit/client/Response;
    :cond_4b
    new-instance v1, Lcom/pateo/fci/RestError;

    invoke-direct {v1}, Lcom/pateo/fci/RestError;-><init>()V

    .restart local v1    # "restError":Lcom/pateo/fci/RestError;
    goto :goto_2e

    .line 42
    .end local v0    # "response":Lretrofit/client/Response;
    .end local v1    # "restError":Lcom/pateo/fci/RestError;
    :cond_51
    new-instance v2, Lcom/pateo/fci/RestError;

    invoke-direct {v2}, Lcom/pateo/fci/RestError;-><init>()V

    invoke-virtual {p0, v2}, Lcom/pateo/fci/RestCallback;->failure(Lcom/pateo/fci/RestError;)V

    goto :goto_4a
.end method

.method public abstract success(Ljava/lang/Object;Lcom/pateo/fci/RestResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/pateo/fci/RestResponse;",
            ")V"
        }
    .end annotation
.end method

.method public success(Ljava/lang/Object;Lretrofit/client/Response;)V
    .registers 6
    .param p2, "response"    # Lretrofit/client/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lretrofit/client/Response;",
            ")V"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/pateo/fci/RestCallback;, "Lcom/pateo/fci/RestCallback<TT;>;"
    .local p1, "arg0":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/pateo/fci/RestCallback;->TAG:Ljava/lang/String;

    const-string v2, "success "

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/pateo/fci/RestResponse;

    invoke-direct {v0, p2}, Lcom/pateo/fci/RestResponse;-><init>(Lretrofit/client/Response;)V

    .line 21
    .local v0, "restResponse":Lcom/pateo/fci/RestResponse;
    invoke-virtual {p0, p1, v0}, Lcom/pateo/fci/RestCallback;->success(Ljava/lang/Object;Lcom/pateo/fci/RestResponse;)V

    .line 23
    return-void
.end method
