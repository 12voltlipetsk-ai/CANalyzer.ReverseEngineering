.class public Lcom/qinggan/canbus/EnergyConsumptionPercent;
.super Ljava/lang/Object;
.source "EnergyConsumptionPercent.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/EnergyConsumptionPercent;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID:I = -0x270f

.field public static final UNKNOWN:I = -0x3e8


# instance fields
.field private consumInfoNum:I

.field private currentTripCabinSoftCnsPer:F

.field private currentTripDrvCnsPer:F

.field private currentTripEleCnsPer:F

.field private currentTripFuelCnsPer:F

.field private currentTripOthCnsPer:F

.field private currentTripV2LCnsPer:F

.field private dayAvgOilConsum:F

.field private dayAvgPwrConsum:F

.field private instantCnsEV:F

.field private instantCnsOil:F

.field private sinceChargeCabinSoftCnsPer:F

.field private sinceChargeDrvCnsPer:F

.field private sinceChargeEVCnsPer:F

.field private sinceChargeEleCnsPer:F

.field private sinceChargeFuelCnsPer:F

.field private sinceChargeOthCnsPer:F

.field private sinceChargeV2LCnsPer:F

.field private sinceRefulCabinSoftCnsPer:F

.field private sinceRefulDrvCnsPer:F

.field private sinceRefulEleCnsPer:F

.field private sinceRefulFuelCnsPer:F

.field private sinceRefulOthCnsPer:F

.field private sinceRefulParalCnsPer:F

.field private sinceRefulSeriCnsPer:F

.field private sinceRefulV2LCnsPer:F

.field private sinceTripACabinSoftCnsPer:F

.field private sinceTripADrvCnsPer:F

.field private sinceTripAEVCnsPer:F

.field private sinceTripAEleCnsPer:F

.field private sinceTripAFuelCnsPer:F

.field private sinceTripAOthCnsPer:F

.field private sinceTripAParalCnsPer:F

.field private sinceTripASeriCnsPer:F

.field private sinceTripAV2LCnsPer:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 597
    new-instance v0, Lcom/qinggan/canbus/EnergyConsumptionPercent$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/EnergyConsumptionPercent$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x3b860000    # -1000.0f

    .line 555
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    .line 26
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    .line 31
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    .line 36
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    .line 41
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    .line 46
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    .line 51
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    .line 56
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    .line 61
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    .line 66
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    .line 71
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    .line 76
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    .line 81
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    .line 86
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    .line 91
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    .line 96
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    .line 101
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    .line 106
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    .line 111
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    .line 116
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    .line 121
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    .line 126
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    .line 131
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    .line 136
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    .line 141
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    .line 146
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    .line 151
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    .line 156
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    .line 161
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    .line 166
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    .line 171
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    .line 176
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    .line 181
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    .line 186
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    .line 191
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    .line 557
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/high16 v1, -0x3b860000    # -1000.0f

    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    .line 26
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    .line 31
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    .line 36
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    .line 41
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    .line 46
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    .line 51
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    .line 56
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    .line 61
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    .line 66
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    .line 71
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    .line 76
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    .line 81
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    .line 86
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    .line 91
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    .line 96
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    .line 101
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    .line 106
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    .line 111
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    .line 116
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    .line 121
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    .line 126
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    .line 131
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    .line 136
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    .line 141
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    .line 146
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    .line 151
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    .line 156
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    .line 161
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    .line 166
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    .line 171
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    .line 176
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    .line 181
    const/16 v0, -0x3e8

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    .line 186
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    .line 191
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    .line 560
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    .line 561
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    .line 562
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    .line 563
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    .line 564
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    .line 565
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    .line 566
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    .line 567
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    .line 568
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    .line 569
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    .line 570
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    .line 571
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    .line 572
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    .line 573
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    .line 574
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    .line 575
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    .line 576
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    .line 577
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    .line 578
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    .line 579
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    .line 580
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    .line 581
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    .line 582
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    .line 583
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    .line 584
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    .line 585
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    .line 586
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    .line 587
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    .line 588
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    .line 589
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    .line 590
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    .line 591
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    .line 592
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    .line 593
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    .line 594
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    .line 595
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 475
    const/4 v0, 0x0

    return v0
.end method

.method public getConsumInfoNum()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    return v0
.end method

.method public getCurrentTripCabinSoftCnsPer()F
    .registers 2

    .prologue
    .line 202
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    return v0
.end method

.method public getCurrentTripDrvCnsPer()F
    .registers 2

    .prologue
    .line 194
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    return v0
.end method

.method public getCurrentTripEleCnsPer()F
    .registers 2

    .prologue
    .line 210
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    return v0
.end method

.method public getCurrentTripFuelCnsPer()F
    .registers 2

    .prologue
    .line 218
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    return v0
.end method

.method public getCurrentTripOthCnsPer()F
    .registers 2

    .prologue
    .line 234
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    return v0
.end method

.method public getCurrentTripV2LCnsPer()F
    .registers 2

    .prologue
    .line 226
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    return v0
.end method

.method public getDayAvgOilConsum()F
    .registers 2

    .prologue
    .line 434
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    return v0
.end method

.method public getDayAvgPwrConsum()F
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    return v0
.end method

.method public getInstantCnsEV()F
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    return v0
.end method

.method public getInstantCnsOil()F
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    return v0
.end method

.method public getSinceChargeCabinSoftCnsPer()F
    .registers 2

    .prologue
    .line 250
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    return v0
.end method

.method public getSinceChargeDrvCnsPer()F
    .registers 2

    .prologue
    .line 242
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    return v0
.end method

.method public getSinceChargeEVCnsPer()F
    .registers 2

    .prologue
    .line 386
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    return v0
.end method

.method public getSinceChargeEleCnsPer()F
    .registers 2

    .prologue
    .line 258
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    return v0
.end method

.method public getSinceChargeFuelCnsPer()F
    .registers 2

    .prologue
    .line 266
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    return v0
.end method

.method public getSinceChargeOthCnsPer()F
    .registers 2

    .prologue
    .line 282
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    return v0
.end method

.method public getSinceChargeV2LCnsPer()F
    .registers 2

    .prologue
    .line 274
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    return v0
.end method

.method public getSinceRefulCabinSoftCnsPer()F
    .registers 2

    .prologue
    .line 298
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    return v0
.end method

.method public getSinceRefulDrvCnsPer()F
    .registers 2

    .prologue
    .line 290
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    return v0
.end method

.method public getSinceRefulEleCnsPer()F
    .registers 2

    .prologue
    .line 306
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    return v0
.end method

.method public getSinceRefulFuelCnsPer()F
    .registers 2

    .prologue
    .line 314
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    return v0
.end method

.method public getSinceRefulOthCnsPer()F
    .registers 2

    .prologue
    .line 330
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    return v0
.end method

.method public getSinceRefulParalCnsPer()F
    .registers 2

    .prologue
    .line 402
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    return v0
.end method

.method public getSinceRefulSeriCnsPer()F
    .registers 2

    .prologue
    .line 394
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    return v0
.end method

.method public getSinceRefulV2LCnsPer()F
    .registers 2

    .prologue
    .line 322
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    return v0
.end method

.method public getSinceTripACabinSoftCnsPer()F
    .registers 2

    .prologue
    .line 346
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    return v0
.end method

.method public getSinceTripADrvCnsPer()F
    .registers 2

    .prologue
    .line 338
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    return v0
.end method

.method public getSinceTripAEVCnsPer()F
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    return v0
.end method

.method public getSinceTripAEleCnsPer()F
    .registers 2

    .prologue
    .line 354
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    return v0
.end method

.method public getSinceTripAFuelCnsPer()F
    .registers 2

    .prologue
    .line 362
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    return v0
.end method

.method public getSinceTripAOthCnsPer()F
    .registers 2

    .prologue
    .line 378
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    return v0
.end method

.method public getSinceTripAParalCnsPer()F
    .registers 2

    .prologue
    .line 426
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    return v0
.end method

.method public getSinceTripASeriCnsPer()F
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    return v0
.end method

.method public getSinceTripAV2LCnsPer()F
    .registers 2

    .prologue
    .line 370
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 518
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    .line 519
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    .line 520
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    .line 521
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    .line 522
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    .line 523
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    .line 524
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    .line 525
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    .line 526
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    .line 527
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    .line 528
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    .line 529
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    .line 530
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    .line 531
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    .line 532
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    .line 533
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    .line 534
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    .line 535
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    .line 536
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    .line 537
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    .line 538
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    .line 539
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    .line 540
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    .line 541
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    .line 542
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    .line 543
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    .line 544
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    .line 545
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    .line 546
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    .line 547
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    .line 548
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    .line 549
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    .line 550
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    .line 551
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    .line 552
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    .line 553
    return-void
.end method

.method public setConsumInfoNum(I)V
    .registers 2
    .param p1, "consumInfoNum"    # I

    .prologue
    .line 454
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    .line 455
    return-void
.end method

.method public setCurrentTripCabinSoftCnsPer(F)V
    .registers 2
    .param p1, "currentTripCabinSoftCnsPer"    # F

    .prologue
    .line 206
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    .line 207
    return-void
.end method

.method public setCurrentTripDrvCnsPer(F)V
    .registers 2
    .param p1, "currentTripDrvCnsPer"    # F

    .prologue
    .line 198
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    .line 199
    return-void
.end method

.method public setCurrentTripEleCnsPer(F)V
    .registers 2
    .param p1, "currentTripEleCnsPer"    # F

    .prologue
    .line 214
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    .line 215
    return-void
.end method

.method public setCurrentTripFuelCnsPer(F)V
    .registers 2
    .param p1, "currentTripFuelCnsPer"    # F

    .prologue
    .line 222
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    .line 223
    return-void
.end method

.method public setCurrentTripOthCnsPer(F)V
    .registers 2
    .param p1, "currentTripOthCnsPer"    # F

    .prologue
    .line 238
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    .line 239
    return-void
.end method

.method public setCurrentTripV2LCnsPer(F)V
    .registers 2
    .param p1, "currentTripV2LCnsPer"    # F

    .prologue
    .line 230
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    .line 231
    return-void
.end method

.method public setDayAvgOilConsum(F)V
    .registers 2
    .param p1, "dayAvgOilConsum"    # F

    .prologue
    .line 438
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    .line 439
    return-void
.end method

.method public setDayAvgPwrConsum(F)V
    .registers 2
    .param p1, "dayAvgPwrConsum"    # F

    .prologue
    .line 446
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    .line 447
    return-void
.end method

.method public setInstantCnsEV(F)V
    .registers 2
    .param p1, "instantCnsEV"    # F

    .prologue
    .line 462
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    .line 463
    return-void
.end method

.method public setInstantCnsOil(F)V
    .registers 2
    .param p1, "instantCnsOil"    # F

    .prologue
    .line 470
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    .line 471
    return-void
.end method

.method public setSinceChargeCabinSoftCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeCabinSoftCnsPer"    # F

    .prologue
    .line 254
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    .line 255
    return-void
.end method

.method public setSinceChargeDrvCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeDrvCnsPer"    # F

    .prologue
    .line 246
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    .line 247
    return-void
.end method

.method public setSinceChargeEVCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeEVCnsPer"    # F

    .prologue
    .line 390
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    .line 391
    return-void
.end method

.method public setSinceChargeEleCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeEleCnsPer"    # F

    .prologue
    .line 262
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    .line 263
    return-void
.end method

.method public setSinceChargeFuelCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeFuelCnsPer"    # F

    .prologue
    .line 270
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    .line 271
    return-void
.end method

.method public setSinceChargeOthCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeOthCnsPer"    # F

    .prologue
    .line 286
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    .line 287
    return-void
.end method

.method public setSinceChargeV2LCnsPer(F)V
    .registers 2
    .param p1, "sinceChargeV2LCnsPer"    # F

    .prologue
    .line 278
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    .line 279
    return-void
.end method

.method public setSinceRefulCabinSoftCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulCabinSoftCnsPer"    # F

    .prologue
    .line 302
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    .line 303
    return-void
.end method

.method public setSinceRefulDrvCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulDrvCnsPer"    # F

    .prologue
    .line 294
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    .line 295
    return-void
.end method

.method public setSinceRefulEleCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulEleCnsPer"    # F

    .prologue
    .line 310
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    .line 311
    return-void
.end method

.method public setSinceRefulFuelCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulFuelCnsPer"    # F

    .prologue
    .line 318
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    .line 319
    return-void
.end method

.method public setSinceRefulOthCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulOthCnsPer"    # F

    .prologue
    .line 334
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    .line 335
    return-void
.end method

.method public setSinceRefulParalCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulParalCnsPer"    # F

    .prologue
    .line 406
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    .line 407
    return-void
.end method

.method public setSinceRefulSeriCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulSeriCnsPer"    # F

    .prologue
    .line 398
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    .line 399
    return-void
.end method

.method public setSinceRefulV2LCnsPer(F)V
    .registers 2
    .param p1, "sinceRefulV2LCnsPer"    # F

    .prologue
    .line 326
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    .line 327
    return-void
.end method

.method public setSinceTripACabinSoftCnsPer(F)V
    .registers 2
    .param p1, "sinceTripACabinSoftCnsPer"    # F

    .prologue
    .line 350
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    .line 351
    return-void
.end method

.method public setSinceTripADrvCnsPer(F)V
    .registers 2
    .param p1, "sinceTripADrvCnsPer"    # F

    .prologue
    .line 342
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    .line 343
    return-void
.end method

.method public setSinceTripAEVCnsPer(F)V
    .registers 2
    .param p1, "sinceTripAEVCnsPer"    # F

    .prologue
    .line 414
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    .line 415
    return-void
.end method

.method public setSinceTripAEleCnsPer(F)V
    .registers 2
    .param p1, "sinceTripAEleCnsPer"    # F

    .prologue
    .line 358
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    .line 359
    return-void
.end method

.method public setSinceTripAFuelCnsPer(F)V
    .registers 2
    .param p1, "sinceTripAFuelCnsPer"    # F

    .prologue
    .line 366
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    .line 367
    return-void
.end method

.method public setSinceTripAOthCnsPer(F)V
    .registers 2
    .param p1, "sinceTripAOthCnsPer"    # F

    .prologue
    .line 382
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    .line 383
    return-void
.end method

.method public setSinceTripAParalCnsPer(F)V
    .registers 2
    .param p1, "sinceTripAParalCnsPer"    # F

    .prologue
    .line 430
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    .line 431
    return-void
.end method

.method public setSinceTripASeriCnsPer(F)V
    .registers 2
    .param p1, "sinceTripASeriCnsPer"    # F

    .prologue
    .line 422
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    .line 423
    return-void
.end method

.method public setSinceTripAV2LCnsPer(F)V
    .registers 2
    .param p1, "sinceTripAV2LCnsPer"    # F

    .prologue
    .line 374
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    .line 375
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 611
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnergyConsumptionPercent{currentTripDrvCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripCabinSoftCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripEleCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripFuelCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripV2LCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripOthCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeDrvCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeCabinSoftCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeEleCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeFuelCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeV2LCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeOthCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulDrvCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulCabinSoftCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulEleCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulFuelCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulV2LCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulOthCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripADrvCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripACabinSoftCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAEleCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAFuelCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAV2LCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAOthCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeEVCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulSeriCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulParalCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAEVCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripASeriCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAParalCnsPer="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayAvgOilConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", dayAvgPwrConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", consumInfoNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instantCnsEV="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", instantCnsOil="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 480
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripDrvCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 481
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripCabinSoftCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 482
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripEleCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 483
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripFuelCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 484
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripV2LCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 485
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->currentTripOthCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 486
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeDrvCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 487
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeCabinSoftCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 488
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEleCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 489
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeFuelCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 490
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeV2LCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 491
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeOthCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 492
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulDrvCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 493
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulCabinSoftCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 494
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulEleCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 495
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulFuelCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 496
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulV2LCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 497
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulOthCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 498
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripADrvCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 499
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripACabinSoftCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 500
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEleCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 501
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAFuelCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 502
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAV2LCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 503
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAOthCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 504
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceChargeEVCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 505
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulSeriCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 506
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceRefulParalCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 507
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAEVCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 508
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripASeriCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 509
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->sinceTripAParalCnsPer:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 510
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgOilConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 511
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->dayAvgPwrConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 512
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->consumInfoNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 513
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsEV:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 514
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionPercent;->instantCnsOil:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 515
    return-void
.end method
