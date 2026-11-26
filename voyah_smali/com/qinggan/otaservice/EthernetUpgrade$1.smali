.class Lcom/qinggan/otaservice/EthernetUpgrade$1;
.super Lcom/qinggan/doip/IDoIPListener$Stub;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$1;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Lcom/qinggan/doip/IDoIPListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadComplete(I)V
    .registers 4
    .param p1, "status"    # I

    .prologue
    .line 141
    const-string v0, "EthernetUpgrade"

    const-string v1, "onDownloadComplete()"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    return-void
.end method

.method public onDownloadProgress(I)V
    .registers 5
    .param p1, "progress"    # I

    .prologue
    .line 145
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDownloadProgress progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    return-void
.end method

.method public onUpgradeDependencesRequest()V
    .registers 3

    .prologue
    .line 158
    const-string v0, "EthernetUpgrade"

    const-string v1, "onUpgradeDependencesRequest"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$1;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->startCheckUpgradeDependences()I

    .line 160
    return-void
.end method

.method public onUpgradeRequest()V
    .registers 4

    .prologue
    .line 149
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUpgradeRequest() hasChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade$1;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v2}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$1;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 151
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$1;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->startInstall()V

    .line 155
    :goto_33
    return-void

    .line 153
    :cond_34
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$1;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    const/4 v1, 0x1

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$100(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto :goto_33
.end method
