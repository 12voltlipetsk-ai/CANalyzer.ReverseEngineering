.class final Lcom/qinggan/canbus/AirConditionState$1;
.super Ljava/lang/Object;
.source "AirConditionState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/AirConditionState;
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
        "Lcom/qinggan/canbus/AirConditionState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 385
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/AirConditionState;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 388
    invoke-static {}, Lcom/qinggan/canbus/AirConditionState;->values()[Lcom/qinggan/canbus/AirConditionState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 389
    .local v0, "state":Lcom/qinggan/canbus/AirConditionState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirConditionState;->state:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirConditionState;->access$002(Lcom/qinggan/canbus/AirConditionState;I)I

    .line 390
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/AirConditionState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/AirConditionState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/AirConditionState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 394
    new-array v0, p1, [Lcom/qinggan/canbus/AirConditionState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 385
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/AirConditionState$1;->newArray(I)[Lcom/qinggan/canbus/AirConditionState;

    move-result-object v0

    return-object v0
.end method
