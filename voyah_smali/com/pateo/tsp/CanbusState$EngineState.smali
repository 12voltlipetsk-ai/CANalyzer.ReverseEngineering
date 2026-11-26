.class public final enum Lcom/pateo/tsp/CanbusState$EngineState;
.super Ljava/lang/Enum;
.source "CanbusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/CanbusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "EngineState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/CanbusState$EngineState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/CanbusState$EngineState;

.field public static final enum ENGINE_NOT_RUNNING:Lcom/pateo/tsp/CanbusState$EngineState;

.field public static final enum ENGINE_RUNNING:Lcom/pateo/tsp/CanbusState$EngineState;

.field public static final enum ENGINE_STARTING:Lcom/pateo/tsp/CanbusState$EngineState;

.field public static final enum ENGINE_STOPPED:Lcom/pateo/tsp/CanbusState$EngineState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 25
    new-instance v0, Lcom/pateo/tsp/CanbusState$EngineState;

    const-string v1, "ENGINE_NOT_RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/CanbusState$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_NOT_RUNNING:Lcom/pateo/tsp/CanbusState$EngineState;

    .line 26
    new-instance v0, Lcom/pateo/tsp/CanbusState$EngineState;

    const-string v1, "ENGINE_STARTING"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/CanbusState$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_STARTING:Lcom/pateo/tsp/CanbusState$EngineState;

    .line 27
    new-instance v0, Lcom/pateo/tsp/CanbusState$EngineState;

    const-string v1, "ENGINE_RUNNING"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/CanbusState$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_RUNNING:Lcom/pateo/tsp/CanbusState$EngineState;

    .line 28
    new-instance v0, Lcom/pateo/tsp/CanbusState$EngineState;

    const-string v1, "ENGINE_STOPPED"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/CanbusState$EngineState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_STOPPED:Lcom/pateo/tsp/CanbusState$EngineState;

    .line 24
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pateo/tsp/CanbusState$EngineState;

    sget-object v1, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_NOT_RUNNING:Lcom/pateo/tsp/CanbusState$EngineState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_STARTING:Lcom/pateo/tsp/CanbusState$EngineState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_RUNNING:Lcom/pateo/tsp/CanbusState$EngineState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/CanbusState$EngineState;->ENGINE_STOPPED:Lcom/pateo/tsp/CanbusState$EngineState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pateo/tsp/CanbusState$EngineState;->$VALUES:[Lcom/pateo/tsp/CanbusState$EngineState;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/CanbusState$EngineState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 24
    const-class v0, Lcom/pateo/tsp/CanbusState$EngineState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/CanbusState$EngineState;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/CanbusState$EngineState;
    .registers 1

    .prologue
    .line 24
    sget-object v0, Lcom/pateo/tsp/CanbusState$EngineState;->$VALUES:[Lcom/pateo/tsp/CanbusState$EngineState;

    invoke-virtual {v0}, [Lcom/pateo/tsp/CanbusState$EngineState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/CanbusState$EngineState;

    return-object v0
.end method
