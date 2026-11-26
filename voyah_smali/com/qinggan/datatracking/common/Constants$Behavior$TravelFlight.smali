.class public Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TravelFlight"
.end annotation


# static fields
.field public static FlightBoradingSearch:Ljava/lang/String;

.field public static FlightCancelFollow:Ljava/lang/String;

.field public static FlightFav:Ljava/lang/String;

.field public static FlightLogOut:Ljava/lang/String;

.field public static FlightOrder:Ljava/lang/String;

.field public static FlightPlan:Ljava/lang/String;

.field public static FlightRoutelineSearch:Ljava/lang/String;

.field public static FlightSearch:Ljava/lang/String;

.field public static FlightSeatSelection:Ljava/lang/String;

.field public static FlightTimeOrder:Ljava/lang/String;

.field public static FlightTrends:Ljava/lang/String;

.field public static FlightZhiJI:Ljava/lang/String;

.field public static LeaveFlifhtAPP:Ljava/lang/String;

.field public static Login:Ljava/lang/String;

.field public static StartFlifhtAPP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 528
    const-string v0, "1012"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->StartFlifhtAPP:Ljava/lang/String;

    .line 530
    const-string v0, "101201"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->Login:Ljava/lang/String;

    .line 533
    const-string v0, "1012001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightSearch:Ljava/lang/String;

    .line 536
    const-string v0, "1012002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightOrder:Ljava/lang/String;

    .line 538
    const-string v0, "1012003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightTimeOrder:Ljava/lang/String;

    .line 541
    const-string v0, "1012004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightRoutelineSearch:Ljava/lang/String;

    .line 543
    const-string v0, "1012005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightBoradingSearch:Ljava/lang/String;

    .line 545
    const-string v0, "1012006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightZhiJI:Ljava/lang/String;

    .line 547
    const-string v0, "1012007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightTrends:Ljava/lang/String;

    .line 549
    const-string v0, "1012008"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightPlan:Ljava/lang/String;

    .line 551
    const-string v0, "1012009"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightFav:Ljava/lang/String;

    .line 553
    const-string v0, "1012010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightSeatSelection:Ljava/lang/String;

    .line 555
    const-string v0, "1012011"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightCancelFollow:Ljava/lang/String;

    .line 557
    const-string v0, "1012012"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->FlightLogOut:Ljava/lang/String;

    .line 559
    const-string v0, "10121"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelFlight;->LeaveFlifhtAPP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 526
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
