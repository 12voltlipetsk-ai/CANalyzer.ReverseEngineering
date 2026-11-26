.class public final Lcom/qinggan/carsignal/CarSignalCommType$WakeupSrc;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WakeupSrc"
.end annotation


# static fields
.field public static final ACC_PIN_WAKEUP:I = 0x5

.field public static final AP_REBOOT_WAKEUP:I = 0x1

.field public static final AP_TIMEOUT_WAKEUP:I = 0x3

.field public static final CAN_WAKEUP:I = 0x2

.field public static final ILL_WAKEUP:I = 0x8

.field public static final POWERFAIL_WAKE_UP:I = 0x9

.field public static final PWR_KEY_WAKEUP:I = 0x4

.field public static final RESET_WAKEUP:I = 0x6

.field public static final WTG_WAKEUP:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 214
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getWakeupSrcName(I)Ljava/lang/String;
    .registers 2
    .param p0, "wakeupSrc"    # I

    .prologue
    .line 226
    packed-switch p0, :pswitch_data_22

    .line 246
    const-string v0, "UNKNOWN WAKEUP SOURCE"

    :goto_5
    return-object v0

    .line 228
    :pswitch_6
    const-string v0, "AP_REBOOT_WAKEUP"

    goto :goto_5

    .line 230
    :pswitch_9
    const-string v0, "CAN_WAKEUP"

    goto :goto_5

    .line 232
    :pswitch_c
    const-string v0, "AP_TIMEOUT_WAKEUP"

    goto :goto_5

    .line 234
    :pswitch_f
    const-string v0, "PWR_KEY_WAKEUP"

    goto :goto_5

    .line 236
    :pswitch_12
    const-string v0, "ACC_PIN_WAKEUP"

    goto :goto_5

    .line 238
    :pswitch_15
    const-string v0, "RESET_WAKEUP"

    goto :goto_5

    .line 240
    :pswitch_18
    const-string v0, "WTG_WAKEUP"

    goto :goto_5

    .line 242
    :pswitch_1b
    const-string v0, "ILL_WAKEUP"

    goto :goto_5

    .line 244
    :pswitch_1e
    const-string v0, "POWERFAIL_WAKE_UP"

    goto :goto_5

    .line 226
    nop

    :pswitch_data_22
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method
