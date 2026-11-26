.class public interface abstract Lcom/pateo/fci/TASService;
.super Ljava/lang/Object;
.source "TASService.java"


# virtual methods
.method public abstract activateContract(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/StatusResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/ActivationContract"
    .end annotation
.end method

.method public abstract activateContract(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/StatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/ActivationContract"
    .end annotation
.end method

.method public abstract addCarInsuranceDetail(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/StatusResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/addCarInsuranceDetail"
    .end annotation
.end method

.method public abstract addCarInsuranceDetail(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/StatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/addCarInsuranceDetail"
    .end annotation
.end method

.method public abstract addUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/UserInfo;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/portal/addUser"
    .end annotation
.end method

.method public abstract addUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/portal/addUser"
    .end annotation
.end method

.method public abstract checkLogin(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/UserInfo;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/portal/checkLogin"
    .end annotation
.end method

.method public abstract checkLogin(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/portal/checkLogin"
    .end annotation
.end method

.method public abstract getCarInsuranceDetail(Ljava/lang/String;)Lcom/pateo/fci/models/tas/CarInsuranceDetailResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getCarInsuranceDetail/{vin}"
    .end annotation
.end method

.method public abstract getCarInsuranceDetail(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/CarInsuranceDetailResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getCarInsuranceDetail/{vin}"
    .end annotation
.end method

.method public abstract getCheckNum(Ljava/lang/String;)Lcom/pateo/fci/models/tas/CheckVoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "phone"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/portal/getCheckNum/{phone}"
    .end annotation
.end method

.method public abstract getCheckNum(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tas/CheckVoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/portal/getCheckNum/{phone}/{pdsn}"
    .end annotation
.end method

.method public abstract getCheckNum(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "phone"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tas/CheckVoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/portal/getCheckNum/{phone}"
    .end annotation
.end method

.method public abstract getCheckNum(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tas/CheckVoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/portal/getCheckNum/{phone}/{pdsn}"
    .end annotation
.end method

.method public abstract getDealerByCode(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/DealerListResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/getDealerByCode"
    .end annotation
.end method

.method public abstract getDealerByCode(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/DealerListResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/getDealerByCode"
    .end annotation
.end method

.method public abstract getInsuranceProfile(Ljava/lang/String;)Lcom/pateo/fci/models/tas/InsuranceProfile;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "getInsuranceProfile"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getInsuranceProfile/{getInsuranceProfile}"
    .end annotation
.end method

.method public abstract getInsuranceProfile(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "getInsuranceProfile"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tas/InsuranceProfile;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getInsuranceProfile/{getInsuranceProfile}"
    .end annotation
.end method

.method public abstract getPackageDetail(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "type"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vincode"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/cpsp/PackageDetail;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/portal/getPackageDetail/{type}/{vincode}"
    .end annotation
.end method

.method public abstract getServicePkgById(Ljava/lang/String;)Lcom/pateo/fci/models/tas/ServicePkgInfo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "id"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getServicePkgById/{id}"
    .end annotation
.end method

.method public abstract getServicePkgById(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/ServicePkgInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getServicePkgById/{id}"
    .end annotation
.end method

.method public abstract getServicePkgList()Lcom/pateo/fci/models/tas/ServicePkgListInfo;
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getServicePkgList"
    .end annotation
.end method

.method public abstract getServicePkgList(Lcom/pateo/fci/RestCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tas/ServicePkgListInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getServicePkgList"
    .end annotation
.end method

.method public abstract getVhlServiceItemByPDSN(Ljava/lang/String;)Lcom/pateo/fci/models/tas/VhlServiceItemListInfo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getVhlServiceItemByPdsn/{pdsn}"
    .end annotation
.end method

.method public abstract getVhlServiceItemByPDSN(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/VhlServiceItemListInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getVhlServiceItemByPdsn/{pdsn}"
    .end annotation
.end method

.method public abstract getVhlServiceItemByVin(Ljava/lang/String;)Lcom/pateo/fci/models/tas/VhlServiceItemListInfo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getVhlServiceItemByVin/{vin}"
    .end annotation
.end method

.method public abstract getVhlServiceItemByVin(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/VhlServiceItemListInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getVhlServiceItemByVin/{vin}"
    .end annotation
.end method

.method public abstract getVoipByPdsn(Ljava/lang/String;)Lcom/pateo/fci/models/tas/ResultVoipVoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "pdsn"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getVoipByPdsn/{pdsn}"
    .end annotation
.end method

.method public abstract getVoipByPdsn(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/ResultVoipVoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/getVoipByPdsn/{pdsn}"
    .end annotation
.end method

.method public abstract queryCheckNum(Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/tas/CheckVoResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "num"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/portal/queryCheckNum/{phone}/{num}"
    .end annotation
.end method

.method public abstract queryCheckNum(Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "num"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tas/CheckVoResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/portal/queryCheckNum/{phone}/{num}"
    .end annotation
.end method

.method public abstract queryContract(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/ContractListInfo;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/queryContract"
    .end annotation
.end method

.method public abstract queryContract(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/ContractListInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/queryContract"
    .end annotation
.end method

.method public abstract queryContractServicePkgList(Ljava/lang/String;)Lcom/pateo/fci/models/tas/ContractServicePkgListInfo;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/cc/QueryContractServicePkgList/{vin}"
    .end annotation
.end method

.method public abstract queryContractServicePkgList(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/ContractServicePkgListInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/cc/QueryContractServicePkgList/{vin}"
    .end annotation
.end method

.method public abstract registerContract(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/StatusResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/ContractRegistration"
    .end annotation
.end method

.method public abstract registerContract(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/StatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/ContractRegistration"
    .end annotation
.end method

.method public abstract renewService(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/StatusResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/renewService"
    .end annotation
.end method

.method public abstract renewService(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/StatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/renewService"
    .end annotation
.end method

.method public abstract updateUser(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/UserInfo;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/portal/updateUser"
    .end annotation
.end method

.method public abstract updateUser(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/UserInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/portal/updateUser"
    .end annotation
.end method

.method public abstract uploadBoundInfo(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/tas/StatusResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/cc/uploadBoundInfo"
    .end annotation
.end method

.method public abstract uploadBoundInfo(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)V
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
            "Lcom/pateo/fci/models/tas/StatusResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/cc/uploadBoundInfo"
    .end annotation
.end method
