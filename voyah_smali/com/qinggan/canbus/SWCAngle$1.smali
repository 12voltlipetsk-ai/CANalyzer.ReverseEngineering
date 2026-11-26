.class final Lcom/qinggan/canbus/SWCAngle$1;
.super Ljava/lang/Object;
.source "SWCAngle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/SWCAngle;
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
        "Lcom/qinggan/canbus/SWCAngle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/SWCAngle;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 51
    new-instance v0, Lcom/qinggan/canbus/SWCAngle;

    invoke-direct {v0}, Lcom/qinggan/canbus/SWCAngle;-><init>()V

    .line 52
    .local v0, "dest":Lcom/qinggan/canbus/SWCAngle;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SWCAngle;->mWheelDirection:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/SWCAngle;->mWheelAngle:I

    .line 54
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/SWCAngle$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/SWCAngle;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/SWCAngle;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 47
    new-array v0, p1, [Lcom/qinggan/canbus/SWCAngle;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/SWCAngle$1;->newArray(I)[Lcom/qinggan/canbus/SWCAngle;

    move-result-object v0

    return-object v0
.end method
