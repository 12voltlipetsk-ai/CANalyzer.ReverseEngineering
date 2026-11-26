.class Lcom/qinggan/otaservice/NetUpgrade$1;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Lcom/qinggan/util/NetUtil$NetworkChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;-><init>(Lcom/qinggan/otaservice/OTAService;)V
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
    .line 104
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public netWorkChange(Z)V
    .registers 8
    .param p1, "isNetworkConnectd"    # Z

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 107
    if-eqz p1, :cond_87

    .line 108
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUploadResultPending:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$000(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 109
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mUploadResultPending:Z
    invoke-static {v0, v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z

    .line 110
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$1$1;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$1$1;-><init>(Lcom/qinggan/otaservice/NetUpgrade$1;)V

    .line 117
    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade$1$1;->start()V

    .line 119
    :cond_1b
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # invokes: Lcom/qinggan/otaservice/NetUpgrade;->initUpdateLocalVersion()V
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$600(Lcom/qinggan/otaservice/NetUpgrade;)V

    .line 120
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    const-string v1, "ota"

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "silence_finished"

    .line 121
    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_87

    .line 122
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$700(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v0

    if-nez v0, :cond_87

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 123
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    if-nez v0, :cond_87

    .line 124
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "resume to silence download after network reconnect"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/qinggan/otaservice/OTAService;->setSilence(Z)V

    .line 133
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    const-string v1, "ota"

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "task_sid"

    .line 134
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 135
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    const-string v1, "ota"

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "taskitem_sid"

    .line 136
    invoke-interface {v0, v1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    sput-wide v0, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 137
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->startUpgradeFromNet()I

    .line 141
    :cond_87
    return-void
.end method
