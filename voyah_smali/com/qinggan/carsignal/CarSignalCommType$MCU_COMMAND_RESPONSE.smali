.class public final Lcom/qinggan/carsignal/CarSignalCommType$MCU_COMMAND_RESPONSE;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MCU_COMMAND_RESPONSE"
.end annotation


# static fields
.field public static final ACC_STATE:I = 0x4

.field public static final BACKLIGHT_STATE:I = 0x2e

.field public static final BOARD_TEMP_STATE:I = 0xb

.field public static final CARSAFE_STATE:I = 0x9

.field public static final FACEPLATE_KEY_CODE:I = 0x3

.field public static final GET_AP_POWER:I = 0x1

.field public static final GET_CANBUS_STATE:I = 0x28

.field public static final GET_KEY_CHANNEL_LINE1_VALUE:I = 0x2c

.field public static final GET_KEY_CHANNEL_LINE2_VALUE:I = 0x2d

.field public static final GET_MCU_STATE:I = 0x26

.field public static final GET_VOLTAGE_LOW:I = 0x2a

.field public static final HEADLIGHT_STATE:I = 0x7

.field public static final ICU_TIME_DATA:I = 0x2f

.field public static final KEY_LIGHT_STATE:I = 0xd

.field public static final KEY_MUTE_STATE:I = 0xc

.field public static final KEY_VOLUME_STATE:I = 0xe

.field public static final LCD_TEMP_STATE:I = 0xf

.field public static final LIGHTSENSOR_STATE:I = 0xa

.field public static final MB_POWER_STATE:I = 0x2

.field public static final MCU_DIAG_REQUEST:I = 0x30

.field public static final PA_DISTORTION_STATE:I = 0x6

.field public static final PEPS_STATUS:I = 0x31

.field public static final POWERKEY_STATE:I = 0x5

.field public static final REVERSE_STATE:I = 0x8

.field public static final TBOX_MUTE_PIN_STATE:I = 0x32


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
