.class public interface abstract Lcom/qinggan/tsp/service/QGECOService;
.super Ljava/lang/Object;
.source "QGECOService.java"


# virtual methods
.method public abstract getEcoDriver(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/ecodriver/EcoDriverInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/msvehiclestatus/ecodriver/getecodriver"
    .end annotation
.end method
