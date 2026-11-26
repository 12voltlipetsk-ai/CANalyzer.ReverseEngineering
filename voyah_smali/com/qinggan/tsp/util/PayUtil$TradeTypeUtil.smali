.class public Lcom/qinggan/tsp/util/PayUtil$TradeTypeUtil;
.super Ljava/lang/Object;
.source "PayUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/util/PayUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TradeTypeUtil"
.end annotation


# static fields
.field public static final AliPay:Ljava/lang/String; = "0"

.field public static final CritpPay:Ljava/lang/String; = "7"

.field public static final ETCPPay:Ljava/lang/String; = "4"

.field public static final EZParkingPay:Ljava/lang/String; = "5"

.field public static final IllegalPay:Ljava/lang/String; = "6"

.field public static final NonSkipPay:Ljava/lang/String; = "10"

.field public static final SUNNINGPay:Ljava/lang/String; = "9"

.field public static final ShengYangPay:Ljava/lang/String; = "8"

.field public static final TSMPay:Ljava/lang/String; = "3"

.field public static final UnionPay:Ljava/lang/String; = "2"

.field public static final WeChatPay:Ljava/lang/String; = "1"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
