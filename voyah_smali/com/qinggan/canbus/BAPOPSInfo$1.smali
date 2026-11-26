.class final Lcom/qinggan/canbus/BAPOPSInfo$1;
.super Ljava/lang/Object;
.source "BAPOPSInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BAPOPSInfo;
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
        "Lcom/qinggan/canbus/BAPOPSInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BAPOPSInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 97
    new-instance v0, Lcom/qinggan/canbus/BAPOPSInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/BAPOPSInfo;-><init>()V

    .line 98
    .local v0, "bapopsInfo":Lcom/qinggan/canbus/BAPOPSInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPOPSInfo;->access$002(Lcom/qinggan/canbus/BAPOPSInfo;I)I

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPOPSInfo;->access$102(Lcom/qinggan/canbus/BAPOPSInfo;I)I

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPOPSInfo;->access$202(Lcom/qinggan/canbus/BAPOPSInfo;I)I

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPOPSInfo;->access$302(Lcom/qinggan/canbus/BAPOPSInfo;I)I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/BAPOPSInfo;->access$402(Lcom/qinggan/canbus/BAPOPSInfo;I)I

    .line 104
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BAPOPSInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/BAPOPSInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/BAPOPSInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 110
    new-array v0, p1, [Lcom/qinggan/canbus/BAPOPSInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 93
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/BAPOPSInfo$1;->newArray(I)[Lcom/qinggan/canbus/BAPOPSInfo;

    move-result-object v0

    return-object v0
.end method
