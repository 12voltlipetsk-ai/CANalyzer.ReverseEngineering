.class public final enum Lcom/pateo/tsp/TSPAPI$SMSStatus;
.super Ljava/lang/Enum;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/TSPAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SMSStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/TSPAPI$SMSStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/TSPAPI$SMSStatus;

.field public static final enum SMS_STATE_ERROR_GENERIC_FAILURE:Lcom/pateo/tsp/TSPAPI$SMSStatus;

.field public static final enum SMS_STATE_ERROR_NULL_PDU:Lcom/pateo/tsp/TSPAPI$SMSStatus;

.field public static final enum SMS_STATE_ERROR_RADIO_OFF:Lcom/pateo/tsp/TSPAPI$SMSStatus;

.field public static final enum SMS_STATE_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$SMSStatus;

.field public static final enum SMS_STATE_SUCCESS:Lcom/pateo/tsp/TSPAPI$SMSStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 75
    new-instance v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    const-string v1, "SMS_STATE_SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI$SMSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_SUCCESS:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    .line 76
    new-instance v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    const-string v1, "SMS_STATE_ERROR_GENERIC_FAILURE"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/TSPAPI$SMSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_GENERIC_FAILURE:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    .line 77
    new-instance v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    const-string v1, "SMS_STATE_ERROR_RADIO_OFF"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/TSPAPI$SMSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_RADIO_OFF:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    .line 78
    new-instance v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    const-string v1, "SMS_STATE_ERROR_NULL_PDU"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/TSPAPI$SMSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_NULL_PDU:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    .line 79
    new-instance v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    const-string v1, "SMS_STATE_ERROR_UNKNOEN"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/TSPAPI$SMSStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    .line 74
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pateo/tsp/TSPAPI$SMSStatus;

    sget-object v1, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_SUCCESS:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_GENERIC_FAILURE:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_RADIO_OFF:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_NULL_PDU:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/TSPAPI$SMSStatus;->SMS_STATE_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$SMSStatus;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->$VALUES:[Lcom/pateo/tsp/TSPAPI$SMSStatus;

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
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/TSPAPI$SMSStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/TSPAPI$SMSStatus;
    .registers 1

    .prologue
    .line 74
    sget-object v0, Lcom/pateo/tsp/TSPAPI$SMSStatus;->$VALUES:[Lcom/pateo/tsp/TSPAPI$SMSStatus;

    invoke-virtual {v0}, [Lcom/pateo/tsp/TSPAPI$SMSStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/TSPAPI$SMSStatus;

    return-object v0
.end method
