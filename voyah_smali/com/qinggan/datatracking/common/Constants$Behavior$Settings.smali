.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Settings"
.end annotation


# static fields
.field public static ChangeTheme:Ljava/lang/String;

.field public static ClickToDownload:Ljava/lang/String;

.field public static ClickToInstall:Ljava/lang/String;

.field public static CloseBuyRecommendation:Ljava/lang/String;

.field public static CloseCarRecommendation:Ljava/lang/String;

.field public static CloseGeekMode:Ljava/lang/String;

.field public static CloseListenSave:Ljava/lang/String;

.field public static CloseMediaRecommendation:Ljava/lang/String;

.field public static CloseNaviMix:Ljava/lang/String;

.field public static CloseNaviRecommendation:Ljava/lang/String;

.field public static CloseNoVoiceWakeup:Ljava/lang/String;

.field public static CloseRecommendation:Ljava/lang/String;

.field public static CloseSystemRecommendation:Ljava/lang/String;

.field public static CloseVoiceWakeup:Ljava/lang/String;

.field public static ConnectAPSuccess:Ljava/lang/String;

.field public static ConnectBTSuccess:Ljava/lang/String;

.field public static ConnectWifiSuccess:Ljava/lang/String;

.field public static EnterSettings:Ljava/lang/String;

.field public static FactoryReset:Ljava/lang/String;

.field public static LeaveSettings:Ljava/lang/String;

.field public static OTADownloadComplete:Ljava/lang/String;

.field public static OTAFinish:Ljava/lang/String;

.field public static OpenBuyRecommendation:Ljava/lang/String;

.field public static OpenCarRecommendation:Ljava/lang/String;

.field public static OpenGeekMode:Ljava/lang/String;

.field public static OpenListenSave:Ljava/lang/String;

.field public static OpenMediaRecommendation:Ljava/lang/String;

.field public static OpenNaviMix:Ljava/lang/String;

.field public static OpenNaviRecommendation:Ljava/lang/String;

.field public static OpenNoVoiceWakeup:Ljava/lang/String;

.field public static OpenRecommendation:Ljava/lang/String;

.field public static OpenSystemRecommendation:Ljava/lang/String;

.field public static SetAllSeat:Ljava/lang/String;

.field public static SetCustomWakeup:Ljava/lang/String;

.field public static SetMainSeat:Ljava/lang/String;

.field public static SetManVoice:Ljava/lang/String;

.field public static setWomanVoice:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 978
    const-string v0, "82002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->EnterSettings:Ljava/lang/String;

    .line 980
    const-string v0, "82001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->LeaveSettings:Ljava/lang/String;

    .line 982
    const-string v0, "8200001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->ConnectBTSuccess:Ljava/lang/String;

    .line 984
    const-string v0, "8200002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->ConnectWifiSuccess:Ljava/lang/String;

    .line 986
    const-string v0, "8200003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->ConnectAPSuccess:Ljava/lang/String;

    .line 988
    const-string v0, "8200004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenListenSave:Ljava/lang/String;

    .line 990
    const-string v0, "8200005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseListenSave:Ljava/lang/String;

    .line 992
    const-string v0, "8200006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenNaviMix:Ljava/lang/String;

    .line 994
    const-string v0, "8200007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseNaviMix:Ljava/lang/String;

    .line 996
    const-string v0, "8200008"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->ChangeTheme:Ljava/lang/String;

    .line 998
    const-string v0, "8200009"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->SetCustomWakeup:Ljava/lang/String;

    .line 1000
    const-string v0, "8200010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseVoiceWakeup:Ljava/lang/String;

    .line 1002
    const-string v0, "8200011"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenGeekMode:Ljava/lang/String;

    .line 1004
    const-string v0, "8200012"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseGeekMode:Ljava/lang/String;

    .line 1006
    const-string v0, "8200013"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->SetMainSeat:Ljava/lang/String;

    .line 1008
    const-string v0, "8200014"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->SetAllSeat:Ljava/lang/String;

    .line 1010
    const-string v0, "8200015"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->SetManVoice:Ljava/lang/String;

    .line 1012
    const-string v0, "8200016"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->setWomanVoice:Ljava/lang/String;

    .line 1014
    const-string v0, "8200017"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseNoVoiceWakeup:Ljava/lang/String;

    .line 1016
    const-string v0, "8200018"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenNoVoiceWakeup:Ljava/lang/String;

    .line 1018
    const-string v0, "8200019"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->ClickToDownload:Ljava/lang/String;

    .line 1020
    const-string v0, "8200020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OTADownloadComplete:Ljava/lang/String;

    .line 1022
    const-string v0, "8200021"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->ClickToInstall:Ljava/lang/String;

    .line 1024
    const-string v0, "8200022"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OTAFinish:Ljava/lang/String;

    .line 1026
    const-string v0, "8200023"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->FactoryReset:Ljava/lang/String;

    .line 1028
    const-string v0, "8200024"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenRecommendation:Ljava/lang/String;

    .line 1030
    const-string v0, "8200025"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseRecommendation:Ljava/lang/String;

    .line 1032
    const-string v0, "8200026"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenNaviRecommendation:Ljava/lang/String;

    .line 1034
    const-string v0, "8200027"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseNaviRecommendation:Ljava/lang/String;

    .line 1036
    const-string v0, "8200028"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenMediaRecommendation:Ljava/lang/String;

    .line 1038
    const-string v0, "8200029"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseMediaRecommendation:Ljava/lang/String;

    .line 1040
    const-string v0, "8200030"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenCarRecommendation:Ljava/lang/String;

    .line 1042
    const-string v0, "8200031"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseCarRecommendation:Ljava/lang/String;

    .line 1044
    const-string v0, "8200032"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenBuyRecommendation:Ljava/lang/String;

    .line 1046
    const-string v0, "8200033"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseBuyRecommendation:Ljava/lang/String;

    .line 1048
    const-string v0, "8200034"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->OpenSystemRecommendation:Ljava/lang/String;

    .line 1050
    const-string v0, "8200035"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Settings;->CloseSystemRecommendation:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
