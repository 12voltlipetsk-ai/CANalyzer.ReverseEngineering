.class Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PercentThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/engine/DownloadManager;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/DownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 260
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    const/4 v7, 0x0

    .line 263
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$700(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Download PercentThread Started"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    :goto_c
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$800(Lcom/qinggan/otaservice/engine/DownloadManager;)Z

    move-result v0

    if-eqz v0, :cond_dd

    .line 265
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->getDownloadedSize()J

    move-result-wide v2

    .line 266
    .local v2, "downloadedSize":J
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-ltz v0, :cond_8b

    .line 267
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_39

    .line 268
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$700(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OMG, File Size is Over TotalSize"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 270
    :cond_39
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$700(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "All Zips Download Completed"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    iput-boolean v7, v0, Lcom/qinggan/otaservice/engine/DownloadManager;->mCycleFlag:Z

    .line 273
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # setter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercentThreadFlag:Z
    invoke-static {v0, v7}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$802(Lcom/qinggan/otaservice/engine/DownloadManager;Z)Z

    .line 274
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    const/16 v1, 0x64

    # setter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$1002(Lcom/qinggan/otaservice/engine/DownloadManager;I)I

    .line 275
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 276
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$1000(Lcom/qinggan/otaservice/engine/DownloadManager;)I

    move-result v1

    iget-object v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    .line 277
    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J

    move-result-wide v2

    .end local v2    # "downloadedSize":J
    iget-object v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J

    move-result-wide v4

    .line 276
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->updateDownloadPercent(IJJ)V

    .line 278
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v0

    invoke-interface {v0}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->finishDownload()V

    .line 289
    :cond_80
    :goto_80
    const-wide/16 v0, 0x3e8

    :try_start_82
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_85
    .catch Ljava/lang/InterruptedException; {:try_start_82 .. :try_end_85} :catch_86

    goto :goto_c

    .line 290
    :catch_86
    move-exception v6

    .line 291
    .local v6, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v6}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_c

    .line 281
    .end local v6    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "downloadedSize":J
    :cond_8b
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    long-to-double v4, v2

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J

    move-result-wide v8

    long-to-double v8, v8

    div-double/2addr v4, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v8

    double-to-int v1, v4

    # setter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$1002(Lcom/qinggan/otaservice/engine/DownloadManager;I)I

    .line 282
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$700(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download Percent = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$1000(Lcom/qinggan/otaservice/engine/DownloadManager;)I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v0

    if-eqz v0, :cond_80

    .line 284
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mPercent:I
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$1000(Lcom/qinggan/otaservice/engine/DownloadManager;)I

    move-result v1

    iget-object v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager$PercentThread;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    .line 285
    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mTotalSize:J
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$900(Lcom/qinggan/otaservice/engine/DownloadManager;)J

    move-result-wide v4

    .line 284
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->updateDownloadPercent(IJJ)V

    goto :goto_80

    .line 294
    .end local v2    # "downloadedSize":J
    :cond_dd
    return-void
.end method
