.class public Lcom/qinggan/vehicle/VehicleOnlineConfig$GeelyOnlineConfig;
.super Ljava/lang/Object;
.source "VehicleOnlineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/vehicle/VehicleOnlineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GeelyOnlineConfig"
.end annotation


# static fields
.field public static final AIR_DUAL_AREA:I = 0x1

.field public static final AIR_SINGLE_AREA:I = 0x0

.field public static final CONFIG_DATAS:[[I

.field public static final CONFIG_PATH:Ljava/lang/String; = "/sys/class/misc/cis_mcu/vehicle_cfg"

.field public static final FEATURED:I = 0x1

.field public static final HAVING_RKE:I = 0x0

.field public static final HAVING_VENTILATE:I = 0x0

.field public static final ITEM_AIR_AREA:I = 0x6

.field public static final ITEM_AVM:I = 0x3

.field public static final ITEM_FCW:I = 0x1

.field public static final ITEM_FRS:I = 0x0

.field public static final ITEM_FUNCTION_PLAY:I = 0x5

.field public static final ITEM_GENERAL_REVERSE_IMAGE:I = 0x2

.field public static final ITEM_PDC:I = 0x7

.field public static final ITEM_RKE:I = 0x4

.field public static final ITEM_SPEAKER_CONFIG:I = 0xa

.field public static final ITEM_SWC_BUTTON_LEFT:I = 0xb

.field public static final ITEM_SWC_BUTTON_RIGHT:I = 0xc

.field public static final ITEM_TBOX:I = 0x8

.field public static final ITEM_TRANSMISSION_TYPE:I = 0x9

.field public static final NOT_FEATURED:I = 0x0

.field public static final NO_VENTILATE_AND_NO_RKE:I = 0x0

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


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 746
    const/16 v0, 0xd

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_74

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_7e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_88

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_92

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_9c

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_a6

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_b0

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_ba

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_c4

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_ce

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_d8

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_e2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_ec

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$GeelyOnlineConfig;->CONFIG_DATAS:[[I

    return-void

    :array_74
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data

    :array_7e
    .array-data 4
        0x1
        0x1
        0x0
    .end array-data

    :array_88
    .array-data 4
        0x8
        0x1
        0x1
    .end array-data

    :array_92
    .array-data 4
        0x9
        0x1
        0x0
    .end array-data

    :array_9c
    .array-data 4
        0xa
        0x2
        0x0
    .end array-data

    :array_a6
    .array-data 4
        0xc
        0x1
        0x0
    .end array-data

    :array_b0
    .array-data 4
        0x10
        0x1
        0x0
    .end array-data

    :array_ba
    .array-data 4
        0x18
        0x2
        0x0
    .end array-data

    :array_c4
    .array-data 4
        0x20
        0x1
        0x1
    .end array-data

    :array_ce
    .array-data 4
        0x28
        0x2
        0x1
    .end array-data

    :array_d8
    .array-data 4
        0x30
        0x1
        0x0
    .end array-data

    :array_e2
    .array-data 4
        0x38
        0x1
        0x0
    .end array-data

    :array_ec
    .array-data 4
        0x39
        0x1
        0x0
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 559
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
