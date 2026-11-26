.class public final enum Lcom/qinggan/canbus/RealityWarningItemPlayState;
.super Ljava/lang/Enum;
.source "RealityWarningItemPlayState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/RealityWarningItemPlayState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/RealityWarningItemPlayState;

.field public static final enum ALWAY_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/RealityWarningItemPlayState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum NO_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

.field public static final enum ONLY_ON_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

.field public static final enum SIXTY_SECONDS_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

.field public static final enum THIRTY_SECONDS_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 12
    new-instance v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    const-string v1, "ALWAY_PLAY"

    invoke-direct {v0, v1, v7, v3}, Lcom/qinggan/canbus/RealityWarningItemPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->ALWAY_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    .line 16
    new-instance v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    const-string v1, "THIRTY_SECONDS_PLAY"

    invoke-direct {v0, v1, v3, v4}, Lcom/qinggan/canbus/RealityWarningItemPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->THIRTY_SECONDS_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    .line 20
    new-instance v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    const-string v1, "SIXTY_SECONDS_PLAY"

    invoke-direct {v0, v1, v4, v5}, Lcom/qinggan/canbus/RealityWarningItemPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->SIXTY_SECONDS_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    .line 24
    new-instance v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    const-string v1, "ONLY_ON_PLAY"

    invoke-direct {v0, v1, v5, v6}, Lcom/qinggan/canbus/RealityWarningItemPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->ONLY_ON_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    .line 29
    new-instance v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    const-string v1, "NO_PLAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v6, v2}, Lcom/qinggan/canbus/RealityWarningItemPlayState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->NO_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/qinggan/canbus/RealityWarningItemPlayState;

    sget-object v1, Lcom/qinggan/canbus/RealityWarningItemPlayState;->ALWAY_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/RealityWarningItemPlayState;->THIRTY_SECONDS_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/RealityWarningItemPlayState;->SIXTY_SECONDS_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/RealityWarningItemPlayState;->ONLY_ON_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/RealityWarningItemPlayState;->NO_PLAY:Lcom/qinggan/canbus/RealityWarningItemPlayState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->$VALUES:[Lcom/qinggan/canbus/RealityWarningItemPlayState;

    .line 53
    new-instance v0, Lcom/qinggan/canbus/RealityWarningItemPlayState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/RealityWarningItemPlayState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput p3, p0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->value:I

    .line 36
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/RealityWarningItemPlayState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/RealityWarningItemPlayState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->value:I

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/RealityWarningItemPlayState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/RealityWarningItemPlayState;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->$VALUES:[Lcom/qinggan/canbus/RealityWarningItemPlayState;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/RealityWarningItemPlayState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/RealityWarningItemPlayState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 49
    invoke-virtual {p0}, Lcom/qinggan/canbus/RealityWarningItemPlayState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lcom/qinggan/canbus/RealityWarningItemPlayState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    return-void
.end method
