.class public final Lcom/qinggan/carsignal/CarSignalCommType$MCU_COMMAND_REQUEST_LEN;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MCU_COMMAND_REQUEST_LEN"
.end annotation


# static fields
.field public static final CIS_BACKLIGHT_STATE_LEN:I = 0x1

.field public static final CIS_BL_KEY_VALUE_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_BL_KEY_VALUE_CMD_ID_SET_LEN:I = 0x1

.field public static final CIS_BL_STATE_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_BL_STATE_CMD_ID_SET_LEN:I = 0x1

.field public static final CIS_BL_VALUE_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_BL_VALUE_CMD_ID_SET_LEN:I = 0x1

.field public static final CIS_DIAG_ANT_CMD_ID_GET_LEN:I = 0x2

.field public static final CIS_DIAG_CANBUS_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_LCD_BOARD_TEMP_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_LINBUS_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_MAIN_BOARD_TEMP_CMD_ID_LEN:I = 0x2

.field public static final CIS_DIAG_MAIN_DAB_ANT_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_MAIN_GPS_ANT_GET_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_MAIN_MIC1_CMD_ID:I = 0x1b

.field public static final CIS_DIAG_MAIN_MIC2_CMD_ID:I = 0x1c

.field public static final CIS_DIAG_MAIN_SPEAKER_CMD_ID_LEN:I = 0x4

.field public static final CIS_DIAG_MCU_WTD_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_MUSIC_INFO_LEN:I = 0x2

.field public static final CIS_DIAG_TUNER_ANT_CMD_ID_LEN:I = 0x1

.field public static final CIS_DIAG_USB1_STATE_CMD_ID:I = 0x1f

.field public static final CIS_DIAG_USB2_STATE_CMD_ID:I = 0x20

.field public static final CIS_GET_MCU_POLICY_LEN:I = 0x2

.field public static final CIS_KEY_CMD_ID_FACTORY_MODE_KEY_GET_LEN:I = 0x1

.field public static final CIS_KEY_CMD_ID_RECOVERY_KEY_GET_LEN:I = 0x1

.field public static final CIS_KEY_CTL_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_KEY_CTL_CMD_ID_SET_LEN:I = 0x1

.field public static final CIS_LIGHTSENSOR_STATE_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_MCU_DOOR_STATE_GET_LEN:I = 0x1

.field public static final CIS_MCU_VOLTAGE_STATE_GET_LEN:I = 0x1

.field public static final CIS_PA_GET_MUTE_STATE_LEN:I = 0x1

.field public static final CIS_PA_SET_MUTE_STATE_LEN:I = 0x1

.field public static final CIS_POWER_CMD_ID_GET_ACC_LEN:I = 0x1

.field public static final CIS_POWER_CMD_ID_GET_MCU_PM_MODE_LEN:I = 0x1

.field public static final CIS_POWER_CMD_ID_GET_MCU_PS_LEN:I = 0x1

.field public static final CIS_POWER_CMD_ID_SET_MPU_PM_MODE_LEN:I = 0x2

.field public static final CIS_SYS_ALARM_GET_CMD_ID:I = 0x8

.field public static final CIS_SYS_ALARM_SET_CMD_ID:I = 0x9

.field public static final CIS_SYS_ALARM_SW_GET_CMD_ID:I = 0xa

.field public static final CIS_SYS_ALARM_SW_SET_CMD_ID:I = 0xb

.field public static final CIS_SYS_CHC_MCU_CMD_ID:I = 0x4

.field public static final CIS_SYS_CMD_ID_GET_AUDIO_SOURCE_YPE_LEN:I = 0x1

.field public static final CIS_SYS_CMD_ID_GET_BT_PHONE_STATE_LEN:I = 0x1

.field public static final CIS_SYS_CMD_ID_SET_AUDIO_SOURCE_YPE_LEN:I = 0x1

.field public static final CIS_SYS_CMD_ID_SET_BT_PHONE_STATE_LEN:I = 0x1

.field public static final CIS_SYS_CMD_ID_SET_VEHICLE_VIN_CODE_LEN:I = 0x11

.field public static final CIS_SYS_ETHENET_LINK_SET_CMD_LEN:I = 0x2

.field public static final CIS_SYS_ETHENET_STATUS_SET_CMD_LEN:I = 0x2

.field public static final CIS_SYS_HW_VERS_MCU_CMD_ID_LEN:I = 0x5

.field public static final CIS_SYS_KERNEL_VERS_CMD_ID_LEN:I = 0x18

.field public static final CIS_SYS_MPU_CKSUM_SET_CMD_ID:I = 0xe

.field public static final CIS_SYS_RTC_GET_CMD_ID:I = 0x6

.field public static final CIS_SYS_RTC_SET_CMD_ID_LEN:I = 0x8

.field public static final CIS_SYS_SW_DATE_MCU_CMD_ID_LEN:I = 0xa

.field public static final CIS_SYS_SW_VERS_CAN_CMD_ID_LEN:I = 0xc

.field public static final CIS_SYS_SW_VERS_MCU_CMD_ID_LEN:I = 0x20

.field public static final CIS_SYS_VEHI_CONFIG_GET_CMD_ID:I = 0xd

.field public static final CIS_SYS_VEHI_CONFIG_GET_CMD_LEN:I = 0xa

.field public static final CIS_SYS_VEHI_CONFIG_SET_CMD_LEN:I = 0xa

.field public static final CIS_SYS_VEHI_TYPE_GET_CMD_ID_LEN:I = 0x1

.field public static final CIS_SYS_WAKEUP_SRC_CMD_ID_LEN:I = 0x2

.field public static final CIS_TBOX_MUTE_PIN_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_TIMERMODE_STATE_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_TIMERMODE_STATE_CMD_ID_SET_LEN:I = 0x1

.field public static final CIS_TP_STATE_CMD_ID_GET_LEN:I = 0x1

.field public static final CIS_TP_STATE_CMD_ID_SET_LEN:I = 0x1

.field public static final CIS_WHEEL_KEY_CHANNEL_LINE1_CMD_ID_GET_LEN:I = 0x2

.field public static final CIS_WHEEL_KEY_CHANNEL_LINE2_CMD_ID_GET_LEN:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
