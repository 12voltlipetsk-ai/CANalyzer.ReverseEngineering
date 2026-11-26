.class public final Lcom/qinggan/canbus/BAPCmdCommType$BAPExteriorLightCMD;
.super Ljava/lang/Object;
.source "BAPCmdCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BAPCmdCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BAPExteriorLightCMD"
.end annotation


# static fields
.field public static final BAP_EXTERIOR_LIGHT_INFO_REQUEST_CMD:I = 0x1f4

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_0:I = 0x0

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_1:I = 0x1

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_2:I = 0x2

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_3:I = 0x3

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_4:I = 0x4

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_5:I = 0x5

.field public static final BAP_EXTERIOR_LIGHT_LEVEL_6:I = 0x6

.field public static final SET_BAP_EXTERIOR_LIGHT_LEVEL_CMD:I = 0x1f5


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
