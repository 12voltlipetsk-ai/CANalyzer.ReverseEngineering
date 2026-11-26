.class public final Lcom/qinggan/carsignal/CarSignalCommType$BUS_STATE;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BUS_STATE"
.end annotation


# static fields
.field public static final ERROR:I = 0x1

.field public static final INVALID:I = 0xff

.field public static final NORMAL:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 346
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
