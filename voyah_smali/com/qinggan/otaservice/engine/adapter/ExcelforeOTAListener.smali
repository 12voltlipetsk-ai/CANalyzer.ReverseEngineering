.class public Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;
.super Lcom/excelfore/hmiagent/IOtaListener$Stub;
.source "ExcelforeOTAListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/qinggan/otaservice/OTAService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    const-class v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 2
    .param p1, "service"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/excelfore/hmiagent/IOtaListener$Stub;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 15
    return-void
.end method


# virtual methods
.method public ota_appointment_result(I)V
    .registers 4
    .param p1, "result"    # I

    .prologue
    .line 33
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->TAG:Ljava/lang/String;

    const-string v1, "ota_appointment_result"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, p1}, Lcom/qinggan/otaservice/OTAService;->notifyExcelforeAppointmentResult(I)V

    .line 35
    return-void
.end method

.method public ota_install_update(Lcom/excelfore/hmiagent/OtaInstallState;)V
    .registers 4
    .param p1, "state"    # Lcom/excelfore/hmiagent/OtaInstallState;

    .prologue
    .line 27
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->TAG:Ljava/lang/String;

    const-string v1, "ota_install_update"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, p1}, Lcom/qinggan/otaservice/OTAService;->notifyExcelforeInstallUpdate(Lcom/excelfore/hmiagent/OtaInstallState;)V

    .line 29
    return-void
.end method

.method public ota_update_req(Lcom/excelfore/hmiagent/OtaUpdateReq;)V
    .registers 4
    .param p1, "info"    # Lcom/excelfore/hmiagent/OtaUpdateReq;

    .prologue
    .line 18
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->TAG:Ljava/lang/String;

    const-string v1, "ota_update_req"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, p1}, Lcom/qinggan/otaservice/OTAService;->notifyExcelforePushVersionInfo(Lcom/excelfore/hmiagent/OtaUpdateReq;)V

    .line 20
    return-void
.end method
