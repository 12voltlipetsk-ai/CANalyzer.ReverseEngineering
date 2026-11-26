.class public final enum Lcom/pateo/tsp/TSPAPI$CanbusItemType;
.super Ljava/lang/Enum;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/TSPAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CanbusItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/TSPAPI$CanbusItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/TSPAPI$CanbusItemType;

.field public static final enum CAN_AccState:Lcom/pateo/tsp/TSPAPI$CanbusItemType;

.field public static final enum CAN_VehicleSpeed:Lcom/pateo/tsp/TSPAPI$CanbusItemType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 139
    new-instance v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    const-string v1, "CAN_VehicleSpeed"

    invoke-direct {v0, v1, v2, v2}, Lcom/pateo/tsp/TSPAPI$CanbusItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->CAN_VehicleSpeed:Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    .line 140
    new-instance v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    const-string v1, "CAN_AccState"

    invoke-direct {v0, v1, v3, v3}, Lcom/pateo/tsp/TSPAPI$CanbusItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->CAN_AccState:Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    .line 138
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    sget-object v1, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->CAN_VehicleSpeed:Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->CAN_AccState:Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->$VALUES:[Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 144
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    iput p3, p0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->value:I

    .line 146
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/TSPAPI$CanbusItemType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 138
    const-class v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/TSPAPI$CanbusItemType;
    .registers 1

    .prologue
    .line 138
    sget-object v0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->$VALUES:[Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    invoke-virtual {v0}, [Lcom/pateo/tsp/TSPAPI$CanbusItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/TSPAPI$CanbusItemType;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 149
    iget v0, p0, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->value:I

    return v0
.end method
