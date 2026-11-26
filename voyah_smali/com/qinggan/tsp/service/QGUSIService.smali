.class public interface abstract Lcom/qinggan/tsp/service/QGUSIService;
.super Ljava/lang/Object;
.source "QGUSIService.java"


# virtual methods
.method public abstract softwareUpgradeVersionSearch(Lokhttp3/RequestBody;)Lretrofit2/Call;
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
            "Lcom/qinggan/tsp/models/usi/UpdateResponse;",
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
        value = "/usi/tservice/usi/softwareUpgradeVersionSearch"
    .end annotation
.end method
