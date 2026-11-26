.class public Lcom/qinggan/vehicle/VehicleOnlineConfig$BAICOnlineConfig;
.super Ljava/lang/Object;
.source "VehicleOnlineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/vehicle/VehicleOnlineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BAICOnlineConfig"
.end annotation


# static fields
.field public static final ACTYPE_AAC:I = 0x1

.field public static final ACTYPE_EAC:I = 0x0

.field public static final CONFIG_DATAS:[[I

.field public static final CONFIG_PATH:Ljava/lang/String; = "/sys/class/misc/cis_mcu/baic_vehicle_config"

.field public static final FEATURED:I = 0x1

.field public static final GEAR_AT_CVT:I = 0x1

.field public static final GEAR_MT:I = 0x0

.field public static final ITEM_AC_TYPE:I = 0x5

.field public static final ITEM_AIR_CLEANER:I = 0xb

.field public static final ITEM_ASS:I = 0x0

.field public static final ITEM_AVM:I = 0x2

.field public static final ITEM_DRL:I = 0x3

.field public static final ITEM_DVR:I = 0x10

.field public static final ITEM_FSH:I = 0xf

.field public static final ITEM_GEAR:I = 0x7

.field public static final ITEM_GNITION_OFF_UNLOCK_CONFIGE:I = 0xc

.field public static final ITEM_LANGUAGE:I = 0x9

.field public static final ITEM_MPC:I = 0xe

.field public static final ITEM_MRR:I = 0xd

.field public static final ITEM_RADAR:I = 0x6

.field public static final ITEM_RADIO:I = 0xa

.field public static final ITEM_RVC:I = 0x1

.field public static final ITEM_TMODULE:I = 0x4

.field public static final ITEM_VEHICLE_VARIANT:I = 0x8

.field public static final LANGUAGE_CN:I = 0x0

.field public static final LANGUAGE_EN:I = 0x1

.field public static final NOT_FEATURED:I = 0x0

.field public static final RADIO_AUSTRA:I = 0x5

.field public static final RADIO_CN:I = 0x0

.field public static final RADIO_EAST_EUR0:I = 0x3

.field public static final RADIO_EAST_EUR1:I = 0x4

.field public static final RADIO_EURO1:I = 0x1

.field public static final RADIO_EURO2:I = 0x2

.field public static final RADIO_JAP:I = 0x9

.field public static final RADIO_LATIN:I = 0x7

.field public static final RADIO_SOUTHEST_ASIA:I = 0x8

.field public static final RADIO_USA:I = 0x6

.field public static final RADRA_NO:I = 0x0

.field public static final RADRA_REAR:I = 0x1

.field public static final RADRA_R_F:I = 0x2

.field public static final VARIANT_C40D_AVN:I = 0x1

.field public static final VARIANT_C40D_DA:I = 0x0

.field public static final VARIANT_C53F_AVN:I = 0x5

.field public static final VARIANT_C53F_DA:I = 0x4

.field public static final VARIANT_H40D_AVN:I = 0x3

.field public static final VARIANT_H40D_DA:I = 0x2


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 531
    const/16 v0, 0x11

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_98

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_a2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_ac

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_b6

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_c0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_ca

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_d4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_de

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_e8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_f2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_fc

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_106

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_110

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_11a

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_124

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_12e

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_138

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$BAICOnlineConfig;->CONFIG_DATAS:[[I

    return-void

    :array_98
    .array-data 4
        0x0
        0x1
        0x0
    .end array-data

    :array_a2
    .array-data 4
        0x1
        0x1
        0x1
    .end array-data

    :array_ac
    .array-data 4
        0x2
        0x1
        0x1
    .end array-data

    :array_b6
    .array-data 4
        0x3
        0x1
        0x1
    .end array-data

    :array_c0
    .array-data 4
        0x4
        0x1
        0x0
    .end array-data

    :array_ca
    .array-data 4
        0x5
        0x1
        0x0
    .end array-data

    :array_d4
    .array-data 4
        0x6
        0x2
        0x0
    .end array-data

    :array_de
    .array-data 4
        0x8
        0x2
        0x1
    .end array-data

    :array_e8
    .array-data 4
        0xc
        0x4
        0x1
    .end array-data

    :array_f2
    .array-data 4
        0x10
        0x4
        0x0
    .end array-data

    :array_fc
    .array-data 4
        0x14
        0x4
        0x0
    .end array-data

    :array_106
    .array-data 4
        0x18
        0x1
        0x0
    .end array-data

    :array_110
    .array-data 4
        0xa
        0x1
        0x0
    .end array-data

    :array_11a
    .array-data 4
        0x19
        0x1
        0x0
    .end array-data

    :array_124
    .array-data 4
        0x1a
        0x1
        0x0
    .end array-data

    :array_12e
    .array-data 4
        0x1b
        0x1
        0x0
    .end array-data

    :array_138
    .array-data 4
        0xb
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
