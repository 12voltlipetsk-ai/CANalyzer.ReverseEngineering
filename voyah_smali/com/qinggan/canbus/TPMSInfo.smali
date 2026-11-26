.class public Lcom/qinggan/canbus/TPMSInfo;
.super Ljava/lang/Object;
.source "TPMSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/TPMSInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final PRESSURE_HIGH_PRESSURE_WARNING:I = 0x1

.field public static final PRESSURE_LOST_SENSOR_WARNING:I = 0x4

.field public static final PRESSURE_LOW_PRESSURE_WARNING:I = 0x2

.field public static final PRESSURE_NO_WARNING:I = 0x0

.field public static final PRESSURE_QUIK_LEAKAGE_WARNING:I = 0x3

.field public static final PRESSURE_SENSOR_BATTERY_LOW_WARNING:I = 0x5

.field public static final PRESSURE__SENSOR_FAILURE_WARNING:I = 0x6

.field public static final SYSTEM_CHECKCOMPLETED:I = 0x3

.field public static final SYSTEM_CHECKING:I = 0x2

.field public static final SYSTEM_ERROR:I = 0x1

.field public static final SYSTEM_NO_ANY_ERROR:I = 0x0

.field public static final TEMPERATURE_NO_WARNING:I = 0x0

.field public static final TEMPERATURE_WARNING:I = 0x1

.field public static final TIRE_POSITION_LEFT_FRONT:I = 0x1

.field public static final TIRE_POSITION_LEFT_REAR:I = 0x4

.field public static final TIRE_POSITION_NO_ANY_SENSOR:I = 0x0

.field public static final TIRE_POSITION_RIGHT_FRONT:I = 0x2

.field public static final TIRE_POSITION_RIGHT_REAR:I = 0x3


# instance fields
.field public mLeftFrontTirePressureValue:F

.field public mLeftFrontTireWarningStatus:I

.field public mLeftRearTirePressureValue:F

.field public mLeftRearTireWarningStatus:I

.field public mRightFrontTirePressureValue:F

.field public mRightFrontTireWarningStatus:I

.field public mRightRearTirePressureValue:F

.field public mRightRearTireWarningStatus:I

.field public mSystemWaringStatus:I

.field public mTemperatureWarningStatus:I

.field public mTirePositionStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 238
    new-instance v0, Lcom/qinggan/canbus/TPMSInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/TPMSInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/TPMSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    const/4 v0, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mTirePositionStatus:I

    .line 114
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mTemperatureWarningStatus:I

    .line 124
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mSystemWaringStatus:I

    .line 137
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTireWarningStatus:I

    .line 150
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTireWarningStatus:I

    .line 163
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTireWarningStatus:I

    .line 177
    iput v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTireWarningStatus:I

    .line 186
    iput v1, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTirePressureValue:F

    .line 194
    iput v1, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTirePressureValue:F

    .line 202
    iput v1, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTirePressureValue:F

    .line 210
    iput v1, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTirePressureValue:F

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 219
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 262
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 263
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "dispinfo Setting :===============\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTirePositionStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mTirePositionStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTemperatureWarningStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mTemperatureWarningStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 266
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSystemWaringStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mSystemWaringStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 267
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLeftFrontTireWarningStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTireWarningStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRightFrontTireWarningStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTireWarningStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLeftRearTireWarningStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTireWarningStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 270
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRightRearTireWarningStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTireWarningStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLeftFrontTirePressureValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTirePressureValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRightFrontTirePressureValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTirePressureValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 273
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLeftRearTirePressureValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTirePressureValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 274
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRightRearTirePressureValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTirePressureValue:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 275
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 224
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mTirePositionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 225
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mTemperatureWarningStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 226
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mSystemWaringStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 227
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTireWarningStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 228
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTireWarningStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTireWarningStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 230
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTireWarningStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 231
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftFrontTirePressureValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 232
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightFrontTirePressureValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 233
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mLeftRearTirePressureValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 234
    iget v0, p0, Lcom/qinggan/canbus/TPMSInfo;->mRightRearTirePressureValue:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 235
    return-void
.end method
