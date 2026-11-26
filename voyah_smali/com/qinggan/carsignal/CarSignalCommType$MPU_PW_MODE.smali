.class public final Lcom/qinggan/carsignal/CarSignalCommType$MPU_PW_MODE;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MPU_PW_MODE"
.end annotation


# static fields
.field public static final AWAKE:I = 0x1

.field public static final FULL_ON:I = 0x0

.field public static final REBOOT:I = 0x3

.field public static final STANDBY:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 276
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPowerModeString(I)Ljava/lang/String;
    .registers 2
    .param p0, "mode"    # I

    .prologue
    .line 283
    packed-switch p0, :pswitch_data_12

    .line 293
    const-string v0, "UNKNOWN"

    :goto_5
    return-object v0

    .line 285
    :pswitch_6
    const-string v0, "FULL_ON"

    goto :goto_5

    .line 287
    :pswitch_9
    const-string v0, "AWAKE"

    goto :goto_5

    .line 289
    :pswitch_c
    const-string v0, "STANDBY"

    goto :goto_5

    .line 291
    :pswitch_f
    const-string v0, "REBOOT"

    goto :goto_5

    .line 283
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method
