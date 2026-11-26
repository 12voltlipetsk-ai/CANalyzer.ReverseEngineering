.class final Lcom/qinggan/canbus/DispinfoSettingStatus$1;
.super Ljava/lang/Object;
.source "DispinfoSettingStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/DispinfoSettingStatus;
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
        "Lcom/qinggan/canbus/DispinfoSettingStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/DispinfoSettingStatus;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 333
    new-instance v0, Lcom/qinggan/canbus/DispinfoSettingStatus;

    invoke-direct {v0}, Lcom/qinggan/canbus/DispinfoSettingStatus;-><init>()V

    .line 334
    .local v0, "dispinfo":Lcom/qinggan/canbus/DispinfoSettingStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFMStatus:I

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPhoneStatus:I

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mDrivingDirection:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mLangDisplay:I

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mMusicInputType:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mNextRoad:I

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurnDirection:I

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPageChangeCtrl:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFrequency:I

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mFMFrequency:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mSteeringSwitchMode:I

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistance:I

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistanceOff:I

    .line 347
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/DispinfoSettingStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/DispinfoSettingStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/DispinfoSettingStatus;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 329
    new-array v0, p1, [Lcom/qinggan/canbus/DispinfoSettingStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 327
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/DispinfoSettingStatus$1;->newArray(I)[Lcom/qinggan/canbus/DispinfoSettingStatus;

    move-result-object v0

    return-object v0
.end method
