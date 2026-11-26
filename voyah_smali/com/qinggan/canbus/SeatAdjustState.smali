.class public final Lcom/qinggan/canbus/SeatAdjustState;
.super Ljava/lang/Object;
.source "SeatAdjustState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/SeatAdjustState;",
            ">;"
        }
    .end annotation
.end field

.field public static MIRROR_AROUND_X_AXIS_DOWN:I

.field public static MIRROR_AROUND_X_AXIS_UP:I

.field public static MIRROR_AROUND_Y_AXIS_LEFT:I

.field public static MIRROR_AROUND_Y_AXIS_RIGHT:I

.field public static MIRROR_NO_PRESS:I

.field public static MIRROR_NULL_OPERATING:I

.field public static MIRROR_PRESS:I

.field public static STATE_DOWN:I

.field public static STATE_FRONT:I

.field public static STATE_NO_PRESS:I

.field public static STATE_REAR:I

.field public static STATE_UP:I


# instance fields
.field private driverSeatAngle:I

.field private driverSeatBack:I

.field private driverSeatHeight:I

.field private driverSeatSlide:I

.field private leftMirrorSwitch:I

.field private mirrorAdjust:I

.field private rightMirrorSwitch:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 61
    sput v1, Lcom/qinggan/canbus/SeatAdjustState;->STATE_NO_PRESS:I

    .line 62
    sput v0, Lcom/qinggan/canbus/SeatAdjustState;->STATE_UP:I

    .line 63
    sput v2, Lcom/qinggan/canbus/SeatAdjustState;->STATE_DOWN:I

    .line 64
    sput v0, Lcom/qinggan/canbus/SeatAdjustState;->STATE_FRONT:I

    .line 65
    sput v2, Lcom/qinggan/canbus/SeatAdjustState;->STATE_REAR:I

    .line 66
    sput v1, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_NO_PRESS:I

    .line 67
    sput v0, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_PRESS:I

    .line 69
    sput v1, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_NULL_OPERATING:I

    .line 70
    sput v0, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_AROUND_X_AXIS_UP:I

    .line 71
    sput v2, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_AROUND_X_AXIS_DOWN:I

    .line 72
    const/4 v0, 0x3

    sput v0, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_AROUND_Y_AXIS_LEFT:I

    .line 73
    const/4 v0, 0x4

    sput v0, Lcom/qinggan/canbus/SeatAdjustState;->MIRROR_AROUND_Y_AXIS_RIGHT:I

    .line 148
    new-instance v0, Lcom/qinggan/canbus/SeatAdjustState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/SeatAdjustState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/SeatAdjustState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I

    .line 21
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I

    .line 28
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I

    .line 35
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I

    .line 42
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I

    .line 49
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I

    .line 59
    iput v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I

    .line 76
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I

    return p1
.end method

.method static synthetic access$502(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I

    return p1
.end method

.method static synthetic access$602(Lcom/qinggan/canbus/SeatAdjustState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/SeatAdjustState;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 79
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatAngle()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I

    return v0
.end method

.method public getDriverSeatBack()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I

    return v0
.end method

.method public getDriverSeatHeight()I
    .registers 2

    .prologue
    .line 99
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I

    return v0
.end method

.method public getDriverSeatSlide()I
    .registers 2

    .prologue
    .line 91
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I

    return v0
.end method

.method public getLeftMirrorSwitch()I
    .registers 2

    .prologue
    .line 115
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I

    return v0
.end method

.method public getMirrorAdjust()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I

    return v0
.end method

.method public getRightMirrorSwitch()I
    .registers 2

    .prologue
    .line 123
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I

    return v0
.end method

.method public setDriverSeatAngle(I)V
    .registers 2
    .param p1, "driverSeatAngle"    # I

    .prologue
    .line 111
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I

    .line 112
    return-void
.end method

.method public setDriverSeatBack(I)V
    .registers 2
    .param p1, "driverSeatBack"    # I

    .prologue
    .line 87
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I

    .line 88
    return-void
.end method

.method public setDriverSeatHeight(I)V
    .registers 2
    .param p1, "driverSeatHeight"    # I

    .prologue
    .line 103
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I

    .line 104
    return-void
.end method

.method public setDriverSeatSlide(I)V
    .registers 2
    .param p1, "driverSeatSlide"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I

    .line 96
    return-void
.end method

.method public setLeftMirrorSwitch(I)V
    .registers 2
    .param p1, "leftMirrorSwitch"    # I

    .prologue
    .line 119
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I

    .line 120
    return-void
.end method

.method public setMirrorAdjust(I)V
    .registers 2
    .param p1, "mirrorAdjust"    # I

    .prologue
    .line 135
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I

    .line 136
    return-void
.end method

.method public setRightMirrorSwitch(I)V
    .registers 2
    .param p1, "rightMirrorSwitch"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I

    .line 128
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 168
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SeatAdjustState{"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 169
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "driverSeatBack="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 170
    const-string v1, ", driverSeatSlide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 171
    const-string v1, ", driverSeatHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 172
    const-string v1, ", driverSeatAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 173
    const-string v1, ", leftMirrorSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 174
    const-string v1, ", rightMirrorSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 175
    const-string v1, ", mirrorAdjust="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 176
    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 177
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 139
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 140
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 141
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 142
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 143
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 144
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v0, p0, Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    return-void
.end method
