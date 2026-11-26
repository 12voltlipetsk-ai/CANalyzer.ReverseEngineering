.class public interface abstract Lcom/qinggan/tsp/service/QGAppStoreService;
.super Ljava/lang/Object;
.source "QGAppStoreService.java"


# virtual methods
.method public abstract adsList(Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AdsListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/adslist"
    .end annotation
.end method

.method public abstract appDetail(Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppDetailResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/appdetail"
    .end annotation
.end method

.method public abstract appListByCategory(Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppListByCategoryResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/applistbycategory"
    .end annotation
.end method

.method public abstract appStartup(Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppStartupResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/appstartup"
    .end annotation
.end method

.method public abstract categoryList(Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppCategoryListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/appcategorylist"
    .end annotation
.end method

.method public abstract downloadApp(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Url;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/squareup/okhttp/ResponseBody;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
    .end annotation
.end method

.method public abstract downloadHistory(Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/DownloadHistoryResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/downloadhistory"
    .end annotation
.end method

.method public abstract score(Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppScoreResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/appscore"
    .end annotation
.end method

.method public abstract search(Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppSearchResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/search"
    .end annotation
.end method

.method public abstract setup(Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppSetupResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/setup"
    .end annotation
.end method

.method public abstract setupList(Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppSetupListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/setuplist"
    .end annotation
.end method

.method public abstract updateList(Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppUpdateListResponse;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/app/updatelist"
    .end annotation
.end method
