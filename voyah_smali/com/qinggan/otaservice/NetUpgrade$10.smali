.class Lcom/qinggan/otaservice/NetUpgrade$10;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;->uploadResult(ZJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;

.field final synthetic val$taskItemSid:J

.field final synthetic val$taskSid:J


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;JJ)V
    .registers 6
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 1464
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    iput-wide p2, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->val$taskSid:J

    iput-wide p4, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->val$taskItemSid:J

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 1467
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUploadResult:Z
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v1

    if-eqz v1, :cond_20

    const/4 v1, 0x2

    :goto_f
    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->val$taskSid:J

    iget-wide v4, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->val$taskItemSid:J

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/otaservice/engine/ServerAdapter;->uploadResult(IJJ)V

    .line 1469
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$10;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->cleanUpgradeResult()V

    .line 1470
    return-void

    .line 1467
    :cond_20
    const/4 v1, 0x3

    goto :goto_f
.end method
