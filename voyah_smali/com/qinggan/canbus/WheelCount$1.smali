.class final Lcom/qinggan/canbus/WheelCount$1;
.super Ljava/lang/Object;
.source "WheelCount.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/WheelCount;
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
        "Lcom/qinggan/canbus/WheelCount;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/WheelCount;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    new-instance v0, Lcom/qinggan/canbus/WheelCount;

    invoke-direct {v0}, Lcom/qinggan/canbus/WheelCount;-><init>()V

    .line 50
    .local v0, "count":Lcom/qinggan/canbus/WheelCount;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/WheelCount;->rightWheelCount:I

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/WheelCount;->leftWheelCount:I

    .line 53
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/WheelCount$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/WheelCount;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/WheelCount;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 44
    new-array v0, p1, [Lcom/qinggan/canbus/WheelCount;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 42
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/WheelCount$1;->newArray(I)[Lcom/qinggan/canbus/WheelCount;

    move-result-object v0

    return-object v0
.end method
