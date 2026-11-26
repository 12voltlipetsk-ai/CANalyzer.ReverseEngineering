.class final Lcom/qinggan/canbus/FuelLevel$1;
.super Ljava/lang/Object;
.source "FuelLevel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/FuelLevel;
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
        "Lcom/qinggan/canbus/FuelLevel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/FuelLevel;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v1, 0x1

    .line 103
    new-instance v0, Lcom/qinggan/canbus/FuelLevel;

    invoke-direct {v0}, Lcom/qinggan/canbus/FuelLevel;-><init>()V

    .line 104
    .local v0, "dest":Lcom/qinggan/canbus/FuelLevel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/qinggan/canbus/FuelLevel;->mCapacity:I

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, v0, Lcom/qinggan/canbus/FuelLevel;->mRemain:I

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v2

    iput v2, v0, Lcom/qinggan/canbus/FuelLevel;->mPercentage:F

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-ne v2, v1, :cond_34

    :goto_1e
    # setter for: Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z
    invoke-static {v0, v1}, Lcom/qinggan/canbus/FuelLevel;->access$002(Lcom/qinggan/canbus/FuelLevel;Z)Z

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/FuelLevel;->mInstantaneousFuelConsumption:F

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/FuelLevel;->mAvgFuelConsumption:F

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/FuelLevel;->mHistoryAvgFuelConsumption:F

    .line 111
    return-object v0

    .line 107
    :cond_34
    const/4 v1, 0x0

    goto :goto_1e
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/FuelLevel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/FuelLevel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/FuelLevel;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 99
    new-array v0, p1, [Lcom/qinggan/canbus/FuelLevel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 97
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/FuelLevel$1;->newArray(I)[Lcom/qinggan/canbus/FuelLevel;

    move-result-object v0

    return-object v0
.end method
