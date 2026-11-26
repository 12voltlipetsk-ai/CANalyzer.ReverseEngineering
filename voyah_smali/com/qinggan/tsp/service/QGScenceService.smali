.class public interface abstract Lcom/qinggan/tsp/service/QGScenceService;
.super Ljava/lang/Object;
.source "QGScenceService.java"


# virtual methods
.method public abstract getScenceData()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/scence/ScenceResultBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/scenario/customer/?pageId=1&pageSize=100"
    .end annotation
.end method
