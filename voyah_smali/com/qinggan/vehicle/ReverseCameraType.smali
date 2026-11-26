.class public final enum Lcom/qinggan/vehicle/ReverseCameraType;
.super Ljava/lang/Enum;
.source "ReverseCameraType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/vehicle/ReverseCameraType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/vehicle/ReverseCameraType;

.field public static final enum AVM:Lcom/qinggan/vehicle/ReverseCameraType;

.field public static final enum Normal:Lcom/qinggan/vehicle/ReverseCameraType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/qinggan/vehicle/ReverseCameraType;

    const-string v1, "Normal"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/vehicle/ReverseCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/vehicle/ReverseCameraType;->Normal:Lcom/qinggan/vehicle/ReverseCameraType;

    .line 6
    new-instance v0, Lcom/qinggan/vehicle/ReverseCameraType;

    const-string v1, "AVM"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/vehicle/ReverseCameraType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/vehicle/ReverseCameraType;->AVM:Lcom/qinggan/vehicle/ReverseCameraType;

    .line 4
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qinggan/vehicle/ReverseCameraType;

    sget-object v1, Lcom/qinggan/vehicle/ReverseCameraType;->Normal:Lcom/qinggan/vehicle/ReverseCameraType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/vehicle/ReverseCameraType;->AVM:Lcom/qinggan/vehicle/ReverseCameraType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qinggan/vehicle/ReverseCameraType;->$VALUES:[Lcom/qinggan/vehicle/ReverseCameraType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/vehicle/ReverseCameraType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 4
    const-class v0, Lcom/qinggan/vehicle/ReverseCameraType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/vehicle/ReverseCameraType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/vehicle/ReverseCameraType;
    .registers 1

    .prologue
    .line 4
    sget-object v0, Lcom/qinggan/vehicle/ReverseCameraType;->$VALUES:[Lcom/qinggan/vehicle/ReverseCameraType;

    invoke-virtual {v0}, [Lcom/qinggan/vehicle/ReverseCameraType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/vehicle/ReverseCameraType;

    return-object v0
.end method
