.class final Lcom/qinggan/canbus/DVRState$1;
.super Ljava/lang/Object;
.source "DVRState.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/DVRState;
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
        "Lcom/qinggan/canbus/DVRState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/DVRState;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 170
    new-instance v0, Lcom/qinggan/canbus/DVRState;

    invoke-direct {v0}, Lcom/qinggan/canbus/DVRState;-><init>()V

    .line 171
    .local v0, "dvrState":Lcom/qinggan/canbus/DVRState;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/DVRState;->dvrSysState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/DVRState;->access$002(Lcom/qinggan/canbus/DVRState;I)I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/DVRState;->dvrWifiState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/DVRState;->access$102(Lcom/qinggan/canbus/DVRState;I)I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/DVRState;->dvrPhotoRes:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/DVRState;->access$202(Lcom/qinggan/canbus/DVRState;I)I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/DVRState;->dvrsdcardState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/DVRState;->access$302(Lcom/qinggan/canbus/DVRState;I)I

    .line 175
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/DVRState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/DVRState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/DVRState;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 165
    new-array v0, p1, [Lcom/qinggan/canbus/DVRState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 162
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/DVRState$1;->newArray(I)[Lcom/qinggan/canbus/DVRState;

    move-result-object v0

    return-object v0
.end method
