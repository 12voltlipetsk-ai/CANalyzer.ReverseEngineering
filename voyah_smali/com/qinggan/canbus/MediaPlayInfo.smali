.class public final Lcom/qinggan/canbus/MediaPlayInfo;
.super Ljava/lang/Object;
.source "MediaPlayInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaPlayInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumName:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field songName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 50
    new-instance v0, Lcom/qinggan/canbus/MediaPlayInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaPlayInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 41
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/canbus/MediaPlayInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/qinggan/canbus/MediaPlayInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/qinggan/canbus/MediaPlayInfo;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .registers 2
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/qinggan/canbus/MediaPlayInfo;->albumName:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 29
    iput-object p1, p0, Lcom/qinggan/canbus/MediaPlayInfo;->artist:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .registers 2
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    .line 21
    iput-object p1, p0, Lcom/qinggan/canbus/MediaPlayInfo;->songName:Ljava/lang/String;

    .line 22
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayInfo{songName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaPlayInfo;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", artist=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaPlayInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", albumName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaPlayInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/canbus/MediaPlayInfo;->songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 46
    iget-object v0, p0, Lcom/qinggan/canbus/MediaPlayInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 47
    iget-object v0, p0, Lcom/qinggan/canbus/MediaPlayInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 48
    return-void
.end method
