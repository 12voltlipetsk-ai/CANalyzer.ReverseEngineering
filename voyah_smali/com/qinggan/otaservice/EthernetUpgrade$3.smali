.class Lcom/qinggan/otaservice/EthernetUpgrade$3;
.super Ljava/lang/Object;
.source "EthernetUpgrade.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


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
    .line 575
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$3;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 579
    const-string v0, "EthernetUpgrade"

    const-string v1, "DoIPServer is died!Reconnect it!"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 580
    # setter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z
    invoke-static {v2}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$202(Z)Z

    .line 581
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$3;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    const/4 v1, 0x0

    # setter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;
    invoke-static {v0, v1}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$302(Lcom/qinggan/otaservice/EthernetUpgrade;Lcom/qinggan/system/IDoIPService;)Lcom/qinggan/system/IDoIPService;

    .line 582
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$3;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 583
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$3;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->connectDoIPService()V
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1400(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    .line 584
    return-void
.end method
