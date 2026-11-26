.class public Lcom/pateo/tsp/push/PushPoi;
.super Lcom/pateo/tsp/push/PushObject;
.source "PushPoi.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/push/PushPoi;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field address:Ljava/lang/String;

.field distance:I

.field lat:I

.field lon:I

.field name:Ljava/lang/String;

.field poitype:Ljava/lang/String;

.field shifted:I

.field telnum:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 138
    new-instance v0, Lcom/pateo/tsp/push/PushPoi$1;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushPoi$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/push/PushPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 121
    const/4 v0, 0x0

    return v0
.end method

.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getDistance()I
    .registers 2

    .prologue
    .line 98
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->distance:I

    return v0
.end method

.method public getLat()I
    .registers 2

    .prologue
    .line 66
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->lat:I

    return v0
.end method

.method public getLon()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->lon:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPoiType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->poitype:Ljava/lang/String;

    return-object v0
.end method

.method public getShifted()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->shifted:I

    return v0
.end method

.method public getTelnum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->telnum:Ljava/lang/String;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/pateo/tsp/push/PushPoi;->address:Ljava/lang/String;

    .line 95
    return-void
.end method

.method public setDistance(I)V
    .registers 2
    .param p1, "distance"    # I

    .prologue
    .line 102
    iput p1, p0, Lcom/pateo/tsp/push/PushPoi;->distance:I

    .line 103
    return-void
.end method

.method public setLat(I)V
    .registers 2
    .param p1, "lat"    # I

    .prologue
    .line 70
    iput p1, p0, Lcom/pateo/tsp/push/PushPoi;->lat:I

    .line 71
    return-void
.end method

.method public setLon(I)V
    .registers 2
    .param p1, "lon"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/pateo/tsp/push/PushPoi;->lon:I

    .line 63
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/pateo/tsp/push/PushPoi;->name:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public setPoiType(Ljava/lang/String;)V
    .registers 2
    .param p1, "poitype"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Lcom/pateo/tsp/push/PushPoi;->poitype:Ljava/lang/String;

    .line 111
    return-void
.end method

.method public setShifted(I)V
    .registers 2
    .param p1, "shifted"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/pateo/tsp/push/PushPoi;->shifted:I

    .line 79
    return-void
.end method

.method public setTelnum(Ljava/lang/String;)V
    .registers 2
    .param p1, "telnum"    # Ljava/lang/String;

    .prologue
    .line 86
    iput-object p1, p0, Lcom/pateo/tsp/push/PushPoi;->telnum:Ljava/lang/String;

    .line 87
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushPoi;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushPoi;->lon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",lat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushPoi;->lat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",shifted:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushPoi;->shifted:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "telnum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushPoi;->telnum:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushPoi;->address:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "distance:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushPoi;->distance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "poitype:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushPoi;->poitype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 126
    invoke-super {p0, p1, p2}, Lcom/pateo/tsp/push/PushObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 127
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 128
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->lon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 129
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->lat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->shifted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->telnum:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 132
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->address:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 133
    iget v0, p0, Lcom/pateo/tsp/push/PushPoi;->distance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v0, p0, Lcom/pateo/tsp/push/PushPoi;->poitype:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 136
    return-void
.end method
