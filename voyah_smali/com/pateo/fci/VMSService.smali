.class public interface abstract Lcom/pateo/fci/VMSService;
.super Ljava/lang/Object;
.source "VMSService.java"


# virtual methods
.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/vms/ServiceInfo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "tuTpye"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "menuType"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getServiceInfo/{tuTpye}/{menuType}"
    .end annotation
.end method

.method public abstract getServiceInfo(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "tuTpye"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "menuType"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/vms/ServiceInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getServiceInfo/{tuTpye}/{menuType}"
    .end annotation
.end method

.method public abstract getServiceUserSwitchById(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/vms/ServiceStatusResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "serviceId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getServiceUserSwitchById/{pdsn}/{serviceId}"
    .end annotation
.end method

.method public abstract getServiceUserSwitchById(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "serviceId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/vms/ServiceStatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getServiceUserSwitchById/{pdsn}/{serviceId}"
    .end annotation
.end method

.method public abstract updateServiceUserSwitchById(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/vms/ServiceStatusResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "serviceId"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/updateServiceUserSwitchById/{pdsn}/{serviceId}"
    .end annotation
.end method

.method public abstract updateServiceUserSwitchById(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "serviceId"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/vms/ServiceStatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/updateServiceUserSwitchById/{pdsn}/{serviceId}"
    .end annotation
.end method
