.class final Lcom/qinggan/canbus/GearState$1;
.super Ljava/lang/Object;
.source "GearState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/GearState;
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
        "Lcom/qinggan/canbus/GearState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/GearState;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 44
    invoke-static {}, Lcom/qinggan/canbus/GearState;->values()[Lcom/qinggan/canbus/GearState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 45
    .local v0, "type":Lcom/qinggan/canbus/GearState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/GearState;->value:I

    .line 47
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/GearState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/GearState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/GearState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 52
    new-array v0, p1, [Lcom/qinggan/canbus/GearState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 41
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/GearState$1;->newArray(I)[Lcom/qinggan/canbus/GearState;

    move-result-object v0

    return-object v0
.end method
