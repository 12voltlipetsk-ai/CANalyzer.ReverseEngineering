.class public final enum Lcom/pateo/tsp/TSPAPI$GpsState;
.super Ljava/lang/Enum;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/TSPAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GpsState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/TSPAPI$GpsState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/TSPAPI$GpsState;

.field public static final enum GPS_STATE_AVAILABLE:Lcom/pateo/tsp/TSPAPI$GpsState;

.field public static final enum GPS_STATE_UNAVAILABLE:Lcom/pateo/tsp/TSPAPI$GpsState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/pateo/tsp/TSPAPI$GpsState;

    const-string v1, "GPS_STATE_UNAVAILABLE"

    invoke-direct {v0, v1, v2, v2}, Lcom/pateo/tsp/TSPAPI$GpsState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$GpsState;->GPS_STATE_UNAVAILABLE:Lcom/pateo/tsp/TSPAPI$GpsState;

    .line 102
    new-instance v0, Lcom/pateo/tsp/TSPAPI$GpsState;

    const-string v1, "GPS_STATE_AVAILABLE"

    invoke-direct {v0, v1, v3, v3}, Lcom/pateo/tsp/TSPAPI$GpsState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$GpsState;->GPS_STATE_AVAILABLE:Lcom/pateo/tsp/TSPAPI$GpsState;

    .line 100
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pateo/tsp/TSPAPI$GpsState;

    sget-object v1, Lcom/pateo/tsp/TSPAPI$GpsState;->GPS_STATE_UNAVAILABLE:Lcom/pateo/tsp/TSPAPI$GpsState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/TSPAPI$GpsState;->GPS_STATE_AVAILABLE:Lcom/pateo/tsp/TSPAPI$GpsState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pateo/tsp/TSPAPI$GpsState;->$VALUES:[Lcom/pateo/tsp/TSPAPI$GpsState;

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
    .line 106
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 107
    iput p3, p0, Lcom/pateo/tsp/TSPAPI$GpsState;->value:I

    .line 108
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/TSPAPI$GpsState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 100
    const-class v0, Lcom/pateo/tsp/TSPAPI$GpsState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/TSPAPI$GpsState;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/TSPAPI$GpsState;
    .registers 1

    .prologue
    .line 100
    sget-object v0, Lcom/pateo/tsp/TSPAPI$GpsState;->$VALUES:[Lcom/pateo/tsp/TSPAPI$GpsState;

    invoke-virtual {v0}, [Lcom/pateo/tsp/TSPAPI$GpsState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/TSPAPI$GpsState;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 111
    iget v0, p0, Lcom/pateo/tsp/TSPAPI$GpsState;->value:I

    return v0
.end method
