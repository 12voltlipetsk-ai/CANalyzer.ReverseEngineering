.class Lcom/qinggan/otaservice/NetUpgrade$7;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Lcom/qinggan/otaservice/common/IDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/NetUpgrade;
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
    .line 481
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelDownload()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 489
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z
    invoke-static {v1, v6}, Lcom/qinggan/otaservice/NetUpgrade;->access$702(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 490
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "DOWNLOAD_RESULT_NOTICE"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 491
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$2000(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u53d6\u6d88\u4e0b\u8f7d"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 492
    .local v0, "cancelDownload":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 493
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 494
    return-void
.end method

.method public exceptionDownload()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 587
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z
    invoke-static {v1, v6}, Lcom/qinggan/otaservice/NetUpgrade;->access$702(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 589
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_DOWNLOAD"

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 590
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;
    invoke-static {v3}, Lcom/qinggan/otaservice/NetUpgrade;->access$2000(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5347\u7ea7\u5305\u4e0b\u8f7d\u5f02\u5e38"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    .local v0, "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 592
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 593
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$2400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/DownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->getIsNetWorkException()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 594
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 598
    :goto_42
    return-void

    .line 596
    :cond_43
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    goto :goto_42
.end method

.method public finishDownload()V
    .registers 3

    .prologue
    .line 505
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v1, 0x0

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$702(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 507
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    iget-object v0, v0, Lcom/qinggan/otaservice/OTAService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/qinggan/otaservice/NetUpgrade$7$1;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/NetUpgrade$7$1;-><init>(Lcom/qinggan/otaservice/NetUpgrade$7;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 583
    return-void
.end method

.method public startDownload()V
    .registers 3

    .prologue
    .line 484
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    const/4 v1, 0x1

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$702(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 485
    return-void
.end method

.method public updateDownloadPercent(IJJ)V
    .registers 14
    .param p1, "percent"    # I
    .param p2, "currentSize"    # J
    .param p4, "totalSize"    # J

    .prologue
    .line 499
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$7;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    const/16 v3, 0x64

    move v2, p1

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/qinggan/otaservice/OTAService;->notifyDownLoadProgress(IIJJ)V

    .line 501
    return-void
.end method
