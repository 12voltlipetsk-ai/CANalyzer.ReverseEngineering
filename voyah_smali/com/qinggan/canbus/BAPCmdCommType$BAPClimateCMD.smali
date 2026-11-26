.class public final Lcom/qinggan/canbus/BAPCmdCommType$BAPClimateCMD;
.super Ljava/lang/Object;
.source "BAPCmdCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BAPCmdCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BAPClimateCMD"
.end annotation


# static fields
.field public static final BAP_CLIMATE_INFO_REQUEST_CMD:I = 0x64

.field public static final BAP_SEAT_VENTILATION_LEVEL_1:I = 0x2

.field public static final BAP_SEAT_VENTILATION_LEVEL_2:I = 0x2

.field public static final BAP_SEAT_VENTILATION_LEVEL_3:I = 0x2

.field public static final BAP_SEAT_VENTILATION_OFF:I = 0x0

.field public static final SET_BAP_CLEAN_AIR_CMD:I = 0x68

.field public static final SET_BAP_LEFT_SEAT_VENTILATION_CMD:I = 0x66

.field public static final SET_BAP_RIGHT_SEAT_VENTILATION_CMD:I = 0x67

.field public static final SET_BAP_STEERING_WHEEL_HEATING_CMD:I = 0x65


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
