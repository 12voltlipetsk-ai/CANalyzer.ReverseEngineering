.class public final Lcom/qinggan/carsignal/CarSignalCommType$CurCarType;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CurCarType"
.end annotation


# static fields
.field public static final AP13NSE:I = 0x4

.field public static final AP13SGE:I = 0x3

.field public static final AS21HL:I = 0x1

.field public static final AS21ML:I = 0x2

.field public static final ASTEROID:I = 0x5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Int2String(I)Ljava/lang/String;
    .registers 2
    .param p0, "carType"    # I

    .prologue
    .line 259
    packed-switch p0, :pswitch_data_16

    .line 271
    const-string v0, "no use"

    :goto_5
    return-object v0

    .line 261
    :pswitch_6
    const-string v0, "AS21HL"

    goto :goto_5

    .line 263
    :pswitch_9
    const-string v0, "AS21ML"

    goto :goto_5

    .line 265
    :pswitch_c
    const-string v0, "AP13-SGE"

    goto :goto_5

    .line 267
    :pswitch_f
    const-string v0, "AP13-NSE"

    goto :goto_5

    .line 269
    :pswitch_12
    const-string v0, "ASTEROID"

    goto :goto_5

    .line 259
    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
    .end packed-switch
.end method
