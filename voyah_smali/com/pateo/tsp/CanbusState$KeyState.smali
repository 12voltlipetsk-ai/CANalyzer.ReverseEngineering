.class public final enum Lcom/pateo/tsp/CanbusState$KeyState;
.super Ljava/lang/Enum;
.source "CanbusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/CanbusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KeyState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/CanbusState$KeyState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/CanbusState$KeyState;

.field public static final enum KEY_CONTACT:Lcom/pateo/tsp/CanbusState$KeyState;

.field public static final enum KEY_DEM:Lcom/pateo/tsp/CanbusState$KeyState;

.field public static final enum KEY_FREE:Lcom/pateo/tsp/CanbusState$KeyState;

.field public static final enum KEY_STOP:Lcom/pateo/tsp/CanbusState$KeyState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 10
    new-instance v0, Lcom/pateo/tsp/CanbusState$KeyState;

    const-string v1, "KEY_STOP"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/CanbusState$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_STOP:Lcom/pateo/tsp/CanbusState$KeyState;

    .line 11
    new-instance v0, Lcom/pateo/tsp/CanbusState$KeyState;

    const-string v1, "KEY_CONTACT"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/CanbusState$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_CONTACT:Lcom/pateo/tsp/CanbusState$KeyState;

    .line 12
    new-instance v0, Lcom/pateo/tsp/CanbusState$KeyState;

    const-string v1, "KEY_DEM"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/CanbusState$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_DEM:Lcom/pateo/tsp/CanbusState$KeyState;

    .line 13
    new-instance v0, Lcom/pateo/tsp/CanbusState$KeyState;

    const-string v1, "KEY_FREE"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/CanbusState$KeyState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_FREE:Lcom/pateo/tsp/CanbusState$KeyState;

    .line 9
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pateo/tsp/CanbusState$KeyState;

    sget-object v1, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_STOP:Lcom/pateo/tsp/CanbusState$KeyState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_CONTACT:Lcom/pateo/tsp/CanbusState$KeyState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_DEM:Lcom/pateo/tsp/CanbusState$KeyState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/CanbusState$KeyState;->KEY_FREE:Lcom/pateo/tsp/CanbusState$KeyState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/pateo/tsp/CanbusState$KeyState;->$VALUES:[Lcom/pateo/tsp/CanbusState$KeyState;

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
    .line 9
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/CanbusState$KeyState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 9
    const-class v0, Lcom/pateo/tsp/CanbusState$KeyState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/CanbusState$KeyState;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/CanbusState$KeyState;
    .registers 1

    .prologue
    .line 9
    sget-object v0, Lcom/pateo/tsp/CanbusState$KeyState;->$VALUES:[Lcom/pateo/tsp/CanbusState$KeyState;

    invoke-virtual {v0}, [Lcom/pateo/tsp/CanbusState$KeyState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/CanbusState$KeyState;

    return-object v0
.end method
