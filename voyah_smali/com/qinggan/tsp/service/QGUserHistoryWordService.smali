.class public interface abstract Lcom/qinggan/tsp/service/QGUserHistoryWordService;
.super Ljava/lang/Object;
.source "QGUserHistoryWordService.java"


# virtual methods
.method public abstract addUserHistory(Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequestRespStandard;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "user/searchHistory/add"
    .end annotation
.end method

.method public abstract getUserHistoryByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "count"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "distinct"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/UserHistoryRespStandard;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "user/searchHistory/find"
    .end annotation
.end method
