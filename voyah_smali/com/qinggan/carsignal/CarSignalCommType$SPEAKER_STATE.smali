.class public final Lcom/qinggan/carsignal/CarSignalCommType$SPEAKER_STATE;
.super Ljava/lang/Object;
.source "CarSignalCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SPEAKER_STATE"
.end annotation


# static fields
.field public static final INVALID:I = 0xff

.field public static final OPEN:I = 0x4

.field public static final SHORT2GND:I = 0x1

.field public static final SHORT2LOAD:I = 0x8

.field public static final SHORT2VCC:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
