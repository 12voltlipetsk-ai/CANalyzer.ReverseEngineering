.class final Lcom/qinggan/canbus/RealityWarningInfo$1;
.super Ljava/lang/Object;
.source "RealityWarningInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/RealityWarningInfo;
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
        "Lcom/qinggan/canbus/RealityWarningInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 639
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/RealityWarningInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 643
    new-instance v0, Lcom/qinggan/canbus/RealityWarningInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/RealityWarningInfo;-><init>()V

    .line 644
    .local v0, "realityWarningInfo":Lcom/qinggan/canbus/RealityWarningInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_LightleftOn:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$002(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 645
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_HoodAjarStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$102(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 646
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_TrunkAjarStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$202(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 647
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_DriverDoorAjarStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$302(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 648
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_PassengerDoorAjarStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$402(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 649
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_RearLeftDoorAjarStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$502(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 650
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBCM_RearRightDoorAjarStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$602(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 651
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mTCU_ESModReqRejt:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$702(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 652
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mICUVehicleDisplaySpeed:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$802(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 653
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mFuelLevelStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$902(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 654
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mACU_DrySeatbeltBuckleStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1002(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 655
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mCheckSmartKey:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1102(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 656
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mAdjustPorNToStart:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1202(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 657
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mTreadCluth:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1302(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 658
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mAdjustPToStop:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1402(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 659
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mAdjustNToStop:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1502(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 660
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mSmartKeyElectricLow:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1602(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 661
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mSmartKeyToBeToken:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1702(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 662
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mSmartKeyLeftCar:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1802(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 663
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mStartSwitchError:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$1902(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 664
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mCloseCarDoorToLockVehicle:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2002(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 665
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mCarType:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2102(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 666
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mVehicleType:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2202(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 667
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mEngineTemperatureHigh:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2302(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 668
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mPEPSPowerOn:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2402(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 669
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mMaintenceRemind:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2502(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 670
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mBonnetDoor:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2602(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 671
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mLoadSpace:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2702(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 672
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mRoadFrozen:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2802(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 673
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mSeatbeltBuckleStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$2902(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 674
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/RealityWarningInfo;->mPassengerSeatBeltSate:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/RealityWarningInfo;->access$3002(Lcom/qinggan/canbus/RealityWarningInfo;I)I

    .line 675
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/RealityWarningInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/RealityWarningInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/RealityWarningInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 680
    new-array v0, p1, [Lcom/qinggan/canbus/RealityWarningInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 639
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/RealityWarningInfo$1;->newArray(I)[Lcom/qinggan/canbus/RealityWarningInfo;

    move-result-object v0

    return-object v0
.end method
