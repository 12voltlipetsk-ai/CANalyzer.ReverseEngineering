.class public final Lcom/qinggan/canbus/PowerLevel;
.super Ljava/lang/Object;
.source "PowerLevel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/PowerLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:I


# instance fields
.field public mAvgPowerConsumption:F

.field public mCapacity:F

.field public mHistoryAvgPowerConsumption:F

.field public mInstantaneousPowerConsumption:F

.field public mPercentage:F

.field public mRemain:F


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Lcom/qinggan/canbus/PowerLevel$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/PowerLevel$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/PowerLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mCapacity:F

    .line 18
    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mRemain:F

    .line 23
    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mPercentage:F

    .line 28
    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mInstantaneousPowerConsumption:F

    .line 33
    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mAvgPowerConsumption:F

    .line 38
    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mHistoryAvgPowerConsumption:F

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    return v0
.end method

.method public getCapacity()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mCapacity:F

    float-to-int v0, v0

    return v0
.end method

.method public getPercentage()F
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mPercentage:F

    return v0
.end method

.method public getRemain()I
    .registers 2

    .prologue
    .line 55
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mRemain:F

    float-to-int v0, v0

    return v0
.end method

.method public setCapacity(I)V
    .registers 3
    .param p1, "capacity"    # I

    .prologue
    .line 51
    int-to-float v0, p1

    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mCapacity:F

    .line 52
    return-void
.end method

.method public setPercentage(F)V
    .registers 2
    .param p1, "percentage"    # F

    .prologue
    .line 67
    iput p1, p0, Lcom/qinggan/canbus/PowerLevel;->mPercentage:F

    .line 68
    return-void
.end method

.method public setRemain(I)V
    .registers 3
    .param p1, "remain"    # I

    .prologue
    .line 59
    int-to-float v0, p1

    iput v0, p0, Lcom/qinggan/canbus/PowerLevel;->mRemain:F

    .line 60
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerLevel{mCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PowerLevel;->mCapacity:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PowerLevel;->mRemain:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PowerLevel;->mPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInstantaneousPowerConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PowerLevel;->mInstantaneousPowerConsumption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvgPowerConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PowerLevel;->mAvgPowerConsumption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryAvgPowerConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/PowerLevel;->mHistoryAvgPowerConsumption:F

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
    .line 77
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mCapacity:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 78
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mRemain:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 79
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mPercentage:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 80
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mInstantaneousPowerConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 81
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mAvgPowerConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 82
    iget v0, p0, Lcom/qinggan/canbus/PowerLevel;->mHistoryAvgPowerConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 83
    return-void
.end method
