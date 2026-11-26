.class public interface abstract Lcom/qinggan/tsp/service/SoulMateCloudService;
.super Ljava/lang/Object;
.source "SoulMateCloudService.java"


# virtual methods
.method public abstract addOrRemoveUserDisplayRules(Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/rule/addOrRemoveUserDisplayRules"
    .end annotation
.end method

.method public abstract getListUserDisplay(Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/ListUserDisplay;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/rule/listUserDisplay"
    .end annotation
.end method
