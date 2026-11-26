.class Lcom/qinggan/otaservice/NetUpgrade$7$1;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade$7;->finishDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/NetUpgrade$7;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade$7;)V
    .registers 2
    .param p1, "this$1"    # Lcom/qinggan/otaservice/NetUpgrade$7;

    .prologue
    .line 507
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 20

    .prologue
    .line 511
    new-instance v1, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v2, "DOWNLOAD_RESULT_NOTICE"

    const/4 v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v4, v4, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 512
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2000(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/lang/String;

    move-result-object v4

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5347\u7ea7\u5305\u4e0b\u8f7d\u5b8c\u6210"

    invoke-direct/range {v1 .. v6}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    .local v1, "downloadCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 514
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    .line 515
    .local v5, "startChecKTime":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/NetUpgrade;->validateCheckCode()Z

    move-result v3

    if-nez v3, :cond_c6

    .line 517
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    if-eqz v3, :cond_8e

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8e

    .line 518
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_47
    :goto_47
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 519
    .local v18, "sysinfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual/range {v18 .. v18}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v13

    .line 520
    .local v13, "download_filepath":Ljava/lang/String;
    if-eqz v13, :cond_47

    .line 521
    new-instance v15, Ljava/io/File;

    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 522
    .local v15, "file":Ljava/io/File;
    if-eqz v15, :cond_47

    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_47

    .line 523
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "validate fail and del : ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v15}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    invoke-virtual {v15}, Ljava/io/File;->delete()Z

    goto :goto_47

    .line 530
    .end local v13    # "download_filepath":Ljava/lang/String;
    .end local v15    # "file":Ljava/io/File;
    .end local v18    # "sysinfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_8e
    new-instance v2, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v3, "PACKAGE_CHECK"

    const/4 v4, 0x3

    .line 531
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u5b8c\u6574\u6027\u6821\u9a8c\u5931\u8d25"

    invoke-direct/range {v2 .. v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    .local v2, "checkFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 533
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 534
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 581
    .end local v2    # "checkFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_c5
    :goto_c5
    return-void

    .line 537
    :cond_c6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 538
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileListCopy:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_da
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_f2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 539
    .local v16, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v4, v4, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v4

    if-eqz v4, :cond_121

    .line 576
    .end local v16    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_f2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$2200(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v3

    if-nez v3, :cond_10b

    .line 577
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/FileUtils;->createFlagFile(Landroid/content/Context;)V

    .line 579
    :cond_10b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$2100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v3

    if-nez v3, :cond_c5

    .line 580
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->unzipEnd(Ljava/lang/String;)V
    invoke-static {v3, v5}, Lcom/qinggan/otaservice/NetUpgrade;->access$2300(Lcom/qinggan/otaservice/NetUpgrade;Ljava/lang/String;)V

    goto :goto_c5

    .line 542
    .restart local v16    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_121
    :try_start_121
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v4, v4, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2200(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v4

    if-eqz v4, :cond_1c6

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/media/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/update/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 544
    .local v12, "dir":Ljava/lang/String;
    :goto_14a
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v4

    new-instance v7, Ljava/io/File;

    .line 545
    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 544
    invoke-virtual {v4, v7, v12}, Lcom/qinggan/otaservice/engine/ZipManager;->upZipFile(Ljava/io/File;Ljava/lang/String;)I

    move-result v17

    .line 546
    .local v17, "result":I
    const/4 v4, -0x1

    move/from16 v0, v17

    if-ne v0, v4, :cond_1e9

    .line 548
    new-instance v6, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v7, "PACKAGE_CHECK"

    const/4 v8, 0x3

    .line 549
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3\u5347\u7ea7\u5305\u89e3\u538b\u5931\u8d25"

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 550
    .local v6, "unzipFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 551
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 552
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V
    :try_end_199
    .catch Ljava/io/IOException; {:try_start_121 .. :try_end_199} :catch_280
    .catchall {:try_start_121 .. :try_end_199} :catchall_307

    .line 572
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 573
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".url"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_c5

    .line 542
    .end local v6    # "unzipFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    .end local v12    # "dir":Ljava/lang/String;
    .end local v17    # "result":I
    :cond_1c6
    :try_start_1c6
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v7, v7, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 543
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v7}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, "/update/"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_14a

    .line 554
    .restart local v12    # "dir":Ljava/lang/String;
    .restart local v17    # "result":I
    :cond_1e9
    const/4 v4, -0x2

    move/from16 v0, v17

    if-ne v0, v4, :cond_253

    .line 555
    new-instance v6, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v7, "PACKAGE_CHECK"

    const/4 v8, 0x3

    .line 556
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u5347\u7ea7\u5305\u89e3\u538b\u5931\u8d25"

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    .restart local v6    # "unzipFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 559
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V
    :try_end_226
    .catch Ljava/io/IOException; {:try_start_1c6 .. :try_end_226} :catch_280
    .catchall {:try_start_1c6 .. :try_end_226} :catchall_307

    .line 572
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 573
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".url"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_c5

    .line 572
    .end local v6    # "unzipFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_253
    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 573
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".url"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    goto/16 :goto_da

    .line 562
    .end local v12    # "dir":Ljava/lang/String;
    .end local v17    # "result":I
    :catch_280
    move-exception v14

    .line 563
    .local v14, "e":Ljava/io/IOException;
    :try_start_281
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    .line 564
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "unzip file error "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    new-instance v6, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v7, "PACKAGE_CHECK"

    const/4 v8, 0x3

    .line 566
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\u5347\u7ea7\u5305\u89e3\u538b\u5931\u8d25"

    move-object v9, v5

    invoke-direct/range {v6 .. v11}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 567
    .restart local v6    # "unzipFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v6}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 568
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 569
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$7$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$7;

    iget-object v3, v3, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V
    :try_end_2da
    .catchall {:try_start_281 .. :try_end_2da} :catchall_307

    .line 572
    new-instance v3, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 573
    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, ".url"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto/16 :goto_c5

    .line 572
    .end local v6    # "unzipFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_307
    move-exception v3

    new-instance v4, Ljava/io/File;

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 573
    new-instance v4, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ".url"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 574
    throw v3
.end method
