.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Park;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Park"
.end annotation


# static fields
.field public static bindEZParkingPayment:Ljava/lang/String;

.field public static bindEtcpPayment:Ljava/lang/String;

.field public static bindPayment:Ljava/lang/String;

.field public static bookParkRecommend:Ljava/lang/String;

.field public static cancelParkRecommend:Ljava/lang/String;

.field public static naviToPark:Ljava/lang/String;

.field public static receiveParkRecommend:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 765
    const-string v0, "6001010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->receiveParkRecommend:Ljava/lang/String;

    .line 767
    const-string v0, "6001020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->naviToPark:Ljava/lang/String;

    .line 769
    const-string v0, "6001030"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->bookParkRecommend:Ljava/lang/String;

    .line 771
    const-string v0, "6001040"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->cancelParkRecommend:Ljava/lang/String;

    .line 773
    const-string v0, "6001050"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->bindPayment:Ljava/lang/String;

    .line 775
    const-string v0, "6001053"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->bindEtcpPayment:Ljava/lang/String;

    .line 777
    const-string v0, "6001054"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Park;->bindEZParkingPayment:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
