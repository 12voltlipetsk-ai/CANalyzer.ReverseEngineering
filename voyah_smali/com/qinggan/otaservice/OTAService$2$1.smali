.class Lcom/qinggan/otaservice/OTAService$2$1;
.super Ljava/lang/Object;
.source "OTAService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/OTAService$2;->IsServiceConnected(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/OTAService$2;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/OTAService$2;)V
    .registers 2
    .param p1, "this$1"    # Lcom/qinggan/otaservice/OTAService$2;

    .prologue
    .line 262
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService$2$1;->this$1:Lcom/qinggan/otaservice/OTAService$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2$1;->this$1:Lcom/qinggan/otaservice/OTAService$2;

    iget-object v0, v0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->initVersions()V
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$300(Lcom/qinggan/otaservice/OTAService;)V

    .line 266
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2$1;->this$1:Lcom/qinggan/otaservice/OTAService$2;

    iget-object v0, v0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->recordUpgradeTime()V
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$400(Lcom/qinggan/otaservice/OTAService;)V

    .line 267
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2$1;->this$1:Lcom/qinggan/otaservice/OTAService$2;

    iget-object v0, v0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->initService()V
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$500(Lcom/qinggan/otaservice/OTAService;)V

    .line 268
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2$1;->this$1:Lcom/qinggan/otaservice/OTAService$2;

    iget-object v0, v0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    # invokes: Lcom/qinggan/otaservice/OTAService;->readUpgradeResult()V
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$600(Lcom/qinggan/otaservice/OTAService;)V

    .line 269
    return-void
.end method
