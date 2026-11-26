.class Lcom/qinggan/otaservice/EthernetUpgrade$6;
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
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$6;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConnectStatusChange(Z)V
    .registers 4
    .param p1, "isConnected"    # Z

    .prologue
    .line 779
    if-eqz p1, :cond_21

    .line 780
    const-string v0, "EthernetUpgrade"

    const-string v1, "Connect to CanBusManager successfully!"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$6;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1800(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/canbus/CanBusManager;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 783
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$6;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1800(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/canbus/CanBusManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$6;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusListener:Lcom/qinggan/canbus/CanBusListener;
    invoke-static {v1}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1900(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/canbus/CanBusListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qinggan/canbus/CanBusManager;->registerCanBusListener(Lcom/qinggan/canbus/CanBusListener;)V

    .line 788
    :cond_20
    :goto_20
    return-void

    .line 786
    :cond_21
    const-string v0, "EthernetUpgrade"

    const-string v1, "CanBusManager not connected"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_20
.end method
