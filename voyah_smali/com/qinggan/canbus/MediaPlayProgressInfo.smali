.class public final Lcom/qinggan/canbus/MediaPlayProgressInfo;
.super Ljava/lang/Object;
.source "MediaPlayProgressInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaPlayProgressInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field curTime:J

.field currentTime:J

.field mediaType:I

.field percent:I

.field playTime:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 61
    new-instance v0, Lcom/qinggan/canbus/MediaPlayProgressInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaPlayProgressInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentTime()J
    .registers 3

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->currentTime:J

    return-wide v0
.end method

.method public getMediaType()I
    .registers 2

    .prologue
    .line 19
    iget v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->mediaType:I

    return v0
.end method

.method public getPercent()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->percent:I

    return v0
.end method

.method public getPlayTime()J
    .registers 3

    .prologue
    .line 27
    iget-wide v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->playTime:J

    return-wide v0
.end method

.method public setCurrentTime(J)V
    .registers 4
    .param p1, "currentTime"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->currentTime:J

    .line 40
    return-void
.end method

.method public setMediaType(I)V
    .registers 2
    .param p1, "mediaType"    # I

    .prologue
    .line 23
    iput p1, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->mediaType:I

    .line 24
    return-void
.end method

.method public setPercent(I)V
    .registers 2
    .param p1, "percent"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->percent:I

    .line 48
    return-void
.end method

.method public setPlayTime(J)V
    .registers 4
    .param p1, "playTime"    # J

    .prologue
    .line 31
    iput-wide p1, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->playTime:J

    .line 32
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MediaPlayProgressInfo{mediaType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->mediaType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->currentTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", playTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->playTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", percent=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->percent:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    iget v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->mediaType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-wide v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->currentTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 57
    iget-wide v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->playTime:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 58
    iget v0, p0, Lcom/qinggan/canbus/MediaPlayProgressInfo;->percent:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
