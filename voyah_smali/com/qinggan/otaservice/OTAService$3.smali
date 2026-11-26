.class Lcom/qinggan/otaservice/OTAService$3;
.super Lcom/qinggan/ota/IOTAService$Stub;
.source "OTAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/OTAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/OTAService;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 652
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-direct {p0}, Lcom/qinggan/ota/IOTAService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelUpgrade()I
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 656
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    if-eqz v0, :cond_28

    .line 657
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/NetUpgrade;->setUserCancel(Z)V

    .line 658
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->isDownloading()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 659
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->cancelDownload()V

    .line 663
    :cond_28
    return v2
.end method

.method public checkLicAgreementConfirm(I)V
    .registers 6
    .param p1, "info"    # I

    .prologue
    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_checkLicAgreement_confirm(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 814
    :goto_9
    return-void

    .line 811
    :catch_a
    move-exception v0

    .line 812
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkLicAgreementConfirm exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public checkNeedRepair()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 668
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkVersionDependency()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getDiagTaskReq()Lcom/excelfore/hmiagent/DiagTaskInfo;
    .registers 5

    .prologue
    .line 846
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_get_diagtask_req()Lcom/excelfore/hmiagent/DiagTaskInfo;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 850
    :goto_a
    return-object v1

    .line 847
    :catch_b
    move-exception v0

    .line 848
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAInstallPolicy exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getDiagTaskStateInfo()Lcom/excelfore/hmiagent/VehicleDiagState;
    .registers 5

    .prologue
    .line 856
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_get_diagstate_info()Lcom/excelfore/hmiagent/VehicleDiagState;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 860
    :goto_a
    return-object v1

    .line 857
    :catch_b
    move-exception v0

    .line 858
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAInstallPolicy exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 860
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getExcelforeOTACampaignState()I
    .registers 5

    .prologue
    .line 790
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/excelfore/hmiagent/IHMIAgent;->getCampaignState()I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 794
    :goto_a
    return v1

    .line 791
    :catch_b
    move-exception v0

    .line 792
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTACampaignState exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 794
    const/4 v1, -0x1

    goto :goto_a
.end method

.method public getExcelforeOTAHasCampaignRunning(Ljava/lang/String;)Z
    .registers 6
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/excelfore/hmiagent/IHMIAgent;->hasCampaignRunning(Ljava/lang/String;)Z
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 804
    :goto_a
    return v1

    .line 801
    :catch_b
    move-exception v0

    .line 802
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAHasCampaignRunning exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 804
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getExcelforeOTAInstallInfo()Lcom/excelfore/hmiagent/OtaInstallState;
    .registers 5

    .prologue
    .line 770
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/excelfore/hmiagent/IHMIAgent;->ota_get_install_info()Lcom/excelfore/hmiagent/OtaInstallState;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 774
    :goto_a
    return-object v1

    .line 771
    :catch_b
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAInstallInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getExcelforeOTAInstallPolicy()Lcom/excelfore/hmiagent/OtaInstallPolicy;
    .registers 5

    .prologue
    .line 780
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/excelfore/hmiagent/IHMIAgent;->ota_get_install_policy()Lcom/excelfore/hmiagent/OtaInstallPolicy;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 784
    :goto_a
    return-object v1

    .line 781
    :catch_b
    move-exception v0

    .line 782
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAInstallPolicy exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public getExcelforeOTAUpdateRequest()Lcom/excelfore/hmiagent/OtaUpdateReq;
    .registers 5

    .prologue
    .line 760
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1}, Lcom/excelfore/hmiagent/IHMIAgent;->ota_get_update_req()Lcom/excelfore/hmiagent/OtaUpdateReq;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 764
    :goto_a
    return-object v1

    .line 761
    :catch_b
    move-exception v0

    .line 762
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAUpdateRequest exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public installConfirm(I)V
    .registers 6
    .param p1, "info"    # I

    .prologue
    .line 819
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_install_confirm(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 823
    :goto_9
    return-void

    .line 820
    :catch_a
    move-exception v0

    .line 821
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "installConfirm exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public realTimeDiagConfirm(I)V
    .registers 6
    .param p1, "info"    # I

    .prologue
    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_realtimediag_confirm(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 832
    :goto_9
    return-void

    .line 829
    :catch_a
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAInstallPolicy exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public realTimeDiagEndConfirm(I)V
    .registers 6
    .param p1, "info"    # I

    .prologue
    .line 837
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_realtimediag_endconfirm(I)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 841
    :goto_9
    return-void

    .line 838
    :catch_a
    move-exception v0

    .line 839
    .local v0, "e":Ljava/lang/Exception;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExcelforeOTAInstallPolicy exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method public registerListener(Lcom/qinggan/ota/IOTAServiceListener;)Z
    .registers 3
    .param p1, "arg0"    # Lcom/qinggan/ota/IOTAServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 674
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->registerOTAListener(Lcom/qinggan/ota/IOTAServiceListener;)Z
    invoke-static {v0, p1}, Lcom/qinggan/otaservice/OTAService;->access$900(Lcom/qinggan/otaservice/OTAService;Lcom/qinggan/ota/IOTAServiceListener;)Z

    move-result v0

    return v0
.end method

.method public repair()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 679
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-static {v0}, Lcom/qinggan/otaservice/common/Tool;->repair(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public requestCachedVersionFromLocal()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 736
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;

    move-result-object v0

    if-nez v0, :cond_10

    .line 737
    const-string v0, "OTAService"

    const-string v1, "LocalUpgrade may not initialed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    :goto_f
    return-void

    .line 740
    :cond_10
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/LocalUpgrade;->requestCachedVersion()V

    goto :goto_f
.end method

.method public requestCachedVersionFromNetwork()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 745
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    if-nez v0, :cond_10

    .line 746
    const-string v0, "OTAService"

    const-string v1, "NetUpgrade may not initialed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    :goto_f
    return-void

    .line 749
    :cond_10
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->requestCachedVersion()V

    goto :goto_f
.end method

.method public requestCheckVersionFromLocal()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 684
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;

    move-result-object v0

    if-nez v0, :cond_11

    .line 685
    const-string v0, "OTAService"

    const-string v1, "LocalUpgrade may not initialed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 686
    const/4 v0, -0x1

    .line 688
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/LocalUpgrade;->startCheckLocal()I

    move-result v0

    goto :goto_10
.end method

.method public requestCheckVersionFromNetwork()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 693
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    if-nez v0, :cond_11

    .line 694
    const-string v0, "OTAService"

    const-string v1, "NetUpgrade may not initialed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 695
    const/4 v0, -0x1

    .line 697
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->startCheckServer()I

    move-result v0

    goto :goto_10
.end method

.method public requestUpgradeState()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    return v0
.end method

.method public startHMIAgent()V
    .registers 3

    .prologue
    .line 865
    const-string v0, "f0505h"

    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mProductName:Ljava/lang/String;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$1200(Lcom/qinggan/otaservice/OTAService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "f0506h"

    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mProductName:Ljava/lang/String;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$1200(Lcom/qinggan/otaservice/OTAService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 866
    :cond_1c
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->bindExcelforeService()V
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$100(Lcom/qinggan/otaservice/OTAService;)V

    .line 868
    :cond_21
    return-void
.end method

.method public unregisterListener(Lcom/qinggan/ota/IOTAServiceListener;)Z
    .registers 3
    .param p1, "arg0"    # Lcom/qinggan/ota/IOTAServiceListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 703
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->unregisterOTAListener(Lcom/qinggan/ota/IOTAServiceListener;)Z
    invoke-static {v0, p1}, Lcom/qinggan/otaservice/OTAService;->access$1100(Lcom/qinggan/otaservice/OTAService;Lcom/qinggan/ota/IOTAServiceListener;)Z

    move-result v0

    return v0
.end method

.method public upgradeFromExcelfore(Lcom/excelfore/hmiagent/OtaInstallConfirm;)V
    .registers 4
    .param p1, "confirm"    # Lcom/excelfore/hmiagent/OtaInstallConfirm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 727
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v0

    if-nez v0, :cond_f

    .line 728
    const-string v0, "OTAService"

    const-string v1, "upgradeFromExcelfore mHmiagentService is null"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 731
    :cond_f
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/excelfore/hmiagent/IHMIAgent;->ota_update_confirm(Lcom/excelfore/hmiagent/OtaInstallConfirm;)V

    .line 732
    return-void
.end method

.method public upgradeFromLocal()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 708
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;

    move-result-object v0

    if-nez v0, :cond_11

    .line 709
    const-string v0, "OTAService"

    const-string v1, "LocalUpgrade may not initialed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 710
    const/4 v0, -0x1

    .line 712
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/LocalUpgrade;->startUpgradeFromLocal()I

    move-result v0

    goto :goto_10
.end method

.method public upgradeFromNetwork()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    if-nez v0, :cond_11

    .line 719
    const-string v0, "OTAService"

    const-string v1, "NetUpgrade may not initialed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    const/4 v0, -0x1

    .line 722
    :goto_10
    return v0

    :cond_11
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$3;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->startUpgradeFromNet()I

    move-result v0

    goto :goto_10
.end method
