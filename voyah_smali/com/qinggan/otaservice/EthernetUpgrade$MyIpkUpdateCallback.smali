.class Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;
.super Lcom/qinggan/ipksync/IpkUpdataCallback;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyIpkUpdateCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 683
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkUpdataCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onLogState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 707
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onLogState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 708
    return-void
.end method

.method public onReqFile(I)V
    .registers 5
    .param p1, "index"    # I

    .prologue
    .line 702
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReqFile index = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    return-void
.end method

.method public onUploadProgress(Ljava/lang/String;J)V
    .registers 8
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "size"    # J

    .prologue
    .line 694
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUPloadProgress path = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 696
    const-wide/16 v0, 0x64

    cmp-long v0, p2, v0

    if-nez v0, :cond_32

    .line 697
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 699
    :cond_32
    return-void
.end method

.method public onUploadState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 686
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onUploadState state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 687
    const/16 v0, 0x14

    if-eq p1, v0, :cond_20

    const/16 v0, 0x15

    if-ne p1, v0, :cond_31

    .line 688
    :cond_20
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 689
    const-string v0, "doip.debug.isInstall"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/qinggan/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 691
    :cond_31
    return-void
.end method
