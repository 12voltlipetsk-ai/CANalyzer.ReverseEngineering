.class public final Lcom/qinggan/canbus/MediaSrcInfo;
.super Ljava/lang/Object;
.source "MediaSrcInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaSrcInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field albumName:Ljava/lang/String;

.field artist:Ljava/lang/String;

.field frequency:F

.field mediaState:Lcom/qinggan/canbus/MediaState;

.field mediaType:Lcom/qinggan/canbus/MediaType;

.field songName:Ljava/lang/String;

.field srcType:Lcom/qinggan/canbus/MediaSrcType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 99
    new-instance v0, Lcom/qinggan/canbus/MediaSrcInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaSrcInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public constructor <init>(Lcom/qinggan/canbus/MediaSrcType;)V
    .registers 2
    .param p1, "type"    # Lcom/qinggan/canbus/MediaSrcType;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->srcType:Lcom/qinggan/canbus/MediaSrcType;

    .line 56
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 86
    const/4 v0, 0x0

    return v0
.end method

.method public getAlbumName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->albumName:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()F
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->frequency:F

    return v0
.end method

.method public getMediaState()Lcom/qinggan/canbus/MediaState;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaState:Lcom/qinggan/canbus/MediaState;

    return-object v0
.end method

.method public getMediaType()Lcom/qinggan/canbus/MediaType;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaType:Lcom/qinggan/canbus/MediaType;

    return-object v0
.end method

.method public getSongName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->songName:Ljava/lang/String;

    return-object v0
.end method

.method public getSrcType()Lcom/qinggan/canbus/MediaSrcType;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->srcType:Lcom/qinggan/canbus/MediaSrcType;

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)V
    .registers 2
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->albumName:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 35
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->artist:Ljava/lang/String;

    .line 36
    return-void
.end method

.method public setFrequency(F)V
    .registers 2
    .param p1, "frequency"    # F

    .prologue
    .line 82
    iput p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->frequency:F

    .line 83
    return-void
.end method

.method public setMediaState(Lcom/qinggan/canbus/MediaState;)V
    .registers 2
    .param p1, "mediaState"    # Lcom/qinggan/canbus/MediaState;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaState:Lcom/qinggan/canbus/MediaState;

    .line 52
    return-void
.end method

.method public setMediaType(Lcom/qinggan/canbus/MediaType;)V
    .registers 2
    .param p1, "mediaType"    # Lcom/qinggan/canbus/MediaType;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaType:Lcom/qinggan/canbus/MediaType;

    .line 75
    return-void
.end method

.method public setSongName(Ljava/lang/String;)V
    .registers 2
    .param p1, "songName"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->songName:Ljava/lang/String;

    .line 28
    return-void
.end method

.method public setSrcType(Lcom/qinggan/canbus/MediaSrcType;)V
    .registers 2
    .param p1, "srcType"    # Lcom/qinggan/canbus/MediaSrcType;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->srcType:Lcom/qinggan/canbus/MediaSrcType;

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaSrcInfo{srcType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->srcType:Lcom/qinggan/canbus/MediaSrcType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaType:Lcom/qinggan/canbus/MediaType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->frequency:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mediaState"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaState:Lcom/qinggan/canbus/MediaState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",songName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->songName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",artist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->artist:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",albumName"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/MediaSrcInfo;->albumName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 90
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->srcType:Lcom/qinggan/canbus/MediaSrcType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 91
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaType:Lcom/qinggan/canbus/MediaType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 92
    iget v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->frequency:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 93
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->mediaState:Lcom/qinggan/canbus/MediaState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 94
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->songName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->artist:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 96
    iget-object v0, p0, Lcom/qinggan/canbus/MediaSrcInfo;->albumName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    return-void
.end method
