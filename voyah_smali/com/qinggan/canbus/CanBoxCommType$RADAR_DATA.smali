.class public final Lcom/qinggan/canbus/CanBoxCommType$RADAR_DATA;
.super Ljava/lang/Object;
.source "CanBoxCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CanBoxCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RADAR_DATA"
.end annotation


# static fields
.field public static final NO_OBSTACLES:I = 0xff

.field public static final NO_RADAR:I = 0xef


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
