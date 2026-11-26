.class public interface abstract Lcom/qinggan/tsp/service/QGSoulMateService;
.super Ljava/lang/Object;
.source "QGSoulMateService.java"


# virtual methods
.method public abstract getHistoryDress(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userAccountId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/HistoryDress;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/aitimer/timer/getUserClothing"
    .end annotation
.end method

.method public abstract getHistoryDriving(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "userid"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/HistoryDriving;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/LongDistince/ct"
    .end annotation
.end method
