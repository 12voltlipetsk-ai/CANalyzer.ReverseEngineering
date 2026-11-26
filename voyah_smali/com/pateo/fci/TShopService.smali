.class public interface abstract Lcom/pateo/fci/TShopService;
.super Ljava/lang/Object;
.source "TShopService.java"


# virtual methods
.method public abstract createGoodsComment(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/StatusResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/createGoodsComment"
    .end annotation
.end method

.method public abstract createGoodsComment(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/StatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/createGoodsComment"
    .end annotation
.end method

.method public abstract createWebOrders(Lretrofit/mime/TypedInput;Ljava/lang/String;)Lcom/pateo/fci/models/tshop/WebOrdersResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/tshop/createWebOrders/{vin}"
    .end annotation
.end method

.method public abstract createWebOrders(Lretrofit/mime/TypedInput;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tshop/WebOrdersResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/tshop/createWebOrders/{vin}"
    .end annotation
.end method

.method public abstract distinctGoodsType()Lcom/pateo/fci/models/tshop/GoodsTypeResponse;
    .annotation runtime Lretrofit/http/GET;
        value = "/distinctGoodsType"
    .end annotation
.end method

.method public abstract distinctGoodsType(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tshop/GoodsTypeResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/distinctGoodsType"
    .end annotation
.end method

.method public abstract getGoodsIdListByServiceId(Ljava/lang/String;)Lcom/pateo/fci/models/tshop/GoodsIdListResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getGoodsIdListByServiceId/{id}"
    .end annotation
.end method

.method public abstract getGoodsIdListByServiceId(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/GoodsIdListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getGoodsIdListByServiceId/{id}"
    .end annotation
.end method

.method public abstract getServiceListById(Ljava/lang/String;)Lcom/pateo/fci/models/tshop/ServiceListResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "goodsId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getServiceListByID/{goodsId}"
    .end annotation
.end method

.method public abstract getServiceListById(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "goodsId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tshop/ServiceListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getServiceListByID/{goodsId}"
    .end annotation
.end method

.method public abstract queryGoods(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/GoodsResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoods"
    .end annotation
.end method

.method public abstract queryGoods(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/GoodsResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoods"
    .end annotation
.end method

.method public abstract queryGoodsCommentPage(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/GoodsCommentResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoodsCommentPage"
    .end annotation
.end method

.method public abstract queryGoodsCommentPage(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/GoodsCommentResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoodsCommentPage"
    .end annotation
.end method

.method public abstract queryGoodsList(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/GoodsListResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoods"
    .end annotation
.end method

.method public abstract queryGoodsList(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/GoodsListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoods"
    .end annotation
.end method

.method public abstract queryGoodsTagNum(Ljava/lang/String;)Lcom/pateo/fci/models/tshop/GoodsTagNumResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/queryGoodsTagNum/{id}"
    .end annotation
.end method

.method public abstract queryGoodsTagNum(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/GoodsTagNumResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/queryGoodsTagNum/{id}"
    .end annotation
.end method

.method public abstract queryGoodsTypePageDetail(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/GoodsTypePageDetailResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoodsTypePageDetail"
    .end annotation
.end method

.method public abstract queryGoodsTypePageDetail(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/GoodsTypePageDetailResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/queryGoodsTypePageDetail"
    .end annotation
.end method

.method public abstract queryOrders(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/OrdersResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/tshop/queryOrders"
    .end annotation
.end method

.method public abstract queryOrders(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/OrdersResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/tshop/queryOrders"
    .end annotation
.end method

.method public abstract querySysProfileList(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tshop/SysProfileListResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/tshop/querySysProfileList"
    .end annotation
.end method

.method public abstract querySysProfileList(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tshop/SysProfileListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/tshop/querySysProfileList"
    .end annotation
.end method
