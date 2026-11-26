.class public final Lcom/qinggan/carsignal/CarSignalCommType$LCD_TEMP;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LCD_TEMP"
.end annotation


# static fields
.field public static final COLD:I = 0x13

.field public static final HIGH:I = 0x1

.field public static final HOT:I = 0x3

.field public static final LITTLE_LOW:I = 0x10

.field public static final LOW:I = 0x11

.field public static final NORMAL:I = 0x0

.field public static final VERY_COLD:I = 0x14

.field public static final VERY_HOT:I = 0x4

.field public static final VERY_LOW:I = 0x12


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getTempLevelName(I)Ljava/lang/String;
    .registers 2
    .param p0, "tempLevel"    # I

    .prologue
    .line 427
    packed-switch p0, :pswitch_data_22

    .line 447
    :pswitch_3
    const-string v0, "UNKNOWN TEMP LEVEL"

    :goto_5
    return-object v0

    .line 429
    :pswitch_6
    const-string v0, "NORMAL"

    goto :goto_5

    .line 431
    :pswitch_9
    const-string v0, "HIGH"

    goto :goto_5

    .line 433
    :pswitch_c
    const-string v0, "HOT"

    goto :goto_5

    .line 435
    :pswitch_f
    const-string v0, "VERY_HOT"

    goto :goto_5

    .line 437
    :pswitch_12
    const-string v0, "LITTLE_LOW"

    goto :goto_5

    .line 439
    :pswitch_15
    const-string v0, "LOW"

    goto :goto_5

    .line 441
    :pswitch_18
    const-string v0, "VERY_LOW"

    goto :goto_5

    .line 443
    :pswitch_1b
    const-string v0, "COLD"

    goto :goto_5

    .line 445
    :pswitch_1e
    const-string v0, "VERY_COLD"

    goto :goto_5

    .line 427
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_3
        :pswitch_c
        :pswitch_f
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_12
        :pswitch_15
        :pswitch_18
        :pswitch_1b
        :pswitch_1e
    .end packed-switch
.end method
