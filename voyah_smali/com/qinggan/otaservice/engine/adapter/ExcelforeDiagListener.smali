.class public Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;
.super Lcom/excelfore/hmiagent/IDiagListener$Stub;
.source "ExcelforeDiagListener.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mService:Lcom/qinggan/otaservice/OTAService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-class v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 2
    .param p1, "service"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/excelfore/hmiagent/IDiagListener$Stub;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 18
    return-void
.end method


# virtual methods
.method public rds_checkLicAgreement_req()V
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->notifyEFCheckLicAgreementReq()V

    .line 26
    return-void
.end method

.method public rds_install_req(Lcom/excelfore/hmiagent/DiagTaskInfo;)I
    .registers 3
    .param p1, "info"    # Lcom/excelfore/hmiagent/DiagTaskInfo;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, p1}, Lcom/qinggan/otaservice/OTAService;->notifyEFInstallReq(Lcom/excelfore/hmiagent/DiagTaskInfo;)V

    .line 34
    const/4 v0, 0x1

    return v0
.end method

.method public rds_realtimeDiagnostic_req(Lcom/excelfore/hmiagent/DiagOnlineReq;)I
    .registers 3
    .param p1, "info"    # Lcom/excelfore/hmiagent/DiagOnlineReq;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, p1}, Lcom/qinggan/otaservice/OTAService;->notifyEFRealtimeDiagReq(Lcom/excelfore/hmiagent/DiagOnlineReq;)V

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public rds_realtimediag_update(Lcom/excelfore/hmiagent/VehicleDiagState;)I
    .registers 3
    .param p1, "state"    # Lcom/excelfore/hmiagent/VehicleDiagState;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, p1}, Lcom/qinggan/otaservice/OTAService;->notifyEFRealtimeDiagUpdate(Lcom/excelfore/hmiagent/VehicleDiagState;)V

    .line 52
    const/4 v0, 0x1

    return v0
.end method
