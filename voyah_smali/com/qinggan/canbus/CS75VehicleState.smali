.class public Lcom/qinggan/canbus/CS75VehicleState;
.super Ljava/lang/Object;
.source "CS75VehicleState.java"


# static fields
.field public static HU_ROOF_CONTROL_COMMAND_SWITCH:Lcom/qinggan/canbus/VehicleState;

.field public static SWITCH_CLOSE:I

.field public static SWITCH_OPEN:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 11
    sget-object v0, Lcom/qinggan/canbus/VehicleState;->SunroofControl:Lcom/qinggan/canbus/VehicleState;

    sput-object v0, Lcom/qinggan/canbus/CS75VehicleState;->HU_ROOF_CONTROL_COMMAND_SWITCH:Lcom/qinggan/canbus/VehicleState;

    .line 17
    const/4 v0, 0x0

    sput v0, Lcom/qinggan/canbus/CS75VehicleState;->SWITCH_CLOSE:I

    .line 21
    const/4 v0, 0x1

    sput v0, Lcom/qinggan/canbus/CS75VehicleState;->SWITCH_OPEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
