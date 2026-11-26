.class Lcom/qinggan/otaservice/EthernetUpgrade$4;
.super Landroid/net/ConnectivityManager$NetworkCallback;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;->monitorEthernetState()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$4;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Landroid/net/ConnectivityManager$NetworkCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvailable(Landroid/net/Network;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 724
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onAvailable(Landroid/net/Network;)V

    .line 725
    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade$4;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1600(Lcom/qinggan/otaservice/EthernetUpgrade;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 726
    .local v1, "mNetworkCapability":Landroid/net/NetworkCapabilities;
    if-eqz v1, :cond_2b

    .line 727
    const-string v2, "EthernetUpgrade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback onAvailable NetworkInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    :cond_2b
    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade$4;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1600(Lcom/qinggan/otaservice/EthernetUpgrade;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 730
    .local v0, "mLinkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_53

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_53

    if-eqz v0, :cond_53

    const-string v2, "tbox0"

    .line 731
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 739
    const-string v2, "EthernetUpgrade"

    const-string v3, "tbox ethernet available, start doip thread"

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 743
    :cond_53
    return-void
.end method

.method public onLost(Landroid/net/Network;)V
    .registers 7
    .param p1, "network"    # Landroid/net/Network;

    .prologue
    .line 747
    invoke-super {p0, p1}, Landroid/net/ConnectivityManager$NetworkCallback;->onLost(Landroid/net/Network;)V

    .line 748
    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade$4;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1600(Lcom/qinggan/otaservice/EthernetUpgrade;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getNetworkCapabilities(Landroid/net/Network;)Landroid/net/NetworkCapabilities;

    move-result-object v1

    .line 749
    .local v1, "mNetworkCapability":Landroid/net/NetworkCapabilities;
    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade$4;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;
    invoke-static {v2}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1600(Lcom/qinggan/otaservice/EthernetUpgrade;)Landroid/net/ConnectivityManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/net/ConnectivityManager;->getLinkProperties(Landroid/net/Network;)Landroid/net/LinkProperties;

    move-result-object v0

    .line 750
    .local v0, "mLinkProperties":Landroid/net/LinkProperties;
    if-eqz v1, :cond_35

    .line 751
    const-string v2, "EthernetUpgrade"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NetworkCallback onLost NetworkInfo = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 753
    :cond_35
    if-eqz v1, :cond_53

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasTransport(I)Z

    move-result v2

    if-eqz v2, :cond_53

    if-eqz v0, :cond_53

    const-string v2, "tbox0"

    .line 754
    invoke-virtual {v0}, Landroid/net/LinkProperties;->getInterfaceName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_53

    .line 755
    const-string v2, "EthernetUpgrade"

    const-string v3, "tbox ethernet lost, stop doip thread"

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 758
    :cond_53
    return-void
.end method
