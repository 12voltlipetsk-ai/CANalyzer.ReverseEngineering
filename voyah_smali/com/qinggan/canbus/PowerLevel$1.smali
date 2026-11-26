.class final Lcom/qinggan/canbus/PowerLevel$1;
.super Ljava/lang/Object;
.source "PowerLevel.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/PowerLevel;
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
        "Lcom/qinggan/canbus/PowerLevel;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 85
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/PowerLevel;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 91
    new-instance v0, Lcom/qinggan/canbus/PowerLevel;

    invoke-direct {v0}, Lcom/qinggan/canbus/PowerLevel;-><init>()V

    .line 92
    .local v0, "dest":Lcom/qinggan/canbus/PowerLevel;
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PowerLevel;->mCapacity:F

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PowerLevel;->mRemain:F

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PowerLevel;->mPercentage:F

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PowerLevel;->mInstantaneousPowerConsumption:F

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PowerLevel;->mAvgPowerConsumption:F

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PowerLevel;->mHistoryAvgPowerConsumption:F

    .line 98
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/PowerLevel$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/PowerLevel;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/PowerLevel;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/qinggan/canbus/PowerLevel;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/PowerLevel$1;->newArray(I)[Lcom/qinggan/canbus/PowerLevel;

    move-result-object v0

    return-object v0
.end method
