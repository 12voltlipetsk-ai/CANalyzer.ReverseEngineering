.class Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;
.super Ljava/lang/Thread;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DualUpgradeThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 407
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 13

    .prologue
    const/4 v11, 0x0

    .line 410
    const/4 v3, 0x0

    .line 411
    .local v3, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v7, :cond_16

    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 412
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_16

    .line 413
    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v3, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 415
    .restart local v3    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_16
    if-eqz v3, :cond_1d2

    .line 416
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/update/update.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 417
    .local v4, "localfile":Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/qinggan/otaservice/engine/ZipManager;->hasFixupFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3f

    .line 420
    :cond_3f
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v7

    invoke-virtual {v7, v4}, Lcom/qinggan/otaservice/engine/ZipManager;->hasMd5CheckFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1ed

    .line 421
    const-string v7, "EthernetUpgrade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "localfile = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const-string v7, "pateo_ivi_md5sum.txt"

    invoke-static {v4, v7}, Lcom/qinggan/otaservice/common/Tool;->getMd5Info(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 423
    .local v5, "md5info":Ljava/lang/String;
    const-string v7, "EthernetUpgrade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "read from file md5info = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    if-eqz v5, :cond_aa

    .line 427
    :try_start_81
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v7

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "/data/media/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "/update/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Lcom/qinggan/otaservice/engine/ZipManager;->upZipFile(Ljava/io/File;Ljava/lang/String;)I
    :try_end_aa
    .catch Ljava/io/IOException; {:try_start_81 .. :try_end_aa} :catch_1d3

    .line 433
    :cond_aa
    :goto_aa
    invoke-static {v4}, Lcom/qinggan/otaservice/common/Tool;->deleteUpdateFile(Ljava/lang/String;)V

    .line 435
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/update/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/otaservice/common/Tool;->scanDirectory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 436
    .local v1, "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_d8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_134

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 437
    .local v2, "fn":Ljava/lang/String;
    const-string v8, "EthernetUpgrade"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "update dir file: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    const-string v8, ".zip"

    invoke-virtual {v2, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_d8

    .line 439
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 440
    const-string v7, "EthernetUpgrade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fn rename"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    .end local v2    # "fn":Ljava/lang/String;
    :cond_134
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->isDownloadOtaExist()Z

    move-result v7

    if-eqz v7, :cond_1e5

    .line 447
    if-eqz v5, :cond_1dd

    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v8, "MD5"

    invoke-static {v7, v8}, Lcom/qinggan/otaservice/common/CryptoUtils;->calPackageCheckCode(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1dd

    .line 448
    const-string v7, "EthernetUpgrade"

    const-string v8, "MD5 CHECK OK"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 462
    .end local v1    # "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    .end local v5    # "md5info":Ljava/lang/String;
    :goto_154
    const-string v7, "EthernetUpgrade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Begin upgrade :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    iget-object v7, p0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v7}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v7

    const/4 v8, 0x4

    invoke-virtual {v7, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 466
    iget-object v7, p0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1100(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 467
    iget-object v7, p0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->startUpgradePercentUpdate()V
    invoke-static {v7}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1200(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    .line 468
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "/data/media/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 469
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/update/update.zip"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 468
    invoke-static {v7}, Lcom/qinggan/otaservice/engine/NativeManager;->installOTAPackage(Ljava/lang/String;)I

    move-result v6

    .line 470
    .local v6, "ret":I
    if-ltz v6, :cond_1f6

    .line 471
    const-string v7, "EthernetUpgrade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "End upgrade: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " and return: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v4    # "localfile":Ljava/lang/String;
    .end local v6    # "ret":I
    :cond_1d2
    :goto_1d2
    return-void

    .line 428
    .restart local v4    # "localfile":Ljava/lang/String;
    .restart local v5    # "md5info":Ljava/lang/String;
    :catch_1d3
    move-exception v0

    .line 429
    .local v0, "e":Ljava/io/IOException;
    const-string v7, "EthernetUpgrade"

    const-string v8, "MD5 Check unzip file exception"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_aa

    .line 450
    .end local v0    # "e":Ljava/io/IOException;
    .restart local v1    # "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    :cond_1dd
    const-string v7, "EthernetUpgrade"

    const-string v8, "MD5 CHECK ERROR"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d2

    .line 454
    :cond_1e5
    const-string v7, "EthernetUpgrade"

    const-string v8, "DOWNLOAD OTA FILE DISAPPARE"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d2

    .line 458
    .end local v1    # "files":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/io/File;>;"
    .end local v5    # "md5info":Ljava/lang/String;
    :cond_1ed
    const-string v7, "EthernetUpgrade"

    const-string v8, "no md5 file"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_154

    .line 473
    .restart local v6    # "ret":I
    :cond_1f6
    const-string v7, "EthernetUpgrade"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Install OTAPkg: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " error: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 474
    iget-object v7, p0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v7}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1100(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v7

    invoke-virtual {v7, v11}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 475
    iget-object v7, p0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v7}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v7

    invoke-virtual {v7, v11}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto :goto_1d2
.end method
