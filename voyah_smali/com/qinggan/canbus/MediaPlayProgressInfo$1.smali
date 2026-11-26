.class final Lcom/qinggan/canbus/MediaPlayProgressInfo$1;
.super Ljava/lang/Object;
.source "MediaPlayProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/MediaPlayProgressInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qinggan/canbus/MediaPlayProgressInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/MediaPlayProgressInfo;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 67
    new-instance v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaPlayProgressInfo;-><init>()V

    .line 68
    .local v0, "info":Lcom/qinggan/canbus/MediaPlayProgressInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->mediaType:I

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->currentTime:J

    .line 70
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->playTime:J

    .line 71
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->percent:I

    .line 73
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/MediaPlayProgressInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/MediaPlayProgressInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/MediaPlayProgressInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 63
    new-array v0, p1, [Lcom/qinggan/canbus/MediaPlayProgressInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/MediaPlayProgressInfo$1;->newArray(I)[Lcom/qinggan/canbus/MediaPlayProgressInfo;

    move-result-object v0

    return-object v0
.end method
