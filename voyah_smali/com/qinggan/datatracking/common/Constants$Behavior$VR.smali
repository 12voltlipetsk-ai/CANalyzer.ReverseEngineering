.class public Lcom/qinggan/datatracking/common/Constants$Behavior$VR;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VR"
.end annotation


# static fields
.field public static Encyclopedia:Ljava/lang/String;

.field public static FoodNavi:Ljava/lang/String;

.field public static GoodsPlaceOrder:Ljava/lang/String;

.field public static GoodsSearch:Ljava/lang/String;

.field public static HotelReservation:Ljava/lang/String;

.field public static ParkingLotNavi:Ljava/lang/String;

.field public static TravalPoiNavi:Ljava/lang/String;

.field public static VR:Ljava/lang/String;

.field public static airConditioner:Ljava/lang/String;

.field public static chat:Ljava/lang/String;

.field public static food:Ljava/lang/String;

.field public static hotel:Ljava/lang/String;

.field public static localRadio:Ljava/lang/String;

.field public static music:Ljava/lang/String;

.field public static navi:Ljava/lang/String;

.field public static noCallIvoka:Ljava/lang/String;

.field public static notice:Ljava/lang/String;

.field public static parkingLot:Ljava/lang/String;

.field public static phone:Ljava/lang/String;

.field public static poi:Ljava/lang/String;

.field public static radio:Ljava/lang/String;

.field public static roadCondition:Ljava/lang/String;

.field public static settings:Ljava/lang/String;

.field public static trip:Ljava/lang/String;

.field public static ume:Ljava/lang/String;

.field public static vehicle:Ljava/lang/String;

.field public static weather:Ljava/lang/String;

.field public static wechat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 612
    const-string v0, "1026"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->VR:Ljava/lang/String;

    .line 614
    const-string v0, "1026001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->weather:Ljava/lang/String;

    .line 616
    const-string v0, "1026002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->poi:Ljava/lang/String;

    .line 618
    const-string v0, "1026003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->hotel:Ljava/lang/String;

    .line 620
    const-string v0, "1026004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->music:Ljava/lang/String;

    .line 622
    const-string v0, "1026005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->settings:Ljava/lang/String;

    .line 624
    const-string v0, "1026006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->airConditioner:Ljava/lang/String;

    .line 626
    const-string v0, "1026007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->vehicle:Ljava/lang/String;

    .line 628
    const-string v0, "1026008"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->trip:Ljava/lang/String;

    .line 630
    const-string v0, "1026009"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->food:Ljava/lang/String;

    .line 632
    const-string v0, "1026010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->radio:Ljava/lang/String;

    .line 634
    const-string v0, "1026011"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->ume:Ljava/lang/String;

    .line 636
    const-string v0, "1026012"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->wechat:Ljava/lang/String;

    .line 638
    const-string v0, "1026013"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->phone:Ljava/lang/String;

    .line 640
    const-string v0, "1026014"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->notice:Ljava/lang/String;

    .line 642
    const-string v0, "1026015"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->navi:Ljava/lang/String;

    .line 644
    const-string v0, "1026016"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->localRadio:Ljava/lang/String;

    .line 646
    const-string v0, "1026017"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->roadCondition:Ljava/lang/String;

    .line 648
    const-string v0, "1026018"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->Encyclopedia:Ljava/lang/String;

    .line 650
    const-string v0, "1026019"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->chat:Ljava/lang/String;

    .line 652
    const-string v0, "1026020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->noCallIvoka:Ljava/lang/String;

    .line 654
    const-string v0, "1026021"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->parkingLot:Ljava/lang/String;

    .line 656
    const-string v0, "1026022"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->HotelReservation:Ljava/lang/String;

    .line 658
    const-string v0, "1026023"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->FoodNavi:Ljava/lang/String;

    .line 660
    const-string v0, "1026024"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->ParkingLotNavi:Ljava/lang/String;

    .line 662
    const-string v0, "1026025"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->TravalPoiNavi:Ljava/lang/String;

    .line 664
    const-string v0, "1026026"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->GoodsSearch:Ljava/lang/String;

    .line 666
    const-string v0, "1026027"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$VR;->GoodsPlaceOrder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 610
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
