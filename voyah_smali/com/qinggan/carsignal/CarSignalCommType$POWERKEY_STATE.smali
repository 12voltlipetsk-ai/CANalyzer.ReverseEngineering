.class public final Lcom/qinggan/carsignal/CarSignalCommType$POWERKEY_STATE;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "POWERKEY_STATE"
.end annotation


# static fields
.field public static final KEY_LONG_PRESSED:I = 0x2

.field public static final KEY_LONG_RESET:I = 0x3

.field public static final KEY_PRESSED:I = 0x1

.field public static final KEY_RELEASE:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
