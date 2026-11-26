.class public final enum Lcom/qinggan/canbus/MediaState;
.super Ljava/lang/Enum;
.source "MediaState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/MediaState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/MediaState;

.field public static final enum CLEAN:Lcom/qinggan/canbus/MediaState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PAUSE:Lcom/qinggan/canbus/MediaState;

.field public static final enum PLAY:Lcom/qinggan/canbus/MediaState;

.field public static final enum STOP:Lcom/qinggan/canbus/MediaState;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/qinggan/canbus/MediaState;

    const-string v1, "CLEAN"

    invoke-direct {v0, v1, v2, v2}, Lcom/qinggan/canbus/MediaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaState;->CLEAN:Lcom/qinggan/canbus/MediaState;

    .line 8
    new-instance v0, Lcom/qinggan/canbus/MediaState;

    const-string v1, "PLAY"

    invoke-direct {v0, v1, v3, v3}, Lcom/qinggan/canbus/MediaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaState;->PLAY:Lcom/qinggan/canbus/MediaState;

    .line 9
    new-instance v0, Lcom/qinggan/canbus/MediaState;

    const-string v1, "PAUSE"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/canbus/MediaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaState;->PAUSE:Lcom/qinggan/canbus/MediaState;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/MediaState;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/canbus/MediaState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaState;->STOP:Lcom/qinggan/canbus/MediaState;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qinggan/canbus/MediaState;

    sget-object v1, Lcom/qinggan/canbus/MediaState;->CLEAN:Lcom/qinggan/canbus/MediaState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/canbus/MediaState;->PLAY:Lcom/qinggan/canbus/MediaState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/MediaState;->PAUSE:Lcom/qinggan/canbus/MediaState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/MediaState;->STOP:Lcom/qinggan/canbus/MediaState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/canbus/MediaState;->$VALUES:[Lcom/qinggan/canbus/MediaState;

    .line 34
    new-instance v0, Lcom/qinggan/canbus/MediaState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput p3, p0, Lcom/qinggan/canbus/MediaState;->value:I

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/MediaState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/canbus/MediaState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaState;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/MediaState;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/qinggan/canbus/MediaState;->$VALUES:[Lcom/qinggan/canbus/MediaState;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/MediaState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/MediaState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/qinggan/canbus/MediaState;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-virtual {p0}, Lcom/qinggan/canbus/MediaState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 31
    iget v0, p0, Lcom/qinggan/canbus/MediaState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 32
    return-void
.end method
