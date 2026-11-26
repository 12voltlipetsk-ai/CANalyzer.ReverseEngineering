.class final enum Lcom/qinggan/tsp/InitManager$InitStatus;
.super Ljava/lang/Enum;
.source "InitManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/InitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "InitStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/tsp/InitManager$InitStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/tsp/InitManager$InitStatus;

.field public static final enum initFailed:Lcom/qinggan/tsp/InitManager$InitStatus;

.field public static final enum inited:Lcom/qinggan/tsp/InitManager$InitStatus;

.field public static final enum initing:Lcom/qinggan/tsp/InitManager$InitStatus;

.field public static final enum notInit:Lcom/qinggan/tsp/InitManager$InitStatus;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 61
    new-instance v0, Lcom/qinggan/tsp/InitManager$InitStatus;

    const-string v1, "initFailed"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/tsp/InitManager$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->initFailed:Lcom/qinggan/tsp/InitManager$InitStatus;

    .line 62
    new-instance v0, Lcom/qinggan/tsp/InitManager$InitStatus;

    const-string v1, "notInit"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/tsp/InitManager$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->notInit:Lcom/qinggan/tsp/InitManager$InitStatus;

    .line 63
    new-instance v0, Lcom/qinggan/tsp/InitManager$InitStatus;

    const-string v1, "initing"

    invoke-direct {v0, v1, v4}, Lcom/qinggan/tsp/InitManager$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->initing:Lcom/qinggan/tsp/InitManager$InitStatus;

    .line 64
    new-instance v0, Lcom/qinggan/tsp/InitManager$InitStatus;

    const-string v1, "inited"

    invoke-direct {v0, v1, v5}, Lcom/qinggan/tsp/InitManager$InitStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->inited:Lcom/qinggan/tsp/InitManager$InitStatus;

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qinggan/tsp/InitManager$InitStatus;

    sget-object v1, Lcom/qinggan/tsp/InitManager$InitStatus;->initFailed:Lcom/qinggan/tsp/InitManager$InitStatus;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/tsp/InitManager$InitStatus;->notInit:Lcom/qinggan/tsp/InitManager$InitStatus;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/tsp/InitManager$InitStatus;->initing:Lcom/qinggan/tsp/InitManager$InitStatus;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/tsp/InitManager$InitStatus;->inited:Lcom/qinggan/tsp/InitManager$InitStatus;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->$VALUES:[Lcom/qinggan/tsp/InitManager$InitStatus;

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
    .line 60
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/tsp/InitManager$InitStatus;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 60
    const-class v0, Lcom/qinggan/tsp/InitManager$InitStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/InitManager$InitStatus;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/tsp/InitManager$InitStatus;
    .registers 1

    .prologue
    .line 60
    sget-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->$VALUES:[Lcom/qinggan/tsp/InitManager$InitStatus;

    invoke-virtual {v0}, [Lcom/qinggan/tsp/InitManager$InitStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/tsp/InitManager$InitStatus;

    return-object v0
.end method
