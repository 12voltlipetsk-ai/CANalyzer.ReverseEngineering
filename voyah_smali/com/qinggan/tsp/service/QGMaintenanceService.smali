.class public interface abstract Lcom/qinggan/tsp/service/QGMaintenanceService;
.super Ljava/lang/Object;
.source "QGMaintenanceService.java"


# virtual methods
.method public abstract appointmentVehicleMaintenance(Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/maintenance/order/referOrder"
    .end annotation
.end method

.method public abstract cancelOrderByUser(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "orderNo"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "description"
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
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/order/cancelOrderByUser/{orderNo}/{description}"
    .end annotation
.end method

.method public abstract findActivityByDealerNo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "dealerNo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentAct;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/order/findActivity/{dealerNo}"
    .end annotation
.end method

.method public abstract findActivityDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "dealerNo"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "date"
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
            "Lcom/qinggan/tsp/models/maintenance/AppointmentInfoActInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/order/findActivityDetail/{dealerNo}/{date}"
    .end annotation
.end method

.method public abstract findActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "dealerNo"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "activityType"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "orderTime"
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
            "Lcom/qinggan/tsp/models/maintenance/AppointmentActivityInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/order/findActivityInfo/{dealerNo}/{activityType}/{orderTime}"
    .end annotation
.end method

.method public abstract findDealerByCode(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "dealerNo"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/DealerInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/order/findDealerByCode/{dealerNo}"
    .end annotation
.end method

.method public abstract getAppointment(Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentInfoList;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/maintenance/order/findMaintainOrderByPage"
    .end annotation
.end method

.method public abstract getVehicle4SStoreInfo(Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/maintenance/order/findDealerByCoord"
    .end annotation
.end method

.method public abstract queryMaintenanceByVin(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vinId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/MaintenanceRecords;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/order/queryMaintainListByVin/{vinId}"
    .end annotation
.end method

.method public abstract queryNextMaintenanceByVin(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vinId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/MaintenanceRecordNext;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/maintenance/maintain/queryNextMaintainByVin/{vinId}"
    .end annotation
.end method
