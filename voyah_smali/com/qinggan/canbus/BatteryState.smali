.class public final Lcom/qinggan/canbus/BatteryState;
.super Ljava/lang/Object;
.source "BatteryState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/BatteryState;",
            ">;"
        }
    .end annotation
.end field

.field public static final UNKNOWN:I = -0x1

.field public static final VOLTAGE_ERROR:I = 0x3ff

.field public static final VOLTAGE_INIT:I = 0x3fe

.field public static final VOLTAGE_MAX:I = 0x3fd

.field public static final VOLTAGE_MIN:I = 0x0

.field public static final VOLTAGE_UNKNOWN:I = -0x80000000


# instance fields
.field private mCurrentValue:F

.field private mVoltageLevel:I

.field private mVoltageValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/qinggan/canbus/BatteryState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/BatteryState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/BatteryState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput v0, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I

    .line 20
    iput v0, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I

    .line 22
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F

    .line 31
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/BatteryState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BatteryState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/BatteryState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BatteryState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/BatteryState;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BatteryState;
    .param p1, "x1"    # F

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryCurrentValue()F
    .registers 2

    .prologue
    .line 75
    iget v0, p0, Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F

    return v0
.end method

.method public getBatteryVoltage()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I

    return v0
.end method

.method public getBatteryVoltageLevel()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I

    return v0
.end method

.method public setBatteryCurrentValue(F)V
    .registers 2
    .param p1, "currentValue"    # F

    .prologue
    .line 79
    iput p1, p0, Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F

    .line 80
    return-void
.end method

.method public setBatteryVoltage(I)V
    .registers 2
    .param p1, "voltageValue"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I

    .line 59
    return-void
.end method

.method public setBatteryVoltageLevel(I)V
    .registers 2
    .param p1, "voltageLevel"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I

    .line 68
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BatteryState{mVoltageLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mVoltageValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mCurrentValue="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F

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
    .line 38
    iget v0, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    iget v0, p0, Lcom/qinggan/canbus/BatteryState;->mVoltageValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    iget v0, p0, Lcom/qinggan/canbus/BatteryState;->mCurrentValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 41
    return-void
.end method
