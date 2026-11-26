.class public interface abstract Lcom/qinggan/tsp/service/QGTinkerService;
.super Ljava/lang/Object;
.source "QGTinkerService.java"


# virtual methods
.method public abstract getTinkerStatus()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/tinker/TinkerStateRsp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/ota/heat-repair/configuration"
    .end annotation
.end method
