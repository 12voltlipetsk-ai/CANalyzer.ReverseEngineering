.class public final Lcom/qinggan/canbus/BAPCmdCommType$BAPRdkCMD;
.super Ljava/lang/Object;
.source "BAPCmdCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/BAPCmdCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BAPRdkCMD"
.end annotation


# static fields
.field public static final BAP_RDK_INFO_REQEUST_CMD:I = 0x190

.field public static final SET_BAR_CALIBRATION_TYRE_CMD:I = 0x191


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
