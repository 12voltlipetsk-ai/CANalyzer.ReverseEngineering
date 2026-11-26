.class public abstract Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;
.super Landroid/os/Binder;
.source "CanbusAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/CanbusAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/CanbusAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.adapter.CanbusAdapter"

.field static final TRANSACTION_destroy:I = 0x2

.field static final TRANSACTION_getAccStatus:I = 0x3

.field static final TRANSACTION_getAlerts:I = 0xf

.field static final TRANSACTION_getAutonomy:I = 0x7

.field static final TRANSACTION_getBackupBatteryLevel:I = 0x19

.field static final TRANSACTION_getCrashInfo:I = 0xe

.field static final TRANSACTION_getEngineHybirdState:I = 0x18

.field static final TRANSACTION_getEngineOilLevel:I = 0x15

.field static final TRANSACTION_getEngineOilTemperature:I = 0x14

.field static final TRANSACTION_getEngineSpeed:I = 0x1a

.field static final TRANSACTION_getEngineState:I = 0x17

.field static final TRANSACTION_getEtatPrincpSev:I = 0xd

.field static final TRANSACTION_getFuelConsumption:I = 0x6

.field static final TRANSACTION_getFuelLevel:I = 0x5

.field static final TRANSACTION_getHardwareVersion:I = 0x10

.field static final TRANSACTION_getMaintenanceDays:I = 0xa

.field static final TRANSACTION_getMaintenanceDistance:I = 0x9

.field static final TRANSACTION_getMaintenanceSign:I = 0xb

.field static final TRANSACTION_getPassengerNum:I = 0x13

.field static final TRANSACTION_getSignEcheance:I = 0xc

.field static final TRANSACTION_getSoftwareVersion:I = 0x11

.field static final TRANSACTION_getTotalDistance:I = 0x8

.field static final TRANSACTION_getVehicleSpeed:I = 0x12

.field static final TRANSACTION_getVehicleState:I = 0x16

.field static final TRANSACTION_getWaterTemperature:I = 0x4

.field static final TRANSACTION_init:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 231
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 232
    const-string v0, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/CanbusAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 240
    if-nez p0, :cond_4

    .line 241
    const/4 v0, 0x0

    .line 247
    :goto_3
    return-object v0

    .line 243
    :cond_4
    const-string v1, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 244
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/adapter/CanbusAdapter;

    if-eqz v1, :cond_13

    .line 245
    check-cast v0, Lcom/pateo/tsp/adapter/CanbusAdapter;

    goto :goto_3

    .line 247
    :cond_13
    new-instance v0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;
    .registers 1

    .prologue
    .line 1154
    sget-object v0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/CanbusAdapter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/adapter/CanbusAdapter;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/adapter/CanbusAdapter;

    .prologue
    .line 1147
    sget-object v0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/CanbusAdapter;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 1148
    sput-object p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/CanbusAdapter;

    .line 1149
    const/4 v0, 0x1

    .line 1151
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 251
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 255
    const-string v2, "com.pateo.tsp.adapter.CanbusAdapter"

    .line 256
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_18e

    .line 473
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 260
    :sswitch_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 265
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->init()I

    move-result v0

    .line 267
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 273
    .end local v0    # "_result":I
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->destroy()I

    move-result v0

    .line 275
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 281
    .end local v0    # "_result":I
    :sswitch_2b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getAccStatus()I

    move-result v0

    .line 283
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 289
    .end local v0    # "_result":I
    :sswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getWaterTemperature()I

    move-result v0

    .line 291
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 297
    .end local v0    # "_result":I
    :sswitch_47
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getFuelLevel()I

    move-result v0

    .line 299
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 305
    .end local v0    # "_result":I
    :sswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getFuelConsumption()J

    move-result-wide v0

    .line 307
    .local v0, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a

    .line 313
    .end local v0    # "_result":J
    :sswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getAutonomy()I

    move-result v0

    .line 315
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 321
    .end local v0    # "_result":I
    :sswitch_71
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getTotalDistance()J

    move-result-wide v0

    .line 323
    .local v0, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto :goto_a

    .line 329
    .end local v0    # "_result":J
    :sswitch_7f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 330
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getMaintenanceDistance()J

    move-result-wide v0

    .line 331
    .restart local v0    # "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 332
    invoke-virtual {p3, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_a

    .line 337
    .end local v0    # "_result":J
    :sswitch_8e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 338
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getMaintenanceDays()I

    move-result v0

    .line 339
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 340
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 345
    .end local v0    # "_result":I
    :sswitch_9d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getMaintenanceSign()I

    move-result v0

    .line 347
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 348
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 353
    .end local v0    # "_result":I
    :sswitch_ac
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getSignEcheance()I

    move-result v0

    .line 355
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 356
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 361
    .end local v0    # "_result":I
    :sswitch_bb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 362
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getEtatPrincpSev()I

    move-result v0

    .line 363
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 364
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 369
    .end local v0    # "_result":I
    :sswitch_ca
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 370
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getCrashInfo()I

    move-result v0

    .line 371
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 372
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 377
    .end local v0    # "_result":I
    :sswitch_d9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getAlerts()Ljava/lang/String;

    move-result-object v0

    .line 379
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 380
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 385
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_e8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 386
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getHardwareVersion()I

    move-result v0

    .line 387
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 388
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 393
    .end local v0    # "_result":I
    :sswitch_f7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getSoftwareVersion()I

    move-result v0

    .line 395
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 401
    .end local v0    # "_result":I
    :sswitch_106
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 402
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getVehicleSpeed()I

    move-result v0

    .line 403
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 404
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 409
    .end local v0    # "_result":I
    :sswitch_115
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 410
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getPassengerNum()I

    move-result v0

    .line 411
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 412
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 417
    .end local v0    # "_result":I
    :sswitch_124
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 418
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getEngineOilTemperature()I

    move-result v0

    .line 419
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 420
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 425
    .end local v0    # "_result":I
    :sswitch_133
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 426
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getEngineOilLevel()I

    move-result v0

    .line 427
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 428
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 433
    .end local v0    # "_result":I
    :sswitch_142
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getVehicleState()I

    move-result v0

    .line 435
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 436
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 441
    .end local v0    # "_result":I
    :sswitch_151
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 442
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getEngineState()I

    move-result v0

    .line 443
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 449
    .end local v0    # "_result":I
    :sswitch_160
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getEngineHybirdState()I

    move-result v0

    .line 451
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 452
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 457
    .end local v0    # "_result":I
    :sswitch_16f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getBackupBatteryLevel()I

    move-result v0

    .line 459
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 460
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 465
    .end local v0    # "_result":I
    :sswitch_17e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getEngineSpeed()I

    move-result v0

    .line 467
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 468
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 256
    nop

    :sswitch_data_18e
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_39
        0x5 -> :sswitch_47
        0x6 -> :sswitch_55
        0x7 -> :sswitch_63
        0x8 -> :sswitch_71
        0x9 -> :sswitch_7f
        0xa -> :sswitch_8e
        0xb -> :sswitch_9d
        0xc -> :sswitch_ac
        0xd -> :sswitch_bb
        0xe -> :sswitch_ca
        0xf -> :sswitch_d9
        0x10 -> :sswitch_e8
        0x11 -> :sswitch_f7
        0x12 -> :sswitch_106
        0x13 -> :sswitch_115
        0x14 -> :sswitch_124
        0x15 -> :sswitch_133
        0x16 -> :sswitch_142
        0x17 -> :sswitch_151
        0x18 -> :sswitch_160
        0x19 -> :sswitch_16f
        0x1a -> :sswitch_17e
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
