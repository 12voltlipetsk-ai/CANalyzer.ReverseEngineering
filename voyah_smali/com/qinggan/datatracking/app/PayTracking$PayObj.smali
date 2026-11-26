.class public Lcom/qinggan/datatracking/app/PayTracking$PayObj;
.super Ljava/lang/Object;
.source "PayTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/PayTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PayObj"
.end annotation


# instance fields
.field private pay_amount:Ljava/lang/String;

.field private pay_result:Ljava/lang/String;

.field private pay_type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getPay_amount()Ljava/lang/String;
    .registers 2

    .prologue
    .line 47
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PayTracking$PayObj;->pay_amount:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_result()Ljava/lang/String;
    .registers 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PayTracking$PayObj;->pay_result:Ljava/lang/String;

    return-object v0
.end method

.method public getPay_type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PayTracking$PayObj;->pay_type:Ljava/lang/String;

    return-object v0
.end method

.method public setPay_amount(Ljava/lang/String;)V
    .registers 2
    .param p1, "pay_amount"    # Ljava/lang/String;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PayTracking$PayObj;->pay_amount:Ljava/lang/String;

    .line 52
    return-void
.end method

.method public setPay_result(Ljava/lang/String;)V
    .registers 2
    .param p1, "pay_result"    # Ljava/lang/String;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PayTracking$PayObj;->pay_result:Ljava/lang/String;

    .line 60
    return-void
.end method

.method public setPay_type(Ljava/lang/String;)V
    .registers 2
    .param p1, "pay_type"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PayTracking$PayObj;->pay_type:Ljava/lang/String;

    .line 44
    return-void
.end method
