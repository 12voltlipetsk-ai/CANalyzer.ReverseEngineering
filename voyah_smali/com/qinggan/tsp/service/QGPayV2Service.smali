.class public interface abstract Lcom/qinggan/tsp/service/QGPayV2Service;
.super Ljava/lang/Object;
.source "QGPayV2Service.java"


# virtual methods
.method public abstract createOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/payv2/OrderCreatedInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "mspayorder/createOrder"
    .end annotation
.end method

.method public abstract createPayCode(Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/payv2/PayCodeInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "mspayorder/pay"
    .end annotation
.end method
