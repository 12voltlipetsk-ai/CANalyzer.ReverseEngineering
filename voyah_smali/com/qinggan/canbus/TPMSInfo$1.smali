.class final Lcom/qinggan/canbus/TPMSInfo$1;
.super Ljava/lang/Object;
.source "TPMSInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/TPMSInfo;
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
        "Lcom/qinggan/canbus/TPMSInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 238
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/TPMSInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 241
    new-instance v0, Lcom/qinggan/canbus/TPMSInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/TPMSInfo;-><init>()V

    .line 242
    .local v0, "tpmsInfo":Lcom/qinggan/canbus/TPMSInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mTirePositionStatus:I

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mTemperatureWarningStatus:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mSystemWaringStatus:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTireWarningStatus:I

    .line 246
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTireWarningStatus:I

    .line 247
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTireWarningStatus:I

    .line 248
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTireWarningStatus:I

    .line 249
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTirePressureValue:F

    .line 250
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTirePressureValue:F

    .line 251
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTirePressureValue:F

    .line 252
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTirePressureValue:F

    .line 253
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/TPMSInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/TPMSInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/TPMSInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 257
    new-array v0, p1, [Lcom/qinggan/canbus/TPMSInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 238
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/TPMSInfo$1;->newArray(I)[Lcom/qinggan/canbus/TPMSInfo;

    move-result-object v0

    return-object v0
.end method
