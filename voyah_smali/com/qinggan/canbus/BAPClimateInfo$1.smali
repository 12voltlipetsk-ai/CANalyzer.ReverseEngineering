.class final Lcom/qinggan/canbus/BAPClimateInfo$1;
.super Ljava/lang/Object;
.source "BAPClimateInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BAPClimateInfo;
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
        "Lcom/qinggan/canbus/BAPClimateInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BAPClimateInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 89
    new-instance v0, Lcom/qinggan/canbus/BAPClimateInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/BAPClimateInfo;-><init>()V

    .line 90
    .local v0, "bapClimateInfo":Lcom/qinggan/canbus/BAPClimateInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPClimateInfo;->access$002(Lcom/qinggan/canbus/BAPClimateInfo;I)I

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPClimateInfo;->access$102(Lcom/qinggan/canbus/BAPClimateInfo;I)I

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPClimateInfo;->access$202(Lcom/qinggan/canbus/BAPClimateInfo;I)I

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPClimateInfo;->access$302(Lcom/qinggan/canbus/BAPClimateInfo;I)I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPClimateInfo;->access$402(Lcom/qinggan/canbus/BAPClimateInfo;I)I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPClimateInfo;->access$502(Lcom/qinggan/canbus/BAPClimateInfo;I)I

    .line 97
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BAPClimateInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BAPClimateInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/BAPClimateInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 84
    new-array v0, p1, [Lcom/qinggan/canbus/BAPClimateInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 82
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BAPClimateInfo$1;->newArray(I)[Lcom/qinggan/canbus/BAPClimateInfo;

    move-result-object v0

    return-object v0
.end method
