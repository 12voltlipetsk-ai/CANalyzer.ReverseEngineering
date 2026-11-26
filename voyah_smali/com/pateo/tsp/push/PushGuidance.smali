.class public Lcom/pateo/tsp/push/PushGuidance;
.super Lcom/pateo/tsp/push/PushObject;
.source "PushGuidance.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/push/PushGuidance;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field description:Ljava/lang/String;

.field destinationPositionLat:I

.field destinationPositionLon:I

.field shifted:I

.field stage1PositionLat:I

.field stage1PositionLon:I

.field stage2PositionLat:I

.field stage2PositionLon:I

.field stage3PositionLat:I

.field stage3PositionLon:I

.field stage4PositionLat:I

.field stage4PositionLon:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 164
    new-instance v0, Lcom/pateo/tsp/push/PushGuidance$1;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushGuidance$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/push/PushGuidance;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/pateo/tsp/push/PushGuidance;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getDestinationPositionLat()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLat:I

    return v0
.end method

.method public getDestinationPositionLon()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLon:I

    return v0
.end method

.method public getShifted()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->shifted:I

    return v0
.end method

.method public getStage1PositionLat()I
    .registers 2

    .prologue
    .line 70
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLat:I

    return v0
.end method

.method public getStage1PositionLon()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLon:I

    return v0
.end method

.method public getStage2PositionLat()I
    .registers 2

    .prologue
    .line 86
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLat:I

    return v0
.end method

.method public getStage2PositionLon()I
    .registers 2

    .prologue
    .line 78
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLon:I

    return v0
.end method

.method public getStage3PositionLat()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLat:I

    return v0
.end method

.method public getStage3PositionLon()I
    .registers 2

    .prologue
    .line 94
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLon:I

    return v0
.end method

.method public getStage4PositionLat()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLat:I

    return v0
.end method

.method public getStage4PositionLon()I
    .registers 2

    .prologue
    .line 110
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLon:I

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/pateo/tsp/push/PushGuidance;->description:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setDestinationPositionLat(I)V
    .registers 2
    .param p1, "destinationPositionLat"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLat:I

    .line 59
    return-void
.end method

.method public setDestinationPositionLon(I)V
    .registers 2
    .param p1, "destinationPositionLon"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLon:I

    .line 51
    return-void
.end method

.method public setShifted(I)V
    .registers 2
    .param p1, "shifted"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->shifted:I

    .line 131
    return-void
.end method

.method public setStage1PositionLat(I)V
    .registers 2
    .param p1, "stage1PositionLat"    # I

    .prologue
    .line 74
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLat:I

    .line 75
    return-void
.end method

.method public setStage1PositionLon(I)V
    .registers 2
    .param p1, "stage1PositionLon"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLon:I

    .line 67
    return-void
.end method

.method public setStage2PositionLat(I)V
    .registers 2
    .param p1, "stage2PositionLat"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLat:I

    .line 91
    return-void
.end method

.method public setStage2PositionLon(I)V
    .registers 2
    .param p1, "stage2PositionLon"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLon:I

    .line 83
    return-void
.end method

.method public setStage3PositionLat(I)V
    .registers 2
    .param p1, "stage3PositionLat"    # I

    .prologue
    .line 106
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLat:I

    .line 107
    return-void
.end method

.method public setStage3PositionLon(I)V
    .registers 2
    .param p1, "stage3PositionLon"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLon:I

    .line 99
    return-void
.end method

.method public setStage4PositionLat(I)V
    .registers 2
    .param p1, "stage4PositionLat"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLat:I

    .line 123
    return-void
.end method

.method public setStage4PositionLon(I)V
    .registers 2
    .param p1, "stage4PositionLon"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLon:I

    .line 115
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushGuidance;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",destinationPositionLon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",destinationPositionLat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stage1PositionLon:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",stage1PositionLat:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLat:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 149
    invoke-super {p0, p1, p2}, Lcom/pateo/tsp/push/PushObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 150
    iget-object v0, p0, Lcom/pateo/tsp/push/PushGuidance;->description:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 151
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLon:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLat:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/pateo/tsp/push/PushGuidance;->shifted:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    return-void
.end method
