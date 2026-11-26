.class public final enum Lcom/qinggan/canbus/MediaType;
.super Ljava/lang/Enum;
.source "MediaType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/MediaType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/MediaType;

.field public static final enum Aux:Lcom/qinggan/canbus/MediaType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DVD:Lcom/qinggan/canbus/MediaType;

.field public static final enum EnhancedAudio:Lcom/qinggan/canbus/MediaType;

.field public static final enum IPod:Lcom/qinggan/canbus/MediaType;

.field public static final enum LocalVideo:Lcom/qinggan/canbus/MediaType;

.field public static final enum OtherVideo:Lcom/qinggan/canbus/MediaType;

.field public static final enum Phone:Lcom/qinggan/canbus/MediaType;

.field public static final enum SimpleAudio:Lcom/qinggan/canbus/MediaType;

.field public static final enum Tuner:Lcom/qinggan/canbus/MediaType;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 9
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "Tuner"

    invoke-direct {v0, v1, v5, v4}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->Tuner:Lcom/qinggan/canbus/MediaType;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "SimpleAudio"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->SimpleAudio:Lcom/qinggan/canbus/MediaType;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "EnhancedAudio"

    const/16 v2, 0x11

    invoke-direct {v0, v1, v6, v2}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->EnhancedAudio:Lcom/qinggan/canbus/MediaType;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "IPod"

    const/16 v2, 0x12

    invoke-direct {v0, v1, v7, v2}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->IPod:Lcom/qinggan/canbus/MediaType;

    .line 13
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "LocalVideo"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v8, v2}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->LocalVideo:Lcom/qinggan/canbus/MediaType;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "DVD"

    const/4 v2, 0x5

    const/16 v3, 0x21

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->DVD:Lcom/qinggan/canbus/MediaType;

    .line 15
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "OtherVideo"

    const/4 v2, 0x6

    const/16 v3, 0x22

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->OtherVideo:Lcom/qinggan/canbus/MediaType;

    .line 16
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "Aux"

    const/4 v2, 0x7

    const/16 v3, 0x30

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->Aux:Lcom/qinggan/canbus/MediaType;

    .line 17
    new-instance v0, Lcom/qinggan/canbus/MediaType;

    const-string v1, "Phone"

    const/16 v2, 0x8

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->Phone:Lcom/qinggan/canbus/MediaType;

    .line 7
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/qinggan/canbus/MediaType;

    sget-object v1, Lcom/qinggan/canbus/MediaType;->Tuner:Lcom/qinggan/canbus/MediaType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/MediaType;->SimpleAudio:Lcom/qinggan/canbus/MediaType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/MediaType;->EnhancedAudio:Lcom/qinggan/canbus/MediaType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/MediaType;->IPod:Lcom/qinggan/canbus/MediaType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/MediaType;->LocalVideo:Lcom/qinggan/canbus/MediaType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/MediaType;->DVD:Lcom/qinggan/canbus/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qinggan/canbus/MediaType;->OtherVideo:Lcom/qinggan/canbus/MediaType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qinggan/canbus/MediaType;->Aux:Lcom/qinggan/canbus/MediaType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qinggan/canbus/MediaType;->Phone:Lcom/qinggan/canbus/MediaType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/MediaType;->$VALUES:[Lcom/qinggan/canbus/MediaType;

    .line 45
    new-instance v0, Lcom/qinggan/canbus/MediaType$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaType$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 22
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 23
    iput p3, p0, Lcom/qinggan/canbus/MediaType;->value:I

    .line 24
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/MediaType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/MediaType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/MediaType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/MediaType;->$VALUES:[Lcom/qinggan/canbus/MediaType;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/MediaType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/MediaType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/qinggan/canbus/MediaType;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/qinggan/canbus/MediaType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/qinggan/canbus/MediaType;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
