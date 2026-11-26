.class public final Lcom/qinggan/canbus/Odometer;
.super Ljava/lang/Object;
.source "Odometer.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/Odometer;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:I


# instance fields
.field public mBeenTravelingMileage:I

.field public mCanTravelMileage:I

.field public mCanTravelMileage_real:I

.field public mChargeReaminTime:I

.field public mEVCruisingRang_real:I

.field public mEVCruisingRange:I

.field public mEVCruisingRange_wltc:I

.field public mEnduranceMileage:I

.field public mPowerConsumption:F

.field private mTotalTravelingMileage:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 170
    new-instance v0, Lcom/qinggan/canbus/Odometer$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/Odometer$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/Odometer;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage:I

    .line 20
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mBeenTravelingMileage:I

    .line 25
    const/4 v0, 0x0

    iput v0, p0, Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F

    .line 30
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange:I

    .line 36
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mChargeReaminTime:I

    .line 41
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mEnduranceMileage:I

    .line 43
    const/4 v0, 0x1

    iput v0, p0, Lcom/qinggan/canbus/Odometer;->mPowerConsumption:F

    .line 49
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRang_real:I

    .line 54
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage_real:I

    .line 59
    iput v1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange_wltc:I

    .line 62
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/Odometer;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/Odometer;
    .param p1, "x1"    # F

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 154
    const/4 v0, 0x0

    return v0
.end method

.method public getBeenTravelingMileage()I
    .registers 2

    .prologue
    .line 100
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mBeenTravelingMileage:I

    return v0
.end method

.method public getCanTravelMileage()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage:I

    return v0
.end method

.method public getCanTravelMileage_real()I
    .registers 2

    .prologue
    .line 138
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage_real:I

    return v0
.end method

.method public getChargeReaminTime()I
    .registers 2

    .prologue
    .line 65
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mChargeReaminTime:I

    return v0
.end method

.method public getEVCruisingRange_wltc()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange_wltc:I

    return v0
.end method

.method public getEnduranceMileage()I
    .registers 2

    .prologue
    .line 113
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEnduranceMileage:I

    return v0
.end method

.method public getTotalTravelingMileage()F
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F

    return v0
.end method

.method public getmEVCruisingRange()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange:I

    return v0
.end method

.method public getmEVCruisingRange_real()I
    .registers 2

    .prologue
    .line 130
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRang_real:I

    return v0
.end method

.method public getmPowerConsumption()D
    .registers 3

    .prologue
    .line 81
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mPowerConsumption:F

    float-to-double v0, v0

    return-wide v0
.end method

.method public setBeenTravelingMileage(I)V
    .registers 2
    .param p1, "beenTravelingMileage"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mBeenTravelingMileage:I

    .line 109
    return-void
.end method

.method public setCanTravelMileage(I)V
    .registers 2
    .param p1, "canTravelMileage"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage:I

    .line 94
    return-void
.end method

.method public setCanTravelMileage_real(I)V
    .registers 2
    .param p1, "canTravelMileage_real"    # I

    .prologue
    .line 142
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage_real:I

    .line 143
    return-void
.end method

.method public setChargeReaminTime(I)V
    .registers 2
    .param p1, "chargeReaminTime"    # I

    .prologue
    .line 69
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mChargeReaminTime:I

    .line 70
    return-void
.end method

.method public setEVCruisingRange_wltc(I)V
    .registers 2
    .param p1, "evCruisingRange_wltc"    # I

    .prologue
    .line 150
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange_wltc:I

    .line 151
    return-void
.end method

.method public setEnduranceMileage(I)V
    .registers 2
    .param p1, "mEnduranceMileage"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mEnduranceMileage:I

    .line 118
    return-void
.end method

.method public setTotalTravelingMileage(F)V
    .registers 2
    .param p1, "mTotalTravelingMileage"    # F

    .prologue
    .line 125
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F

    .line 126
    return-void
.end method

.method public setmEVCruisingRange(I)V
    .registers 2
    .param p1, "mEVCruisingRange"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange:I

    .line 78
    return-void
.end method

.method public setmEVCruisingRange_real(I)V
    .registers 2
    .param p1, "mEVCruisingRang_real"    # I

    .prologue
    .line 134
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRang_real:I

    .line 135
    return-void
.end method

.method public setmPowerConsumption(F)V
    .registers 2
    .param p1, "mPowerConsumption"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/qinggan/canbus/Odometer;->mPowerConsumption:F

    .line 86
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Odometer [mCanTravelMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mBeenTravelingMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mBeenTravelingMileage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTotalTravelingMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEVCruisingRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEnduranceMileage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mEnduranceMileage:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mChargeReaminTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mChargeReaminTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPowerConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mPowerConsumption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEVCruisingRang_real="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRang_real:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mCanTravelMileage_real="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage_real:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mEVCruisingRange_wltc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange_wltc:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 158
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mBeenTravelingMileage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEnduranceMileage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mPowerConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 163
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mChargeReaminTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mTotalTravelingMileage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 165
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRang_real:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mCanTravelMileage_real:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget v0, p0, Lcom/qinggan/canbus/Odometer;->mEVCruisingRange_wltc:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 168
    return-void
.end method
