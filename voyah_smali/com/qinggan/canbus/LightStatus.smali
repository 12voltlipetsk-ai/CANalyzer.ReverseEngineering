.class public final Lcom/qinggan/canbus/LightStatus;
.super Ljava/lang/Object;
.source "LightStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/LightStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID_COMPOSITE_STATUS:I = -0x80000000

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# instance fields
.field private autoLamp:I

.field public cautionLight:I

.field public dayLight:I

.field public dippedBeam:I

.field public directionL:I

.field public directionR:I

.field public ebdLamp:I

.field public fogFront:I

.field public fogRear:I

.field private headLight:I

.field private headLightLevel:I

.field private headLightStatusOperability:I

.field public mainBeam:I

.field public positionLamp:I

.field public reversLight:I

.field public sideLight:I

.field public stopLight:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 196
    new-instance v0, Lcom/qinggan/canbus/LightStatus$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/LightStatus$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/LightStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/LightStatus;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/LightStatus;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->headLight:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/LightStatus;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/LightStatus;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->headLightLevel:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/LightStatus;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/LightStatus;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->headLightStatusOperability:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/LightStatus;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/LightStatus;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->autoLamp:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 173
    const/4 v0, 0x0

    return v0
.end method

.method public getAutoLamp()I
    .registers 2

    .prologue
    .line 165
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->autoLamp:I

    return v0
.end method

.method public getCautionLight()I
    .registers 2

    .prologue
    .line 139
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->cautionLight:I

    return v0
.end method

.method public getDayLight()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->dayLight:I

    return v0
.end method

.method public getDippedBeam()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->dippedBeam:I

    return v0
.end method

.method public getDirectionL()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->directionL:I

    return v0
.end method

.method public getDirectionR()I
    .registers 2

    .prologue
    .line 51
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->directionR:I

    return v0
.end method

.method public getEbdLamp()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->ebdLamp:I

    return v0
.end method

.method public getFogFront()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->fogFront:I

    return v0
.end method

.method public getFogRear()I
    .registers 2

    .prologue
    .line 67
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->fogRear:I

    return v0
.end method

.method public getHeadLight()I
    .registers 2

    .prologue
    .line 147
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->headLight:I

    return v0
.end method

.method public getHeadLightLevel()I
    .registers 2

    .prologue
    .line 32
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->headLightLevel:I

    return v0
.end method

.method public getHeadLightStatusOperability()I
    .registers 2

    .prologue
    .line 157
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->headLightStatusOperability:I

    return v0
.end method

.method public getMainBeam()I
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->mainBeam:I

    return v0
.end method

.method public getPositionLamp()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->positionLamp:I

    return v0
.end method

.method public getReversLight()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->reversLight:I

    return v0
.end method

.method public getSideLight()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->sideLight:I

    return v0
.end method

.method public getStopLight()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->stopLight:I

    return v0
.end method

.method public setAutoLamp(I)V
    .registers 2
    .param p1, "autoLamp"    # I

    .prologue
    .line 169
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->autoLamp:I

    .line 170
    return-void
.end method

.method public setCautionLight(I)V
    .registers 2
    .param p1, "cautionLight"    # I

    .prologue
    .line 143
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->cautionLight:I

    .line 144
    return-void
.end method

.method public setDayLight(I)V
    .registers 2
    .param p1, "dayLight"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->dayLight:I

    .line 120
    return-void
.end method

.method public setDippedBeam(I)V
    .registers 2
    .param p1, "dippedBeam"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->dippedBeam:I

    .line 104
    return-void
.end method

.method public setDirectionL(I)V
    .registers 2
    .param p1, "directionL"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->directionL:I

    .line 48
    return-void
.end method

.method public setDirectionR(I)V
    .registers 2
    .param p1, "directionR"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->directionR:I

    .line 56
    return-void
.end method

.method public setEbdLamp(I)V
    .registers 2
    .param p1, "ebdLamp"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->ebdLamp:I

    .line 96
    return-void
.end method

.method public setFogFront(I)V
    .registers 2
    .param p1, "fogFront"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->fogFront:I

    .line 64
    return-void
.end method

.method public setFogRear(I)V
    .registers 2
    .param p1, "fogRear"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->fogRear:I

    .line 72
    return-void
.end method

.method public setHeadLight(I)V
    .registers 2
    .param p1, "headLight"    # I

    .prologue
    .line 151
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->headLight:I

    .line 152
    return-void
.end method

.method public setHeadLightLevel(I)V
    .registers 2
    .param p1, "headLightLevel"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->headLightLevel:I

    .line 37
    return-void
.end method

.method public setHeadLightStatusOperability(I)V
    .registers 2
    .param p1, "headLightStatusOperability"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->headLightStatusOperability:I

    .line 162
    return-void
.end method

.method public setMainBeam(I)V
    .registers 2
    .param p1, "mainBeam"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->mainBeam:I

    .line 80
    return-void
.end method

.method public setPositionLamp(I)V
    .registers 2
    .param p1, "positionLamp"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->positionLamp:I

    .line 112
    return-void
.end method

.method public setReversLight(I)V
    .registers 2
    .param p1, "reversLight"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->reversLight:I

    .line 136
    return-void
.end method

.method public setSideLight(I)V
    .registers 2
    .param p1, "sideLight"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->sideLight:I

    .line 88
    return-void
.end method

.method public setStopLight(I)V
    .registers 2
    .param p1, "stopLight"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/qinggan/canbus/LightStatus;->stopLight:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LightStatus{directionL="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->directionL:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directionR="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->directionR:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fogFront="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->fogFront:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fogRear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->fogRear:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mainBeam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->mainBeam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sideLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->sideLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ebdLamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->ebdLamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dippedBeam="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->dippedBeam:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", positionLamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->positionLamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->dayLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stopLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->stopLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reversLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->reversLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", cautionLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->cautionLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headLight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->headLight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", headLightStatusOperability="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->headLightStatusOperability:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", autoLamp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/LightStatus;->autoLamp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 177
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->directionL:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->directionR:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 179
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->fogFront:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->fogRear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->mainBeam:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->sideLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->ebdLamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 184
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->dippedBeam:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 185
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->positionLamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 186
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->dayLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 187
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->stopLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 188
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->reversLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 189
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->cautionLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 190
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->headLight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->headLightLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->headLightStatusOperability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    iget v0, p0, Lcom/qinggan/canbus/LightStatus;->autoLamp:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 194
    return-void
.end method
