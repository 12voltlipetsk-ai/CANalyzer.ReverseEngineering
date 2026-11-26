.class Lcom/qinggan/otaservice/NetUpgrade$9;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;->requestCachedVersion()V
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
    .line 1209
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$9;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    .line 1213
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$9;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v1

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$9;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1600(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/ota/OTAFullPkg;

    move-result-object v2

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$9;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    .line 1214
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1700(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/util/ArrayList;

    move-result-object v3

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$9;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1900(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$9;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mSendTime:J
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1800(Lcom/qinggan/otaservice/NetUpgrade;)J

    move-result-wide v6

    const/4 v8, 0x1

    .line 1213
    invoke-virtual/range {v1 .. v8}, Lcom/qinggan/otaservice/OTAService;->notifyResponseVersionFromNetwork(Lcom/qinggan/ota/OTAFullPkg;Ljava/util/List;JJI)V

    .line 1215
    return-void
.end method
