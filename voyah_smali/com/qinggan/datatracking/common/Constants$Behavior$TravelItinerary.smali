.class public Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TravelItinerary"
.end annotation


# static fields
.field public static ArriveDestination:Ljava/lang/String;

.field public static AvoidBlockPush:Ljava/lang/String;

.field public static CancleFavDestination:Ljava/lang/String;

.field public static FavDestination:Ljava/lang/String;

.field public static LeaveNAVI:Ljava/lang/String;

.field public static POISearch:Ljava/lang/String;

.field public static ReCountPath:Ljava/lang/String;

.field public static SelectAvoidBlockPush:Ljava/lang/String;

.field public static noticeIn10km:Ljava/lang/String;

.field public static noticeIn2km:Ljava/lang/String;

.field public static openNAVIDistance:Ljava/lang/String;

.field public static openNAVISpeed:Ljava/lang/String;

.field public static openNAVITime:Ljava/lang/String;

.field public static setDestination:Ljava/lang/String;

.field public static stopNavigation:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 490
    const-string v0, "10091"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->openNAVISpeed:Ljava/lang/String;

    .line 492
    const-string v0, "10092"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->openNAVIDistance:Ljava/lang/String;

    .line 494
    const-string v0, "10093"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->openNAVITime:Ljava/lang/String;

    .line 497
    const-string v0, "1009001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->POISearch:Ljava/lang/String;

    .line 500
    const-string v0, "1009002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->setDestination:Ljava/lang/String;

    .line 502
    const-string v0, "1009003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->FavDestination:Ljava/lang/String;

    .line 504
    const-string v0, "1009004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->CancleFavDestination:Ljava/lang/String;

    .line 506
    const-string v0, "1009005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->ArriveDestination:Ljava/lang/String;

    .line 508
    const-string v0, "1009006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->stopNavigation:Ljava/lang/String;

    .line 510
    const-string v0, "1009007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->ReCountPath:Ljava/lang/String;

    .line 512
    const-string v0, "1009009"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->AvoidBlockPush:Ljava/lang/String;

    .line 514
    const-string v0, "1009010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->SelectAvoidBlockPush:Ljava/lang/String;

    .line 516
    const-string v0, "1009011"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->noticeIn2km:Ljava/lang/String;

    .line 518
    const-string v0, "1009012"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->noticeIn10km:Ljava/lang/String;

    .line 520
    const-string v0, "10097"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$TravelItinerary;->LeaveNAVI:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
