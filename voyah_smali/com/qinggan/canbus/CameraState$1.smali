.class final Lcom/qinggan/canbus/CameraState$1;
.super Ljava/lang/Object;
.source "CameraState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CameraState;
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
        "Lcom/qinggan/canbus/CameraState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 215
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/CameraState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 223
    new-instance v0, Lcom/qinggan/canbus/CameraState;

    invoke-direct {v0}, Lcom/qinggan/canbus/CameraState;-><init>()V

    .line 224
    .local v0, "cameraState":Lcom/qinggan/canbus/CameraState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->faceidLoginState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$002(Lcom/qinggan/canbus/CameraState;I)I

    .line 225
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->faceidRegistState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$102(Lcom/qinggan/canbus/CameraState;I)I

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->arCameraState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$202(Lcom/qinggan/canbus/CameraState;I)I

    .line 227
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->dvrHicarState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$302(Lcom/qinggan/canbus/CameraState;I)I

    .line 228
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->roaHicarState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$402(Lcom/qinggan/canbus/CameraState;I)I

    .line 229
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->dmsHicarState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$502(Lcom/qinggan/canbus/CameraState;I)I

    .line 230
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->dvrAPPState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$602(Lcom/qinggan/canbus/CameraState;I)I

    .line 231
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->roaAPPState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$702(Lcom/qinggan/canbus/CameraState;I)I

    .line 232
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->dvrCameraState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$802(Lcom/qinggan/canbus/CameraState;I)I

    .line 233
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->roaCameraState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$902(Lcom/qinggan/canbus/CameraState;I)I

    .line 234
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/CameraState;->dmsCameraState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/CameraState;->access$1002(Lcom/qinggan/canbus/CameraState;I)I

    .line 236
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/CameraState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/CameraState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/CameraState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 218
    new-array v0, p1, [Lcom/qinggan/canbus/CameraState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 215
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/CameraState$1;->newArray(I)[Lcom/qinggan/canbus/CameraState;

    move-result-object v0

    return-object v0
.end method
