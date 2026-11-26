.class public final Lcom/qinggan/carsignal/CarSignalCommType$MCU_COMMAND_REQUEST;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MCU_COMMAND_REQUEST"
.end annotation


# static fields
.field public static final CIS_BL_KEY_VALUE_CMD_ID_GET:I = 0x26

.field public static final CIS_BL_KEY_VALUE_CMD_ID_SET:I = 0x27

.field public static final CIS_BL_STATE_CMD_ID_GET:I = 0x23

.field public static final CIS_BL_STATE_CMD_ID_SET:I = 0x28

.field public static final CIS_BL_VALUE_CMD_ID_GET:I = 0x24

.field public static final CIS_BL_VALUE_CMD_ID_SET:I = 0x25

.field public static final CIS_CARSAFE_STATE_CMD_ID_GET:I = 0x2f

.field public static final CIS_DIAG_AM_INFO_CMD_ID:I = 0x58

.field public static final CIS_DIAG_ANT_CMD_ID_GET:I = 0x84

.field public static final CIS_DIAG_CANBUS_CMD_ID:I = 0x42

.field public static final CIS_DIAG_FM_INFO_CMD_ID:I = 0x59

.field public static final CIS_DIAG_LCD_BOARD_TEMP_CMD_ID:I = 0x35

.field public static final CIS_DIAG_LINBUS_CMD_ID:I = 0x18

.field public static final CIS_DIAG_MAIN_BOARD_TEMP_CMD_ID:I = 0x36

.field public static final CIS_DIAG_MAIN_DAB_ANT_CMD_ID:I = 0x1a

.field public static final CIS_DIAG_MAIN_GPS_ANT_GET_CMD_ID:I = 0x15

.field public static final CIS_DIAG_MAIN_MIC1_CMD_ID:I = 0x1b

.field public static final CIS_DIAG_MAIN_MIC2_CMD_ID:I = 0x1c

.field public static final CIS_DIAG_MAIN_SPEAKER_CMD_ID:I = 0x17

.field public static final CIS_DIAG_MCU_WTD_CMD_ID:I = 0x19

.field public static final CIS_DIAG_MUSIC_INFO_CMD_ID:I = 0x52

.field public static final CIS_DIAG_TUNER_ANT_CMD_ID:I = 0x14

.field public static final CIS_DIAG_USB1_STATE_CMD_ID:I = 0x1f

.field public static final CIS_DIAG_USB2_STATE_CMD_ID:I = 0x20

.field public static final CIS_GET_MCU_POLICY:I = 0x4a

.field public static final CIS_KEY_CMD_ID_FACTORY_MODE_KEY_GET:I = 0x22

.field public static final CIS_KEY_CMD_ID_RECOVERY_KEY_GET:I = 0x21

.field public static final CIS_LIGHTSENSOR_STATE_CMD_ID_GET:I = 0x31

.field public static final CIS_MCU_DOOR_STATE_GET:I = 0x43

.field public static final CIS_MCU_VOLTAGE_STATE_GET:I = 0x44

.field public static final CIS_PASDIAG_LCD_BOARD_TEMP_CMD_ID:I = 0x81

.field public static final CIS_PASLIGHTSENSOR_STATE_CMD_ID_GET:I = 0x80

.field public static final CIS_PA_GET_MUTE_STATE:I = 0x12

.field public static final CIS_PA_SET_MUTE_STATE:I = 0x13

.field public static final CIS_POWER_CMD_ID_GET_ACC:I = 0x2b

.field public static final CIS_POWER_CMD_ID_GET_MCU_PM_MODE:I = 0x10

.field public static final CIS_POWER_CMD_ID_GET_MCU_PS:I = 0x11

.field public static final CIS_POWER_CMD_ID_SET_MPU_PM_MODE:I = 0xf

.field public static final CIS_POWER_OFF_CMD_ID_SET:I = 0x32

.field public static final CIS_REVERSE_STATE_CMD_ID_GET:I = 0x2e

.field public static final CIS_SYS_ALARM_GET_CMD_ID:I = 0x8

.field public static final CIS_SYS_ALARM_SET_CMD_ID:I = 0x9

.field public static final CIS_SYS_ALARM_SW_GET_CMD_ID:I = 0xa

.field public static final CIS_SYS_ALARM_SW_SET_CMD_ID:I = 0xb

.field public static final CIS_SYS_BT_MAC_SET_CMD_ID:I = 0x71

.field public static final CIS_SYS_CHC_MCU_CMD_ID:I = 0x4

.field public static final CIS_SYS_CMD_ID_GET_AUDIO_SOURCE_TYPE:I = 0x54

.field public static final CIS_SYS_CMD_ID_GET_BT_PHONE_STATE:I = 0x47

.field public static final CIS_SYS_CMD_ID_SET_AUDIO_SOURCE_TYPE:I = 0x53

.field public static final CIS_SYS_CMD_ID_SET_BT_PHONE_STATE:I = 0x46

.field public static final CIS_SYS_CMD_ID_SET_VEHICLE_VIN_CODE:I = 0x5d

.field public static final CIS_SYS_ETHENET_LINK_SET_CMD:I = 0x73

.field public static final CIS_SYS_ETHENET_STATUS_SET_CMD:I = 0x72

.field public static final CIS_SYS_HW_VERS_MCU_CMD_ID:I = 0x1

.field public static final CIS_SYS_KERNEL_VERS_CMD_ID:I = 0x74

.field public static final CIS_SYS_KEY_CTL_CMD_ID_GET:I = 0x4e

.field public static final CIS_SYS_KEY_CTL_CMD_ID_SET:I = 0x4f

.field public static final CIS_SYS_MPU_CKSUM_SET_CMD_ID:I = 0xe

.field public static final CIS_SYS_RTC_GET_CMD_ID:I = 0x6

.field public static final CIS_SYS_RTC_SET_CMD_ID:I = 0x7

.field public static final CIS_SYS_SW_DATE_MCU_CMD_ID:I = 0x3

.field public static final CIS_SYS_SW_VERS_CAN_CMD_ID:I = 0x4c

.field public static final CIS_SYS_SW_VERS_MCU_CMD_ID:I = 0x2

.field public static final CIS_SYS_VEHICLE_TYPE_CMD_ID:I = 0x70

.field public static final CIS_SYS_VEHI_CONFIG_GET_CMD_ID:I = 0xd

.field public static final CIS_SYS_VEHI_CONFIG_SET_CMD_ID:I = 0x60

.field public static final CIS_SYS_VEHI_LOGISTICS:I = 0x69

.field public static final CIS_SYS_VEHI_TYPE_GET_CMD_ID:I = 0xc

.field public static final CIS_SYS_WAKEUP_SRC_CMD_ID:I = 0x5

.field public static final CIS_SYS_WHEEL_KEY_CHANNEL_LINE1_CMD_ID_GET:I = 0x50

.field public static final CIS_SYS_WHEEL_KEY_CHANNEL_LINE2_CMD_ID_GET:I = 0x51

.field public static final CIS_TBOX_MUTE_PIN_STATE_ID_GET:I = 0x2d

.field public static final CIS_TIMERMODE_STATE_CMD_ID_GET:I = 0x37

.field public static final CIS_TIMERMODE_STATE_CMD_ID_SET:I = 0x38

.field public static final CIS_VBUS_STATE_CMD_ID_GET:I = 0x29

.field public static final CIS_VBUS_STATE_CMD_ID_SET:I = 0x2a


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
