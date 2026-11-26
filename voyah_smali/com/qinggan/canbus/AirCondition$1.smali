.class final Lcom/qinggan/canbus/AirCondition$1;
.super Ljava/lang/Object;
.source "AirCondition.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/AirCondition;
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
        "Lcom/qinggan/canbus/AirCondition;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 1278
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/AirCondition;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 1284
    new-instance v0, Lcom/qinggan/canbus/AirCondition;

    invoke-direct {v0}, Lcom/qinggan/canbus/AirCondition;-><init>()V

    .line 1285
    .local v0, "air":Lcom/qinggan/canbus/AirCondition;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airSWStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1286
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airACStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1287
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1288
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$302(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1289
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1290
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1291
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1292
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1293
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1294
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1295
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1296
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1102(Lcom/qinggan/canbus/AirCondition;F)F

    .line 1297
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1202(Lcom/qinggan/canbus/AirCondition;F)F

    .line 1298
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1302(Lcom/qinggan/canbus/AirCondition;F)F

    .line 1299
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1300
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1301
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1302
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1303
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1304
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$1902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1305
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airECO:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1306
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1307
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1308
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2302(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1309
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1310
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1311
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1312
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1313
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1314
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$2902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1315
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1316
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1317
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1318
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->IGN_ON:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3302(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1319
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airTempInCar:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1320
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1321
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->ions_state:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1322
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->ions_switch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1323
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->ac_power_switch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1324
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$3902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1325
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airTempLevel:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1326
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1327
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1328
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4302(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1329
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1330
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1331
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1332
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1333
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPm2_5:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1334
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acRunningState:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$4902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1335
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airAQSStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1336
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPMStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1337
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPreSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1338
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5302(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1339
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1340
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acHazeMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1341
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1342
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1343
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1344
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$5902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1345
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1346
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->displaypop:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1347
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPm25_level:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1348
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6302(Lcom/qinggan/canbus/AirCondition;F)F

    .line 1349
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6402(Lcom/qinggan/canbus/AirCondition;F)F

    .line 1350
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1351
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1352
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airworking_mode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1353
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1354
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$6902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1355
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1356
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airFrontMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7102(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1357
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7202(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1358
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7302(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1359
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7402(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1360
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7502(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1361
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7602(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1362
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->isAirPM2_5NeedRefresh:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7702(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1363
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->isAirPM2_5OutCarNeedRefresh:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7802(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1364
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$7902(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/AirCondition;->airDORMode:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/AirCondition;->access$8002(Lcom/qinggan/canbus/AirCondition;I)I

    .line 1367
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1278
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/AirCondition$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/AirCondition;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/AirCondition;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 1280
    new-array v0, p1, [Lcom/qinggan/canbus/AirCondition;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 1278
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/AirCondition$1;->newArray(I)[Lcom/qinggan/canbus/AirCondition;

    move-result-object v0

    return-object v0
.end method
