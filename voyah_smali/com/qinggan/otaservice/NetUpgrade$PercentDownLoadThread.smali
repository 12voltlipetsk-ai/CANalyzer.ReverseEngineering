.class Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/NetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PercentDownLoadThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 1219
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    .line 1222
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upgrade PercentThread Run"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1223
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    .line 1224
    .local v3, "installStartTime":Ljava/lang/String;
    :goto_d
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2600(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v1

    if-eqz v1, :cond_c3

    .line 1225
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getOTAInstallPercent()I

    move-result v9

    .line 1226
    .local v9, "percent":I
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrade Percent = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1227
    const/16 v1, 0x3e7

    if-ne v9, v1, :cond_ce

    .line 1228
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upgrade System Failed !"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1229
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v1

    const/4 v2, 0x1

    .line 1230
    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->setForceFullUpgrade(Z)V

    .line 1231
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 1232
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->setNeedSync(Z)V

    .line 1233
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2702(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 1234
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2602(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1235
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2802(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1236
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 1237
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1239
    :cond_83
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 1241
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_INSTALL"

    const/4 v2, 0x3

    .line 1242
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5347\u7ea7\u5305\u5b89\u88c5\u5931\u8d25"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1243
    .local v0, "installFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1244
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 1245
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 1246
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1387
    .end local v0    # "installFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    .end local v9    # "percent":I
    :cond_c3
    :goto_c3
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1388
    :goto_cd
    return-void

    .line 1248
    .restart local v9    # "percent":I
    :cond_ce
    const/16 v1, 0x3e6

    if-eq v9, v1, :cond_e6

    const/16 v1, 0x3e5

    if-eq v9, v1, :cond_e6

    const/16 v1, 0x3e4

    if-eq v9, v1, :cond_e6

    const/16 v1, 0x3e3

    if-eq v9, v1, :cond_e6

    const/16 v1, 0x3e2

    if-eq v9, v1, :cond_e6

    const/16 v1, 0x3e1

    if-ne v9, v1, :cond_185

    .line 1254
    :cond_e6
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Verify Upgrade File Failed !"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1255
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 1256
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->setNeedSync(Z)V

    .line 1257
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2702(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 1258
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2602(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1259
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2802(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1260
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v1

    if-eqz v1, :cond_120

    .line 1261
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1263
    :cond_120
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upgrade failed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1264
    const/16 v8, 0x63

    .line 1265
    .local v8, "error":I
    packed-switch v9, :pswitch_data_3ec

    .line 1280
    :goto_13f
    :pswitch_13f
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 1282
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_INSTALL"

    const/4 v2, 0x3

    .line 1283
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5347\u7ea7\u5305\u5b89\u88c5\u5931\u8d25"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1284
    .restart local v0    # "installFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1285
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 1286
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    goto/16 :goto_c3

    .line 1269
    .end local v0    # "installFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :pswitch_17d
    const/4 v8, 0x7

    .line 1270
    goto :goto_13f

    .line 1272
    :pswitch_17f
    const/16 v8, 0xa

    .line 1273
    goto :goto_13f

    .line 1275
    :pswitch_182
    const/16 v8, 0x8

    .line 1276
    goto :goto_13f

    .line 1288
    .end local v8    # "error":I
    :cond_185
    const/16 v1, 0x64

    if-ne v9, v1, :cond_38d

    .line 1290
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$3100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v1

    if-nez v1, :cond_19e

    .line 1292
    const-wide/16 v4, 0x32

    :try_start_193
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_196
    .catch Ljava/lang/InterruptedException; {:try_start_193 .. :try_end_196} :catch_198

    goto/16 :goto_d

    .line 1293
    :catch_198
    move-exception v7

    .line 1294
    .local v7, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_d

    .line 1298
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_19e
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->isUDiskExtExist(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_214

    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1299
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->needUDiskToUpdateSYS(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_214

    .line 1300
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Upgrade System Failed, As UDisk not Found"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1302
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 1303
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2702(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 1304
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2602(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1306
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_INSTALL"

    const/4 v2, 0x3

    .line 1307
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5347\u7ea7\u5305\u5b89\u88c5\u5931\u8d25"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1308
    .restart local v0    # "installFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1309
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 1310
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1311
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1312
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v1

    const/4 v2, 0x1

    .line 1313
    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->setForceFullUpgrade(Z)V

    goto/16 :goto_cd

    .line 1316
    .end local v0    # "installFail":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_214
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v1

    if-eqz v1, :cond_287

    .line 1317
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getBootSystem()I

    move-result v10

    .line 1318
    .local v10, "systemid":I
    if-nez v10, :cond_2bd

    .line 1319
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set System B Version Code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1320
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1319
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1321
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1323
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 1321
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    .line 1331
    :cond_254
    :goto_254
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1332
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1333
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    .line 1332
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->isFileInUDisk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_287

    .line 1334
    new-instance v6, Ljava/io/File;

    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1335
    .local v6, "delFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    .line 1338
    .end local v6    # "delFile":Ljava/io/File;
    .end local v10    # "systemid":I
    :cond_287
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->setNeedSync(Z)V

    .line 1339
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3200(Lcom/qinggan/otaservice/NetUpgrade;)I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3202(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 1340
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_301

    .line 1341
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v1

    if-eqz v1, :cond_2f4

    .line 1342
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User Cancel , stop"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1343
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2602(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    goto/16 :goto_c3

    .line 1324
    .restart local v10    # "systemid":I
    :cond_2bd
    const/4 v1, 0x1

    if-ne v10, v1, :cond_254

    .line 1325
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Set System A Version Code = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1326
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1325
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1327
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1329
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 1327
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    goto/16 :goto_254

    .line 1346
    .end local v10    # "systemid":I
    :cond_2f4
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2700(Lcom/qinggan/otaservice/NetUpgrade;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->startUpdate(I)V

    goto/16 :goto_d

    .line 1348
    :cond_301
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OK, All Upgrade Finish"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1349
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2602(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1350
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v1

    const/4 v2, 0x0

    .line 1351
    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->setForceFullUpgrade(Z)V

    .line 1352
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v1

    if-eqz v1, :cond_334

    .line 1354
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v1

    .line 1353
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 1355
    const-string v1, "--"

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 1357
    :cond_334
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->switchBootSystem()V

    .line 1358
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/16 v2, 0x64

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2702(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 1359
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/16 v2, 0x64

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeProgress(II)V

    .line 1360
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v1

    if-nez v1, :cond_360

    .line 1361
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 1363
    :cond_360
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1364
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v4, v5}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 1365
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2802(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 1366
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    goto/16 :goto_c3

    .line 1370
    :cond_38d
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v1

    const/4 v2, 0x1

    .line 1371
    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->setForceFullUpgrade(Z)V

    .line 1372
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3200(Lcom/qinggan/otaservice/NetUpgrade;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v2, v9

    int-to-double v4, v2

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mTotalSize:J
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$3300(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v12

    long-to-double v12, v12

    div-double/2addr v4, v12

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v12

    double-to-int v2, v4

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2702(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 1374
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2800(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v1

    if-nez v1, :cond_3e0

    .line 1375
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$2700(Lcom/qinggan/otaservice/NetUpgrade;)I

    move-result v2

    const/16 v4, 0x64

    invoke-virtual {v1, v2, v4}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeProgress(II)V

    .line 1381
    :goto_3d3
    const-wide/16 v4, 0x12c

    :try_start_3d5
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3d8
    .catch Ljava/lang/InterruptedException; {:try_start_3d5 .. :try_end_3d8} :catch_3da

    goto/16 :goto_d

    .line 1382
    :catch_3da
    move-exception v7

    .line 1383
    .restart local v7    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v7}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto/16 :goto_d

    .line 1377
    .end local v7    # "e":Ljava/lang/InterruptedException;
    :cond_3e0
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/16 v2, 0x64

    invoke-virtual {v1, v9, v2}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeProgress(II)V

    goto :goto_3d3

    .line 1265
    :pswitch_data_3ec
    .packed-switch 0x3e1
        :pswitch_17d
        :pswitch_13f
        :pswitch_182
        :pswitch_17f
        :pswitch_17d
        :pswitch_17d
    .end packed-switch
.end method
