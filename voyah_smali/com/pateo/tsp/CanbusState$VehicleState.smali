.class public final enum Lcom/pateo/tsp/CanbusState$VehicleState;
.super Ljava/lang/Enum;
.source "CanbusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/CanbusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VehicleState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/CanbusState$VehicleState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/CanbusState$VehicleState;

.field public static final enum VEHICLE_NORMAL:Lcom/pateo/tsp/CanbusState$VehicleState;

.field public static final enum VEHICLE_OFF:Lcom/pateo/tsp/CanbusState$VehicleState;

.field public static final enum VEHICLE_STANDBY:Lcom/pateo/tsp/CanbusState$VehicleState;

.field public static final enum VEHICLE_SWITCHING:Lcom/pateo/tsp/CanbusState$VehicleState;

.field public static final enum VEHICLE_WAKE:Lcom/pateo/tsp/CanbusState$VehicleState;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    const-string v1, "VEHICLE_STANDBY"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/CanbusState$VehicleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_STANDBY:Lcom/pateo/tsp/CanbusState$VehicleState;

    .line 18
    new-instance v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    const-string v1, "VEHICLE_NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/CanbusState$VehicleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_NORMAL:Lcom/pateo/tsp/CanbusState$VehicleState;

    .line 19
    new-instance v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    const-string v1, "VEHICLE_SWITCHING"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/CanbusState$VehicleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_SWITCHING:Lcom/pateo/tsp/CanbusState$VehicleState;

    .line 20
    new-instance v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    const-string v1, "VEHICLE_WAKE"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/CanbusState$VehicleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_WAKE:Lcom/pateo/tsp/CanbusState$VehicleState;

    .line 21
    new-instance v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    const-string v1, "VEHICLE_OFF"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/CanbusState$VehicleState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_OFF:Lcom/pateo/tsp/CanbusState$VehicleState;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pateo/tsp/CanbusState$VehicleState;

    sget-object v1, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_STANDBY:Lcom/pateo/tsp/CanbusState$VehicleState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_NORMAL:Lcom/pateo/tsp/CanbusState$VehicleState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_SWITCHING:Lcom/pateo/tsp/CanbusState$VehicleState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_WAKE:Lcom/pateo/tsp/CanbusState$VehicleState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/CanbusState$VehicleState;->VEHICLE_OFF:Lcom/pateo/tsp/CanbusState$VehicleState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->$VALUES:[Lcom/pateo/tsp/CanbusState$VehicleState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/CanbusState$VehicleState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/CanbusState$VehicleState;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/CanbusState$VehicleState;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/pateo/tsp/CanbusState$VehicleState;->$VALUES:[Lcom/pateo/tsp/CanbusState$VehicleState;

    invoke-virtual {v0}, [Lcom/pateo/tsp/CanbusState$VehicleState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/CanbusState$VehicleState;

    return-object v0
.end method
