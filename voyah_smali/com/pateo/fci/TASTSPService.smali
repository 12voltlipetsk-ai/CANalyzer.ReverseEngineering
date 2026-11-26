.class public interface abstract Lcom/pateo/fci/TASTSPService;
.super Ljava/lang/Object;
.source "TASTSPService.java"


# virtual methods
.method public abstract bindObdAndIvi(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "ivi"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "obd"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/bindObdAndIvi/bind/{ivi}/{obd}"
    .end annotation
.end method

.method public abstract bindObdAndIvi(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "ivi"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "obd"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/bindObdAndIvi/bind/{ivi}/{obd}"
    .end annotation
.end method

.method public abstract getBindQRCode(Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/GenQRCodeVoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/genBindQRCode/{pdsn}"
    .end annotation
.end method

.method public abstract getBindQRCode(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/GenQRCodeVoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/genBindQRCode/{pdsn}"
    .end annotation
.end method

.method public abstract getBoundObd(Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/BoundOBDDataResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getBoundOBD/{pdsn}"
    .end annotation
.end method

.method public abstract getBoundObd(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/BoundOBDDataResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getBoundOBD/{pdsn}"
    .end annotation
.end method

.method public abstract getCurrentPkgInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/HubPkgInfoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "imsi"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getCurrentPkgInfo/{pdsn}/{imsi}"
    .end annotation
.end method

.method public abstract getCurrentPkgInfo(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "imsi"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/HubPkgInfoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getCurrentPkgInfo/{pdsn}/{imsi}"
    .end annotation
.end method

.method public abstract getGprsRemainDuration(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/HubPkgInfoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "imsi"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getGprsRemainDuration/{pdsn}/{imsi}"
    .end annotation
.end method

.method public abstract getGprsRemainDuration(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "imsi"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/HubPkgInfoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getGprsRemainDuration/{pdsn}/{imsi}"
    .end annotation
.end method

.method public abstract getMaintenanceManualByPdsn(Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/MaintenanceManualResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getMaintenanceManual/{pdsn}"
    .end annotation
.end method

.method public abstract getMaintenanceManualByPdsn(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/MaintenanceManualResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getMaintenanceManual/{pdsn}"
    .end annotation
.end method

.method public abstract getVhlInfoAndScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/VhlInfoAndScoreResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "period"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getVhlInfoAndScore/ivi_report/{pdsn}/{period}/{date}/3309"
    .end annotation
.end method

.method public abstract getVhlInfoAndScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "period"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/VhlInfoAndScoreResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getVhlInfoAndScore/ivi_report/{pdsn}/{period}/{date}/3309"
    .end annotation
.end method

.method public abstract queryMaintenanceAppointment(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tastsp/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/queryMaintenanceAppointment"
    .end annotation
.end method

.method public abstract queryMaintenanceAppointment(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tastsp/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/queryMaintenanceAppointment"
    .end annotation
.end method

.method public abstract queryMaintenanceAppointmentByPdsn(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/MaintenanceAppointmentReponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "serviceType"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/queryMaintenanceAppointmentByPdsn/{pdsn}/{serviceType}"
    .end annotation
.end method

.method public abstract queryMaintenanceAppointmentByPdsn(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "serviceType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/MaintenanceAppointmentReponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/queryMaintenanceAppointmentByPdsn/{pdsn}/{serviceType}"
    .end annotation
.end method

.method public abstract queryVhlProfileByPdsn(Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/VhlProfileResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/queryVhlProfileByPdsn/{pdsn}"
    .end annotation
.end method

.method public abstract queryVhlProfileByPdsn(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/VhlProfileResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/queryVhlProfileByPdsn/{pdsn}"
    .end annotation
.end method

.method public abstract saveOrUpdateMaintenanceAppointment(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tastsp/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/saveOrUpdateMaintenanceAppointment"
    .end annotation
.end method

.method public abstract saveOrUpdateMaintenanceAppointment(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tastsp/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/saveOrUpdateMaintenanceAppointment"
    .end annotation
.end method

.method public abstract unBindObdAndIvi(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tastsp/CommonResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "ivi"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "obd"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/bindObdAndIvi/unbind/{ivi}/{obd}"
    .end annotation
.end method

.method public abstract unBindObdAndIvi(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "ivi"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "obd"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tastsp/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/bindObdAndIvi/unbind/{ivi}/{obd}"
    .end annotation
.end method

.method public abstract updateVhlProfile(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tastsp/CommonResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/updateVhlProfile"
    .end annotation
.end method

.method public abstract updateVhlProfile(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tastsp/CommonResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/updateVhlProfile"
    .end annotation
.end method
