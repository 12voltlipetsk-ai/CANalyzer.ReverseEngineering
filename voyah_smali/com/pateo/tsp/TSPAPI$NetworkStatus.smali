.class public final enum Lcom/pateo/tsp/TSPAPI$NetworkStatus;
.super Ljava/lang/Enum;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/TSPAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/TSPAPI$NetworkStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/TSPAPI$NetworkStatus;

.field public static final enum NET_CONNECTED:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

.field public static final enum NET_CONNECTING:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

.field public static final enum NET_DISCONNECTED:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

.field public static final enum NET_DISCONNECTING:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

.field public static final enum NET_UNKNOWN:Lcom/pateo/tsp/TSPAPI$NetworkStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 157
    new-instance v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    const-string v1, "NET_UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_UNKNOWN:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    .line 158
    new-instance v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    const-string v1, "NET_CONNECTING"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/TSPAPI$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_CONNECTING:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    .line 159
    new-instance v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    const-string v1, "NET_CONNECTED"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/TSPAPI$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_CONNECTED:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    .line 160
    new-instance v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    const-string v1, "NET_DISCONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/TSPAPI$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_DISCONNECTING:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    .line 161
    new-instance v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    const-string v1, "NET_DISCONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/TSPAPI$NetworkStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_DISCONNECTED:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    .line 156
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    sget-object v1, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_UNKNOWN:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_CONNECTING:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_CONNECTED:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_DISCONNECTING:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->NET_DISCONNECTED:Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->$VALUES:[Lcom/pateo/tsp/TSPAPI$NetworkStatus;

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
    .line 156
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/TSPAPI$NetworkStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 156
    const-class v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/TSPAPI$NetworkStatus;
    .registers 1

    .prologue
    .line 156
    sget-object v0, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->$VALUES:[Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    invoke-virtual {v0}, [Lcom/pateo/tsp/TSPAPI$NetworkStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    return-object v0
.end method
