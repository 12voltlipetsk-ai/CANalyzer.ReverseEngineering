.class public final Lcom/qinggan/carsignal/CarSignalCommType$DEVICE_ANT;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DEVICE_ANT"
.end annotation


# static fields
.field public static final INVALID:I = 0xff

.field public static final NORMAL:I = 0x0

.field public static final OPEN:I = 0x1

.field public static final SHORT:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 329
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
