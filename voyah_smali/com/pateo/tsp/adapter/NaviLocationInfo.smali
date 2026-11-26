.class public Lcom/pateo/tsp/adapter/NaviLocationInfo;
.super Ljava/lang/Object;
.source "NaviLocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/adapter/NaviLocationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field accuracy:F

.field altitude:D

.field bear:I

.field latitude:D

.field longitude:D

.field provider:Ljava/lang/String;

.field rawLatitude:D

.field rawLongitude:D

.field speed:I

.field timestamp:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 136
    new-instance v0, Lcom/pateo/tsp/adapter/NaviLocationInfo$1;

    invoke-direct {v0}, Lcom/pateo/tsp/adapter/NaviLocationInfo$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public getAccuracy()F
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->accuracy:F

    return v0
.end method

.method public getAltitude()D
    .registers 3

    .prologue
    .line 86
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->altitude:D

    return-wide v0
.end method

.method public getBear()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->bear:I

    return v0
.end method

.method public getLatitude()D
    .registers 3

    .prologue
    .line 62
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->latitude:D

    return-wide v0
.end method

.method public getLongitude()D
    .registers 3

    .prologue
    .line 54
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->longitude:D

    return-wide v0
.end method

.method public getProvider()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getRawLatitude()D
    .registers 3

    .prologue
    .line 78
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLatitude:D

    return-wide v0
.end method

.method public getRawLongitude()D
    .registers 3

    .prologue
    .line 70
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLongitude:D

    return-wide v0
.end method

.method public getSpeed()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->speed:I

    return v0
.end method

.method public getTimestamp()J
    .registers 3

    .prologue
    .line 30
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->timestamp:J

    return-wide v0
.end method

.method public setAccuracy(F)V
    .registers 2
    .param p1, "accuracy"    # F

    .prologue
    .line 98
    iput p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->accuracy:F

    .line 99
    return-void
.end method

.method public setAltitude(D)V
    .registers 4
    .param p1, "altitude"    # D

    .prologue
    .line 90
    iput-wide p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->altitude:D

    .line 91
    return-void
.end method

.method public setBear(I)V
    .registers 2
    .param p1, "bear"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->bear:I

    .line 43
    return-void
.end method

.method public setLatitude(D)V
    .registers 4
    .param p1, "latitude"    # D

    .prologue
    .line 66
    iput-wide p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->latitude:D

    .line 67
    return-void
.end method

.method public setLongitude(D)V
    .registers 4
    .param p1, "longitude"    # D

    .prologue
    .line 58
    iput-wide p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->longitude:D

    .line 59
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .registers 2
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->provider:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setRawLatitude(D)V
    .registers 4
    .param p1, "rawLatitude"    # D

    .prologue
    .line 82
    iput-wide p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLatitude:D

    .line 83
    return-void
.end method

.method public setRawLongitude(D)V
    .registers 4
    .param p1, "rawLongitude"    # D

    .prologue
    .line 74
    iput-wide p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLongitude:D

    .line 75
    return-void
.end method

.method public setSpeed(I)V
    .registers 2
    .param p1, "speed"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->speed:I

    .line 51
    return-void
.end method

.method public setTimestamp(J)V
    .registers 4
    .param p1, "timestamp"    # J

    .prologue
    .line 34
    iput-wide p1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->timestamp:J

    .line 35
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[timestamp:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->timestamp:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",bear:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->bear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",speed:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->speed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",longitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->longitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",latitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->latitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",altitude:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->altitude:D

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",accuracy:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->accuracy:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 125
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->timestamp:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 126
    iget v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->bear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->speed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 128
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->longitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 129
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->latitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 130
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLongitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 131
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLatitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 132
    iget-wide v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->altitude:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 133
    iget v0, p0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->accuracy:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 134
    return-void
.end method
