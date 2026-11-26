.class Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;
.super Ljava/lang/Thread;
.source "LocalUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/LocalUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckLocalThread"
.end annotation


# instance fields
.field private mNeedUpdate:Z

.field final synthetic this$0:Lcom/qinggan/otaservice/LocalUpgrade;


# direct methods
.method public constructor <init>(Lcom/qinggan/otaservice/LocalUpgrade;Z)V
    .registers 4
    .param p1, "this$0"    # Lcom/qinggan/otaservice/LocalUpgrade;
    .param p2, "needUpgrade"    # Z

    .prologue
    .line 248
    iput-object p1, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 246
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->mNeedUpdate:Z

    .line 249
    iput-boolean p2, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->mNeedUpdate:Z

    .line 250
    const-class v0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->setName(Ljava/lang/String;)V

    .line 251
    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 255
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "---------------------------------------------run CheckLocalThread"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-static {v5}, Lcom/qinggan/otaservice/common/Tool;->isUDiskExtExist(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_38

    .line 258
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "UDISK does not exist"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 260
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 261
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z
    invoke-static {v5, v7}, Lcom/qinggan/otaservice/LocalUpgrade;->access$602(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 307
    :goto_37
    return-void

    .line 264
    :cond_38
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    .line 265
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-static {v5}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipLocal(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v4

    .line 266
    .local v4, "versionInfo":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-static {v5}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesLocal(Landroid/content/Context;)Z

    move-result v1

    .line 267
    .local v1, "hasOthers":Z
    if-eqz v4, :cond_54

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-nez v5, :cond_77

    :cond_54
    if-nez v1, :cond_77

    .line 268
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v5

    const-string v6, "No update file  exist"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v7}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 270
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 271
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z
    invoke-static {v5, v7}, Lcom/qinggan/otaservice/LocalUpgrade;->access$602(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    goto :goto_37

    .line 273
    :cond_77
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$800(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v5

    .line 274
    invoke-virtual {v5, v4}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sortListByVersionDesc(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v5

    sput-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 275
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 276
    .local v3, "targetVersion":Ljava/lang/String;
    move-object v2, v3

    .line 277
    .local v2, "lastVersion":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v5, :cond_9e

    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 278
    invoke-virtual {v5}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_9e

    .line 279
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    .line 281
    :cond_9e
    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/LocalUpgrade;->access$300()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "upgrade version: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 285
    .local v0, "compare":I
    if-gtz v0, :cond_ca

    if-eqz v1, :cond_132

    .line 286
    :cond_ca
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    new-instance v6, Lcom/qinggan/ota/OTAVersion;

    invoke-direct {v6}, Lcom/qinggan/ota/OTAVersion;-><init>()V

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v5, v6}, Lcom/qinggan/otaservice/LocalUpgrade;->access$002(Lcom/qinggan/otaservice/LocalUpgrade;Lcom/qinggan/ota/OTAVersion;)Lcom/qinggan/ota/OTAVersion;

    .line 287
    if-gtz v0, :cond_10a

    .line 288
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 292
    :goto_db
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$000(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v5

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getNewMcuVersion()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/qinggan/ota/OTAVersion;->mcuVersion:Ljava/lang/String;

    .line 293
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # setter for: Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z
    invoke-static {v5, v8}, Lcom/qinggan/otaservice/LocalUpgrade;->access$602(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z

    .line 294
    iget-boolean v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->mNeedUpdate:Z

    if-nez v5, :cond_113

    .line 295
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 296
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    iget-object v6, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v6}, Lcom/qinggan/otaservice/LocalUpgrade;->access$000(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qinggan/otaservice/OTAService;->notifyResponseVersionFromLocal(Lcom/qinggan/ota/OTAVersion;)V

    goto/16 :goto_37

    .line 290
    :cond_10a
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$000(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v5

    iput-object v2, v5, Lcom/qinggan/ota/OTAVersion;->mpuVersion:Ljava/lang/String;

    goto :goto_db

    .line 298
    :cond_113
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 299
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    iget-object v6, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v6}, Lcom/qinggan/otaservice/LocalUpgrade;->access$000(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qinggan/otaservice/OTAService;->notifyResponseVersionFromLocal(Lcom/qinggan/ota/OTAVersion;)V

    .line 300
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->startUpgradeFromLocal()I

    goto/16 :goto_37

    .line 303
    :cond_132
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 304
    iget-object v5, p0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v5}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_37
.end method
