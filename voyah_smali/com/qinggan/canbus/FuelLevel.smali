.class public final Lcom/qinggan/canbus/FuelLevel;
.super Ljava/lang/Object;
.source "FuelLevel.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/FuelLevel;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:I


# instance fields
.field private isFuelShortage:Z

.field public mAvgFuelConsumption:F

.field public mCapacity:I

.field public mHistoryAvgFuelConsumption:F

.field public mInstantaneousFuelConsumption:F

.field public mPercentage:F

.field public mRemain:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    new-instance v0, Lcom/qinggan/canbus/FuelLevel$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/FuelLevel$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/FuelLevel;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v1, p0, Lcom/qinggan/canbus/FuelLevel;->mCapacity:I

    .line 18
    iput v1, p0, Lcom/qinggan/canbus/FuelLevel;->mRemain:I

    .line 23
    iput v0, p0, Lcom/qinggan/canbus/FuelLevel;->mPercentage:F

    .line 28
    iput-boolean v1, p0, Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z

    .line 33
    iput v0, p0, Lcom/qinggan/canbus/FuelLevel;->mInstantaneousFuelConsumption:F

    .line 38
    iput v0, p0, Lcom/qinggan/canbus/FuelLevel;->mAvgFuelConsumption:F

    .line 43
    iput v0, p0, Lcom/qinggan/canbus/FuelLevel;->mHistoryAvgFuelConsumption:F

    .line 49
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/FuelLevel;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/FuelLevel;
    .param p1, "x1"    # Z

    .prologue
    .line 7
    iput-boolean p1, p0, Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public getCapacity()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/qinggan/canbus/FuelLevel;->mCapacity:I

    return v0
.end method

.method public getPercentage()F
    .registers 2

    .prologue
    .line 68
    iget v0, p0, Lcom/qinggan/canbus/FuelLevel;->mPercentage:F

    return v0
.end method

.method public getRemain()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/qinggan/canbus/FuelLevel;->mRemain:I

    return v0
.end method

.method public isFuelShortage()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z

    return v0
.end method

.method public setCapacity(I)V
    .registers 2
    .param p1, "capacity"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/qinggan/canbus/FuelLevel;->mCapacity:I

    .line 57
    return-void
.end method

.method public setFuelShortage(Z)V
    .registers 2
    .param p1, "isFuelShortage"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z

    .line 81
    return-void
.end method

.method public setPercentage(F)V
    .registers 2
    .param p1, "percentage"    # F

    .prologue
    .line 72
    iput p1, p0, Lcom/qinggan/canbus/FuelLevel;->mPercentage:F

    .line 73
    return-void
.end method

.method public setRemain(I)V
    .registers 2
    .param p1, "remain"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/qinggan/canbus/FuelLevel;->mRemain:I

    .line 65
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FuelLevel{mCapacity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mCapacity:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRemain="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mRemain:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mPercentage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mPercentage:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isFuelShortage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mInstantaneousFuelConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mInstantaneousFuelConsumption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mAvgFuelConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mAvgFuelConsumption:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mHistoryAvgFuelConsumption="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mHistoryAvgFuelConsumption:F

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
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x1

    .line 88
    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mCapacity:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mRemain:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v1, p0, Lcom/qinggan/canbus/FuelLevel;->mPercentage:F

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeFloat(F)V

    .line 91
    iget-boolean v1, p0, Lcom/qinggan/canbus/FuelLevel;->isFuelShortage:Z

    if-ne v1, v0, :cond_27

    :goto_14
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 92
    iget v0, p0, Lcom/qinggan/canbus/FuelLevel;->mInstantaneousFuelConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 93
    iget v0, p0, Lcom/qinggan/canbus/FuelLevel;->mAvgFuelConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 94
    iget v0, p0, Lcom/qinggan/canbus/FuelLevel;->mHistoryAvgFuelConsumption:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 95
    return-void

    .line 91
    :cond_27
    const/4 v0, 0x0

    goto :goto_14
.end method
