.class Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OTAService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/OTAService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/OTAService;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 1081
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 1084
    const-string v5, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onReceive: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1085
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1086
    .local v0, "ac":Ljava/lang/String;
    const-string v5, "hmiagent.update.req"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 1087
    const-string v5, "OTAService"

    const-string v6, "BroadcastReceiver call back push version"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1088
    new-instance v3, Lcom/excelfore/hmiagent/OtaUpdateReq;

    invoke-direct {v3}, Lcom/excelfore/hmiagent/OtaUpdateReq;-><init>()V

    .line 1089
    .local v3, "req":Lcom/excelfore/hmiagent/OtaUpdateReq;
    const-string v5, "campaignid"

    invoke-virtual {v3, v5}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setCampaignId(Ljava/lang/String;)V

    .line 1090
    const-string v5, "pkgname"

    invoke-virtual {v3, v5}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setPackageName(Ljava/lang/String;)V

    .line 1091
    const-wide/16 v6, 0x1

    invoke-virtual {v3, v6, v7}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setUpdateTime(J)V

    .line 1092
    const-string v5, "content"

    invoke-virtual {v3, v5}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setContent(Ljava/lang/String;)V

    .line 1093
    invoke-virtual {v3, v11}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setMode(I)V

    .line 1094
    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setHour(I)V

    .line 1095
    const/4 v5, 0x4

    invoke-virtual {v3, v5}, Lcom/excelfore/hmiagent/OtaUpdateReq;->setMinute(I)V

    .line 1096
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v5, v3}, Lcom/qinggan/otaservice/OTAService;->notifyExcelforePushVersionInfo(Lcom/excelfore/hmiagent/OtaUpdateReq;)V

    .line 1143
    .end local v3    # "req":Lcom/excelfore/hmiagent/OtaUpdateReq;
    :cond_5c
    :goto_5c
    return-void

    .line 1097
    :cond_5d
    const-string v5, "hmiagent.install.update"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_85

    .line 1098
    const-string v5, "OTAService"

    const-string v6, "BroadcastReceiver call back install update"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1100
    const-string v5, "debug.reset.ecu"

    invoke-virtual {p2, v5, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 1101
    .local v2, "opt":I
    new-instance v4, Lcom/excelfore/hmiagent/OtaInstallState;

    invoke-direct {v4}, Lcom/excelfore/hmiagent/OtaInstallState;-><init>()V

    .line 1102
    .local v4, "state":Lcom/excelfore/hmiagent/OtaInstallState;
    const/16 v5, 0x743

    invoke-virtual {v4, v5}, Lcom/excelfore/hmiagent/OtaInstallState;->setInstallingEcu(I)V

    .line 1103
    invoke-virtual {v4, v2}, Lcom/excelfore/hmiagent/OtaInstallState;->setState(I)V

    .line 1104
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v5, v4}, Lcom/qinggan/otaservice/OTAService;->notifyExcelforeInstallUpdate(Lcom/excelfore/hmiagent/OtaInstallState;)V

    goto :goto_5c

    .line 1105
    .end local v2    # "opt":I
    .end local v4    # "state":Lcom/excelfore/hmiagent/OtaInstallState;
    :cond_85
    const-string v5, "ota.debug"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d2

    .line 1106
    const-string v5, "OTAService"

    const-string v6, "ota debug receiver"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1107
    const-string v5, "what"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1108
    .local v1, "i":I
    packed-switch v1, :pswitch_data_12a

    goto :goto_5c

    .line 1111
    :pswitch_9e
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    if-eqz v5, :cond_b0

    .line 1112
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->startCheckUpgradeDependences()I

    goto :goto_5c

    .line 1114
    :cond_b0
    const-string v5, "OTAService"

    const-string v6, "OTA DEBUG Ethernet IS NULL"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 1118
    :pswitch_b8
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    if-eqz v5, :cond_ca

    .line 1119
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->startInstall()V

    goto :goto_5c

    .line 1121
    :cond_ca
    const-string v5, "OTAService"

    const-string v6, "OTA DEBUG Ethernet IS NULL"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5c

    .line 1125
    .end local v1    # "i":I
    :cond_d2
    const-string v5, "ota.setap"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5c

    .line 1126
    const-string v5, "what"

    invoke-virtual {p2, v5, v8}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 1127
    .restart local v1    # "i":I
    if-ne v1, v10, :cond_105

    .line 1128
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    if-eqz v5, :cond_fc

    .line 1129
    const-string v5, "OTAService"

    const-string v6, "RCV BROADCAST WILL EHTERNETUPGRADE setupHotport TRUE"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1130
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    invoke-virtual {v5, v10}, Lcom/qinggan/otaservice/EthernetUpgrade;->setupHotport(Z)V

    goto/16 :goto_5c

    .line 1132
    :cond_fc
    const-string v5, "OTAService"

    const-string v6, "EHTERNETUPGRADE IS NULL"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1134
    :cond_105
    if-ne v1, v11, :cond_5c

    .line 1135
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    if-eqz v5, :cond_121

    .line 1136
    const-string v5, "OTAService"

    const-string v6, "RCV BROADCAST WILL EHTERNETUPGRADE setupHotport FALSE"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1137
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;->this$0:Lcom/qinggan/otaservice/OTAService;

    # getter for: Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;
    invoke-static {v5}, Lcom/qinggan/otaservice/OTAService;->access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;

    move-result-object v5

    invoke-virtual {v5, v9}, Lcom/qinggan/otaservice/EthernetUpgrade;->setupHotport(Z)V

    goto/16 :goto_5c

    .line 1139
    :cond_121
    const-string v5, "OTAService"

    const-string v6, "EHTERNETUPGRADE IS NULL"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_5c

    .line 1108
    :pswitch_data_12a
    .packed-switch 0x1
        :pswitch_9e
        :pswitch_b8
    .end packed-switch
.end method
