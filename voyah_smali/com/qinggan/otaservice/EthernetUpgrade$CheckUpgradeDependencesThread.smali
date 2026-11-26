.class Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;
.super Ljava/lang/Thread;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckUpgradeDependencesThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 245
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 249
    const-string v5, "EthernetUpgrade"

    const-string v6, "---------------------------------------------run CheckUpgradeDependencesThread"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->isDownloadOtaExist()Z

    move-result v5

    if-nez v5, :cond_26

    .line 253
    const-string v5, "EthernetUpgrade"

    const-string v6, "udpate update.zip not exist"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 254
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 255
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v9}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    .line 333
    :goto_25
    return-void

    .line 259
    :cond_26
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkUpdatePKGType()Ljava/lang/String;

    move-result-object v3

    .line 260
    .local v3, "type":Ljava/lang/String;
    const-string v5, "EthernetUpgrade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "this update.zip type is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 261
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a9

    .line 262
    const-string v5, "sys"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_58

    const-string v5, "patch"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_126

    .line 264
    :cond_58
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromDownloadOTA()Ljava/util/ArrayList;

    move-result-object v4

    .line 265
    .local v4, "versionInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    if-eqz v4, :cond_64

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_71

    .line 266
    :cond_64
    const-string v5, "EthernetUpgrade"

    const-string v6, "No update file  exist"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 267
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v9}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto :goto_25

    .line 269
    :cond_71
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->hasUboot()Z

    move-result v6

    # setter for: Lcom/qinggan/otaservice/EthernetUpgrade;->hasUboot:Z
    invoke-static {v5, v6}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$602(Lcom/qinggan/otaservice/EthernetUpgrade;Z)Z

    .line 270
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$700(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v5

    .line 271
    invoke-virtual {v5, v4}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sortListByVersionDesc(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 272
    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 273
    .local v2, "targetVersion":Ljava/lang/String;
    move-object v1, v2

    .line 274
    .local v1, "lastVersion":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v5, :cond_a1

    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 275
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_a1

    .line 276
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 278
    :cond_a1
    const-string v5, "EthernetUpgrade"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upgrade version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 280
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 282
    .local v0, "compare":I
    if-lez v0, :cond_10f

    .line 283
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    new-instance v6, Lcom/qinggan/ota/OTAVersion;

    invoke-direct {v6}, Lcom/qinggan/ota/OTAVersion;-><init>()V

    # setter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v5, v6}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$802(Lcom/qinggan/otaservice/EthernetUpgrade;Lcom/qinggan/ota/OTAVersion;)Lcom/qinggan/ota/OTAVersion;

    .line 284
    if-gtz v0, :cond_106

    .line 285
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 289
    :goto_da
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$800(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v5

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getNewMcuVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qinggan/ota/OTAVersion;->mcuVersion:Ljava/lang/String;

    .line 290
    const-string v5, "EthernetUpgrade"

    const-string v6, "MPU Dependences check ok"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 291
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 292
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$900(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 293
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v8}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_25

    .line 287
    :cond_106
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$800(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v5

    iput-object v1, v5, Lcom/qinggan/ota/OTAVersion;->mpuVersion:Ljava/lang/String;

    goto :goto_da

    .line 295
    :cond_10f
    const-string v5, "EthernetUpgrade"

    const-string v6, "MPU Dependences check error"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 297
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v10}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_25

    .line 300
    .end local v0    # "compare":I
    .end local v1    # "lastVersion":Ljava/lang/String;
    .end local v2    # "targetVersion":Ljava/lang/String;
    .end local v4    # "versionInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_126
    const-string v5, "mcu"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_189

    .line 302
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "/data/media/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 303
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/update/update.zip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 302
    invoke-static {v5}, Lcom/qinggan/otaservice/common/Tool;->checkMCUOk(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_172

    .line 304
    const-string v5, "EthernetUpgrade"

    const-string v6, "MCU Dependences check ok"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 306
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$900(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 307
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v8}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_25

    .line 309
    :cond_172
    const-string v5, "EthernetUpgrade"

    const-string v6, "MCU Dependences check error"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 311
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v10}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_25

    .line 322
    :cond_189
    const-string v5, "EthernetUpgrade"

    const-string v6, "This type update.zip can not ota"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 323
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 324
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$900(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 325
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v10}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_25

    .line 328
    :cond_1a9
    const-string v5, "EthernetUpgrade"

    const-string v6, "update.zip Manifest error"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 330
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;
    invoke-static {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$900(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 331
    iget-object v5, p0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V
    invoke-static {v5, v9}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V

    goto/16 :goto_25
.end method
