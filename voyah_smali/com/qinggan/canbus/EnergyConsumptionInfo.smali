.class public Lcom/qinggan/canbus/EnergyConsumptionInfo;
.super Ljava/lang/Object;
.source "EnergyConsumptionInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/EnergyConsumptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final INVALID:I = -0x270f

.field public static final UNKNOWN:I = -0x3e8


# instance fields
.field private currentTripAvgOilConsum:F

.field private currentTripAvgPwrConsum:F

.field private currentTripAvgSpd:I

.field private currentTripDistance:F

.field private currentTripLastingTime:I

.field private sinceChargeAvgOilConsum:F

.field private sinceChargeAvgPwrConsum:F

.field private sinceChargeAvgSpd:I

.field private sinceChargeDistance:F

.field private sinceChargeLastingTime:I

.field private sinceRefulAvgOilConsum:F

.field private sinceRefulAvgPwrConsum:F

.field private sinceRefulAvgSpd:I

.field private sinceRefulDistance:F

.field private sinceRefulLastingTime:I

.field private sinceTripAAvgOilConsum:F

.field private sinceTripAAvgPwrConsum:F

.field private sinceTripAAvgSpd:I

.field private sinceTripADistance:F

.field private sinceTripALastingTime:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 356
    new-instance v0, Lcom/qinggan/canbus/EnergyConsumptionInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/EnergyConsumptionInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/16 v1, -0x3e8

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 330
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    .line 26
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    .line 31
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    .line 36
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    .line 41
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    .line 46
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    .line 51
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    .line 56
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    .line 61
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    .line 66
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    .line 71
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    .line 76
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    .line 81
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    .line 86
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    .line 91
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    .line 96
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    .line 101
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    .line 106
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    .line 111
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    .line 116
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    .line 331
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/16 v1, -0x3e8

    const/high16 v0, -0x3b860000    # -1000.0f

    .line 333
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    .line 26
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    .line 31
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    .line 36
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    .line 41
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    .line 46
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    .line 51
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    .line 56
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    .line 61
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    .line 66
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    .line 71
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    .line 76
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    .line 81
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    .line 86
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    .line 91
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    .line 96
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    .line 101
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    .line 106
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    .line 111
    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    .line 116
    iput v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    .line 334
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    .line 335
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    .line 336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    .line 337
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    .line 338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    .line 339
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    .line 340
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    .line 341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    .line 342
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    .line 343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    .line 344
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    .line 345
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    .line 346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    .line 347
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    .line 348
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    .line 349
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    .line 350
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    .line 351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    .line 352
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    .line 353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    .line 354
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 280
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentTripAvgOilConsum()F
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    return v0
.end method

.method public getCurrentTripAvgPwrConsum()F
    .registers 2

    .prologue
    .line 127
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    return v0
.end method

.method public getCurrentTripAvgSpd()I
    .registers 2

    .prologue
    .line 135
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    return v0
.end method

.method public getCurrentTripDistance()F
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    return v0
.end method

.method public getCurrentTripLastingTime()F
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    int-to-float v0, v0

    return v0
.end method

.method public getSinceChargeAvgOilConsum()F
    .registers 2

    .prologue
    .line 183
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    return v0
.end method

.method public getSinceChargeAvgPwrConsum()F
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    return v0
.end method

.method public getSinceChargeAvgSpd()I
    .registers 2

    .prologue
    .line 175
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    return v0
.end method

.method public getSinceChargeDistance()F
    .registers 2

    .prologue
    .line 159
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    return v0
.end method

.method public getSinceChargeLastingTime()F
    .registers 2

    .prologue
    .line 191
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    int-to-float v0, v0

    return v0
.end method

.method public getSinceRefulAvgOilConsum()F
    .registers 2

    .prologue
    .line 223
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    return v0
.end method

.method public getSinceRefulAvgPwrConsum()F
    .registers 2

    .prologue
    .line 207
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    return v0
.end method

.method public getSinceRefulAvgSpd()I
    .registers 2

    .prologue
    .line 215
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    return v0
.end method

.method public getSinceRefulDistance()F
    .registers 2

    .prologue
    .line 199
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    return v0
.end method

.method public getSinceRefulLastingTime()F
    .registers 2

    .prologue
    .line 231
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    int-to-float v0, v0

    return v0
.end method

.method public getSinceTripAAvgOilConsum()F
    .registers 2

    .prologue
    .line 263
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    return v0
.end method

.method public getSinceTripAAvgPwrConsum()F
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    return v0
.end method

.method public getSinceTripAAvgSpd()I
    .registers 2

    .prologue
    .line 255
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    return v0
.end method

.method public getSinceTripADistance()F
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    return v0
.end method

.method public getSinceTripALastingTime()F
    .registers 2

    .prologue
    .line 271
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    int-to-float v0, v0

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 308
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    .line 309
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    .line 310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    .line 311
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    .line 312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    .line 313
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    .line 314
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    .line 315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    .line 316
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    .line 317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    .line 318
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    .line 319
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    .line 320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    .line 321
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    .line 322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    .line 323
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    .line 324
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    .line 325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    .line 326
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    .line 327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    .line 328
    return-void
.end method

.method public setCurrentTripAvgOilConsum(F)V
    .registers 2
    .param p1, "currentTripAvgOilConsum"    # F

    .prologue
    .line 147
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    .line 148
    return-void
.end method

.method public setCurrentTripAvgPwrConsum(F)V
    .registers 2
    .param p1, "currentTripAvgPwrConsum"    # F

    .prologue
    .line 131
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    .line 132
    return-void
.end method

.method public setCurrentTripAvgSpd(I)V
    .registers 2
    .param p1, "currentTripAvgSpd"    # I

    .prologue
    .line 139
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    .line 140
    return-void
.end method

.method public setCurrentTripDistance(F)V
    .registers 2
    .param p1, "currentTripDistance"    # F

    .prologue
    .line 123
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    .line 124
    return-void
.end method

.method public setCurrentTripLastingTime(I)V
    .registers 2
    .param p1, "currentTripLastingTime"    # I

    .prologue
    .line 155
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    .line 156
    return-void
.end method

.method public setSinceChargeAvgOilConsum(F)V
    .registers 2
    .param p1, "sinceChargeAvgOilConsum"    # F

    .prologue
    .line 187
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    .line 188
    return-void
.end method

.method public setSinceChargeAvgPwrConsum(F)V
    .registers 2
    .param p1, "sinceChargeAvgPwrConsum"    # F

    .prologue
    .line 171
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    .line 172
    return-void
.end method

.method public setSinceChargeAvgSpd(I)V
    .registers 2
    .param p1, "sinceChargeAvgSpd"    # I

    .prologue
    .line 179
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    .line 180
    return-void
.end method

.method public setSinceChargeDistance(F)V
    .registers 2
    .param p1, "sinceChargeDistance"    # F

    .prologue
    .line 163
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    .line 164
    return-void
.end method

.method public setSinceChargeLastingTime(I)V
    .registers 2
    .param p1, "sinceChargeLastingTime"    # I

    .prologue
    .line 195
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    .line 196
    return-void
.end method

.method public setSinceRefulAvgOilConsum(F)V
    .registers 2
    .param p1, "sinceRefulAvgOilConsum"    # F

    .prologue
    .line 227
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    .line 228
    return-void
.end method

.method public setSinceRefulAvgPwrConsum(F)V
    .registers 2
    .param p1, "sinceRefulAvgPwrConsum"    # F

    .prologue
    .line 211
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    .line 212
    return-void
.end method

.method public setSinceRefulAvgSpd(I)V
    .registers 2
    .param p1, "sinceRefulAvgSpd"    # I

    .prologue
    .line 219
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    .line 220
    return-void
.end method

.method public setSinceRefulDistance(F)V
    .registers 2
    .param p1, "sinceRefulDistance"    # F

    .prologue
    .line 203
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    .line 204
    return-void
.end method

.method public setSinceRefulLastingTime(I)V
    .registers 2
    .param p1, "sinceRefulLastingTime"    # I

    .prologue
    .line 235
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    .line 236
    return-void
.end method

.method public setSinceTripAAvgOilConsum(F)V
    .registers 2
    .param p1, "sinceTripAAvgOilConsum"    # F

    .prologue
    .line 267
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    .line 268
    return-void
.end method

.method public setSinceTripAAvgPwrConsum(F)V
    .registers 2
    .param p1, "sinceTripAAvgPwrConsum"    # F

    .prologue
    .line 251
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    .line 252
    return-void
.end method

.method public setSinceTripAAvgSpd(I)V
    .registers 2
    .param p1, "sinceTripAAvgSpd"    # I

    .prologue
    .line 259
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    .line 260
    return-void
.end method

.method public setSinceTripADistance(F)V
    .registers 2
    .param p1, "sinceTripADistance"    # F

    .prologue
    .line 243
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    .line 244
    return-void
.end method

.method public setSinceTripALastingTime(I)V
    .registers 2
    .param p1, "sinceTripALastingTime"    # I

    .prologue
    .line 275
    iput p1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    .line 276
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 370
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EnergyConsumptionInfo{currentTripDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripAvgPwrConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripAvgSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripAvgOilConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentTripLastingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeAvgPwrConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeAvgSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeAvgOilConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceChargeLastingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulAvgPwrConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulAvgSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulAvgOilConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceRefulLastingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripADistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAAvgPwrConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAAvgSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripAAvgOilConsum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sinceTripALastingTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    .line 285
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 286
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgPwrConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 287
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 288
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripAvgOilConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 289
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->currentTripLastingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 290
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 291
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgPwrConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 292
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeAvgOilConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 294
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceChargeLastingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 295
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulDistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 296
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgPwrConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 297
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 298
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulAvgOilConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 299
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceRefulLastingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripADistance:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 301
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgPwrConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 302
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripAAvgOilConsum:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 304
    iget v0, p0, Lcom/qinggan/canbus/EnergyConsumptionInfo;->sinceTripALastingTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 305
    return-void
.end method
