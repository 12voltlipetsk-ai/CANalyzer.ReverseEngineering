.class final Lcom/qinggan/canbus/DoorStatus$1;
.super Ljava/lang/Object;
.source "DoorStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/DoorStatus;
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
        "Lcom/qinggan/canbus/DoorStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/DoorStatus;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 170
    new-instance v0, Lcom/qinggan/canbus/DoorStatus;

    invoke-direct {v0}, Lcom/qinggan/canbus/DoorStatus;-><init>()V

    .line 171
    .local v0, "doorStatusValue":Lcom/qinggan/canbus/DoorStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->bonnetDoor:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->fLDoor:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->fRDoor:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->loadSpace:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->rLDoor:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->rRDoor:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->fLDoorLockStatus:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->fRDoorLockStatus:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->rLDoorLockStatus:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DoorStatus;->rRDoorLockStatus:I

    .line 182
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/DoorStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/DoorStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/DoorStatus;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 164
    new-array v0, p1, [Lcom/qinggan/canbus/DoorStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 161
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/DoorStatus$1;->newArray(I)[Lcom/qinggan/canbus/DoorStatus;

    move-result-object v0

    return-object v0
.end method
