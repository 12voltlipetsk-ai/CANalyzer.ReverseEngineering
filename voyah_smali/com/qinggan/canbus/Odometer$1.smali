.class final Lcom/qinggan/canbus/Odometer$1;
.super Ljava/lang/Object;
.source "Odometer.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/Odometer;
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
        "Lcom/qinggan/canbus/Odometer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 170
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/Odometer;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 176
    new-instance v0, Lcom/qinggan/canbus/Odometer;

    invoke-direct {v0}, Lcom/qinggan/canbus/Odometer;-><init>()V

    .line 177
    .local v0, "dest":Lcom/qinggan/canbus/Odometer;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mBeenTravelingMileage:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mEnduranceMileage:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mPowerConsumption:F

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mChargeReaminTime:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/Odometer;->access$002(Lcom/qinggan/canbus/Odometer;F)F

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRang_real:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage_real:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange_wltc:I

    .line 187
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/Odometer$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/Odometer;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/Odometer;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 172
    new-array v0, p1, [Lcom/qinggan/canbus/Odometer;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/Odometer$1;->newArray(I)[Lcom/qinggan/canbus/Odometer;

    move-result-object v0

    return-object v0
.end method
