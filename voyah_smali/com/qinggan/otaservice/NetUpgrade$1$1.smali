.class Lcom/qinggan/otaservice/NetUpgrade$1$1;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade$1;->netWorkChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/NetUpgrade$1;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/qinggan/otaservice/NetUpgrade$1;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$1$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 113
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$1;

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade$1$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$1;

    iget-object v1, v1, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mUploadResult:Z
    invoke-static {v1}, Lcom/qinggan/otaservice/NetUpgrade;->access$100(Lcom/qinggan/otaservice/NetUpgrade;)Z

    move-result v1

    if-eqz v1, :cond_32

    const/4 v1, 0x2

    :goto_13
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade$1$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$1;

    iget-object v2, v2, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 114
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskSid:J
    invoke-static {v2}, Lcom/qinggan/otaservice/NetUpgrade;->access$200(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade$1$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$1;

    iget-object v4, v4, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskIteSid:J
    invoke-static {v4}, Lcom/qinggan/otaservice/NetUpgrade;->access$300(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v4

    .line 113
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/otaservice/engine/ServerAdapter;->uploadResult(IJJ)V

    .line 115
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$1$1;->this$1:Lcom/qinggan/otaservice/NetUpgrade$1;

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade$1;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->cleanUpgradeResult()V

    .line 116
    return-void

    .line 113
    :cond_32
    const/4 v1, 0x3

    goto :goto_13
.end method
