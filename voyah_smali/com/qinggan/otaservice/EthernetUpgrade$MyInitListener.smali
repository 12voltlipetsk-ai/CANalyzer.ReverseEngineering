.class Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;
.super Ljava/lang/Object;
.source "EthernetUpgrade.java"

# interfaces
.implements Lcom/qinggan/common/OnInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyInitListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 669
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStatusChange(Z)V
    .registers 5
    .param p1, "connected"    # Z

    .prologue
    .line 672
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConnectStatusChange connected = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mIpkManager:Lcom/qinggan/ipksync/IpkUpdateManager;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1500(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ipksync/IpkUpdateManager;

    move-result-object v0

    if-eqz v0, :cond_50

    if-eqz p1, :cond_50

    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_50

    .line 674
    const-string v0, "EthernetUpgrade"

    const-string v1, "onConnect and set Callback"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mIpkManager:Lcom/qinggan/ipksync/IpkUpdateManager;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1500(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ipksync/IpkUpdateManager;

    move-result-object v0

    new-instance v1, Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;

    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {v1, v2}, Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    invoke-virtual {v0, v1}, Lcom/qinggan/ipksync/IpkUpdateManager;->setCallbackListener(Lcom/qinggan/ipksync/IpkUpdataCallback;)V

    .line 676
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mIpkManager:Lcom/qinggan/ipksync/IpkUpdateManager;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1500(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ipksync/IpkUpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/ipksync/IpkUpdateManager;->startUpload()V

    .line 680
    :goto_4f
    return-void

    .line 678
    :cond_50
    const-string v0, "EthernetUpgrade"

    const-string v1, "IpkManager is null"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f
.end method
