.class public interface abstract Lcom/qinggan/tsp/service/QGWalletNewService;
.super Ljava/lang/Object;
.source "QGWalletNewService.java"


# virtual methods
.method public abstract createOrder(Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/CreateOrderResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "mspayorder/createOrder"
    .end annotation
.end method

.method public abstract deleteOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderChannel"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderBizType"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderNo"
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
            "Lcom/qinggan/tsp/models/walletNew/DeleteOrderResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/mspayorder/deleteOrder"
    .end annotation
.end method

.method public abstract etcpSimulation(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "plateNumber"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Field;
            value = "appId"
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
            "Lcom/qinggan/tsp/models/walletNew/EtcpSimulationResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/FormUrlEncoded;
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cp/parking/etcp/simulation"
    .end annotation
.end method

.method public abstract getContractUrl(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tradeType"
        .end annotation
    .end param
    .param p2    # Lcom/qinggan/tsp/models/account/RequestNewContract;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/RequestNewContract;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseXibokeNewContractStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspay/thirdContract/getContractUrl"
    .end annotation
.end method

.method public abstract getNewOrder(Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/NewQueryOrderResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspayorder/searchOrder"
    .end annotation
.end method

.method public abstract getPayUrl(Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/PayUrlResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspayorder/pay"
    .end annotation
.end method

.method public abstract memberstatus(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "licence"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/MemberStatusResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/V1/cp/parking/find/all/memberstatus"
    .end annotation
.end method

.method public abstract parkhubAutoSignApply(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "phone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignApplyResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cp/parking/stopsimple/parkhubAutoSignApply"
    .end annotation
.end method

.method public abstract parkhubAutoSignApplyV1a(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "licence"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignApplyResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/pubOauth/noOauth/parkhubAutoSignApply"
    .end annotation
.end method

.method public abstract parkhubAutoSignDelete()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignDeleteResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/cp/parking/stopsimple/parkhubAutoSignDelete"
    .end annotation
.end method

.method public abstract parkhubAutoSignDeleteV1a(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "licence"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignDeleteResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/pubOauth/noOauth/parkhubAutoSignDelete"
    .end annotation
.end method

.method public abstract queryBalance(Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/QueryBalanceResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/msmnocore/mnoCommon/queryBalance"
    .end annotation
.end method

.method public abstract queryETCPContractStatus(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tradeType"
        .end annotation
    .end param
    .param p2    # Lcom/qinggan/tsp/models/account/RequestNewContract;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/RequestNewContract;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseEtcpNewContractStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspay/thirdContract/queryContract"
    .end annotation
.end method

.method public abstract queryXIBOKEContractStatus(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "tradeType"
        .end annotation
    .end param
    .param p2    # Lcom/qinggan/tsp/models/account/RequestNewContract;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/RequestNewContract;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseXibokeNewContractStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/Headers;
        value = {
            "Content-Type: application/json",
            "Accept: application/json"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspay/thirdContract/queryContract"
    .end annotation
.end method

.method public abstract searchBadBill()Lretrofit2/Call;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/EtcpOrderDetail;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspayorder/searchEtcpOrderDetail"
    .end annotation
.end method

.method public abstract searchEtcpOrderDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "plateNumber"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "orderNo"
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
            "Lcom/qinggan/tsp/models/walletNew/EtcpParkingFeeResp;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/mspayorder/searchEtcpOrderDetail"
    .end annotation
.end method
