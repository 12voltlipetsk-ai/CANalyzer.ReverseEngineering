.class Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;
.super Ljava/lang/Thread;
.source "LocalUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/LocalUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LocalPercentUpdateThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/LocalUpgrade;


# direct methods
.method public constructor <init>(Lcom/qinggan/otaservice/LocalUpgrade;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 104
    const-class v0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->setName(Ljava/lang/String;)V

    .line 105
    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x7

    const/16 v8, 0x64

    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 109
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$200(Lcom/qinggan/otaservice/LocalUpgrade;)Z

    move-result v4

    if-nez v4, :cond_17

    .line 110
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "PercentThread flag may be reset to false so exit"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :goto_16
    return-void

    .line 113
    :cond_17
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Start update percent"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v9, v8}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeProgress(II)V

    .line 115
    :goto_29
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$200(Lcom/qinggan/otaservice/LocalUpgrade;)Z

    move-result v4

    if-eqz v4, :cond_9d

    .line 116
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getOTAInstallPercent()I

    move-result v2

    .line 117
    .local v2, "percent":I
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

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

    .line 118
    const/16 v4, 0x3e7

    if-ne v2, v4, :cond_b0

    .line 119
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

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

    .line 120
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalUpLock:Ljava/lang/Object;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$400(Lcom/qinggan/otaservice/LocalUpgrade;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 121
    :try_start_74
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$500(Lcom/qinggan/otaservice/LocalUpgrade;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 122
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 123
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    const/4 v6, 0x7

    invoke-virtual {v4, v6}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 124
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-static {v4, v6, v7, v8}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 125
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    const/4 v6, 0x1

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z
    invoke-static {v4, v6}, Lcom/qinggan/otaservice/LocalUpgrade;->access$502(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 127
    :cond_9c
    monitor-exit v5
    :try_end_9d
    .catchall {:try_start_74 .. :try_end_9d} :catchall_ad

    .line 192
    .end local v2    # "percent":I
    :cond_9d
    :goto_9d
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z
    invoke-static {v4, v9}, Lcom/qinggan/otaservice/LocalUpgrade;->access$202(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 193
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_16

    .line 127
    .restart local v2    # "percent":I
    :catchall_ad
    move-exception v4

    :try_start_ae
    monitor-exit v5
    :try_end_af
    .catchall {:try_start_ae .. :try_end_af} :catchall_ad

    throw v4

    .line 129
    :cond_b0
    const/16 v4, 0x3e6

    if-eq v2, v4, :cond_c8

    const/16 v4, 0x3e5

    if-eq v2, v4, :cond_c8

    const/16 v4, 0x3e4

    if-eq v2, v4, :cond_c8

    const/16 v4, 0x3e3

    if-eq v2, v4, :cond_c8

    const/16 v4, 0x3e2

    if-eq v2, v4, :cond_c8

    const/16 v4, 0x3e1

    if-ne v2, v4, :cond_f8

    .line 135
    :cond_c8
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

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

    .line 136
    invoke-static {v9}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 137
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v10}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 138
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-static {v4, v9, v7, v9}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    goto :goto_9d

    .line 140
    :cond_f8
    if-ne v2, v8, :cond_1c3

    .line 142
    const/4 v1, 0x0

    .line 143
    .local v1, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v4, :cond_10f

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 144
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_10f

    .line 145
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 147
    .restart local v1    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_10f
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-static {v4}, Lcom/qinggan/otaservice/common/Tool;->isUDiskExtExist(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_134

    if-eqz v1, :cond_134

    .line 149
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "Upgrade System Failed, As UDisk not Found"

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    invoke-static {v9}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 152
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    goto/16 :goto_9d

    .line 155
    :cond_134
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getBootSystem()I

    move-result v3

    .line 156
    .local v3, "systemid":I
    if-nez v3, :cond_19b

    .line 158
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set System B Version Code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 160
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 157
    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 161
    invoke-static {v7, v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    .line 171
    :cond_15f
    :goto_15f
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

    const-string v5, "for full upgrade , wipe data"

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v4

    if-eqz v4, :cond_17a

    .line 174
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v4

    .line 173
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 175
    const-string v4, "--"

    invoke-static {v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 177
    :cond_17a
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->switchBootSystem()V

    .line 178
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v8, v8}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeProgress(II)V

    .line 179
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    const/4 v5, 0x6

    invoke-virtual {v4, v5}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 180
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-static {v4, v9, v7, v9}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    goto/16 :goto_9d

    .line 163
    :cond_19b
    if-ne v3, v7, :cond_15f

    .line 165
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Set System A Version Code = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 167
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 164
    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 168
    invoke-static {v9, v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    goto :goto_15f

    .line 183
    .end local v1    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .end local v3    # "systemid":I
    :cond_1c3
    iget-object v4, p0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v4}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v4

    invoke-virtual {v4, v2, v8}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeProgress(II)V

    .line 187
    const-wide/16 v4, 0x12c

    :try_start_1ce
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d1
    .catch Ljava/lang/InterruptedException; {:try_start_1ce .. :try_end_1d1} :catch_1d3

    goto/16 :goto_29

    .line 188
    :catch_1d3
    move-exception v0

    .line 189
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_29
.end method
