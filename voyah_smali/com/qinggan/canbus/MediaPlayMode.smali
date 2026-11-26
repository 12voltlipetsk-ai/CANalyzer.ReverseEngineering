.class public final enum Lcom/qinggan/canbus/MediaPlayMode;
.super Ljava/lang/Enum;
.source "MediaPlayMode.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/MediaPlayMode;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/MediaPlayMode;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaPlayMode;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Preview:Lcom/qinggan/canbus/MediaPlayMode;

.field public static final enum Random:Lcom/qinggan/canbus/MediaPlayMode;

.field public static final enum Sequence:Lcom/qinggan/canbus/MediaPlayMode;

.field public static final enum Single:Lcom/qinggan/canbus/MediaPlayMode;


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

    .line 9
    new-instance v0, Lcom/qinggan/canbus/MediaPlayMode;

    const-string v1, "Sequence"

    invoke-direct {v0, v1, v2, v2}, Lcom/qinggan/canbus/MediaPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayMode;->Sequence:Lcom/qinggan/canbus/MediaPlayMode;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/MediaPlayMode;

    const-string v1, "Preview"

    invoke-direct {v0, v1, v3, v3}, Lcom/qinggan/canbus/MediaPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayMode;->Preview:Lcom/qinggan/canbus/MediaPlayMode;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/MediaPlayMode;

    const-string v1, "Random"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/canbus/MediaPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayMode;->Random:Lcom/qinggan/canbus/MediaPlayMode;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/MediaPlayMode;

    const-string v1, "Single"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/canbus/MediaPlayMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayMode;->Single:Lcom/qinggan/canbus/MediaPlayMode;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qinggan/canbus/MediaPlayMode;

    sget-object v1, Lcom/qinggan/canbus/MediaPlayMode;->Sequence:Lcom/qinggan/canbus/MediaPlayMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/canbus/MediaPlayMode;->Preview:Lcom/qinggan/canbus/MediaPlayMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/MediaPlayMode;->Random:Lcom/qinggan/canbus/MediaPlayMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/MediaPlayMode;->Single:Lcom/qinggan/canbus/MediaPlayMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/canbus/MediaPlayMode;->$VALUES:[Lcom/qinggan/canbus/MediaPlayMode;

    .line 39
    new-instance v0, Lcom/qinggan/canbus/MediaPlayMode$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaPlayMode$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayMode;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/qinggan/canbus/MediaPlayMode;->value:I

    .line 18
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/MediaPlayMode;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/MediaPlayMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaPlayMode;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/MediaPlayMode;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/MediaPlayMode;->$VALUES:[Lcom/qinggan/canbus/MediaPlayMode;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/MediaPlayMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/MediaPlayMode;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 27
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/qinggan/canbus/MediaPlayMode;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 35
    invoke-virtual {p0}, Lcom/qinggan/canbus/MediaPlayMode;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 36
    iget v0, p0, Lcom/qinggan/canbus/MediaPlayMode;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 37
    return-void
.end method
