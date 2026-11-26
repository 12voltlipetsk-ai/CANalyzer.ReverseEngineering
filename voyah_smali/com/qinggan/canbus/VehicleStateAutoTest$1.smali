.class final Lcom/qinggan/canbus/VehicleStateAutoTest$1;
.super Ljava/lang/Object;
.source "VehicleStateAutoTest.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/VehicleStateAutoTest;
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
        "Lcom/qinggan/canbus/VehicleStateAutoTest;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/VehicleStateAutoTest;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 254
    invoke-static {}, Lcom/qinggan/canbus/VehicleStateAutoTest;->values()[Lcom/qinggan/canbus/VehicleStateAutoTest;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 255
    .local v0, "state":Lcom/qinggan/canbus/VehicleStateAutoTest;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/VehicleStateAutoTest;->value:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/VehicleStateAutoTest;->access$002(Lcom/qinggan/canbus/VehicleStateAutoTest;I)I

    .line 257
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/VehicleStateAutoTest$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/VehicleStateAutoTest;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/VehicleStateAutoTest;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 262
    new-array v0, p1, [Lcom/qinggan/canbus/VehicleStateAutoTest;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/VehicleStateAutoTest$1;->newArray(I)[Lcom/qinggan/canbus/VehicleStateAutoTest;

    move-result-object v0

    return-object v0
.end method
