.class public Lcom/qinggan/vehicle/VehicleOnlineConfig$BJEVOnlineConfig;
.super Ljava/lang/Object;
.source "VehicleOnlineConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/vehicle/VehicleOnlineConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BJEVOnlineConfig"
.end annotation


# static fields
.field public static final CHINA_CODE:I = 0x0

.field public static final CONFIG_DATAS:[[I

.field public static final CONFIG_PATH:Ljava/lang/String; = "/sys/class/misc/cis_mcu/vehicle_cfg"

.field public static final FEATURED:I = 0x1

.field public static final ITEM_ACC:I = 0x16

.field public static final ITEM_AEB:I = 0x13

.field public static final ITEM_AEB_PERSON:I = 0x14

.field public static final ITEM_AQS:I = 0x2

.field public static final ITEM_ATMOSPHERE_LAMP:I = 0xd

.field public static final ITEM_AVM:I = 0xc

.field public static final ITEM_BSD:I = 0xf

.field public static final ITEM_COUNTROY:I = 0x0

.field public static final ITEM_CVBS_DVR:I = 0x6

.field public static final ITEM_DRL:I = 0x17

.field public static final ITEM_FCW:I = 0x12

.field public static final ITEM_FCW_PERSON:I = 0x15

.field public static final ITEM_FOLLOW_ME:I = 0x18

.field public static final ITEM_FRONT_REVERSE_RADAR:I = 0xa

.field public static final ITEM_GENERAL_REVERSE_IMAGE:I = 0xb

.field public static final ITEM_IPK_IPC:I = 0x8

.field public static final ITEM_LANGUAGE:I = 0x1

.field public static final ITEM_LDW:I = 0x11

.field public static final ITEM_LOW_DYNAMIC_OBJECT_RECOGNITION:I = 0xe

.field public static final ITEM_PARK_ASSIST:I = 0x10

.field public static final ITEM_PM25:I = 0x3

.field public static final ITEM_POLLEN_FILTRATION:I = 0x4

.field public static final ITEM_RVM:I = 0x19

.field public static final ITEM_SINGLE_PEDAL:I = 0x1a

.field public static final ITEM_SPEAKER_CONFIG:I = 0x13

.field public static final ITEM_SWC_BUTTON:I = 0x9

.field public static final ITEM_TBOX:I = 0x7

.field public static final ITEM_WIFI_DVR:I = 0x5

.field public static final ITEM_WORM:I = 0x13

.field public static final LANGUAGE_CN:I = 0x0

.field public static final LANGUAGE_EN:I = 0x1

.field public static final NOT_FEATURED:I


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x3

    .line 282
    const/16 v0, 0x1d

    new-array v0, v0, [[I

    const/4 v1, 0x0

    new-array v2, v3, [I

    fill-array-data v2, :array_104

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [I

    fill-array-data v2, :array_10e

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [I

    fill-array-data v2, :array_118

    aput-object v2, v0, v1

    new-array v1, v3, [I

    fill-array-data v1, :array_122

    aput-object v1, v0, v3

    const/4 v1, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_12c

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [I

    fill-array-data v2, :array_136

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [I

    fill-array-data v2, :array_140

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [I

    fill-array-data v2, :array_14a

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [I

    fill-array-data v2, :array_154

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [I

    fill-array-data v2, :array_15e

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [I

    fill-array-data v2, :array_168

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [I

    fill-array-data v2, :array_172

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [I

    fill-array-data v2, :array_17c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [I

    fill-array-data v2, :array_186

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [I

    fill-array-data v2, :array_190

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [I

    fill-array-data v2, :array_19a

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [I

    fill-array-data v2, :array_1a4

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [I

    fill-array-data v2, :array_1ae

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [I

    fill-array-data v2, :array_1b8

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [I

    fill-array-data v2, :array_1c2

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-array v2, v3, [I

    fill-array-data v2, :array_1cc

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-array v2, v3, [I

    fill-array-data v2, :array_1d6

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-array v2, v3, [I

    fill-array-data v2, :array_1e0

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-array v2, v3, [I

    fill-array-data v2, :array_1ea

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-array v2, v3, [I

    fill-array-data v2, :array_1f4

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-array v2, v3, [I

    fill-array-data v2, :array_1fe

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-array v2, v3, [I

    fill-array-data v2, :array_208

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-array v2, v3, [I

    fill-array-data v2, :array_212

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-array v2, v3, [I

    fill-array-data v2, :array_21c

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/vehicle/VehicleOnlineConfig$BJEVOnlineConfig;->CONFIG_DATAS:[[I

    return-void

    :array_104
    .array-data 4
        0x0
        0x8
        0x0
    .end array-data

    :array_10e
    .array-data 4
        0x8
        0x8
        0x0
    .end array-data

    :array_118
    .array-data 4
        0x10
        0x1
        0x0
    .end array-data

    :array_122
    .array-data 4
        0x11
        0x1
        0x1
    .end array-data

    :array_12c
    .array-data 4
        0x12
        0x1
        0x1
    .end array-data

    :array_136
    .array-data 4
        0x13
        0x1
        0x1
    .end array-data

    :array_140
    .array-data 4
        0x14
        0x1
        0x0
    .end array-data

    :array_14a
    .array-data 4
        0x15
        0x1
        0x1
    .end array-data

    :array_154
    .array-data 4
        0x16
        0x1
        0x1
    .end array-data

    :array_15e
    .array-data 4
        0x17
        0x1
        0x1
    .end array-data

    :array_168
    .array-data 4
        0x18
        0x1
        0x0
    .end array-data

    :array_172
    .array-data 4
        0x19
        0x1
        0x0
    .end array-data

    :array_17c
    .array-data 4
        0x1a
        0x1
        0x1
    .end array-data

    :array_186
    .array-data 4
        0x1b
        0x1
        0x0
    .end array-data

    :array_190
    .array-data 4
        0x1c
        0x1
        0x1
    .end array-data

    :array_19a
    .array-data 4
        0x1d
        0x1
        0x1
    .end array-data

    :array_1a4
    .array-data 4
        0x1e
        0x1
        0x1
    .end array-data

    :array_1ae
    .array-data 4
        0x1f
        0x1
        0x1
    .end array-data

    :array_1b8
    .array-data 4
        0x20
        0x1
        0x0
    .end array-data

    :array_1c2
    .array-data 4
        0x21
        0x1
        0x0
    .end array-data

    :array_1cc
    .array-data 4
        0x22
        0x1
        0x0
    .end array-data

    :array_1d6
    .array-data 4
        0x23
        0x1
        0x0
    .end array-data

    :array_1e0
    .array-data 4
        0x24
        0x1
        0x0
    .end array-data

    :array_1ea
    .array-data 4
        0x25
        0x1
        0x1
    .end array-data

    :array_1f4
    .array-data 4
        0x26
        0x1
        0x1
    .end array-data

    :array_1fe
    .array-data 4
        0x27
        0x1
        0x0
    .end array-data

    :array_208
    .array-data 4
        0x28
        0x1
        0x1
    .end array-data

    :array_212
    .array-data 4
        0x29
        0x1
        0x1
    .end array-data

    :array_21c
    .array-data 4
        0x2a
        0x1
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
