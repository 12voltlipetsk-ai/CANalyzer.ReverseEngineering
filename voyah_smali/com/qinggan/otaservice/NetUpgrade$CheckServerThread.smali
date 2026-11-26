.class Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/NetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckServerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;


# direct methods
.method public constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 365
    const-class v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->setName(Ljava/lang/String;)V

    .line 366
    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 370
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->isNetworkConnected()Z
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$1100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v3

    if-eqz v3, :cond_304

    .line 372
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1c

    if-lt v3, v4, :cond_71

    const/4 v12, 0x1

    .line 373
    .local v12, "currentSys":Z
    :goto_11
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadLocalVersion: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 374
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v12}, Lcom/qinggan/otaservice/engine/ServerAdapter;->updateLocalVersion(Z)Z

    move-result v3

    if-nez v3, :cond_ac

    .line 375
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    .line 376
    .local v13, "error":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorCode()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_79

    .line 378
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 385
    :goto_64
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 478
    .end local v12    # "currentSys":Z
    .end local v13    # "error":Ljava/lang/String;
    :cond_70
    :goto_70
    return-void

    .line 372
    :cond_71
    sget-boolean v3, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-nez v3, :cond_77

    const/4 v12, 0x1

    goto :goto_11

    :cond_77
    const/4 v12, 0x0

    goto :goto_11

    .line 379
    .restart local v12    # "currentSys":Z
    .restart local v13    # "error":Ljava/lang/String;
    :cond_79
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1600"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9f

    .line 381
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v13}, Lcom/qinggan/otaservice/OTAService;->notifyError(ILjava/lang/String;)V

    goto :goto_64

    .line 383
    :cond_9f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4, v13}, Lcom/qinggan/otaservice/OTAService;->notifyError(ILjava/lang/String;)V

    goto :goto_64

    .line 389
    .end local v13    # "error":Ljava/lang/String;
    :cond_ac
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/qinggan/otaservice/engine/ServerAdapter;->searchUpdate(I)Z

    move-result v3

    if-nez v3, :cond_146

    .line 390
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorMsg()Ljava/lang/String;

    move-result-object v13

    .line 391
    .restart local v13    # "error":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorCode()J

    move-result-wide v4

    const-wide/16 v6, 0x1

    cmp-long v3, v4, v6

    if-nez v3, :cond_f4

    .line 393
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 404
    :goto_e6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_70

    .line 394
    :cond_f4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorCode()J

    move-result-wide v4

    const-wide/16 v6, 0x3e7

    cmp-long v3, v4, v6

    if-nez v3, :cond_113

    .line 396
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    goto :goto_e6

    .line 397
    :cond_113
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getErrorCode()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "1600"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_139

    .line 399
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0xb

    invoke-virtual {v3, v4, v13}, Lcom/qinggan/otaservice/OTAService;->notifyError(ILjava/lang/String;)V

    goto :goto_e6

    .line 401
    :cond_139
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4, v13}, Lcom/qinggan/otaservice/OTAService;->notifyError(ILjava/lang/String;)V

    goto :goto_e6

    .line 407
    .end local v13    # "error":Ljava/lang/String;
    :cond_146
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v3

    .line 408
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->clearUpgradePkgs()V

    .line 409
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getFullPkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-result-object v14

    .line 410
    .local v14, "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->clearFromServerPush()V
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$1200(Lcom/qinggan/otaservice/NetUpgrade;)V

    .line 411
    const/4 v15, 0x0

    .line 412
    .local v15, "hasNewVersion":Z
    const/4 v11, 0x0

    .line 413
    .local v11, "applyFull":Z
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 414
    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    .line 415
    .local v18, "version":Ljava/lang/String;
    if-eqz v14, :cond_1a6

    iget-object v3, v14, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 416
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1a6

    .line 418
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->setFromServerPushFull(Lcom/qinggan/otaservice/common/FullUpgradePkg;)V
    invoke-static {v3, v14}, Lcom/qinggan/otaservice/NetUpgrade;->access$1300(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/otaservice/common/FullUpgradePkg;)V

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$1400(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v3

    if-eqz v3, :cond_1a6

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v3

    .line 421
    invoke-virtual {v3, v14}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->saveFullPkg(Lcom/qinggan/otaservice/common/FullUpgradePkg;)V

    .line 422
    const/4 v15, 0x1

    .line 423
    const/4 v11, 0x1

    .line 426
    :cond_1a6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getPatchPkgs()Ljava/util/List;

    move-result-object v16

    .line 427
    .local v16, "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    if-eqz v16, :cond_1fc

    .line 428
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1fc

    .line 430
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    iget-object v3, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 429
    move-object/from16 v0, v18

    invoke-static {v0, v3}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_1fc

    .line 431
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    move-object/from16 v0, v16

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->setFromServerPushPatch(Ljava/util/List;)V
    invoke-static {v3, v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1500(Lcom/qinggan/otaservice/NetUpgrade;Ljava/util/List;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$1400(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 433
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v3

    .line 434
    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->savePatchUpgradePkg(Ljava/util/List;)V

    .line 435
    const/4 v15, 0x1

    .line 436
    const/4 v11, 0x0

    .line 439
    :cond_1fc
    if-eqz v15, :cond_2cf

    .line 440
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v4, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$1602(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/ota/OTAFullPkg;)Lcom/qinggan/ota/OTAFullPkg;

    .line 441
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v4, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$1702(Lcom/qinggan/otaservice/NetUpgrade;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 442
    if-eqz v11, :cond_2a3

    .line 443
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v14}, Lcom/qinggan/otaservice/common/FullUpgradePkg;->convert()Lcom/qinggan/ota/OTAFullPkg;

    move-result-object v4

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$1602(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/ota/OTAFullPkg;)Lcom/qinggan/ota/OTAFullPkg;

    .line 450
    :cond_21b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/qinggan/otaservice/engine/ServerAdapter;->getSendTime()J

    move-result-wide v4

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mSendTime:J
    invoke-static {v3, v4, v5}, Lcom/qinggan/otaservice/NetUpgrade;->access$1802(Lcom/qinggan/otaservice/NetUpgrade;J)J

    .line 451
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$1600(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/ota/OTAFullPkg;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 452
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;
    invoke-static {v5}, Lcom/qinggan/otaservice/NetUpgrade;->access$1700(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/util/ArrayList;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J
    invoke-static {v6}, Lcom/qinggan/otaservice/NetUpgrade;->access$1900(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mSendTime:J
    invoke-static {v8}, Lcom/qinggan/otaservice/NetUpgrade;->access$1800(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v8

    const/4 v10, 0x1

    .line 451
    invoke-virtual/range {v3 .. v10}, Lcom/qinggan/otaservice/OTAService;->notifyResponseVersionFromNetwork(Lcom/qinggan/ota/OTAFullPkg;Ljava/util/List;JJI)V

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 454
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v3

    if-eqz v3, :cond_70

    .line 455
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const-string v4, "ota"

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 456
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "task_sid"

    sget-wide v6, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 457
    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string v4, "taskitem_sid"

    sget-wide v6, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 458
    invoke-interface {v3, v4, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 459
    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 460
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/NetUpgrade;->startUpgradeFromNet()I

    goto/16 :goto_70

    .line 445
    :cond_2a3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$1702(Lcom/qinggan/otaservice/NetUpgrade;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    .line 446
    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_21b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 447
    .local v17, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$1700(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual/range {v17 .. v17}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->convert()Lcom/qinggan/ota/OTAPatchPkg;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2b3

    .line 463
    .end local v17    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_2cf
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 464
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 466
    new-instance v2, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v3, "UPGRADE_ACK"

    const/4 v4, 0x5

    const-string v5, ""

    .line 467
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u68c0\u6d4b\u7248\u672c\u65e0\u66f4\u65b0"

    invoke-direct/range {v2 .. v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    .local v2, "networkInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    goto/16 :goto_70

    .line 474
    .end local v2    # "networkInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    .end local v11    # "applyFull":Z
    .end local v12    # "currentSys":Z
    .end local v14    # "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .end local v15    # "hasNewVersion":Z
    .end local v16    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    .end local v18    # "version":Ljava/lang/String;
    :cond_304
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 475
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_70
.end method
