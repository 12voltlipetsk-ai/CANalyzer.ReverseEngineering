.class public interface abstract Lcom/qinggan/tsp/service/QGTrackingService;
.super Ljava/lang/Object;
.source "QGTrackingService.java"


# virtual methods
.method public abstract postGzipTrackingData(Lokhttp3/RequestBody;)Lretrofit2/Call;
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
            "Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Encoding: gzip"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/UserTrackingService/trackingDataList?projectId=dfh97"
    .end annotation
.end method

.method public abstract postTrackingData(Lokhttp3/RequestBody;)Lretrofit2/Call;
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
            "Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;",
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
        value = "/UserTrackingService/trackingProducer?projectId=dfh97"
    .end annotation
.end method
