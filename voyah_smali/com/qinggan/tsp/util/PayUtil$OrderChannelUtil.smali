.class public Lcom/qinggan/tsp/util/PayUtil$OrderChannelUtil;
.super Ljava/lang/Object;
.source "PayUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/util/PayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderChannelUtil"
.end annotation


# static fields
.field public static final Type_APP:Ljava/lang/String; = "APP"

.field public static final Type_DW:Ljava/lang/String; = "DW"

.field public static final Type_Default:Ljava/lang/String; = "OBU"

.field public static final Type_MOBILE:Ljava/lang/String; = "MOBILE"

.field public static final Type_OBU:Ljava/lang/String; = "OBU"

.field public static final Type_WECHAT:Ljava/lang/String; = "WECHAT"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
