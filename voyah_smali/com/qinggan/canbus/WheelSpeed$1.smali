.class final Lcom/qinggan/canbus/WheelSpeed$1;
.super Ljava/lang/Object;
.source "WheelSpeed.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/WheelSpeed;
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
        "Lcom/qinggan/canbus/WheelSpeed;",
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
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/WheelSpeed;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 92
    new-instance v0, Lcom/qinggan/canbus/WheelSpeed;

    invoke-direct {v0}, Lcom/qinggan/canbus/WheelSpeed;-><init>()V

    .line 93
    .local v0, "speed":Lcom/qinggan/canbus/WheelSpeed;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/WheelSpeed;->rightWheelSpeed:I

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/WheelSpeed;->leftWheelSpeed:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/WheelSpeed;->frontLeftWheelSpd:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/WheelSpeed;->access$002(Lcom/qinggan/canbus/WheelSpeed;I)I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/WheelSpeed;->frontRightWheelSpd:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/WheelSpeed;->access$102(Lcom/qinggan/canbus/WheelSpeed;I)I

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/WheelSpeed;->rearLeftWheelSpd:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/WheelSpeed;->access$202(Lcom/qinggan/canbus/WheelSpeed;I)I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/WheelSpeed;->rearRightWheelSpd:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/WheelSpeed;->access$302(Lcom/qinggan/canbus/WheelSpeed;I)I

    .line 101
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/WheelSpeed$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/WheelSpeed;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/WheelSpeed;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/qinggan/canbus/WheelSpeed;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 85
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/WheelSpeed$1;->newArray(I)[Lcom/qinggan/canbus/WheelSpeed;

    move-result-object v0

    return-object v0
.end method
