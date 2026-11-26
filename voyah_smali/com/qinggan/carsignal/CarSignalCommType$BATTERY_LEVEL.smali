.class public final Lcom/qinggan/carsignal/CarSignalCommType$BATTERY_LEVEL;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BATTERY_LEVEL"
.end annotation


# static fields
.field public static final HIGH:I = 0x2

.field public static final LOW:I = 0x1

.field public static final NORMAL:I = 0x0

.field public static final VERY_HIGH:I = 0x4

.field public static final VERY_LOW:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 353
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBatteryLevelName(I)Ljava/lang/String;
    .registers 2
    .param p0, "batteryLevel"    # I

    .prologue
    .line 361
    packed-switch p0, :pswitch_data_16

    .line 373
    const-string v0, "UNKNOWN BATTERY LEVEL"

    :goto_5
    return-object v0

    .line 363
    :pswitch_6
    const-string v0, "NORMAL"

    goto :goto_5

    .line 365
    :pswitch_9
    const-string v0, "LOW"

    goto :goto_5

    .line 367
    :pswitch_c
    const-string v0, "HIGH"

    goto :goto_5

    .line 369
    :pswitch_f
    const-string v0, "VERY_LOW"

    goto :goto_5

    .line 371
    :pswitch_12
    const-string v0, "VERY_HIGH"

    goto :goto_5

    .line 361
    nop

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method
