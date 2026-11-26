.class Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/NetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpgradeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 1391
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 1394
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Upgrade Thread Run"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1395
    sget-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sNeedSyncSYS:Z

    if-eqz v0, :cond_2b

    .line 1396
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Now I Start Sync System"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1397
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->syncSystem()I

    .line 1398
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Finish Sync System"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logw(Ljava/lang/String;Ljava/lang/String;)V

    .line 1399
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->setNeedSync(Z)V

    .line 1417
    :goto_2a
    return-void

    .line 1401
    :cond_2b
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_48

    .line 1402
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 1403
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 1402
    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v1, v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$2902(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/otaservice/engine/SYSVersionInfo;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 1405
    :cond_48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v0

    if-eqz v0, :cond_b2

    .line 1406
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Now I Start Update File by Path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1407
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1406
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1408
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z
    invoke-static {v0, v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$3102(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1409
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qinggan/otaservice/engine/NativeManager;->installOTAPackage(Ljava/lang/String;)I

    .line 1410
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v1, 0x1

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$3102(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1411
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Finish Update File by Path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1412
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1411
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logw(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a

    .line 1414
    :cond_b2
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Update Bean in Sorted Update List is Null"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2a
.end method
