.class public final Lcom/qinggan/carsignal/CarSignalCommType$WAKEUP_SRC;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WAKEUP_SRC"
.end annotation


# static fields
.field public static final ACC_PIN:I = 0x10

.field public static final AP_REBOOT:I = 0x1

.field public static final AP_TimeOut:I = 0x4

.field public static final CAN:I = 0x2

.field public static final PWR_KEY:I = 0x8

.field public static final RESET:I = 0x20

.field public static final Wtdog:I = 0x40

.field public static final ill:I = 0x80


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 525
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
