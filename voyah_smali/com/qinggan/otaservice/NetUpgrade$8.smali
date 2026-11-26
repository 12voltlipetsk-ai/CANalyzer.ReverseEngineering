.class Lcom/qinggan/otaservice/NetUpgrade$8;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;->startUpgradeFromNet()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 1017
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 23

    .prologue
    .line 1021
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromSDCard()Ljava/util/ArrayList;

    move-result-object v16

    .line 1022
    .local v16, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesFromExtsd()Z

    .line 1023
    if-eqz v16, :cond_f

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_75

    .line 1024
    :cond_f
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1025
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v4, 0x1

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2202(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1026
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v9

    .line 1027
    .local v9, "cmd":Ljava/lang/String;
    invoke-static {v9}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 1028
    const-string v3, "--"

    invoke-static {v3}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 1029
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v3

    if-nez v3, :cond_42

    .line 1030
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 1032
    :cond_42
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other upgrade file is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1033
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1034
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1118
    .end local v9    # "cmd":Ljava/lang/String;
    :goto_74
    return-void

    .line 1038
    :cond_75
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/qinggan/otaservice/NetUpgrade;->checkUpdateFile(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_9a

    .line 1039
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v4, 0x1

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2202(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1040
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "doUpgradeFromSdcard"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1041
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/NetUpgrade;->doUpgradeFromDownloaded()V

    goto :goto_74

    .line 1045
    :cond_9a
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/FileUtils;->isFlagFileExist(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 1046
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromUdisk(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v16

    .line 1047
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesFromUdisk(Landroid/content/Context;)Z

    .line 1048
    if-eqz v16, :cond_c7

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_12e

    .line 1049
    :cond_c7
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v3

    if-eqz v3, :cond_154

    .line 1050
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v4, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2202(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1051
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v9

    .line 1052
    .restart local v9    # "cmd":Ljava/lang/String;
    invoke-static {v9}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 1053
    const-string v3, "--"

    invoke-static {v3}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 1054
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v3

    if-nez v3, :cond_fa

    .line 1055
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 1057
    :cond_fa
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "other upgrade file is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1058
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1059
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_74

    .line 1063
    .end local v9    # "cmd":Ljava/lang/String;
    :cond_12e
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    move-object/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/qinggan/otaservice/NetUpgrade;->checkUpdateFile(Ljava/util/ArrayList;)Z

    move-result v3

    if-eqz v3, :cond_154

    .line 1064
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v4, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v3, v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2202(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1065
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    const-string v4, "doUpgradeFromUsb"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1066
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/NetUpgrade;->doUpgradeFromDownloaded()V

    goto/16 :goto_74

    .line 1071
    :cond_154
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$1900(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v4

    const-wide/16 v6, 0x2

    mul-long v10, v4, v6

    .line 1072
    .local v10, "downloadPlusUnzipSize":J
    const-string v3, "/data/media/"

    .line 1073
    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->getAvailableStorage(Ljava/lang/String;)J

    move-result-wide v18

    .line 1074
    .local v18, "freeSizeOfInnerSDCard":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1075
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->getDownloadedUpdateFileSize(Ljava/lang/String;)J

    move-result-wide v12

    .line 1076
    .local v12, "downloadedSDCardSize":J
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free Size in Inner SDCard = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v18

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", downloaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1079
    add-long v4, v18, v12

    cmp-long v3, v10, v4

    if-lez v3, :cond_285

    .line 1081
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v8

    .line 1082
    .local v8, "UDiskPath":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1fb

    .line 1084
    new-instance v2, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v3, "ENV_CHECK"

    const/4 v4, 0x3

    const-string v5, ""

    .line 1085
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3"

    invoke-direct/range {v2 .. v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1086
    .local v2, "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1087
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 1088
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_74

    .line 1092
    .end local v2    # "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_1fb
    invoke-static {v8}, Lcom/qinggan/otaservice/common/Tool;->getAvailableStorage(Ljava/lang/String;)J

    move-result-wide v20

    .line 1093
    .local v20, "freeSizeOfUDiskExt":J
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/download/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1094
    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->getDownloadedUpdateFileSize(Ljava/lang/String;)J

    move-result-wide v14

    .line 1096
    .local v14, "downloadedUDiskSize":J
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Free Size in UDisk = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-wide/from16 v0, v20

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", downloaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1098
    add-long v4, v20, v14

    cmp-long v3, v10, v4

    if-lez v3, :cond_278

    .line 1101
    new-instance v2, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v3, "ENV_CHECK"

    const/4 v4, 0x3

    const-string v5, ""

    .line 1102
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u7cfb\u7edf\u7a7a\u95f4\u4e0d\u8db3"

    invoke-direct/range {v2 .. v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1103
    .restart local v2    # "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 1105
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_74

    .line 1109
    .end local v2    # "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_278
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/16 v4, 0xc

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->notifyInfo(I)V

    .line 1112
    .end local v8    # "UDiskPath":Ljava/lang/String;
    .end local v14    # "downloadedUDiskSize":J
    .end local v20    # "freeSizeOfUDiskExt":J
    :cond_285
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    add-long v6, v18, v12

    cmp-long v3, v10, v6

    if-gtz v3, :cond_2d1

    const/4 v3, 0x1

    :goto_290
    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v4, v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$2202(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1114
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsDownloadSdcard: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z
    invoke-static {v5}, Lcom/qinggan/otaservice/NetUpgrade;->access$2200(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1115
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->createDownloadDir()V
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$2500(Lcom/qinggan/otaservice/NetUpgrade;)V

    .line 1116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1117
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/qinggan/otaservice/NetUpgrade$8;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/NetUpgrade;->download()V

    goto/16 :goto_74

    .line 1112
    :cond_2d1
    const/4 v3, 0x0

    goto :goto_290
.end method
