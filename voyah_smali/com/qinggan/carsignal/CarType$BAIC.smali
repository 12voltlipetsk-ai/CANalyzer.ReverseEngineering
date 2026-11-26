.class public final Lcom/qinggan/carsignal/CarType$BAIC;
.super Ljava/lang/Object;
.source "CarType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BAIC"
.end annotation


# static fields
.field public static final BAIC_C40DB:I = 0x27

.field public static final BAIC_C40D_VEHICLE_HIGH:[I

.field public static final BAIC_C40D_VEHICLE_HIGHEST:[I

.field public static final BAIC_C40D_VEHICLE_LEASE:[I

.field public static final BAIC_C40D_VEHICLE_LOW:[I

.field public static final BAIC_C40D_VEHICLE_MIDDLE:[I

.field public static final BAIC_C51EB_VEHICLE_HIGH:[I

.field public static final BAIC_C51EB_VEHICLE_HIGHEST:[I

.field public static final BAIC_C51EB_VEHICLE_LOW:[I

.field public static final BAIC_C53F:I = 0x25

.field public static final BAIC_C53F_NAME:Ljava/lang/String; = "c3004h"

.field public static final BAIC_C62X:I = 0x2e

.field public static final BAIC_C62X_NAME:Ljava/lang/String; = "c3005h"

.field public static final BJEV_C35DB:I = 0x2a

.field public static final BJEV_C35DB_NAME:Ljava/lang/String; = "C35DB"

.field public static final BJEV_C40DB_NAME:Ljava/lang/String; = "C40DB"

.field public static final BJEV_C51EB:I = 0x24

.field public static final BJEV_C51EB_NAME:Ljava/lang/String; = "e0001h"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 58
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c51EBbaicVehicleLow()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C51EB_VEHICLE_LOW:[I

    .line 72
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c51EBbaicVehicleHigh()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C51EB_VEHICLE_HIGH:[I

    .line 86
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c51EBbaicVehicleHighest()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C51EB_VEHICLE_HIGHEST:[I

    .line 100
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c40DbaicVehicleLease()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C40D_VEHICLE_LEASE:[I

    .line 114
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c40DbaicVehicleLow()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C40D_VEHICLE_LOW:[I

    .line 128
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c40DbaicVehicleMiddle()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C40D_VEHICLE_MIDDLE:[I

    .line 142
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c40DbaicVehicleHigh()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C40D_VEHICLE_HIGH:[I

    .line 156
    invoke-static {}, Lcom/qinggan/carsignal/CarType$BAIC;->c40DbaicVehicleHighest()[I

    move-result-object v0

    sput-object v0, Lcom/qinggan/carsignal/CarType$BAIC;->BAIC_C40D_VEHICLE_HIGHEST:[I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static c40DbaicVehicleHigh()[I
    .registers 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 145
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 146
    .local v0, "data":[I
    aput v2, v0, v2

    .line 147
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 148
    const/4 v1, 0x2

    const/16 v2, 0xee

    aput v2, v0, v1

    .line 149
    const/16 v1, 0xb4

    aput v1, v0, v3

    .line 150
    const/4 v1, 0x4

    const/16 v2, 0xe0

    aput v2, v0, v1

    .line 151
    const/4 v1, 0x5

    const/16 v2, 0x7f

    aput v2, v0, v1

    .line 152
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 153
    return-object v0
.end method

.method private static c40DbaicVehicleHighest()[I
    .registers 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x0

    .line 159
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 160
    .local v0, "data":[I
    aput v2, v0, v2

    .line 161
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 162
    const/4 v1, 0x2

    const/16 v2, 0xee

    aput v2, v0, v1

    .line 163
    const/16 v1, 0xb4

    aput v1, v0, v3

    .line 164
    const/4 v1, 0x4

    const/16 v2, 0xff

    aput v2, v0, v1

    .line 165
    const/4 v1, 0x5

    const/16 v2, 0x7f

    aput v2, v0, v1

    .line 166
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 167
    return-object v0
.end method

.method private static c40DbaicVehicleLease()[I
    .registers 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 103
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 104
    .local v0, "data":[I
    aput v2, v0, v2

    .line 105
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 106
    const/16 v1, 0xe4

    aput v1, v0, v3

    .line 107
    aput v2, v0, v4

    .line 108
    const/4 v1, 0x4

    const/16 v2, 0x60

    aput v2, v0, v1

    .line 109
    const/4 v1, 0x5

    aput v4, v0, v1

    .line 110
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 111
    return-object v0
.end method

.method private static c40DbaicVehicleLow()[I
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 117
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 118
    .local v0, "data":[I
    aput v2, v0, v2

    .line 119
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 120
    const/16 v1, 0xe4

    aput v1, v0, v3

    .line 121
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 122
    const/4 v1, 0x4

    const/16 v2, 0x60

    aput v2, v0, v1

    .line 123
    const/4 v1, 0x5

    const/16 v2, 0x23

    aput v2, v0, v1

    .line 124
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 125
    return-object v0
.end method

.method private static c40DbaicVehicleMiddle()[I
    .registers 4

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x0

    .line 131
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 132
    .local v0, "data":[I
    aput v2, v0, v2

    .line 133
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 134
    const/16 v1, 0xe6

    aput v1, v0, v3

    .line 135
    const/4 v1, 0x3

    aput v3, v0, v1

    .line 136
    const/4 v1, 0x4

    const/16 v2, 0x60

    aput v2, v0, v1

    .line 137
    const/4 v1, 0x5

    const/16 v2, 0x7f

    aput v2, v0, v1

    .line 138
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 139
    return-object v0
.end method

.method private static c51EBbaicVehicleHigh()[I
    .registers 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 75
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 76
    .local v0, "data":[I
    aput v2, v0, v2

    .line 77
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 78
    const/4 v1, 0x2

    const/16 v2, 0xe6

    aput v2, v0, v1

    .line 79
    const/4 v1, 0x3

    const/16 v2, 0xb5

    aput v2, v0, v1

    .line 80
    const/4 v1, 0x4

    const/16 v2, 0xe0

    aput v2, v0, v1

    .line 81
    const/16 v1, 0x7f

    aput v1, v0, v3

    .line 82
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 83
    return-object v0
.end method

.method private static c51EBbaicVehicleHighest()[I
    .registers 4

    .prologue
    const/4 v3, 0x5

    const/4 v2, 0x0

    .line 89
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 90
    .local v0, "data":[I
    aput v2, v0, v2

    .line 91
    const/4 v1, 0x1

    aput v2, v0, v1

    .line 92
    const/4 v1, 0x2

    const/16 v2, 0xe6

    aput v2, v0, v1

    .line 93
    const/4 v1, 0x3

    const/16 v2, 0xb5

    aput v2, v0, v1

    .line 94
    const/4 v1, 0x4

    const/16 v2, 0xff

    aput v2, v0, v1

    .line 95
    const/16 v1, 0x7f

    aput v1, v0, v3

    .line 96
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 97
    return-object v0
.end method

.method private static c51EBbaicVehicleLow()[I
    .registers 4

    .prologue
    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 61
    const/16 v1, 0xa

    new-array v0, v1, [I

    .line 62
    .local v0, "data":[I
    aput v3, v0, v3

    .line 63
    const/4 v1, 0x1

    aput v3, v0, v1

    .line 64
    const/16 v1, 0xe6

    aput v1, v0, v2

    .line 65
    const/4 v1, 0x3

    aput v2, v0, v1

    .line 66
    const/4 v1, 0x4

    const/16 v2, 0xe0

    aput v2, v0, v1

    .line 67
    const/4 v1, 0x5

    const/16 v2, 0x7f

    aput v2, v0, v1

    .line 68
    const/4 v1, 0x6

    aput v3, v0, v1

    .line 69
    return-object v0
.end method
