.class public final Lcom/qinggan/tsp/push/PushBody$PushCode;
.super Ljava/lang/Object;
.source "PushBody.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/push/PushBody;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PushCode"
.end annotation


# static fields
.field public static final ERROR_ORDER_FAILED:Ljava/lang/String; = "1"

.field public static final ERROR_PAY_FAILED:Ljava/lang/String; = "1"

.field public static final SUCCESS:Ljava/lang/String; = "0"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
