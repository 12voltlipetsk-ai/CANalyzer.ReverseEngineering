.class final Lcom/qinggan/canbus/SeatBelt$1;
.super Ljava/lang/Object;
.source "SeatBelt.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/SeatBelt;
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
        "Lcom/qinggan/canbus/SeatBelt;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/SeatBelt;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 79
    new-instance v0, Lcom/qinggan/canbus/SeatBelt;

    invoke-direct {v0}, Lcom/qinggan/canbus/SeatBelt;-><init>()V

    .line 80
    .local v0, "SeatBelt":Lcom/qinggan/canbus/SeatBelt;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SeatBelt;->driverSeatBeltState:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SeatBelt;->passengerSeatBeltState:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SeatBelt;->secondLeftSeatBeltState:I

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SeatBelt;->secondMidSeatBeltState:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SeatBelt;->secondRightSeatBeltState:I

    .line 85
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/SeatBelt$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/SeatBelt;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/SeatBelt;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 75
    new-array v0, p1, [Lcom/qinggan/canbus/SeatBelt;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 73
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/SeatBelt$1;->newArray(I)[Lcom/qinggan/canbus/SeatBelt;

    move-result-object v0

    return-object v0
.end method
