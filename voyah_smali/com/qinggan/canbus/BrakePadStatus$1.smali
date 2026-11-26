.class final Lcom/qinggan/canbus/BrakePadStatus$1;
.super Ljava/lang/Object;
.source "BrakePadStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BrakePadStatus;
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
        "Lcom/qinggan/canbus/BrakePadStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BrakePadStatus;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 50
    new-instance v0, Lcom/qinggan/canbus/BrakePadStatus;

    invoke-direct {v0}, Lcom/qinggan/canbus/BrakePadStatus;-><init>()V

    .line 51
    .local v0, "brakePad":Lcom/qinggan/canbus/BrakePadStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/BrakePadStatus;->mFrontPadStatus:I

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/BrakePadStatus;->mRearPadStatus:I

    .line 53
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BrakePadStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BrakePadStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/BrakePadStatus;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 46
    new-array v0, p1, [Lcom/qinggan/canbus/BrakePadStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 44
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BrakePadStatus$1;->newArray(I)[Lcom/qinggan/canbus/BrakePadStatus;

    move-result-object v0

    return-object v0
.end method
