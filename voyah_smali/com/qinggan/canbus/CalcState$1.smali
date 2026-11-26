.class final Lcom/qinggan/canbus/CalcState$1;
.super Ljava/lang/Object;
.source "CalcState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CalcState;
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
        "Lcom/qinggan/canbus/CalcState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/CalcState;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 46
    invoke-static {}, Lcom/qinggan/canbus/CalcState;->values()[Lcom/qinggan/canbus/CalcState;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 48
    .local v0, "state":Lcom/qinggan/canbus/CalcState;
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/CalcState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/CalcState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/CalcState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 53
    new-array v0, p1, [Lcom/qinggan/canbus/CalcState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/CalcState$1;->newArray(I)[Lcom/qinggan/canbus/CalcState;

    move-result-object v0

    return-object v0
.end method
