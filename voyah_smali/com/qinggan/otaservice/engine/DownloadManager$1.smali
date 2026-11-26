.class Lcom/qinggan/otaservice/engine/DownloadManager$1;
.super Ljava/lang/Thread;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/DownloadManager;->startDownload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/engine/DownloadManager;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/DownloadManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/engine/DownloadManager;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    const/4 v5, 0x0

    .line 97
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mFileMap:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$200(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    .line 98
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 99
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;>;"
    :goto_f
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$300(Lcom/qinggan/otaservice/engine/DownloadManager;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    .line 100
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 101
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    iget-object v4, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/URL;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/File;

    # invokes: Lcom/qinggan/otaservice/engine/DownloadManager;->download(Ljava/net/URL;Ljava/io/File;)V
    invoke-static {v4, v2, v3}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$400(Lcom/qinggan/otaservice/engine/DownloadManager;Ljava/net/URL;Ljava/io/File;)V

    goto :goto_f

    .line 103
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/net/URL;Ljava/io/File;>;"
    :cond_35
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # setter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadFlag:Z
    invoke-static {v2, v5}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$302(Lcom/qinggan/otaservice/engine/DownloadManager;Z)Z

    .line 104
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$500(Lcom/qinggan/otaservice/engine/DownloadManager;)Z

    move-result v2

    if-eqz v2, :cond_63

    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v2

    if-eqz v2, :cond_63

    .line 105
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mDownloadCallBack:Lcom/qinggan/otaservice/common/IDownloadCallBack;
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$600(Lcom/qinggan/otaservice/engine/DownloadManager;)Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v2

    invoke-interface {v2}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->cancelDownload()V

    .line 106
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # setter for: Lcom/qinggan/otaservice/engine/DownloadManager;->mUserCancel:Z
    invoke-static {v2, v5}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$502(Lcom/qinggan/otaservice/engine/DownloadManager;Z)Z

    .line 107
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/DownloadManager$1;->this$0:Lcom/qinggan/otaservice/engine/DownloadManager;

    # getter for: Lcom/qinggan/otaservice/engine/DownloadManager;->TAG:Ljava/lang/String;
    invoke-static {v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->access$700(Lcom/qinggan/otaservice/engine/DownloadManager;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "end Cancel Download"

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_63
    return-void
.end method
