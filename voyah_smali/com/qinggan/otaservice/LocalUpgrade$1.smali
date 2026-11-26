.class Lcom/qinggan/otaservice/LocalUpgrade$1;
.super Ljava/lang/Object;
.source "LocalUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/LocalUpgrade;->requestCachedVersion()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/LocalUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/LocalUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qinggan/otaservice/LocalUpgrade$1;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade$1;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/LocalUpgrade;->access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/LocalUpgrade$1;->this$0:Lcom/qinggan/otaservice/LocalUpgrade;

    # getter for: Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;
    invoke-static {v1}, Lcom/qinggan/otaservice/LocalUpgrade;->access$000(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->notifyResponseVersionFromLocal(Lcom/qinggan/ota/OTAVersion;)V

    .line 97
    return-void
.end method
