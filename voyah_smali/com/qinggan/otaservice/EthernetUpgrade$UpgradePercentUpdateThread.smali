.class Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;
.super Ljava/lang/Thread;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UpgradePercentUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 502
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1100(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_16

    .line 503
    const-string v4, "EthernetUpgrade"

    const-string v5, "PercentThread flag may be reset to false so exit"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    :goto_15
    return-void

    .line 506
    :cond_16
    const-string v4, "EthernetUpgrade"

    const-string v5, "Start update percent"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    :goto_1d
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1100(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_61

    .line 508
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getOTAInstallPercent()I

    move-result v2

    .line 509
    .local v2, "percent":I
    const-string v4, "EthernetUpgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrade Percent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 510
    const/16 v4, 0x3e7

    if-ne v2, v4, :cond_74

    .line 511
    const-string v4, "EthernetUpgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrade failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 569
    .end local v2    # "percent":I
    :cond_61
    :goto_61
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1100(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4, v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 570
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v7}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto :goto_15

    .line 513
    .restart local v2    # "percent":I
    :cond_74
    const/16 v4, 0x3e6

    if-eq v2, v4, :cond_8c

    const/16 v4, 0x3e5

    if-eq v2, v4, :cond_8c

    const/16 v4, 0x3e4

    if-eq v2, v4, :cond_8c

    const/16 v4, 0x3e3

    if-eq v2, v4, :cond_8c

    const/16 v4, 0x3e2

    if-eq v2, v4, :cond_8c

    const/16 v4, 0x3e1

    if-ne v2, v4, :cond_a8

    .line 519
    :cond_8c
    const-string v4, "EthernetUpgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upgrade failed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 520
    invoke-static {v7}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    goto :goto_61

    .line 522
    :cond_a8
    const/16 v4, 0x64

    if-ne v2, v4, :cond_14e

    .line 524
    const/4 v1, 0x0

    .line 525
    .local v1, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v4, :cond_c1

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 526
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_c1

    .line 527
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 529
    .restart local v1    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_c1
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getBootSystem()I

    move-result v3

    .line 530
    .local v3, "systemid":I
    if-nez v3, :cond_121

    .line 531
    const-string v4, "EthernetUpgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set System B Version Code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 534
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 531
    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 535
    invoke-static {v8, v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    .line 545
    :cond_ea
    :goto_ea
    const-string v4, "EthernetUpgrade"

    const-string v5, "for full upgrade , wipe data"

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->switchBootSystem()V

    .line 551
    const-string v4, "EthernetUpgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hasUboot = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->hasUboot:Z
    invoke-static {v6}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$600(Lcom/qinggan/otaservice/EthernetUpgrade;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->hasUboot:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$600(Lcom/qinggan/otaservice/EthernetUpgrade;)Z

    move-result v4

    if-eqz v4, :cond_147

    .line 553
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->reboot(I)V
    invoke-static {v4, v8}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1300(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_61

    .line 537
    :cond_121
    if-ne v3, v8, :cond_ea

    .line 538
    const-string v4, "EthernetUpgrade"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set System A Version Code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 541
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 538
    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 543
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 542
    invoke-static {v7, v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    goto :goto_ea

    .line 555
    :cond_147
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->reboot(I)V
    invoke-static {v4, v7}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1300(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_61

    .line 564
    .end local v1    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .end local v3    # "systemid":I
    :cond_14e
    const-wide/16 v4, 0x12c

    :try_start_150
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_153
    .catch Ljava/lang/InterruptedException; {:try_start_150 .. :try_end_153} :catch_155

    goto/16 :goto_1d

    .line 565
    :catch_155
    move-exception v0

    .line 566
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_1d
.end method
