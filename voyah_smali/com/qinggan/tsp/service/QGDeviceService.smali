.class public interface abstract Lcom/qinggan/tsp/service/QGDeviceService;
.super Ljava/lang/Object;
.source "QGDeviceService.java"


# virtual methods
.method public abstract binging(Lcom/qinggan/tsp/models/device/BindingInfo;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/device/BindingInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/device/BindingInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/windlink/v2/binding"
    .end annotation
.end method

.method public abstract checkActive(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/device/CheckActiveResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/vehicleactivation/checkActive/{vin}"
    .end annotation
.end method

.method public abstract checkDeviceDiff(Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;)Lretrofit2/Call;
    .param p1    # Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/device/CheckDeviceDiffResult;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/vehicleactivation/baicc62/replace"
    .end annotation
.end method

.method public abstract deviceStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "deviceId"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "deviceType"
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
            "Lcom/qinggan/tsp/models/device/DeviceStatus;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/device/deviceStatus/{deviceId}/{deviceType}"
    .end annotation
.end method

.method public abstract editDeviceVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "id"
        .end annotation
    .end param
    .param p2    # Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/BaseCodeBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/PUT;
        value = "/device/vehicle/edit/{id}"
    .end annotation
.end method

.method public abstract getActivationDays(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/device/ActivationDays;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/aitimer/timer/activationReminder"
    .end annotation
.end method

.method public abstract getDeviceVehicle(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/device/vehicle/getDeviceVehicle/{vin}"
    .end annotation
.end method

.method public abstract getShutDownDays(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/device/ActivationDays;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/aitimer/timer/vehicleStatus"
    .end annotation
.end method

.method public abstract getVehicleInfo(Ljava/lang/String;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/device/VehicleInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/GET;
        value = "/device/vehicle/getVehicleInfo/{vin}"
    .end annotation
.end method

.method public abstract updateVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/device/VehicleInfo;)Lretrofit2/Call;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p2    # Lcom/qinggan/tsp/models/device/VehicleInfo;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/device/VehicleInfo;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/device/vehicle/updateVehicle/{vin}"
    .end annotation
.end method
