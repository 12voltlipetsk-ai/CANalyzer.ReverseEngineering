.class public final Lcom/qinggan/canbus/CanBoxCommType$KEY_STATUS;
.super Ljava/lang/Object;
.source "CanBoxCommType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CanBoxCommType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "KEY_STATUS"
.end annotation


# static fields
.field public static final KEYCLICKS:I = 0x2

.field public static final KEYDOWN:I = 0x1

.field public static final KEYUP:I = 0x0

.field public static final LONG_PRESSED:I = 0x4

.field public static final SHORT_PRESSED:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
