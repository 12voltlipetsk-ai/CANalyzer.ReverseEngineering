.class Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;
.super Ljava/lang/Thread;
.source "LocalUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/LocalUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualUpgradeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/LocalUpgrade;


# direct methods
.method public constructor <init>(Lcom/qinggan/otaservice/LocalUpgrade;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 199
    const-class v0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->setName(Ljava/lang/String;)V

    .line 200
    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const/4 v5, 0x1

    const/4 v7, 0x0

    .line 204
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "before upgrade : need check: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$600(Lcom/qinggan/otaservice/LocalUpgrade;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    const/4 v0, 0x0

    .line 206
    .local v0, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v2, :cond_37

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 207
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    .line 208
    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 210
    .restart local v0    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_37
    if-eqz v0, :cond_108

    .line 211
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Begin upgrade :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 213
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z
    invoke-static {v2, v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$202(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 214
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # invokes: Lcom/qinggan/otaservice/LocalUpgrade;->startLocalPercentUpdate()V
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$700(Lcom/qinggan/otaservice/LocalUpgrade;)V

    .line 215
    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/engine/NativeManager;->installOTAPackage(Ljava/lang/String;)I

    move-result v1

    .line 216
    .local v1, "ret":I
    if-ltz v1, :cond_9e

    .line 217
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "End upgrade: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " and return: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 242
    .end local v1    # "ret":I
    :goto_9d
    return-void

    .line 219
    .restart local v1    # "ret":I
    :cond_9e
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Install OTAPkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z
    invoke-static {v2, v7}, Lcom/qinggan/otaservice/LocalUpgrade;->access$202(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 221
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalUpLock:Ljava/lang/Object;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$400(Lcom/qinggan/otaservice/LocalUpgrade;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 222
    :try_start_d2
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$500(Lcom/qinggan/otaservice/LocalUpgrade;)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 223
    const/4 v2, 0x0

    invoke-static {v2}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 224
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const/4 v4, 0x7

    invoke-virtual {v2, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 225
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 226
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    const/4 v4, 0x1

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z
    invoke-static {v2, v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$502(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 228
    :cond_fa
    monitor-exit v3
    :try_end_fb
    .catchall {:try_start_d2 .. :try_end_fb} :catchall_105

    .line 229
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto :goto_9d

    .line 228
    :catchall_105
    move-exception v2

    :try_start_106
    monitor-exit v3
    :try_end_107
    .catchall {:try_start_106 .. :try_end_107} :catchall_105

    throw v2

    .line 232
    .end local v1    # "ret":I
    :cond_108
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v2

    const-string v3, "upgrade : go to recovery"

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v2

    if-eqz v2, :cond_123

    .line 235
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v2

    .line 234
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 236
    const-string v2, "--"

    invoke-static {v2}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 238
    :cond_123
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const/4 v3, 0x6

    invoke-virtual {v2, v3}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 239
    iget-object v2, p0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-virtual {v2, v7}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_9d
.end method
