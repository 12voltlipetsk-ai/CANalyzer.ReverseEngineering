.class public interface abstract Lcom/qinggan/tsp/service/QGVCMService;
.super Ljava/lang/Object;
.source "QGVCMService.java"


# virtual methods
.method public abstract getQRRandomCode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/vcm/RandomQRCodeResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/vcm/getQRRandomCode/{vin}/{pdsn}"
    .end annotation
.end method
