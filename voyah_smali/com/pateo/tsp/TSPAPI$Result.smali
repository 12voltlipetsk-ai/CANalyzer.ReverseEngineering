.class public final enum Lcom/pateo/tsp/TSPAPI$Result;
.super Ljava/lang/Enum;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/TSPAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Result"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/TSPAPI$Result;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/TSPAPI$Result;

.field public static final enum RET_ERROR_GENERIC_FAILURE:Lcom/pateo/tsp/TSPAPI$Result;

.field public static final enum RET_ERROR_UNINITIALIZED:Lcom/pateo/tsp/TSPAPI$Result;

.field public static final enum RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

.field public static final enum RET_SUCCESS:Lcom/pateo/tsp/TSPAPI$Result;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 119
    new-instance v0, Lcom/pateo/tsp/TSPAPI$Result;

    const-string v1, "RET_SUCCESS"

    invoke-direct {v0, v1, v4, v3}, Lcom/pateo/tsp/TSPAPI$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_SUCCESS:Lcom/pateo/tsp/TSPAPI$Result;

    .line 120
    new-instance v0, Lcom/pateo/tsp/TSPAPI$Result;

    const-string v1, "RET_ERROR_GENERIC_FAILURE"

    const/16 v2, -0x64

    invoke-direct {v0, v1, v3, v2}, Lcom/pateo/tsp/TSPAPI$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_GENERIC_FAILURE:Lcom/pateo/tsp/TSPAPI$Result;

    .line 121
    new-instance v0, Lcom/pateo/tsp/TSPAPI$Result;

    const-string v1, "RET_ERROR_UNKNOEN"

    const/16 v2, -0x63

    invoke-direct {v0, v1, v5, v2}, Lcom/pateo/tsp/TSPAPI$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    .line 122
    new-instance v0, Lcom/pateo/tsp/TSPAPI$Result;

    const-string v1, "RET_ERROR_UNINITIALIZED"

    const/4 v2, -0x1

    invoke-direct {v0, v1, v6, v2}, Lcom/pateo/tsp/TSPAPI$Result;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNINITIALIZED:Lcom/pateo/tsp/TSPAPI$Result;

    .line 118
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/pateo/tsp/TSPAPI$Result;

    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_SUCCESS:Lcom/pateo/tsp/TSPAPI$Result;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_GENERIC_FAILURE:Lcom/pateo/tsp/TSPAPI$Result;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNINITIALIZED:Lcom/pateo/tsp/TSPAPI$Result;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pateo/tsp/TSPAPI$Result;->$VALUES:[Lcom/pateo/tsp/TSPAPI$Result;

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
    .line 126
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 127
    iput p3, p0, Lcom/pateo/tsp/TSPAPI$Result;->value:I

    .line 128
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/TSPAPI$Result;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 118
    const-class v0, Lcom/pateo/tsp/TSPAPI$Result;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/TSPAPI$Result;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/TSPAPI$Result;
    .registers 1

    .prologue
    .line 118
    sget-object v0, Lcom/pateo/tsp/TSPAPI$Result;->$VALUES:[Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v0}, [Lcom/pateo/tsp/TSPAPI$Result;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/TSPAPI$Result;

    return-object v0
.end method


# virtual methods
.method public value()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/pateo/tsp/TSPAPI$Result;->value:I

    return v0
.end method
