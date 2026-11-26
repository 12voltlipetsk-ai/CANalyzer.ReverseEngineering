.class public final enum Lcom/pateo/tsp/CanbusState$AccState;
.super Ljava/lang/Enum;
.source "CanbusState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/CanbusState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AccState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/CanbusState$AccState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/CanbusState$AccState;

.field public static final enum ACC_OFF:Lcom/pateo/tsp/CanbusState$AccState;

.field public static final enum ACC_ON:Lcom/pateo/tsp/CanbusState$AccState;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/pateo/tsp/CanbusState$AccState;

    const-string v1, "ACC_ON"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/CanbusState$AccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$AccState;->ACC_ON:Lcom/pateo/tsp/CanbusState$AccState;

    .line 6
    new-instance v0, Lcom/pateo/tsp/CanbusState$AccState;

    const-string v1, "ACC_OFF"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/CanbusState$AccState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/CanbusState$AccState;->ACC_OFF:Lcom/pateo/tsp/CanbusState$AccState;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/pateo/tsp/CanbusState$AccState;

    sget-object v1, Lcom/pateo/tsp/CanbusState$AccState;->ACC_ON:Lcom/pateo/tsp/CanbusState$AccState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/CanbusState$AccState;->ACC_OFF:Lcom/pateo/tsp/CanbusState$AccState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/pateo/tsp/CanbusState$AccState;->$VALUES:[Lcom/pateo/tsp/CanbusState$AccState;

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
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/CanbusState$AccState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/pateo/tsp/CanbusState$AccState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/CanbusState$AccState;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/CanbusState$AccState;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/pateo/tsp/CanbusState$AccState;->$VALUES:[Lcom/pateo/tsp/CanbusState$AccState;

    invoke-virtual {v0}, [Lcom/pateo/tsp/CanbusState$AccState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/CanbusState$AccState;

    return-object v0
.end method
