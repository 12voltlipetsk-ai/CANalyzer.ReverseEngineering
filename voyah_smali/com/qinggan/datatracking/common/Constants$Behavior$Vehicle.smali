.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Vehicle;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vehicle"
.end annotation


# static fields
.field public static CustomBabyMode:Ljava/lang/String;

.field public static CustomCongestionMode:Ljava/lang/String;

.field public static CustomParkingMode:Ljava/lang/String;

.field public static EnterApp:Ljava/lang/String;

.field public static LeaveVehicle:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1069
    const-string v0, "8400001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vehicle;->EnterApp:Ljava/lang/String;

    .line 1071
    const-string v0, "8400002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vehicle;->CustomCongestionMode:Ljava/lang/String;

    .line 1073
    const-string v0, "8400003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vehicle;->CustomBabyMode:Ljava/lang/String;

    .line 1075
    const-string v0, "8400004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vehicle;->CustomParkingMode:Ljava/lang/String;

    .line 1077
    const-string v0, "84001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vehicle;->LeaveVehicle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1067
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
