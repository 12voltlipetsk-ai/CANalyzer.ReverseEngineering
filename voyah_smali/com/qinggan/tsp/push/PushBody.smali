.class public Lcom/qinggan/tsp/push/PushBody;
.super Ljava/lang/Object;
.source "PushBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/push/PushBody$PushCode;
    }
.end annotation


# instance fields
.field private code:Ljava/lang/String;

.field private goodsNo:Ljava/lang/String;

.field private orderNo:Ljava/lang/String;

.field private paymentFee:Ljava/lang/String;

.field private paymentResult:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushBody;->code:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushBody;->goodsNo:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushBody;->orderNo:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentFee()Ljava/lang/String;
    .registers 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushBody;->paymentFee:Ljava/lang/String;

    return-object v0
.end method

.method public getPaymentResult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushBody;->paymentResult:Ljava/lang/String;

    return-object v0
.end method

.method public setCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "code"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushBody;->code:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setGoodsNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "goodsNo"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushBody;->goodsNo:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setOrderNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "orderNo"    # Ljava/lang/String;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushBody;->orderNo:Ljava/lang/String;

    .line 49
    return-void
.end method

.method public setPaymentFee(Ljava/lang/String;)V
    .registers 2
    .param p1, "paymentFee"    # Ljava/lang/String;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushBody;->paymentFee:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public setPaymentResult(Ljava/lang/String;)V
    .registers 2
    .param p1, "paymentResult"    # Ljava/lang/String;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushBody;->paymentResult:Ljava/lang/String;

    .line 25
    return-void
.end method
