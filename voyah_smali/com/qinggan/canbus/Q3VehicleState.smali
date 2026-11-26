.class public Lcom/qinggan/canbus/Q3VehicleState;
.super Ljava/lang/Object;
.source "Q3VehicleState.java"


# static fields
.field public static final CLOSE_DOOR:I = 0x0

.field public static final OPEN_DOOR:I = 0x1

.field public static final OPEN_TRUNK:I = 0x2

.field public static final SWITCH_CLOSE:I = 0x0

.field public static final SWITCH_OPEN:I = 0x1

.field public static final VEHICLE_DOOR_CONTROL:Lcom/qinggan/canbus/VehicleState;

.field public static final VEHICLE_IGNITION_SWITCH:Lcom/qinggan/canbus/VehicleState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/qinggan/canbus/VehicleState;->VEHICLE_DOOR_CONTROL:Lcom/qinggan/canbus/VehicleState;

    sput-object v0, Lcom/qinggan/canbus/Q3VehicleState;->VEHICLE_DOOR_CONTROL:Lcom/qinggan/canbus/VehicleState;

    .line 23
    sget-object v0, Lcom/qinggan/canbus/VehicleState;->VEHICLE_IGNITION_SWITCH:Lcom/qinggan/canbus/VehicleState;

    sput-object v0, Lcom/qinggan/canbus/Q3VehicleState;->VEHICLE_IGNITION_SWITCH:Lcom/qinggan/canbus/VehicleState;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
