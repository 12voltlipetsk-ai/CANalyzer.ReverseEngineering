.class Lcom/qinggan/otaservice/OTAService$2;
.super Ljava/lang/Object;
.source "OTAService.java"

# interfaces
.implements Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/OTAService;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/OTAService;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 256
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsServiceConnected(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .prologue
    .line 259
    const-string v0, "OTAService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CarSignalManager connect: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    if-eqz p1, :cond_36

    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mFirst:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$200(Lcom/qinggan/otaservice/OTAService;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 261
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x0

    # setter for: Lcom/qinggan/otaservice/OTAService;->mFirst:Z
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/OTAService;->access$202(Lcom/qinggan/otaservice/OTAService;Z)Z

    .line 262
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService$2;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qinggan/otaservice/OTAService;->access$700(Lcom/qinggan/otaservice/OTAService;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qinggan/otaservice/OTAService$2$1;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/OTAService$2$1;-><init>(Lcom/qinggan/otaservice/OTAService$2;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 273
    :cond_36
    return-void
.end method
