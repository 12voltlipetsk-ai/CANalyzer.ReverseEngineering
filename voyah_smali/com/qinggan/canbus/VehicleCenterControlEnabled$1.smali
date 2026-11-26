.class final Lcom/qinggan/canbus/VehicleCenterControlEnabled$1;
.super Ljava/lang/Object;
.source "VehicleCenterControlEnabled.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/VehicleCenterControlEnabled;
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
        "Lcom/qinggan/canbus/VehicleCenterControlEnabled;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 140
    invoke-static {}, Lcom/qinggan/canbus/VehicleCenterControlEnabled;->values()[Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 141
    .local v0, "state":Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/VehicleCenterControlEnabled;->value:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/VehicleCenterControlEnabled;->access$002(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)I

    .line 143
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/VehicleCenterControlEnabled$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 148
    new-array v0, p1, [Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 137
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/VehicleCenterControlEnabled$1;->newArray(I)[Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    move-result-object v0

    return-object v0
.end method
