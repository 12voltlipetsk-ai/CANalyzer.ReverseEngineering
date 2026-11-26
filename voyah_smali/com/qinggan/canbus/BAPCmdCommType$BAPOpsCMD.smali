.class public final Lcom/qinggan/canbus/BAPCmdCommType$BAPOpsCMD;
.super Ljava/lang/Object;
.source "BAPCmdCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BAPCmdCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BAPOpsCMD"
.end annotation


# static fields
.field public static final BAP_OPS_INFO_REQUEST_2_CMD:I = 0xc9

.field public static final BAP_OPS_INFO_REQUEST_3_CMD:I = 0xca

.field public static final BAP_OPS_INFO_REQUEST_4_CMD:I = 0xcb

.field public static final BAP_OPS_INFO_REQUEST_5_CMD:I = 0xcc

.field public static final BAP_OPS_REQUEST_1_CMD:I = 0xc8

.field public static final SET_BAP_OPS_DRAG_CAR_CONNECTION_CMD:I = 0xcf

.field public static final SET_BAP_OPS_MUTE_CMD:I = 0xcd

.field public static final SET_BAP_OPS_POP_OPS_SURFACE_CMD:I = 0xce


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
