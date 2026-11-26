.class public final Lcom/qinggan/canbus/SeatBelt;
.super Ljava/lang/Object;
.source "SeatBelt.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/SeatBelt;",
            ">;"
        }
    .end annotation
.end field

.field public static final SEATBELT_STATE_PULLED:I = 0x0

.field public static final SEATBELT_STATE_PUSHED:I = 0x1

.field public static final SEATBELT_STATE_UNSUPPORT:I = -0x1


# instance fields
.field public driverSeatBeltState:I

.field public passengerSeatBeltState:I

.field public secondLeftSeatBeltState:I

.field public secondMidSeatBeltState:I

.field public secondRightSeatBeltState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 73
    new-instance v0, Lcom/qinggan/canbus/SeatBelt$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/SeatBelt$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/SeatBelt;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 22
    const/4 v0, 0x0

    return v0
.end method

.method public getDriverSeatBeltState()I
    .registers 2

    .prologue
    .line 26
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->driverSeatBeltState:I

    return v0
.end method

.method public getPassengerSeatBeltState()I
    .registers 2

    .prologue
    .line 34
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->passengerSeatBeltState:I

    return v0
.end method

.method public getSecondLeftSeatBeltState()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->secondLeftSeatBeltState:I

    return v0
.end method

.method public getSecondMidSeatBeltState()I
    .registers 2

    .prologue
    .line 50
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->secondMidSeatBeltState:I

    return v0
.end method

.method public getSecondRightSeatBeltState()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->secondRightSeatBeltState:I

    return v0
.end method

.method public setDriverSeatBeltState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 30
    iput p1, p0, Lcom/qinggan/canbus/SeatBelt;->driverSeatBeltState:I

    .line 31
    return-void
.end method

.method public setPassengerSeatBeltState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/qinggan/canbus/SeatBelt;->passengerSeatBeltState:I

    .line 39
    return-void
.end method

.method public setSecondLeftSeatBeltState(I)V
    .registers 2
    .param p1, "secondLeftSeatBeltState"    # I

    .prologue
    .line 46
    iput p1, p0, Lcom/qinggan/canbus/SeatBelt;->secondLeftSeatBeltState:I

    .line 47
    return-void
.end method

.method public setSecondMidSeatBeltState(I)V
    .registers 2
    .param p1, "secondMidSeatBeltState"    # I

    .prologue
    .line 54
    iput p1, p0, Lcom/qinggan/canbus/SeatBelt;->secondMidSeatBeltState:I

    .line 55
    return-void
.end method

.method public setSecondRightSeatBeltState(I)V
    .registers 2
    .param p1, "secondRightSeatBeltState"    # I

    .prologue
    .line 62
    iput p1, p0, Lcom/qinggan/canbus/SeatBelt;->secondRightSeatBeltState:I

    .line 63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SeatBelt{driverSeatBeltState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SeatBelt;->driverSeatBeltState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", passengerSeatBeltState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SeatBelt;->passengerSeatBeltState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondLeftSeatBeltState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SeatBelt;->secondLeftSeatBeltState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondMidSeatBeltState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SeatBelt;->secondMidSeatBeltState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", secondRightSeatBeltState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SeatBelt;->secondRightSeatBeltState:I

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
    .line 66
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->driverSeatBeltState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 67
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->passengerSeatBeltState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 68
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->secondLeftSeatBeltState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 69
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->secondMidSeatBeltState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 70
    iget v0, p0, Lcom/qinggan/canbus/SeatBelt;->secondRightSeatBeltState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    return-void
.end method
