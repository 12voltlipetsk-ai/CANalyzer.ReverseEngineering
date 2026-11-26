.class final Lcom/qinggan/canbus/GuideState$1;
.super Ljava/lang/Object;
.source "GuideState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/GuideState;
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
        "Lcom/qinggan/canbus/GuideState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/GuideState;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 61
    invoke-static {}, Lcom/qinggan/canbus/GuideState;->values()[Lcom/qinggan/canbus/GuideState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 63
    .local v0, "state":Lcom/qinggan/canbus/GuideState;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/GuideState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/GuideState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/GuideState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 68
    new-array v0, p1, [Lcom/qinggan/canbus/GuideState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 58
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/GuideState$1;->newArray(I)[Lcom/qinggan/canbus/GuideState;

    move-result-object v0

    return-object v0
.end method
