.class final Lcom/qinggan/canbus/RealityWarningItemPlayState$1;
.super Ljava/lang/Object;
.source "RealityWarningItemPlayState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/RealityWarningItemPlayState;
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
        "Lcom/qinggan/canbus/RealityWarningItemPlayState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/RealityWarningItemPlayState;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 57
    invoke-static {}, Lcom/qinggan/canbus/RealityWarningItemPlayState;->values()[Lcom/qinggan/canbus/RealityWarningItemPlayState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 58
    .local v0, "realityWarningItemPlayState":Lcom/qinggan/canbus/RealityWarningItemPlayState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningItemPlayState;->value:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningItemPlayState;->access$002(Lcom/qinggan/canbus/RealityWarningItemPlayState;I)I

    .line 59
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/RealityWarningItemPlayState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/RealityWarningItemPlayState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/RealityWarningItemPlayState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 64
    new-array v0, p1, [Lcom/qinggan/canbus/RealityWarningItemPlayState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 53
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/RealityWarningItemPlayState$1;->newArray(I)[Lcom/qinggan/canbus/RealityWarningItemPlayState;

    move-result-object v0

    return-object v0
.end method
