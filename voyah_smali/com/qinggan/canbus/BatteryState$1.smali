.class final Lcom/qinggan/canbus/BatteryState$1;
.super Ljava/lang/Object;
.source "BatteryState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BatteryState;
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
        "Lcom/qinggan/canbus/BatteryState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BatteryState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    new-instance v0, Lcom/qinggan/canbus/BatteryState;

    invoke-direct {v0}, Lcom/qinggan/canbus/BatteryState;-><init>()V

    .line 50
    .local v0, "BatteryState":Lcom/qinggan/canbus/BatteryState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BatteryState;->access$002(Lcom/qinggan/canbus/BatteryState;I)I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BatteryState;->access$102(Lcom/qinggan/canbus/BatteryState;I)I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BatteryState;->access$202(Lcom/qinggan/canbus/BatteryState;F)F

    .line 53
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BatteryState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BatteryState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/BatteryState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 45
    new-array v0, p1, [Lcom/qinggan/canbus/BatteryState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BatteryState$1;->newArray(I)[Lcom/qinggan/canbus/BatteryState;

    move-result-object v0

    return-object v0
.end method
