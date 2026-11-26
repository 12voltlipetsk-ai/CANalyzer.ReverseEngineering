.class public Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;
.super Ljava/lang/Object;
.source "VehicleOnlineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/vehicle/VehicleOnlineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DongFengConfig"
.end annotation


# static fields
.field public static final AIR_ATC:I = 0x0

.field public static final AIR_ETC:I = 0x0

.field public static final AIR_MTC:I = 0x0

.field public static final BUS:I = 0x1

.field public static final CONFIG_DATAS:[[I

.field public static final CONFIG_DATAS_HIGH:[[I

.field public static final CONFIG_DATAS_IN:[[I

.field public static final CONFIG_DATAS_LOW:[[I

.field public static final CONFIG_DATAS_PHEV:[[I

.field public static final CONFIG_PATH:Ljava/lang/String; = "/sys/class/misc/cis_mcu/vehicle_cfg"

.field public static final FEATURED:I = 0x1

.field public static final HARD_LINE:I = 0x0

.field public static final ITEM_AIR_AREA:I = 0x6

.field public static final ITEM_AVM:I = 0x2

.field public static final ITEM_AVM_CALIBRATION:I = 0x0

.field public static final ITEM_GENERAL_REVERSE_IMAGE:I = 0x1

.field public static final ITEM_LANGUAGE:I = 0xc

.field public static final ITEM_PARK_ASSIST:I = 0x3

.field public static final ITEM_PDC:I = 0x7

.field public static final ITEM_SPEAKER_CONFIG:I = 0xa

.field public static final ITEM_SWC_BUTTON:I = 0xb

.field public static final ITEM_SWC_TYPE:I = 0x4

.field public static final ITEM_TBOX:I = 0x8

.field public static final ITEM_TRANSMISSION_TYPE:I = 0x9

.field public static final ITEM_VEHICLE_TYPE:I = 0x5

.field public static final LANGUAGE_CN:I = 0x0

.field public static final LANGUAGE_EN:I = 0x1

.field public static final LEFT_AND_RIGHT_SWC:I = 0x3

.field public static final LEFT_SWC:I = 0x1

.field public static final NOT_ASSEMBLY:I = 0x0

.field public static final NOT_FEATURED:I = 0x0

.field public static final RIGHT_SWC:I = 0x2

.field public static final VEHICLE_AMT_TRANSMISSION_TYPE:I = 0x2

.field public static final VEHICLE_ASSENBLY_TBOX:I = 0x0

.field public static final VEHICLE_AT_TRANSMISSION_TYPE:I = 0x0

.field public static final VEHICLE_FRONT_AND_REAR_PDC:I = 0x2

.field public static final VEHICLE_MT_TRANSMISSION_TYPE:I = 0x1

.field public static final VEHICLE_NO_ASSENBLY_TBOX:I = 0x1

.field public static final VEHICLE_NO_PDC:I = 0x0

.field public static final VEHICLE_ONLY_REAR_PDC:I = 0x1

.field public static final VEHICLE_TWO_FRONT_CHANNEL:I = 0x0

.field public static final VEHICLE_TWO_FRONT_CHANNEL_AND_REAR_CHANNEL:I = 0x1

.field public static final VEHICLE_TYPE_G29_ID:I


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    .line 1000
    const/16 v0, 0xa

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_236

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_240

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_24a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_254

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_25e

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_268

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_272

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_27c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_286

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_290

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS:[[I

    .line 1013
    const/16 v0, 0xe

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_29a

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_2a4

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_2ae

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_2b8

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_2c2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_2cc

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_2d6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_2e0

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_2ea

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_2f4

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_2fe

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_308

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_312

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_31c

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_LOW:[[I

    .line 1030
    const/16 v0, 0xe

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_326

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_330

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_33a

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_344

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_34e

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_358

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_362

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_36c

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_376

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_380

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_38a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_394

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_39e

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_3a8

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_IN:[[I

    .line 1047
    const/16 v0, 0xe

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_3b2

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_3bc

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_3c6

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_3d0

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_3da

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_3e4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_3ee

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_3f8

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_402

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_40c

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_416

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_420

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_42a

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_434

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_HIGH:[[I

    .line 1064
    const/16 v0, 0xe

    new-array v0, v0, [[I

    new-array v1, v3, [I

    fill-array-data v1, :array_43e

    aput-object v1, v0, v4

    new-array v1, v3, [I

    fill-array-data v1, :array_448

    aput-object v1, v0, v5

    new-array v1, v3, [I

    fill-array-data v1, :array_452

    aput-object v1, v0, v6

    new-array v1, v3, [I

    fill-array-data v1, :array_45c

    aput-object v1, v0, v3

    new-array v1, v3, [I

    fill-array-data v1, :array_466

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_470

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_47a

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_484

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_48e

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_498

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_4a2

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_4ac

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_4b6

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_4c0

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$DongFengConfig;->CONFIG_DATAS_PHEV:[[I

    return-void

    .line 1000
    nop

    :array_236
    .array-data 4
        0x0
        0x1
        0x1
    .end array-data

    :array_240
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_24a
    .array-data 4
        0x1
        0x2
        0x1
    .end array-data

    :array_254
    .array-data 4
        0x4
        0x2
        0x1
    .end array-data

    :array_25e
    .array-data 4
        0x6
        0x2
        0x1
    .end array-data

    :array_268
    .array-data 4
        0x8
        0x1
        0x1
    .end array-data

    :array_272
    .array-data 4
        0x9
        0x1
        0x1
    .end array-data

    :array_27c
    .array-data 4
        0xa
        0x1
        0x1
    .end array-data

    :array_286
    .array-data 4
        0xb
        0x1
        0x1
    .end array-data

    :array_290
    .array-data 4
        0xc
        0x2
        0x1
    .end array-data

    .line 1013
    :array_29a
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_2a4
    .array-data 4
        0x5
        0x1
        0x0
    .end array-data

    :array_2ae
    .array-data 4
        0x6
        0x1
        0x0
    .end array-data

    :array_2b8
    .array-data 4
        0x8
        0x8
        0x0
    .end array-data

    :array_2c2
    .array-data 4
        0x18
        0x2
        0x1
    .end array-data

    :array_2cc
    .array-data 4
        0x1a
        0x1
        0x0
    .end array-data

    :array_2d6
    .array-data 4
        0x1b
        0x1
        0x0
    .end array-data

    :array_2e0
    .array-data 4
        0x1c
        0x1
        0x0
    .end array-data

    :array_2ea
    .array-data 4
        0x1d
        0x1
        0x0
    .end array-data

    :array_2f4
    .array-data 4
        0x22
        0x2
        0x0
    .end array-data

    :array_2fe
    .array-data 4
        0x24
        0x1
        0x0
    .end array-data

    :array_308
    .array-data 4
        0x25
        0x1
        0x0
    .end array-data

    :array_312
    .array-data 4
        0x26
        0x1
        0x0
    .end array-data

    :array_31c
    .array-data 4
        0x27
        0x1
        0x1
    .end array-data

    .line 1030
    :array_326
    .array-data 4
        0x4
        0x1
        0x1
    .end array-data

    :array_330
    .array-data 4
        0x5
        0x1
        0x0
    .end array-data

    :array_33a
    .array-data 4
        0x6
        0x1
        0x0
    .end array-data

    :array_344
    .array-data 4
        0x8
        0x8
        0x0
    .end array-data

    :array_34e
    .array-data 4
        0x18
        0x2
        0x1
    .end array-data

    :array_358
    .array-data 4
        0x1a
        0x1
        0x1
    .end array-data

    :array_362
    .array-data 4
        0x1b
        0x1
        0x0
    .end array-data

    :array_36c
    .array-data 4
        0x1c
        0x1
        0x0
    .end array-data

    :array_376
    .array-data 4
        0x1d
        0x1
        0x0
    .end array-data

    :array_380
    .array-data 4
        0x22
        0x2
        0x0
    .end array-data

    :array_38a
    .array-data 4
        0x24
        0x1
        0x0
    .end array-data

    :array_394
    .array-data 4
        0x25
        0x1
        0x0
    .end array-data

    :array_39e
    .array-data 4
        0x26
        0x1
        0x1
    .end array-data

    :array_3a8
    .array-data 4
        0x27
        0x1
        0x0
    .end array-data

    .line 1047
    :array_3b2
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_3bc
    .array-data 4
        0x5
        0x1
        0x1
    .end array-data

    :array_3c6
    .array-data 4
        0x6
        0x1
        0x1
    .end array-data

    :array_3d0
    .array-data 4
        0x8
        0x8
        0x0
    .end array-data

    :array_3da
    .array-data 4
        0x18
        0x2
        0x2
    .end array-data

    :array_3e4
    .array-data 4
        0x1a
        0x1
        0x1
    .end array-data

    :array_3ee
    .array-data 4
        0x1b
        0x1
        0x1
    .end array-data

    :array_3f8
    .array-data 4
        0x1c
        0x1
        0x1
    .end array-data

    :array_402
    .array-data 4
        0x1d
        0x1
        0x1
    .end array-data

    :array_40c
    .array-data 4
        0x22
        0x2
        0x1
    .end array-data

    :array_416
    .array-data 4
        0x24
        0x1
        0x1
    .end array-data

    :array_420
    .array-data 4
        0x25
        0x1
        0x1
    .end array-data

    :array_42a
    .array-data 4
        0x26
        0x1
        0x1
    .end array-data

    :array_434
    .array-data 4
        0x27
        0x1
        0x0
    .end array-data

    .line 1064
    :array_43e
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_448
    .array-data 4
        0x5
        0x1
        0x1
    .end array-data

    :array_452
    .array-data 4
        0x6
        0x1
        0x1
    .end array-data

    :array_45c
    .array-data 4
        0x8
        0x8
        0x1
    .end array-data

    :array_466
    .array-data 4
        0x18
        0x2
        0x2
    .end array-data

    :array_470
    .array-data 4
        0x1a
        0x1
        0x1
    .end array-data

    :array_47a
    .array-data 4
        0x1b
        0x1
        0x1
    .end array-data

    :array_484
    .array-data 4
        0x1c
        0x1
        0x1
    .end array-data

    :array_48e
    .array-data 4
        0x1d
        0x1
        0x1
    .end array-data

    :array_498
    .array-data 4
        0x22
        0x2
        0x1
    .end array-data

    :array_4a2
    .array-data 4
        0x24
        0x1
        0x1
    .end array-data

    :array_4ac
    .array-data 4
        0x25
        0x1
        0x1
    .end array-data

    :array_4b6
    .array-data 4
        0x26
        0x1
        0x1
    .end array-data

    :array_4c0
    .array-data 4
        0x27
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 769
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
