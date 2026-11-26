.class final Lcom/qinggan/canbus/MediaSrcInfo$1;
.super Ljava/lang/Object;
.source "MediaSrcInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/MediaSrcInfo;
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
        "Lcom/qinggan/canbus/MediaSrcInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/MediaSrcInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 105
    new-instance v0, Lcom/qinggan/canbus/MediaSrcInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaSrcInfo;-><init>()V

    .line 106
    .local v0, "info":Lcom/qinggan/canbus/MediaSrcInfo;
    const-class v1, Lcom/qinggan/canbus/MediaSrcType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/MediaSrcType;

    iput-object v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->srcType:Lcom/qinggan/canbus/MediaSrcType;

    .line 107
    const-class v1, Lcom/qinggan/canbus/MediaType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/MediaType;

    iput-object v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaType:Lcom/qinggan/canbus/MediaType;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->frequency:F

    .line 109
    const-class v1, Lcom/qinggan/canbus/MediaState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/MediaState;

    iput-object v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaState:Lcom/qinggan/canbus/MediaState;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->songName:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->artist:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/MediaSrcInfo;->albumName:Ljava/lang/String;

    .line 113
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/MediaSrcInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/MediaSrcInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/MediaSrcInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 101
    new-array v0, p1, [Lcom/qinggan/canbus/MediaSrcInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/MediaSrcInfo$1;->newArray(I)[Lcom/qinggan/canbus/MediaSrcInfo;

    move-result-object v0

    return-object v0
.end method
