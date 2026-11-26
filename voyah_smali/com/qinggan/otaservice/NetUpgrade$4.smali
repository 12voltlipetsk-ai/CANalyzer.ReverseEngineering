.class Lcom/qinggan/otaservice/NetUpgrade$4;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;->clearOldUpdateFile()V
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
    .line 199
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 202
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/FileUtils;->clearDownloadedFilesSdcard(Landroid/content/Context;)V

    .line 203
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/FileUtils;->clearDownloadedFilesUdisk(Landroid/content/Context;)V

    .line 204
    const/4 v1, 0x1

    .line 205
    .local v1, "needClear":Z
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromSDCard()Ljava/util/ArrayList;

    move-result-object v0

    .line 206
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesFromExtsd()Z

    .line 207
    if-eqz v0, :cond_26

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_b1

    .line 208
    :cond_26
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 209
    const/4 v1, 0x0

    .line 214
    :cond_2d
    :goto_2d
    if-eqz v1, :cond_38

    .line 215
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/FileUtils;->clearUpdateFilesSdcard(Landroid/content/Context;)V

    .line 217
    :cond_38
    const/4 v1, 0x1

    .line 218
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromUdisk(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesFromUdisk(Landroid/content/Context;)Z

    .line 220
    if-eqz v0, :cond_54

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_bc

    .line 221
    :cond_54
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 222
    const/4 v1, 0x0

    .line 227
    :cond_5b
    :goto_5b
    if-eqz v1, :cond_66

    .line 228
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/FileUtils;->clearUpdateFilesUdisk(Landroid/content/Context;)V

    .line 231
    :cond_66
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const-string v3, "ota"

    invoke-virtual {v2, v3, v4}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "silence_finished"

    .line 232
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_b0

    .line 233
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/qinggan/otaservice/OTAService;->setSilence(Z)V

    .line 239
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const-string v3, "ota"

    invoke-virtual {v2, v3, v4}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "task_sid"

    .line 240
    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 241
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v2

    const-string v3, "ota"

    invoke-virtual {v2, v3, v4}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "taskitem_sid"

    .line 242
    invoke-interface {v2, v3, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 243
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v2}, Lcom/qinggan/otaservice/NetUpgrade;->startUpgradeFromNet()I

    .line 245
    :cond_b0
    return-void

    .line 211
    :cond_b1
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v2, v0}, Lcom/qinggan/otaservice/NetUpgrade;->checkUpdateFile(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_2d

    .line 212
    const/4 v1, 0x0

    goto/16 :goto_2d

    .line 224
    :cond_bc
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$4;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v2, v0}, Lcom/qinggan/otaservice/NetUpgrade;->checkUpdateFile(Ljava/util/ArrayList;)Z

    move-result v2

    if-eqz v2, :cond_5b

    .line 225
    const/4 v1, 0x0

    goto :goto_5b
.end method
