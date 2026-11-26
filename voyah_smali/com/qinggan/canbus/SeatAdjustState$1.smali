.class final Lcom/qinggan/canbus/SeatAdjustState$1;
.super Ljava/lang/Object;
.source "SeatAdjustState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/SeatAdjustState;
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
        "Lcom/qinggan/canbus/SeatAdjustState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/SeatAdjustState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 154
    new-instance v0, Lcom/qinggan/canbus/SeatAdjustState;

    invoke-direct {v0}, Lcom/qinggan/canbus/SeatAdjustState;-><init>()V

    .line 155
    .local v0, "seatAdjustState":Lcom/qinggan/canbus/SeatAdjustState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->driverSeatBack:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$002(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->driverSeatSlide:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$102(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->driverSeatHeight:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$202(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->driverSeatAngle:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$302(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 159
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->leftMirrorSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$402(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->rightMirrorSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$502(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 161
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/SeatAdjustState;->mirrorAdjust:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/SeatAdjustState;->access$602(Lcom/qinggan/canbus/SeatAdjustState;I)I

    .line 162
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/SeatAdjustState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/SeatAdjustState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/SeatAdjustState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 150
    new-array v0, p1, [Lcom/qinggan/canbus/SeatAdjustState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 148
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/SeatAdjustState$1;->newArray(I)[Lcom/qinggan/canbus/SeatAdjustState;

    move-result-object v0

    return-object v0
.end method
