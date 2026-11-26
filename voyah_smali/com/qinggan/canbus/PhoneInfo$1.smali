.class final Lcom/qinggan/canbus/PhoneInfo$1;
.super Ljava/lang/Object;
.source "PhoneInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/PhoneInfo;
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
        "Lcom/qinggan/canbus/PhoneInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/PhoneInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 102
    new-instance v0, Lcom/qinggan/canbus/PhoneInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/PhoneInfo;-><init>()V

    .line 103
    .local v0, "info":Lcom/qinggan/canbus/PhoneInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/PhoneInfo;->phoneNum:Ljava/lang/String;

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/PhoneInfo;->name:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PhoneInfo;->duration:I

    .line 106
    const-class v1, Lcom/qinggan/canbus/PhoneState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/PhoneState;

    iput-object v1, v0, Lcom/qinggan/canbus/PhoneInfo;->phoneState:Lcom/qinggan/canbus/PhoneState;

    .line 107
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/PhoneInfo;->deviceName:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PhoneInfo;->connectedStatus:I

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/PhoneInfo;->isVehicleCall:I

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/PhoneInfo;->phoneBatteryLevel:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/PhoneInfo;->access$002(Lcom/qinggan/canbus/PhoneInfo;I)I

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/PhoneInfo;->phoneSignalStregth:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/PhoneInfo;->access$102(Lcom/qinggan/canbus/PhoneInfo;I)I

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/PhoneInfo;->phoneMissCallNumber:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/PhoneInfo;->access$202(Lcom/qinggan/canbus/PhoneInfo;I)I

    .line 113
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/PhoneInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/PhoneInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/PhoneInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 98
    new-array v0, p1, [Lcom/qinggan/canbus/PhoneInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 96
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/PhoneInfo$1;->newArray(I)[Lcom/qinggan/canbus/PhoneInfo;

    move-result-object v0

    return-object v0
.end method
