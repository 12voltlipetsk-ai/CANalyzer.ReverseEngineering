.class public final Lcom/qinggan/carsignal/CarSignalCommType$BOARD_TEMP;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BOARD_TEMP"
.end annotation


# static fields
.field public static final ACTION_HIGH_BOARD_TEMP_VOLUME_WARN:Ljava/lang/String; = "com.qinggan.carsignal.action.high_board_temp_warning_in_volume_raise"

.field public static final COLD:I = 0x13

.field public static final HIGH:I = 0x1

.field public static final HOT:I = 0x3

.field public static final NORMAL:I = 0x0

.field public static final VERY_COLD:I = 0x14

.field public static final VERY_HIGH:I = 0x2

.field public static final VERY_HOT:I = 0x4


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 380
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTempLevelName(I)Ljava/lang/String;
    .registers 2
    .param p0, "tempLevel"    # I

    .prologue
    .line 395
    sparse-switch p0, :sswitch_data_1c

    .line 411
    const-string v0, "UNKNOWN TEMP LEVEL"

    :goto_5
    return-object v0

    .line 397
    :sswitch_6
    const-string v0, "NORMAL"

    goto :goto_5

    .line 399
    :sswitch_9
    const-string v0, "HIGH"

    goto :goto_5

    .line 401
    :sswitch_c
    const-string v0, "VERY_HIGH"

    goto :goto_5

    .line 403
    :sswitch_f
    const-string v0, "HOT"

    goto :goto_5

    .line 405
    :sswitch_12
    const-string v0, "VERY_HOT"

    goto :goto_5

    .line 407
    :sswitch_15
    const-string v0, "COLD"

    goto :goto_5

    .line 409
    :sswitch_18
    const-string v0, "VERY_COLD"

    goto :goto_5

    .line 395
    nop

    :sswitch_data_1c
    .sparse-switch
        0x0 -> :sswitch_6
        0x1 -> :sswitch_9
        0x2 -> :sswitch_c
        0x3 -> :sswitch_f
        0x4 -> :sswitch_12
        0x13 -> :sswitch_15
        0x14 -> :sswitch_18
    .end sparse-switch
.end method
