.class public final enum Lcom/pateo/tsp/TSPAPI$PhoneStatus;
.super Ljava/lang/Enum;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/TSPAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PhoneStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/TSPAPI$PhoneStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_ALERTING:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_CANCELED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_ERROR:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_ESTABLISHED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_FAILED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_INCOMING:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_REJECTED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_STARTED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

.field public static final enum CALL_STATE_TERMINATED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 86
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_STARTED"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_STARTED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 87
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_FAILED"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_FAILED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 88
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_ALERTING"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_ALERTING:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 89
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_INCOMING"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_INCOMING:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 90
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_REJECTED"

    invoke-direct {v0, v1, v7}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_REJECTED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 91
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_ESTABLISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_ESTABLISHED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 92
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_TERMINATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_TERMINATED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 93
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_CANCELED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_CANCELED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 94
    new-instance v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    const-string v1, "CALL_STATE_ERROR"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI$PhoneStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_ERROR:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    .line 85
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    sget-object v1, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_STARTED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_FAILED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_ALERTING:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_INCOMING:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_REJECTED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_ESTABLISHED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_TERMINATED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_CANCELED:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->CALL_STATE_ERROR:Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->$VALUES:[Lcom/pateo/tsp/TSPAPI$PhoneStatus;

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
    .line 85
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/TSPAPI$PhoneStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 85
    const-class v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/TSPAPI$PhoneStatus;
    .registers 1

    .prologue
    .line 85
    sget-object v0, Lcom/pateo/tsp/TSPAPI$PhoneStatus;->$VALUES:[Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    invoke-virtual {v0}, [Lcom/pateo/tsp/TSPAPI$PhoneStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/TSPAPI$PhoneStatus;

    return-object v0
.end method
