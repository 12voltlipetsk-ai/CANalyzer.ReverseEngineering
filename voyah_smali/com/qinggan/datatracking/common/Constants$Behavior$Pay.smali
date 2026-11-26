.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Pay"
.end annotation


# static fields
.field public static ClickPayHotel:Ljava/lang/String;

.field public static ClickPayParking:Ljava/lang/String;

.field public static ClickPayXmly:Ljava/lang/String;

.field public static DeleteCarInfo:Ljava/lang/String;

.field public static EnterApp:Ljava/lang/String;

.field public static HotelOrderNavi:Ljava/lang/String;

.field public static LeaveWallet:Ljava/lang/String;

.field public static SaveCarInfo:Ljava/lang/String;

.field public static bindYiFuBao:Ljava/lang/String;

.field public static data:Ljava/lang/String;

.field public static hotel:Ljava/lang/String;

.field public static payComplete:Ljava/lang/String;

.field public static suning:Ljava/lang/String;

.field public static unbindYiFuBao:Ljava/lang/String;

.field public static xmly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 719
    const-string v0, "7001010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->hotel:Ljava/lang/String;

    .line 721
    const-string v0, "7001020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->xmly:Ljava/lang/String;

    .line 723
    const-string v0, "7001030"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->data:Ljava/lang/String;

    .line 725
    const-string v0, "7001040"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->suning:Ljava/lang/String;

    .line 727
    const-string v0, "7001050"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->payComplete:Ljava/lang/String;

    .line 729
    const-string v0, "7001051"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->EnterApp:Ljava/lang/String;

    .line 731
    const-string v0, "7001052"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->ClickPayParking:Ljava/lang/String;

    .line 733
    const-string v0, "7001053"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->ClickPayXmly:Ljava/lang/String;

    .line 735
    const-string v0, "7001054"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->ClickPayHotel:Ljava/lang/String;

    .line 737
    const-string v0, "7001055"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->HotelOrderNavi:Ljava/lang/String;

    .line 739
    const-string v0, "7001056"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->bindYiFuBao:Ljava/lang/String;

    .line 741
    const-string v0, "7001057"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->unbindYiFuBao:Ljava/lang/String;

    .line 743
    const-string v0, "7001058"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->SaveCarInfo:Ljava/lang/String;

    .line 745
    const-string v0, "7001059"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->DeleteCarInfo:Ljava/lang/String;

    .line 747
    const-string v0, "70011"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Pay;->LeaveWallet:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 717
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
