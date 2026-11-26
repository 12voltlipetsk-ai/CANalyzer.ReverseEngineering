.class final Lcom/qinggan/canbus/MediaPlayInfo$1;
.super Ljava/lang/Object;
.source "MediaPlayInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/MediaPlayInfo;
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
        "Lcom/qinggan/canbus/MediaPlayInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/MediaPlayInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 56
    new-instance v0, Lcom/qinggan/canbus/MediaPlayInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaPlayInfo;-><init>()V

    .line 57
    .local v0, "info":Lcom/qinggan/canbus/MediaPlayInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/MediaPlayInfo;->songName:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/MediaPlayInfo;->artist:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/MediaPlayInfo;->albumName:Ljava/lang/String;

    .line 61
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/MediaPlayInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/MediaPlayInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/MediaPlayInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Lcom/qinggan/canbus/MediaPlayInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/MediaPlayInfo$1;->newArray(I)[Lcom/qinggan/canbus/MediaPlayInfo;

    move-result-object v0

    return-object v0
.end method
