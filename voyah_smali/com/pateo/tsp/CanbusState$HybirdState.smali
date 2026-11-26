.class public final enum Lcom/pateo/tsp/CanbusState$HybirdState;
.super Ljava/lang/Enum;
.source "CanbusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/CanbusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HybirdState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/CanbusState$HybirdState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/CanbusState$HybirdState;

.field public static final enum HYBIRD_ACTIVATED:Lcom/pateo/tsp/CanbusState$HybirdState;

.field public static final enum HYBIRD_ACTIVE_PROPULSION:Lcom/pateo/tsp/CanbusState$HybirdState;

.field public static final enum HYBIRD_ACTIVE_STOP:Lcom/pateo/tsp/CanbusState$HybirdState;

.field public static final enum HYBIRD_ACTIVE_TRACTION:Lcom/pateo/tsp/CanbusState$HybirdState;

.field public static final enum HYBIRD_INACTIVE:Lcom/pateo/tsp/CanbusState$HybirdState;

.field public static final enum HYBIRD_UNDEFINED:Lcom/pateo/tsp/CanbusState$HybirdState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 32
    new-instance v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    const-string v1, "HYBIRD_UNDEFINED"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/CanbusState$HybirdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_UNDEFINED:Lcom/pateo/tsp/CanbusState$HybirdState;

    .line 33
    new-instance v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    const-string v1, "HYBIRD_INACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/CanbusState$HybirdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_INACTIVE:Lcom/pateo/tsp/CanbusState$HybirdState;

    .line 34
    new-instance v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    const-string v1, "HYBIRD_ACTIVE_STOP"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/CanbusState$HybirdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVE_STOP:Lcom/pateo/tsp/CanbusState$HybirdState;

    .line 35
    new-instance v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    const-string v1, "HYBIRD_ACTIVE_TRACTION"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/CanbusState$HybirdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVE_TRACTION:Lcom/pateo/tsp/CanbusState$HybirdState;

    .line 36
    new-instance v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    const-string v1, "HYBIRD_ACTIVE_PROPULSION"

    invoke-direct {v0, v1, v7}, Lcom/pateo/tsp/CanbusState$HybirdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVE_PROPULSION:Lcom/pateo/tsp/CanbusState$HybirdState;

    .line 37
    new-instance v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    const-string v1, "HYBIRD_ACTIVATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/CanbusState$HybirdState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVATED:Lcom/pateo/tsp/CanbusState$HybirdState;

    .line 31
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pateo/tsp/CanbusState$HybirdState;

    sget-object v1, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_UNDEFINED:Lcom/pateo/tsp/CanbusState$HybirdState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_INACTIVE:Lcom/pateo/tsp/CanbusState$HybirdState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVE_STOP:Lcom/pateo/tsp/CanbusState$HybirdState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVE_TRACTION:Lcom/pateo/tsp/CanbusState$HybirdState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVE_PROPULSION:Lcom/pateo/tsp/CanbusState$HybirdState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pateo/tsp/CanbusState$HybirdState;->HYBIRD_ACTIVATED:Lcom/pateo/tsp/CanbusState$HybirdState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->$VALUES:[Lcom/pateo/tsp/CanbusState$HybirdState;

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
    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/CanbusState$HybirdState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    const-class v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/CanbusState$HybirdState;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/CanbusState$HybirdState;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/pateo/tsp/CanbusState$HybirdState;->$VALUES:[Lcom/pateo/tsp/CanbusState$HybirdState;

    invoke-virtual {v0}, [Lcom/pateo/tsp/CanbusState$HybirdState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/CanbusState$HybirdState;

    return-object v0
.end method
