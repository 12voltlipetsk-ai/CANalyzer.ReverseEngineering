.class Lcom/qinggan/otaservice/OTAService$1;
.super Ljava/lang/Object;
.source "OTAService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 99
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 7
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 102
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service connected "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-static {p2}, Lcom/excelfore/hmiagent/IHMIAgent$Stub;->asInterface(Landroid/os/IBinder;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v2

    # setter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/OTAService;->access$002(Lcom/qinggan/otaservice/OTAService;Lcom/excelfore/hmiagent/IHMIAgent;)Lcom/excelfore/hmiagent/IHMIAgent;

    .line 106
    :try_start_2b
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    new-instance v2, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;

    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-direct {v2, v3}, Lcom/qinggan/otaservice/engine/adapter/ExcelforeOTAListener;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    invoke-interface {v1, v2}, Lcom/excelfore/hmiagent/IHMIAgent;->ota_set_listener(Lcom/excelfore/hmiagent/IOtaListener;)V

    .line 107
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v1}, Lcom/qinggan/otaservice/OTAService;->access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;

    move-result-object v1

    new-instance v2, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;

    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-direct {v2, v3}, Lcom/qinggan/otaservice/engine/adapter/ExcelforeDiagListener;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    invoke-interface {v1, v2}, Lcom/excelfore/hmiagent/IHMIAgent;->rds_set_listener(Lcom/excelfore/hmiagent/IDiagListener;)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_2b .. :try_end_4b} :catch_4c

    .line 111
    :goto_4b
    return-void

    .line 108
    :catch_4c
    move-exception v0

    .line 109
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HmiAgentService setListener fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4b
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 115
    const-string v0, "OTAService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Service disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x0

    # setter for: Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/OTAService;->access$002(Lcom/qinggan/otaservice/OTAService;Lcom/excelfore/hmiagent/IHMIAgent;)Lcom/excelfore/hmiagent/IHMIAgent;

    .line 119
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$1;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->bindExcelforeService()V
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$100(Lcom/qinggan/otaservice/OTAService;)V

    .line 120
    return-void
.end method
