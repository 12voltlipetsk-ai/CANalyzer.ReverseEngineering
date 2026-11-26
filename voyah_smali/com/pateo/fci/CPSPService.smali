.class public interface abstract Lcom/pateo/fci/CPSPService;
.super Ljava/lang/Object;
.source "CPSPService.java"


# virtual methods
.method public abstract batchDeleteInboxMessage(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/Status;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/batchDeleteInboxMessage/"
    .end annotation
.end method

.method public abstract batchDeleteInboxMessage(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/Status;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/batchDeleteInboxMessage/"
    .end annotation
.end method

.method public abstract deleteAllMesByVIN(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/Status;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/inbox/deleteAllMesByVIN/{vin}"
    .end annotation
.end method

.method public abstract deleteInboxMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/cpsp/Status;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "messageId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/deleteInboxMessage/{vin}/{messageId}"
    .end annotation
.end method

.method public abstract deleteInboxMessage(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "messageId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/Status;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/deleteInboxMessage/{vin}/{messageId}"
    .end annotation
.end method

.method public abstract getAirTicket(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/AirTicket;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/airTicket"
    .end annotation
.end method

.method public abstract getAirTicket(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/AirTicket;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/airTicket"
    .end annotation
.end method

.method public abstract getC2CAirTicket(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/C2CAirTicket;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/cityToCityAirTicket"
    .end annotation
.end method

.method public abstract getC2CAirTicket(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/C2CAirTicket;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/cityToCityAirTicket"
    .end annotation
.end method

.method public abstract getCityEventCategoryList()Lcom/pateo/fci/models/cpsp/CityEventCategoryList;
    .annotation runtime Lretrofit/http/GET;
        value = "/cityevents/cityCategoryList"
    .end annotation
.end method

.method public abstract getCityEventCategoryList(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/CityEventCategoryList;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cityevents/cityCategoryList"
    .end annotation
.end method

.method public abstract getCityEventCategoryList(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/CityEventCategoryList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cityevents/cityCategoryList"
    .end annotation
.end method

.method public abstract getCityEventCategoryList(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/CityEventCategoryList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cityevents/cityCategoryList"
    .end annotation
.end method

.method public abstract getCityList(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "pagesize"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "pagenum"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/CityList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cityevents/cityEventsList"
    .end annotation
.end method

.method public abstract getInboxNews(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/InboxNews;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/getInboxNews/"
    .end annotation
.end method

.method public abstract getInboxNews(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/InboxNews;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/getInboxNews/"
    .end annotation
.end method

.method public abstract getInboxNewsDetail(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/InboxNewsDetail;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/getInBoxNewsDetail/"
    .end annotation
.end method

.method public abstract getInboxNewsDetail(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/InboxNewsDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/getInBoxNewsDetail/"
    .end annotation
.end method

.method public abstract getNearViolationPlace(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/cpsp/NearViolationPlace;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "lng"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "lat"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/violation/getNearViolationPlace/{lng}/{lat}"
    .end annotation
.end method

.method public abstract getNearViolationPlace(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "lng"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "lat"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/NearViolationPlace;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/violation/getNearViolationPlace/{lng}/{lat}"
    .end annotation
.end method

.method public abstract getNewCityInfo()Lcom/pateo/fci/models/cpsp/NewCityInfo;
    .annotation runtime Lretrofit/http/GET;
        value = "/violation/getNewCityInfo"
    .end annotation
.end method

.method public abstract getNewCityInfo(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/NewCityInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/violation/getNewCityInfo"
    .end annotation
.end method

.method public abstract getNewViolationinQuiry(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/NewViolationinQuiry;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/violation/getNewViolationinQuiry"
    .end annotation
.end method

.method public abstract getNewViolationinQuiry(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/NewViolationinQuiry;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/violation/getNewViolationinQuiry"
    .end annotation
.end method

.method public abstract getNewsCategories()Lcom/pateo/fci/models/cpsp/NewsCategories;
    .annotation runtime Lretrofit/http/GET;
        value = "/news/categories"
    .end annotation
.end method

.method public abstract getNewsCategories(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/NewsCategories;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/news/categories"
    .end annotation
.end method

.method public abstract getNewsCategories(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/NewsCategories;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/news/categories"
    .end annotation
.end method

.method public abstract getNewsCategories(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/NewsCategories;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/news/categories"
    .end annotation
.end method

.method public abstract getNewsList(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/NewsList;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/news/list"
    .end annotation
.end method

.method public abstract getNewsList(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/NewsList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/news/list"
    .end annotation
.end method

.method public abstract getPlaceViolationDetail(Ljava/lang/String;)Lcom/pateo/fci/models/cpsp/PlaceViolationDetail;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/violation/getPlaceViolationDetail/{id}"
    .end annotation
.end method

.method public abstract getPlaceViolationDetail(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PlaceViolationDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/violation/getPlaceViolationDetail/{id}"
    .end annotation
.end method

.method public abstract getPlayInquiry()Lcom/pateo/fci/models/cpsp/PlayInquiry;
    .annotation runtime Lretrofit/http/GET;
        value = "/cityevents/playInquiry"
    .end annotation
.end method

.method public abstract getPlayInquiry(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/PlayInquiry;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cityevents/playInquiry"
    .end annotation
.end method

.method public abstract getPlayInquiry(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PlayInquiry;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cityevents/playInquiry"
    .end annotation
.end method

.method public abstract getPlayInquiry(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PlayInquiry;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cityevents/playInquiry"
    .end annotation
.end method

.method public abstract getPoiCategoryDetail()Lcom/pateo/fci/models/cpsp/PoiCategoryDetail;
    .annotation runtime Lretrofit/http/GET;
        value = "/poi/poicategorydetail/05"
    .end annotation
.end method

.method public abstract getPoiCategoryDetail(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PoiCategoryDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/poi/poicategorydetail/05"
    .end annotation
.end method

.method public abstract getS2STrainTicket(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/S2STrainTicket;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/stosTrainTicket"
    .end annotation
.end method

.method public abstract getS2STrainTicket(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/S2STrainTicket;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/stosTrainTicket"
    .end annotation
.end method

.method public abstract getStockIndexInfo(Lcom/pateo/fci/models/cpsp/StockIndexInfoRequest;)Lcom/pateo/fci/models/cpsp/StockIndexInfo;
    .param p1    # Lcom/pateo/fci/models/cpsp/StockIndexInfoRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockIndexInformation"
    .end annotation
.end method

.method public abstract getStockIndexInfo(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/StockIndexInfo;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockIndexInformation"
    .end annotation
.end method

.method public abstract getStockIndexInfo(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/StockIndexInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockIndexInformation"
    .end annotation
.end method

.method public abstract getStockInfo(Lcom/pateo/fci/models/cpsp/StockInfoRequest;)Lcom/pateo/fci/models/cpsp/StockInfo;
    .param p1    # Lcom/pateo/fci/models/cpsp/StockInfoRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockInfo"
    .end annotation
.end method

.method public abstract getStockInfo(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/StockInfo;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockInfo"
    .end annotation
.end method

.method public abstract getStockInfo(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/StockInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockInfo"
    .end annotation
.end method

.method public abstract getStockList(Lcom/pateo/fci/models/cpsp/StockRequest;)Lcom/pateo/fci/models/cpsp/StockList;
    .param p1    # Lcom/pateo/fci/models/cpsp/StockRequest;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockList"
    .end annotation
.end method

.method public abstract getStockList(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/StockList;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockList"
    .end annotation
.end method

.method public abstract getStockList(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/StockList;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/stock/stockList"
    .end annotation
.end method

.method public abstract getSupportCities(Ljava/util/Map;)Lcom/pateo/fci/models/cpsp/SupportCities;
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/pateo/fci/models/cpsp/SupportCities;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/city/support-city"
    .end annotation
.end method

.method public abstract getSupportCities(Ljava/util/Map;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/SupportCities;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/city/support-city"
    .end annotation
.end method

.method public abstract getSupportCity(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/WeatherSupportCity;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/weather/weatherSupportCityList"
    .end annotation
.end method

.method public abstract getSupportCity(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/WeatherSupportCity;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/weather/weatherSupportCityList"
    .end annotation
.end method

.method public abstract getTrainTicket(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/TrainTicket;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/trainTicket"
    .end annotation
.end method

.method public abstract getTrainTicket(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/TrainTicket;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/airAndTrainTicket/trainTicket"
    .end annotation
.end method

.method public abstract getWeatherInfo(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/WeatherInfos;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/weather/weatherInfo"
    .end annotation
.end method

.method public abstract getWeatherInfo(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/WeatherInfos;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/weather/weatherInfo"
    .end annotation
.end method

.method public abstract poiSearch(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/cpsp/PoiDetail;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/poi/poiSearch"
    .end annotation
.end method

.method public abstract poiSearch(Ljava/util/Map;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/util/Map;
        .annotation runtime Lretrofit/http/QueryMap;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PoiDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/poi/poiSearch"
    .end annotation
.end method

.method public abstract poiSearch(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PoiDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/poi/poiSearch"
    .end annotation
.end method

.method public abstract pushInBoxNews(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PushInboxNewsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/pushInboxNews"
    .end annotation
.end method

.method public abstract queryDrivingLimitInfo(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/cpsp/DrivingLimitInfo;
    .param p1    # D
        .annotation runtime Lretrofit/http/Query;
            value = "longitude"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lretrofit/http/Query;
            value = "latitude"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "carno"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "begin_time"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "end_time"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/violation/queryDrivingLimitInfo"
    .end annotation
.end method

.method public abstract queryDrivingLimitInfo(DDLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # D
        .annotation runtime Lretrofit/http/Query;
            value = "longitude"
        .end annotation
    .end param
    .param p3    # D
        .annotation runtime Lretrofit/http/Query;
            value = "latitude"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "carno"
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "begin_time"
        .end annotation
    .end param
    .param p7    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Query;
            value = "end_time"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/DrivingLimitInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/violation/queryDrivingLimitInfo"
    .end annotation
.end method

.method public abstract queryTCityByCondition(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "condition"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/SupportCitiesByCondition;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/city/queryTCityByCondition/{condition}"
    .end annotation
.end method

.method public abstract queryViolIndex(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/cpsp/ViolIndexVo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "longitude"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "latitude"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/violation/queryViolIndex/{longitude}/{latitude}"
    .end annotation
.end method

.method public abstract queryViolIndex(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "longitude"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "latitude"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/ViolIndexVo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/violation/queryViolIndex/{longitude}/{latitude}"
    .end annotation
.end method

.method public abstract readInboxMessage(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/cpsp/Status;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "messageId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/readInboxMessage/{vin}/{messageId}"
    .end annotation
.end method

.method public abstract readInboxMessage(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "messageId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/Status;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/inbox/readInboxMessage/{vin}/{messageId}"
    .end annotation
.end method

.method public abstract releaseBoundLicensePlate(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/Status;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/inbox/releaseBoundLicensePlate/{vin}"
    .end annotation
.end method

.method public abstract restoreUserData(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/Status;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/inbox/restoreUserData /{vin}"
    .end annotation
.end method
