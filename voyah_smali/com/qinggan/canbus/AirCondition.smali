.class public final Lcom/qinggan/canbus/AirCondition;
.super Ljava/lang/Object;
.source "AirCondition.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final AC_DOR_MODE_DEEP:I = 0x1

.field public static final AC_DOR_MODE_STANDARD:I = 0x0

.field public static final AC_DUAL_DUAL:I = 0x1

.field public static final AC_DUAL_MONO:I = 0x0

.field public static final AC_PM25_STS_COLLECTING:I = 0x1

.field public static final AC_PM25_STS_COMPLETE:I = 0x2

.field public static final AC_PM25_STS_STANDBY:I = 0x0

.field public static final AC_RETURN_ACTIVE:I = 0x1

.field public static final AC_RETURN_AutoCirculation:I = 0x2

.field public static final AC_RETURN_DISPLAY:I = 0x2

.field public static final AC_RETURN_ExternalCirculation:I = 0x1

.field public static final AC_RETURN_FLOW_MODE_AUTO:I = 0x7

.field public static final AC_RETURN_FLOW_MODE_DEF:I = 0x4

.field public static final AC_RETURN_FLOW_MODE_FACE:I = 0x0

.field public static final AC_RETURN_FLOW_MODE_FACE_LEG:I = 0x1

.field public static final AC_RETURN_FLOW_MODE_LEG:I = 0x2

.field public static final AC_RETURN_FLOW_MODE_LEG_DEF:I = 0x3

.field public static final AC_RETURN_INACTIVE:I = 0x0

.field public static final AC_RETURN_InternalCirculation:I = 0x0

.field public static final AC_RETURN_SWITCH_OFF:I = 0x0

.field public static final AC_RETURN_SWITCH_ON:I = 0x1

.field public static final AC_WORKING_MODE_INVALIDE:I = 0x0

.field public static final AC_WORKING_MODE_NORMAL:I = 0x2

.field public static final AC_WORKING_MODE_SOFT:I = 0x1

.field public static final AC_WORKING_MODE_STRONG:I = 0x3

.field public static final AIR_AVN_DISPLAY:I = 0x1

.field public static final AIR_AVN_ERROR_DISPLAY:I = 0x3

.field public static final AIR_AVN_NOT_DISPLAY:I = 0x0

.field public static final AIR_CIRCULATION_AUTO:I = 0xff

.field public static final AIR_CIRCULATION_ERROR:I = 0x3

.field public static final AIR_CIRCULATION_INNER:I = 0x2

.field public static final AIR_CIRCULATION_NONE:I = 0x0

.field public static final AIR_CIRCULATION_OUTER:I = 0x1

.field public static final AIR_DISPLAY_MODE_DEFROST:I = 0x5

.field public static final AIR_DISPLAY_MODE_FACE:I = 0x1

.field public static final AIR_DISPLAY_MODE_FACE_FOOT:I = 0x2

.field public static final AIR_DISPLAY_MODE_FOOT:I = 0x3

.field public static final AIR_DISPLAY_MODE_FOOT_DEFROST:I = 0x4

.field public static final AIR_MODE_AUTO:I = 0x0

.field public static final AIR_MODE_MANUAL:I = 0x1

.field public static final AIR_SUPPLY_AUTO:I = 0x1

.field public static final AIR_SUPPLY_DOWN:I = 0x3

.field public static final AIR_SUPPLY_DOWN_PARALLEL:I = 0x4

.field public static final AIR_SUPPLY_DOWN_UP:I = 0x8

.field public static final AIR_SUPPLY_DOWN_UP_PARALLEL:I = 0x9

.field public static final AIR_SUPPLY_FRONT:I = 0x2

.field public static final AIR_SUPPLY_PARALLEL:I = 0x5

.field public static final AIR_SUPPLY_UP:I = 0x6

.field public static final AIR_SUPPLY_UP_PARALLEL:I = 0x7

.field public static final AIR_SW_OFF:I = 0x0

.field public static final AIR_SW_ON:I = 0x1

.field public static final AIR_TEMP_HIGH:I = 0x20

.field public static final AIR_TEMP_INVALID:I = 0x0

.field public static final AIR_TEMP_LOW:I = 0x10

.field public static final AirTempHigh:I = 0x7f

.field public static final AirTempInvalid:I = 0xff

.field public static final AirTempLow:I = 0x0

.field public static final AutoCirculation:I = 0x3

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/AirCondition;",
            ">;"
        }
    .end annotation
.end field

.field public static final ExternalCirculation:I = 0x1

.field public static final IGN_FLAG_OFF:I = 0x0

.field public static final IGN_FLAG_ON:I = 0x1

.field public static final IONS_STATE_HIGH:I = 0x2

.field public static final IONS_STATE_LOW:I = 0x0

.field public static final IONS_STATE_MIDDLE:I = 0x1

.field public static final InternalCirculation:I = 0x2

.field public static final NoDisplay:I = 0x0

.field public static final OneHeating:I = 0x1

.field public static final ThreeHeating:I = 0x3

.field public static final TwoHeating:I = 0x2

.field public static final noDisplay:I


# instance fields
.field private IGN_ON:I

.field private acAirCleanerMode:I

.field private acAirVentCoolSts:I

.field private acBabyCareMode:I

.field private acHazeMode:I

.field private acOneButtonWarmth:I

.field private acRainSnowMode:I

.field private acRapidCooling:I

.field private acRunningState:I

.field private acSmokingMode:I

.field private acStopCarMode:I

.field private ac_function_1:I

.field private ac_function_2:I

.field private ac_function_3:I

.field private ac_function_4:I

.field private ac_function_5:I

.field private ac_function_6:I

.field private ac_function_7:I

.field private ac_function_8:I

.field private ac_power_switch:I

.field private airACHeatStatus:I

.field private airACMaxSW:I

.field private airACStatus:I

.field private airAQSStatus:I

.field private airCirculationMode:I

.field private airCirculationStatus:I

.field private airCompressorErrorStatus:I

.field private airCompressorLimitStatus:I

.field private airCompressorWorkStatus:I

.field private airDORMode:I

.field private airDORSwitch:I

.field private airDUALAllStatus:I

.field private airDUALStatus:I

.field private airDisplaySW:I

.field private airDisplay_mode:I

.field private airECO:I

.field private airEngineStatus:I

.field private airFrontMode:I

.field private airFrontSWStatus:I

.field private airFrontSupplyStatus:I

.field private airFrontWindSpeed:I

.field private airFrontWindowDefogger:I

.field private airHighWindStatus:I

.field private airLeftMirrorDefogger:I

.field private airLeftSeatHeatingLevel:I

.field private airLeftTemperature:F

.field private airLeftTemperature_f:F

.field private airLowWindStatus:I

.field private airMaxFrontStatus:I

.field private airMode:I

.field private airPMStatus:I

.field private airPTCErrorStatus:I

.field private airPTCLimitStatus:I

.field private airPTCWorKStatus:I

.field private airPm25_level:I

.field private airPm25_level_green:I

.field private airPm25_level_maroon:I

.field private airPm25_level_not_display:I

.field private airPm25_level_orange:I

.field private airPm25_level_purple:I

.field private airPm25_level_red:I

.field private airPm25_level_yellow:I

.field private airPm2_5:I

.field private airPm2_5_outcar:I

.field private airPm2_5_sts:I

.field private airPreSupplyStatus:I

.field private airRearCtlLockSW:I

.field private airRearDownSupplyStatus:I

.field private airRearLightStatus:I

.field private airRearMode:I

.field private airRearParallelSupplyStatus:I

.field private airRearSWStatus:I

.field private airRearSupplyStatus:I

.field private airRearTemperature:F

.field private airRearUpSupplyStatus:I

.field private airRearWindSpeed:I

.field private airRearWindowDefogger:I

.field private airRearWindowDefoggerEngine:I

.field private airRearWindowHeatingStatus:I

.field private airRightMirrorDefogger:I

.field private airRightSeatHeatingLevel:I

.field private airRightTemperature:F

.field private airRightTemperature_f:F

.field private airSWStatus:I

.field private airSupplyStatus:I

.field private airSyncStatus:I

.field private airTempInCar:I

.field private airTempLevel:I

.field private airTempOutCar:I

.field private airWindSpeed:I

.field private airworking_mode:I

.field private displaypop:I

.field private ions_state:I

.field private ions_switch:I

.field private isAirPM2_5NeedRefresh:I

.field private isAirPM2_5OutCarNeedRefresh:I

.field private isNeedRefreshAirWorkingMode:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1278
    new-instance v0, Lcom/qinggan/canbus/AirCondition$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/AirCondition$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/AirCondition;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    .prologue
    const/16 v0, -0x270f

    const/4 v3, 0x1

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v1, -0x1

    .line 617
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airSWStatus:I

    .line 81
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airACStatus:I

    .line 82
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I

    .line 83
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I

    .line 84
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I

    .line 85
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I

    .line 86
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I

    .line 87
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I

    .line 88
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    .line 89
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I

    .line 90
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I

    .line 91
    iput v2, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F

    .line 92
    iput v2, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F

    .line 93
    iput v2, p0, Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F

    .line 94
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I

    .line 95
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I

    .line 96
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I

    .line 97
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I

    .line 98
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I

    .line 99
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I

    .line 100
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airECO:I

    .line 101
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I

    .line 102
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airMode:I

    .line 103
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I

    .line 104
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I

    .line 105
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I

    .line 106
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I

    .line 107
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I

    .line 108
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I

    .line 109
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefoggerEngine:I

    .line 110
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I

    .line 111
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I

    .line 112
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I

    .line 114
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I

    .line 115
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->IGN_ON:I

    .line 116
    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempInCar:I

    .line 117
    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I

    .line 118
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->displaypop:I

    .line 120
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ions_switch:I

    .line 121
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ions_state:I

    .line 122
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_power_switch:I

    .line 125
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I

    .line 126
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airTempLevel:I

    .line 127
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I

    .line 128
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I

    .line 129
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I

    .line 130
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I

    .line 131
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I

    .line 132
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I

    .line 133
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I

    .line 136
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5:I

    .line 138
    iput v3, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5NeedRefresh:I

    .line 139
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acRunningState:I

    .line 140
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level:I

    .line 142
    const/4 v0, 0x0

    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_not_display:I

    .line 143
    iput v3, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_green:I

    .line 144
    const/4 v0, 0x2

    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_yellow:I

    .line 145
    const/4 v0, 0x3

    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_orange:I

    .line 146
    const/4 v0, 0x4

    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_purple:I

    .line 147
    const/4 v0, 0x5

    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_maroon:I

    .line 148
    const/4 v0, 0x6

    iput v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level_red:I

    .line 151
    iput v2, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F

    .line 152
    iput v2, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F

    .line 153
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I

    .line 155
    iput v3, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5OutCarNeedRefresh:I

    .line 156
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I

    .line 157
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airworking_mode:I

    .line 159
    iput v3, p0, Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I

    .line 162
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I

    .line 163
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I

    .line 164
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontMode:I

    .line 165
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearMode:I

    .line 166
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I

    .line 167
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I

    .line 168
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I

    .line 169
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I

    .line 170
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airDORMode:I

    .line 186
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airAQSStatus:I

    .line 191
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I

    .line 196
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I

    .line 201
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acHazeMode:I

    .line 206
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I

    .line 212
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I

    .line 217
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I

    .line 222
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I

    .line 227
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I

    .line 232
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I

    .line 235
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPMStatus:I

    .line 237
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->airPreSupplyStatus:I

    .line 259
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_1:I

    .line 264
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_2:I

    .line 269
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_3:I

    .line 274
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_4:I

    .line 279
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_5:I

    .line 284
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_6:I

    .line 289
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_7:I

    .line 294
    iput v1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_8:I

    .line 618
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airSWStatus:I

    return p1
.end method

.method static synthetic access$1002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airACStatus:I

    return p1
.end method

.method static synthetic access$1102(Lcom/qinggan/canbus/AirCondition;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # F

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F

    return p1
.end method

.method static synthetic access$1202(Lcom/qinggan/canbus/AirCondition;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # F

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F

    return p1
.end method

.method static synthetic access$1302(Lcom/qinggan/canbus/AirCondition;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # F

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F

    return p1
.end method

.method static synthetic access$1402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I

    return p1
.end method

.method static synthetic access$1502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I

    return p1
.end method

.method static synthetic access$1602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I

    return p1
.end method

.method static synthetic access$1702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I

    return p1
.end method

.method static synthetic access$1802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I

    return p1
.end method

.method static synthetic access$1902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I

    return p1
.end method

.method static synthetic access$2002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airECO:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I

    return p1
.end method

.method static synthetic access$2102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I

    return p1
.end method

.method static synthetic access$2202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airMode:I

    return p1
.end method

.method static synthetic access$2302(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I

    return p1
.end method

.method static synthetic access$2402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I

    return p1
.end method

.method static synthetic access$2502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I

    return p1
.end method

.method static synthetic access$2602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I

    return p1
.end method

.method static synthetic access$2702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I

    return p1
.end method

.method static synthetic access$2802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I

    return p1
.end method

.method static synthetic access$2902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I

    return p1
.end method

.method static synthetic access$3002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I

    return p1
.end method

.method static synthetic access$3102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I

    return p1
.end method

.method static synthetic access$3202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I

    return p1
.end method

.method static synthetic access$3302(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->IGN_ON:I

    return p1
.end method

.method static synthetic access$3402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airTempInCar:I

    return p1
.end method

.method static synthetic access$3502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I

    return p1
.end method

.method static synthetic access$3602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ions_state:I

    return p1
.end method

.method static synthetic access$3702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ions_switch:I

    return p1
.end method

.method static synthetic access$3802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_power_switch:I

    return p1
.end method

.method static synthetic access$3902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I

    return p1
.end method

.method static synthetic access$4002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airTempLevel:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I

    return p1
.end method

.method static synthetic access$4102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I

    return p1
.end method

.method static synthetic access$4202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I

    return p1
.end method

.method static synthetic access$4302(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I

    return p1
.end method

.method static synthetic access$4402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I

    return p1
.end method

.method static synthetic access$4502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I

    return p1
.end method

.method static synthetic access$4602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I

    return p1
.end method

.method static synthetic access$4702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I

    return p1
.end method

.method static synthetic access$4802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5:I

    return p1
.end method

.method static synthetic access$4902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acRunningState:I

    return p1
.end method

.method static synthetic access$5002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airAQSStatus:I

    return p1
.end method

.method static synthetic access$502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I

    return p1
.end method

.method static synthetic access$5102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPMStatus:I

    return p1
.end method

.method static synthetic access$5202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPreSupplyStatus:I

    return p1
.end method

.method static synthetic access$5302(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I

    return p1
.end method

.method static synthetic access$5402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I

    return p1
.end method

.method static synthetic access$5502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acHazeMode:I

    return p1
.end method

.method static synthetic access$5602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I

    return p1
.end method

.method static synthetic access$5702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I

    return p1
.end method

.method static synthetic access$5802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I

    return p1
.end method

.method static synthetic access$5902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I

    return p1
.end method

.method static synthetic access$6002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I

    return p1
.end method

.method static synthetic access$602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I

    return p1
.end method

.method static synthetic access$6102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->displaypop:I

    return p1
.end method

.method static synthetic access$6202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level:I

    return p1
.end method

.method static synthetic access$6302(Lcom/qinggan/canbus/AirCondition;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # F

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F

    return p1
.end method

.method static synthetic access$6402(Lcom/qinggan/canbus/AirCondition;F)F
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # F

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F

    return p1
.end method

.method static synthetic access$6502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I

    return p1
.end method

.method static synthetic access$6602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I

    return p1
.end method

.method static synthetic access$6702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airworking_mode:I

    return p1
.end method

.method static synthetic access$6802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I

    return p1
.end method

.method static synthetic access$6902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I

    return p1
.end method

.method static synthetic access$7002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I

    return p1
.end method

.method static synthetic access$702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I

    return p1
.end method

.method static synthetic access$7102(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontMode:I

    return p1
.end method

.method static synthetic access$7202(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearMode:I

    return p1
.end method

.method static synthetic access$7302(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I

    return p1
.end method

.method static synthetic access$7402(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I

    return p1
.end method

.method static synthetic access$7502(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I

    return p1
.end method

.method static synthetic access$7602(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I

    return p1
.end method

.method static synthetic access$7702(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5NeedRefresh:I

    return p1
.end method

.method static synthetic access$7802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5OutCarNeedRefresh:I

    return p1
.end method

.method static synthetic access$7902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I

    return p1
.end method

.method static synthetic access$8002(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDORMode:I

    return p1
.end method

.method static synthetic access$802(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    return p1
.end method

.method static synthetic access$902(Lcom/qinggan/canbus/AirCondition;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/AirCondition;
    .param p1, "x1"    # I

    .prologue
    .line 8
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 1191
    const/4 v0, 0x0

    return v0
.end method

.method public getAcAirCleanerMode()I
    .registers 2

    .prologue
    .line 393
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I

    return v0
.end method

.method public getAcAirVentCoolSts()I
    .registers 2

    .prologue
    .line 402
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I

    return v0
.end method

.method public getAcBabyCareMode()I
    .registers 2

    .prologue
    .line 385
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I

    return v0
.end method

.method public getAcHazeMode()I
    .registers 2

    .prologue
    .line 377
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acHazeMode:I

    return v0
.end method

.method public getAcOneButtonWarmth()I
    .registers 2

    .prologue
    .line 369
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I

    return v0
.end method

.method public getAcRainSnowMode()I
    .registers 2

    .prologue
    .line 410
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I

    return v0
.end method

.method public getAcRapidCooling()I
    .registers 2

    .prologue
    .line 361
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I

    return v0
.end method

.method public getAcRunningState()I
    .registers 2

    .prologue
    .line 458
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acRunningState:I

    return v0
.end method

.method public getAcSmokingMode()I
    .registers 2

    .prologue
    .line 418
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I

    return v0
.end method

.method public getAcStopCarMode()I
    .registers 2

    .prologue
    .line 426
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I

    return v0
.end method

.method public getAc_function_1()I
    .registers 2

    .prologue
    .line 297
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_1:I

    return v0
.end method

.method public getAc_function_2()I
    .registers 2

    .prologue
    .line 305
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_2:I

    return v0
.end method

.method public getAc_function_3()I
    .registers 2

    .prologue
    .line 313
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_3:I

    return v0
.end method

.method public getAc_function_4()I
    .registers 2

    .prologue
    .line 321
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_4:I

    return v0
.end method

.method public getAc_function_5()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_5:I

    return v0
.end method

.method public getAc_function_6()I
    .registers 2

    .prologue
    .line 337
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_6:I

    return v0
.end method

.method public getAc_function_7()I
    .registers 2

    .prologue
    .line 345
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_7:I

    return v0
.end method

.method public getAc_function_8()I
    .registers 2

    .prologue
    .line 353
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_8:I

    return v0
.end method

.method public getAc_power_switch()I
    .registers 2

    .prologue
    .line 860
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_power_switch:I

    return v0
.end method

.method public getAirACHeatStatus()I
    .registers 2

    .prologue
    .line 585
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I

    return v0
.end method

.method public getAirACMaxSW()I
    .registers 2

    .prologue
    .line 1119
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I

    return v0
.end method

.method public getAirACStatus()I
    .registers 2

    .prologue
    .line 882
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airACStatus:I

    return v0
.end method

.method public getAirAQSStatus()I
    .registers 2

    .prologue
    .line 450
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airAQSStatus:I

    return v0
.end method

.method public getAirCirculationMode()I
    .registers 2

    .prologue
    .line 874
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I

    return v0
.end method

.method public getAirCirculationStatus()I
    .registers 2

    .prologue
    .line 1135
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I

    return v0
.end method

.method public getAirCompressorErrorStatus()I
    .registers 2

    .prologue
    .line 561
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I

    return v0
.end method

.method public getAirCompressorLimitStatus()I
    .registers 2

    .prologue
    .line 569
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I

    return v0
.end method

.method public getAirCompressorWorkStatus()I
    .registers 2

    .prologue
    .line 553
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I

    return v0
.end method

.method public getAirDORMode()I
    .registers 2

    .prologue
    .line 609
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDORMode:I

    return v0
.end method

.method public getAirDORSwitch()I
    .registers 2

    .prologue
    .line 601
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I

    return v0
.end method

.method public getAirDUALAllStatus()I
    .registers 2

    .prologue
    .line 836
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I

    return v0
.end method

.method public getAirDUALStatus()I
    .registers 2

    .prologue
    .line 828
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I

    return v0
.end method

.method public getAirDisplayMode()I
    .registers 2

    .prologue
    .line 632
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I

    return v0
.end method

.method public getAirDisplaySW()I
    .registers 2

    .prologue
    .line 1087
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I

    return v0
.end method

.method public getAirDownSupplyStatus()I
    .registers 3

    .prologue
    .line 1065
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 1069
    :cond_16
    const/4 v0, 0x1

    .line 1072
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getAirECO()I
    .registers 2

    .prologue
    .line 815
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airECO:I

    return v0
.end method

.method public getAirEngineStatus()I
    .registers 2

    .prologue
    .line 577
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I

    return v0
.end method

.method public getAirFrontMode()I
    .registers 2

    .prologue
    .line 781
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontMode:I

    return v0
.end method

.method public getAirFrontSWStatus()I
    .registers 2

    .prologue
    .line 686
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I

    return v0
.end method

.method public getAirFrontSupplyStatus()I
    .registers 2

    .prologue
    .line 946
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I

    return v0
.end method

.method public getAirFrontWindSpeed()I
    .registers 2

    .prologue
    .line 1151
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I

    return v0
.end method

.method public getAirFrontWindowDefogger()I
    .registers 2

    .prologue
    .line 802
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I

    return v0
.end method

.method public getAirHighWindStatus()I
    .registers 2

    .prologue
    .line 898
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I

    return v0
.end method

.method public getAirLeftMirrorDefogger()I
    .registers 2

    .prologue
    .line 1038
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I

    return v0
.end method

.method public getAirLeftSeatHeatingLevel()I
    .registers 2

    .prologue
    .line 1095
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I

    return v0
.end method

.method public getAirLeftTemperature()F
    .registers 2

    .prologue
    .line 718
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F

    return v0
.end method

.method public getAirLeftTemperature_f()F
    .registers 2

    .prologue
    .line 743
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F

    return v0
.end method

.method public getAirLowWindStatus()I
    .registers 2

    .prologue
    .line 906
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I

    return v0
.end method

.method public getAirMaxFrontStatus()I
    .registers 2

    .prologue
    .line 914
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I

    return v0
.end method

.method public getAirMode()I
    .registers 2

    .prologue
    .line 773
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airMode:I

    return v0
.end method

.method public getAirPMStatus()I
    .registers 2

    .prologue
    .line 442
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPMStatus:I

    return v0
.end method

.method public getAirPTCErrorStasus()I
    .registers 2

    .prologue
    .line 537
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I

    return v0
.end method

.method public getAirPTCLimitStatus()I
    .registers 2

    .prologue
    .line 545
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I

    return v0
.end method

.method public getAirPTCWorKStatus()I
    .registers 2

    .prologue
    .line 529
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I

    return v0
.end method

.method public getAirParallelStatus()I
    .registers 3

    .prologue
    .line 1076
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_15

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_17

    .line 1080
    :cond_15
    const/4 v0, 0x1

    .line 1083
    :goto_16
    return v0

    :cond_17
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getAirPm25_level()I
    .registers 2

    .prologue
    .line 522
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level:I

    return v0
.end method

.method public getAirPm2_5()I
    .registers 2

    .prologue
    .line 466
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5:I

    return v0
.end method

.method public getAirRearCtlLockSW()I
    .registers 2

    .prologue
    .line 1111
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I

    return v0
.end method

.method public getAirRearDownSupplyStatus()I
    .registers 2

    .prologue
    .line 1167
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I

    return v0
.end method

.method public getAirRearLightStatus()I
    .registers 2

    .prologue
    .line 922
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I

    return v0
.end method

.method public getAirRearMode()I
    .registers 2

    .prologue
    .line 789
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearMode:I

    return v0
.end method

.method public getAirRearParallelSupplyStatus()I
    .registers 2

    .prologue
    .line 1175
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I

    return v0
.end method

.method public getAirRearSWStatus()I
    .registers 2

    .prologue
    .line 694
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I

    return v0
.end method

.method public getAirRearSupplyStatus()I
    .registers 2

    .prologue
    .line 954
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I

    return v0
.end method

.method public getAirRearTemperature()F
    .registers 2

    .prologue
    .line 1143
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F

    return v0
.end method

.method public getAirRearUpSupplyStatus()I
    .registers 2

    .prologue
    .line 1183
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I

    return v0
.end method

.method public getAirRearWindSpeed()I
    .registers 2

    .prologue
    .line 1159
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I

    return v0
.end method

.method public getAirRearWindowDefogger()I
    .registers 2

    .prologue
    .line 1011
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I

    return v0
.end method

.method public getAirRearWindowDefoggerEngine()I
    .registers 4

    .prologue
    .line 1019
    const-string v0, "AirCondition========================="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "this.airRearWindowDefoggerEngine = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefoggerEngine:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefoggerEngine:I

    return v0
.end method

.method public getAirRearWindowHeatingStatus()I
    .registers 2

    .prologue
    .line 1127
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I

    return v0
.end method

.method public getAirRightMirrorDefogger()I
    .registers 2

    .prologue
    .line 1046
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I

    return v0
.end method

.method public getAirRightSeatHeatingLevel()I
    .registers 2

    .prologue
    .line 1103
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I

    return v0
.end method

.method public getAirRightTemperature()F
    .registers 2

    .prologue
    .line 706
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F

    return v0
.end method

.method public getAirRightTemperature_f()F
    .registers 2

    .prologue
    .line 731
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F

    return v0
.end method

.method public getAirSWStatus()I
    .registers 2

    .prologue
    .line 682
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSWStatus:I

    return v0
.end method

.method public getAirSupplyPreStatus()I
    .registers 2

    .prologue
    .line 434
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPreSupplyStatus:I

    return v0
.end method

.method public getAirSupplyStatus()I
    .registers 2

    .prologue
    .line 930
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    return v0
.end method

.method public getAirSyncStatus()I
    .registers 2

    .prologue
    .line 1030
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I

    return v0
.end method

.method public getAirTempInCar()I
    .registers 2

    .prologue
    .line 657
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempInCar:I

    return v0
.end method

.method public getAirTempLevel()I
    .registers 2

    .prologue
    .line 593
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempLevel:I

    return v0
.end method

.method public getAirTempOutCar()I
    .registers 2

    .prologue
    .line 669
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I

    return v0
.end method

.method public getAirUpSupplyStatus()I
    .registers 3

    .prologue
    .line 1054
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x7

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_16

    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_18

    .line 1058
    :cond_16
    const/4 v0, 0x1

    .line 1061
    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getAirWindSpeed()I
    .registers 2

    .prologue
    .line 756
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I

    return v0
.end method

.method public getAirWindSupplyFlagDown()I
    .registers 3

    .prologue
    .line 962
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    .line 963
    const/4 v0, 0x1

    .line 965
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAirWindSupplyFlagDownParallel()I
    .registers 3

    .prologue
    .line 997
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    .line 998
    const/4 v0, 0x1

    .line 1000
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAirWindSupplyFlagFront()I
    .registers 3

    .prologue
    .line 1004
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    .line 1005
    const/4 v0, 0x1

    .line 1007
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAirWindSupplyFlagParallel()I
    .registers 3

    .prologue
    .line 969
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 970
    const/4 v0, 0x1

    .line 972
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAirWindSupplyFlagUp()I
    .registers 3

    .prologue
    .line 938
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_7

    .line 939
    const/4 v0, 0x1

    .line 942
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAirWindSupplyFlagUpDown()I
    .registers 3

    .prologue
    .line 983
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    .line 984
    const/4 v0, 0x1

    .line 986
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAirWindSupplyFlagUpDownParallel()I
    .registers 3

    .prologue
    .line 990
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/16 v1, 0x9

    if-ne v0, v1, :cond_8

    .line 991
    const/4 v0, 0x1

    .line 993
    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public getAirWindSupplyFlagUpParallel()I
    .registers 3

    .prologue
    .line 976
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_7

    .line 977
    const/4 v0, 0x1

    .line 979
    :goto_6
    return v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getAirWorkingRefreshState()I
    .registers 2

    .prologue
    .line 514
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I

    return v0
.end method

.method public getAirdisplaypop()I
    .registers 2

    .prologue
    .line 890
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->displaypop:I

    return v0
.end method

.method public getIGN_ON()I
    .registers 2

    .prologue
    .line 645
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->IGN_ON:I

    return v0
.end method

.method public getIons_state()I
    .registers 2

    .prologue
    .line 852
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ions_state:I

    return v0
.end method

.method public getIons_switch()I
    .registers 2

    .prologue
    .line 844
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ions_switch:I

    return v0
.end method

.method public getPM2_5OutCarRefreshState()I
    .registers 2

    .prologue
    .line 506
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5OutCarNeedRefresh:I

    return v0
.end method

.method public getPM2_5RefreshState()I
    .registers 2

    .prologue
    .line 498
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5NeedRefresh:I

    return v0
.end method

.method public getairPm2_5_outcar()I
    .registers 2

    .prologue
    .line 474
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I

    return v0
.end method

.method public getairPm2_5_sts()I
    .registers 2

    .prologue
    .line 482
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I

    return v0
.end method

.method public getairworking_mode()I
    .registers 2

    .prologue
    .line 490
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airworking_mode:I

    return v0
.end method

.method public setAcAirCleanerMode(I)V
    .registers 2
    .param p1, "acAirCleanerMode"    # I

    .prologue
    .line 397
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I

    .line 398
    return-void
.end method

.method public setAcAirVentCoolSts(I)V
    .registers 2
    .param p1, "acAirVentCoolSts"    # I

    .prologue
    .line 406
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I

    .line 407
    return-void
.end method

.method public setAcBabyCareMode(I)V
    .registers 2
    .param p1, "acBabyCareMode"    # I

    .prologue
    .line 389
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I

    .line 390
    return-void
.end method

.method public setAcHazeMode(I)V
    .registers 2
    .param p1, "acHazeMode"    # I

    .prologue
    .line 381
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acHazeMode:I

    .line 382
    return-void
.end method

.method public setAcOneButtonWarmth(I)V
    .registers 2
    .param p1, "acOneButtonWarmth"    # I

    .prologue
    .line 373
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I

    .line 374
    return-void
.end method

.method public setAcRainSnowMode(I)V
    .registers 2
    .param p1, "acRainSnowMode"    # I

    .prologue
    .line 414
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I

    .line 415
    return-void
.end method

.method public setAcRapidCooling(I)V
    .registers 2
    .param p1, "acRapidCooling"    # I

    .prologue
    .line 365
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I

    .line 366
    return-void
.end method

.method public setAcRunningState(I)V
    .registers 2
    .param p1, "acRunningState"    # I

    .prologue
    .line 462
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acRunningState:I

    .line 463
    return-void
.end method

.method public setAcSmokingMode(I)V
    .registers 2
    .param p1, "acSmokingMode"    # I

    .prologue
    .line 422
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I

    .line 423
    return-void
.end method

.method public setAcStopCarMode(I)V
    .registers 2
    .param p1, "acStopCarMode"    # I

    .prologue
    .line 430
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I

    .line 431
    return-void
.end method

.method public setAc_function_1(I)V
    .registers 2
    .param p1, "ac_function_1"    # I

    .prologue
    .line 301
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_1:I

    .line 302
    return-void
.end method

.method public setAc_function_2(I)V
    .registers 2
    .param p1, "ac_function_2"    # I

    .prologue
    .line 309
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_2:I

    .line 310
    return-void
.end method

.method public setAc_function_3(I)V
    .registers 2
    .param p1, "ac_function_3"    # I

    .prologue
    .line 317
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_3:I

    .line 318
    return-void
.end method

.method public setAc_function_4(I)V
    .registers 2
    .param p1, "ac_function_4"    # I

    .prologue
    .line 325
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_4:I

    .line 326
    return-void
.end method

.method public setAc_function_5(I)V
    .registers 2
    .param p1, "ac_function_5"    # I

    .prologue
    .line 333
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_5:I

    .line 334
    return-void
.end method

.method public setAc_function_6(I)V
    .registers 2
    .param p1, "ac_function_6"    # I

    .prologue
    .line 341
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_6:I

    .line 342
    return-void
.end method

.method public setAc_function_7(I)V
    .registers 2
    .param p1, "ac_function_7"    # I

    .prologue
    .line 349
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_7:I

    .line 350
    return-void
.end method

.method public setAc_function_8(I)V
    .registers 2
    .param p1, "ac_function_8"    # I

    .prologue
    .line 357
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_function_8:I

    .line 358
    return-void
.end method

.method public setAc_power_switch(I)V
    .registers 2
    .param p1, "ac_power_switch"    # I

    .prologue
    .line 864
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ac_power_switch:I

    .line 865
    return-void
.end method

.method public setAirACHeatStatus(I)V
    .registers 2
    .param p1, "airACHeatStatus"    # I

    .prologue
    .line 589
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I

    .line 590
    return-void
.end method

.method public setAirACMaxSW(I)V
    .registers 2
    .param p1, "airACMaxSW"    # I

    .prologue
    .line 1123
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I

    .line 1124
    return-void
.end method

.method public setAirACStatus(I)V
    .registers 2
    .param p1, "airACStatus"    # I

    .prologue
    .line 886
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airACStatus:I

    .line 887
    return-void
.end method

.method public setAirAQSStatus(I)V
    .registers 2
    .param p1, "airAQSStatus"    # I

    .prologue
    .line 454
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airAQSStatus:I

    .line 455
    return-void
.end method

.method public setAirCirculationMode(I)V
    .registers 2
    .param p1, "airCirculationMode"    # I

    .prologue
    .line 878
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I

    .line 879
    return-void
.end method

.method public setAirCirculationStatus(I)V
    .registers 2
    .param p1, "airCirculationStatus"    # I

    .prologue
    .line 1139
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I

    .line 1140
    return-void
.end method

.method public setAirCompressorErrorStatus(I)V
    .registers 2
    .param p1, "airCompressorErrorStatus"    # I

    .prologue
    .line 565
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I

    .line 566
    return-void
.end method

.method public setAirCompressorLimitStatus(I)V
    .registers 2
    .param p1, "airCompressorLimitStatus"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I

    .line 574
    return-void
.end method

.method public setAirCompressorWorkStatus(I)V
    .registers 2
    .param p1, "airCompressorWorkStatus"    # I

    .prologue
    .line 557
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I

    .line 558
    return-void
.end method

.method public setAirDORMode(I)V
    .registers 2
    .param p1, "airDORMode"    # I

    .prologue
    .line 613
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDORMode:I

    .line 614
    return-void
.end method

.method public setAirDORSwitch(I)V
    .registers 2
    .param p1, "airDORSwitch"    # I

    .prologue
    .line 605
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I

    .line 606
    return-void
.end method

.method public setAirDUALAllStatus(I)V
    .registers 2
    .param p1, "airDUALAllStatus"    # I

    .prologue
    .line 840
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I

    .line 841
    return-void
.end method

.method public setAirDUALStatus(I)V
    .registers 2
    .param p1, "airDUALStatus"    # I

    .prologue
    .line 832
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I

    .line 833
    return-void
.end method

.method public setAirDisplayMode(I)V
    .registers 2
    .param p1, "airDisplay_mode"    # I

    .prologue
    .line 621
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I

    .line 622
    return-void
.end method

.method public setAirDisplaySW(I)V
    .registers 2
    .param p1, "airDisplaySW"    # I

    .prologue
    .line 1091
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I

    .line 1092
    return-void
.end method

.method public setAirECO(I)V
    .registers 2
    .param p1, "airECO"    # I

    .prologue
    .line 819
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airECO:I

    .line 820
    return-void
.end method

.method public setAirEngineStatus(I)V
    .registers 2
    .param p1, "airEngineStatus"    # I

    .prologue
    .line 581
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I

    .line 582
    return-void
.end method

.method public setAirFrontMode(I)V
    .registers 2
    .param p1, "airFrontMode"    # I

    .prologue
    .line 785
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontMode:I

    .line 786
    return-void
.end method

.method public setAirFrontSWStatus(I)V
    .registers 2
    .param p1, "airFrontSWStatus"    # I

    .prologue
    .line 690
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I

    .line 691
    return-void
.end method

.method public setAirFrontSupplyStatus(I)V
    .registers 2
    .param p1, "airFrontSupplyStatus"    # I

    .prologue
    .line 950
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I

    .line 951
    return-void
.end method

.method public setAirFrontWindSpeed(I)V
    .registers 2
    .param p1, "airFrontWindSpeed"    # I

    .prologue
    .line 1155
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I

    .line 1156
    return-void
.end method

.method public setAirFrontWindowDefogger(I)V
    .registers 2
    .param p1, "airFrontWindowDefogger"    # I

    .prologue
    .line 806
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I

    .line 807
    return-void
.end method

.method public setAirHighWindStatus(I)V
    .registers 2
    .param p1, "airHighWindStatus"    # I

    .prologue
    .line 902
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I

    .line 903
    return-void
.end method

.method public setAirLeftMirrorDefogger(I)V
    .registers 2
    .param p1, "airLeftMirrorDefogger"    # I

    .prologue
    .line 1042
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I

    .line 1043
    return-void
.end method

.method public setAirLeftSeatHeatingLevel(I)V
    .registers 2
    .param p1, "airLeftSeatHeatingLevel"    # I

    .prologue
    .line 1099
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I

    .line 1100
    return-void
.end method

.method public setAirLeftTemperature(F)V
    .registers 2
    .param p1, "airLeftTemperature"    # F

    .prologue
    .line 722
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F

    .line 723
    return-void
.end method

.method public setAirLeftTemperature_f(F)V
    .registers 2
    .param p1, "airLeftTemperature_f"    # F

    .prologue
    .line 747
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F

    .line 748
    return-void
.end method

.method public setAirLowWindStatus(I)V
    .registers 2
    .param p1, "airLowWindStatus"    # I

    .prologue
    .line 910
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I

    .line 911
    return-void
.end method

.method public setAirMaxFrontStatus(I)V
    .registers 2
    .param p1, "airMaxFrontStatus"    # I

    .prologue
    .line 918
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I

    .line 919
    return-void
.end method

.method public setAirMode(I)V
    .registers 2
    .param p1, "airMode"    # I

    .prologue
    .line 777
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airMode:I

    .line 778
    return-void
.end method

.method public setAirPMStatus(I)V
    .registers 2
    .param p1, "airPMStatus"    # I

    .prologue
    .line 446
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPMStatus:I

    .line 447
    return-void
.end method

.method public setAirPTCErrorStasus(I)V
    .registers 2
    .param p1, "airPTCErrorStasus"    # I

    .prologue
    .line 541
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I

    .line 542
    return-void
.end method

.method public setAirPTCLimitStatus(I)V
    .registers 2
    .param p1, "airPTCLimitStatus"    # I

    .prologue
    .line 549
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I

    .line 550
    return-void
.end method

.method public setAirPTCWorKStatus(I)V
    .registers 2
    .param p1, "airPTCWorKStatus"    # I

    .prologue
    .line 533
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I

    .line 534
    return-void
.end method

.method public setAirPm25_level(I)V
    .registers 2
    .param p1, "airPm25_level"    # I

    .prologue
    .line 526
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level:I

    .line 527
    return-void
.end method

.method public setAirPm2_5(I)V
    .registers 2
    .param p1, "airPm2_5"    # I

    .prologue
    .line 470
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5:I

    .line 471
    return-void
.end method

.method public setAirRearCtlLockSW(I)V
    .registers 2
    .param p1, "airRearCtlLockSW"    # I

    .prologue
    .line 1115
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I

    .line 1116
    return-void
.end method

.method public setAirRearDownSupplyStatus(I)V
    .registers 2
    .param p1, "airRearDownSupplyStatus"    # I

    .prologue
    .line 1171
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I

    .line 1172
    return-void
.end method

.method public setAirRearLightStatus(I)V
    .registers 2
    .param p1, "airRearLightStatus"    # I

    .prologue
    .line 926
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I

    .line 927
    return-void
.end method

.method public setAirRearMode(I)V
    .registers 2
    .param p1, "airRearMode"    # I

    .prologue
    .line 793
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearMode:I

    .line 794
    return-void
.end method

.method public setAirRearParallelSupplyStatus(I)V
    .registers 2
    .param p1, "airRearParallelSupplyStatus"    # I

    .prologue
    .line 1179
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I

    .line 1180
    return-void
.end method

.method public setAirRearSWStatus(I)V
    .registers 2
    .param p1, "airRearSWStatus"    # I

    .prologue
    .line 698
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I

    .line 699
    return-void
.end method

.method public setAirRearSupplyStatus(I)V
    .registers 2
    .param p1, "airRearSupplyStatus"    # I

    .prologue
    .line 958
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I

    .line 959
    return-void
.end method

.method public setAirRearTemperature(F)V
    .registers 2
    .param p1, "airRearTemperature"    # F

    .prologue
    .line 1147
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F

    .line 1148
    return-void
.end method

.method public setAirRearUpSupplyStatus(I)V
    .registers 2
    .param p1, "airRearUpSupplyStatus"    # I

    .prologue
    .line 1187
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I

    .line 1188
    return-void
.end method

.method public setAirRearWindSpeed(I)V
    .registers 2
    .param p1, "airRearWindSpeed"    # I

    .prologue
    .line 1163
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I

    .line 1164
    return-void
.end method

.method public setAirRearWindowDefogger(I)V
    .registers 2
    .param p1, "airRearWindowDefogger"    # I

    .prologue
    .line 1015
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I

    .line 1016
    return-void
.end method

.method public setAirRearWindowDefoggerEngine(I)V
    .registers 5
    .param p1, "engineStatus"    # I

    .prologue
    .line 1024
    const-string v0, "AirCondition========================="

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "engineStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 1026
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefoggerEngine:I

    .line 1027
    return-void
.end method

.method public setAirRearWindowHeatingStatus(I)V
    .registers 2
    .param p1, "airRearWindowHeatingStatus"    # I

    .prologue
    .line 1131
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I

    .line 1132
    return-void
.end method

.method public setAirRightMirrorDefogger(I)V
    .registers 2
    .param p1, "airRightMirrorDefogger"    # I

    .prologue
    .line 1050
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I

    .line 1051
    return-void
.end method

.method public setAirRightSeatHeatingLevel(I)V
    .registers 2
    .param p1, "airRightSeatHeatingLevel"    # I

    .prologue
    .line 1107
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I

    .line 1108
    return-void
.end method

.method public setAirRightTemperature(F)V
    .registers 2
    .param p1, "airRightTemperature"    # F

    .prologue
    .line 710
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F

    .line 711
    return-void
.end method

.method public setAirRightTemperature_f(F)V
    .registers 2
    .param p1, "airRightTemperature_f"    # F

    .prologue
    .line 735
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F

    .line 736
    return-void
.end method

.method public setAirSWStatus(I)V
    .registers 2
    .param p1, "airSWStatus"    # I

    .prologue
    .line 673
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airSWStatus:I

    .line 674
    return-void
.end method

.method public setAirSupplyPreStatus(I)V
    .registers 2
    .param p1, "airPreSupplyStatus"    # I

    .prologue
    .line 438
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPreSupplyStatus:I

    .line 439
    return-void
.end method

.method public setAirSupplyStatus(I)V
    .registers 2
    .param p1, "airSupplyStatus"    # I

    .prologue
    .line 934
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    .line 935
    return-void
.end method

.method public setAirSyncStatus(I)V
    .registers 2
    .param p1, "syncStatus"    # I

    .prologue
    .line 1034
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I

    .line 1035
    return-void
.end method

.method public setAirTempInCar(I)V
    .registers 2
    .param p1, "airTempInCar"    # I

    .prologue
    .line 649
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airTempInCar:I

    .line 650
    return-void
.end method

.method public setAirTempLevel(I)V
    .registers 2
    .param p1, "airTempLevel"    # I

    .prologue
    .line 597
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airTempLevel:I

    .line 598
    return-void
.end method

.method public setAirTempOutCar(I)V
    .registers 2
    .param p1, "airTempOutCar"    # I

    .prologue
    .line 661
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I

    .line 662
    return-void
.end method

.method public setAirWindSpeed(I)V
    .registers 2
    .param p1, "airWindSpeed"    # I

    .prologue
    .line 764
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I

    .line 765
    return-void
.end method

.method public setAirWorkingRefreshState(I)V
    .registers 2
    .param p1, "refresh"    # I

    .prologue
    .line 510
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I

    .line 511
    return-void
.end method

.method public setAirdisplaypop(I)V
    .registers 2
    .param p1, "displaypop"    # I

    .prologue
    .line 894
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->displaypop:I

    .line 895
    return-void
.end method

.method public setIGN_ON(I)V
    .registers 2
    .param p1, "IGN_ON"    # I

    .prologue
    .line 636
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->IGN_ON:I

    .line 637
    return-void
.end method

.method public setIons_state(I)V
    .registers 2
    .param p1, "ions_state"    # I

    .prologue
    .line 856
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ions_state:I

    .line 857
    return-void
.end method

.method public setIons_switch(I)V
    .registers 2
    .param p1, "ions_switch"    # I

    .prologue
    .line 848
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->ions_switch:I

    .line 849
    return-void
.end method

.method public setPM2_5OutCarRefreshState(I)V
    .registers 2
    .param p1, "refresh"    # I

    .prologue
    .line 502
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5OutCarNeedRefresh:I

    .line 503
    return-void
.end method

.method public setPM2_5RefreshState(I)V
    .registers 2
    .param p1, "refresh"    # I

    .prologue
    .line 494
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5NeedRefresh:I

    .line 495
    return-void
.end method

.method public setairPm2_5_outcar(I)V
    .registers 2
    .param p1, "airPm2_5_outcar"    # I

    .prologue
    .line 478
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I

    .line 479
    return-void
.end method

.method public setairPm2_5_sts(I)V
    .registers 2
    .param p1, "airPm2_5_sts"    # I

    .prologue
    .line 486
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I

    .line 487
    return-void
.end method

.method public setairworking_mode(I)V
    .registers 2
    .param p1, "airworking_mode"    # I

    .prologue
    .line 518
    iput p1, p0, Lcom/qinggan/canbus/AirCondition;->airworking_mode:I

    .line 519
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 1373
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AirCondition{airSWStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airSWStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airACStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airACStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airHighWindStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airLowWindStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airDUALStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airDUALAllStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airMaxFrontStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearLightStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airSupplyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airDisplaySW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airWindSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airLeftTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airCirculationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airLeftSeatHeatingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRightSeatHeatingLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearCtlLockSW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airACMaxSW="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearWindowHeatingStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airECO="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airECO:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airFrontWindowDefogger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airCirculationStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearWindSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearDownSupplyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearParallelSupplyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearUpSupplyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearWindowDefogger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearWindowDefoggerEngine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefoggerEngine:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airLeftMirrorDefogger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRightMirrorDefogger="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airSyncStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airDisplay_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", IGN_ON="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->IGN_ON:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airTempInCar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airTempInCar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airTempOutCar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ions_state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->ions_state:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", ions_switch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->ions_switch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airACHeatStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airTempLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airTempLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airCompressorErrorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airCompressorLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airCompressorWorkStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPTCErrorStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPTCLimitStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPTCWorKStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airEngineStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPm2_5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acRunningState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acRunningState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acRapidCooling="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acOneButtonWarmth="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acHazeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acHazeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acBabyCareMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acAirCleanerMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acRainSnowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acSmokingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acStopCarMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", displaypop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->displaypop:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPm25_level="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airLeftTemperature_f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRightTemperature_f="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPm2_5_outcar="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airPm2_5_sts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airworking_mode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airworking_mode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", acAirVentCoolSts="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airFrontSWStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearSWStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airFrontMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airFrontSupplyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airRearSupplyStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airFrontWindSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airWorkModeRefresh="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airDORSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", airDORMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/AirCondition;->airDORMode:I

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
    .line 1195
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSWStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1196
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airACStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1197
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airHighWindStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLowWindStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDUALStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDUALAllStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airMaxFrontStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearLightStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1203
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1204
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDisplaySW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1205
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airWindSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1206
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1207
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1208
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearTemperature:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1209
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1210
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftSeatHeatingLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1211
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearCtlLockSW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1212
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airACMaxSW:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1213
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightSeatHeatingLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1214
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowHeatingStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1215
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airECO:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1216
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindowDefogger:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1217
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1218
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCirculationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1219
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1220
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearDownSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1221
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearParallelSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1222
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearUpSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1223
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearWindowDefogger:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1224
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftMirrorDefogger:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1225
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightMirrorDefogger:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1226
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airSyncStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1227
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDisplay_mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1228
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->IGN_ON:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempInCar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1230
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempOutCar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1231
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ions_state:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1232
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ions_switch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1233
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->ac_power_switch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1234
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airACHeatStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1235
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airTempLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1236
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorErrorStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1237
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorLimitStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1238
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airCompressorWorkStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1239
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPTCErrorStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1240
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPTCLimitStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1241
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPTCWorKStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1242
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airEngineStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1243
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1244
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acRunningState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1245
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airAQSStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1246
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPMStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1247
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPreSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1248
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acRapidCooling:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1249
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acOneButtonWarmth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1250
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acHazeMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1251
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acBabyCareMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1252
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acAirCleanerMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1253
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acRainSnowMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1254
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acSmokingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acStopCarMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1256
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->displaypop:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1257
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm25_level:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1258
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airLeftTemperature_f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1259
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRightTemperature_f:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 1260
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_outcar:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1261
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airPm2_5_sts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1262
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airworking_mode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1263
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->acAirVentCoolSts:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1264
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSWStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1265
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearSWStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1266
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1267
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1268
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1269
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airRearSupplyStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1270
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airFrontWindSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1271
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->isNeedRefreshAirWorkingMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1272
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5NeedRefresh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1273
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->isAirPM2_5OutCarNeedRefresh:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1274
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDORSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1275
    iget v0, p0, Lcom/qinggan/canbus/AirCondition;->airDORMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1276
    return-void
.end method
