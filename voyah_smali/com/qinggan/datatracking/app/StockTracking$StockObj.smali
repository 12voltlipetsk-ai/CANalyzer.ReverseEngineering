.class public Lcom/qinggan/datatracking/app/StockTracking$StockObj;
.super Ljava/lang/Object;
.source "StockTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/StockTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StockObj"
.end annotation


# instance fields
.field private expand:Ljava/lang/String;

.field private stock_code:Ljava/lang/String;

.field private stock_name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/datatracking/app/StockTracking$StockObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getStock_code()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qinggan/datatracking/app/StockTracking$StockObj;->stock_code:Ljava/lang/String;

    return-object v0
.end method

.method public getStock_name()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/datatracking/app/StockTracking$StockObj;->stock_name:Ljava/lang/String;

    return-object v0
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/qinggan/datatracking/app/StockTracking$StockObj;->expand:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setStock_code(Ljava/lang/String;)V
    .registers 2
    .param p1, "stock_code"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qinggan/datatracking/app/StockTracking$StockObj;->stock_code:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setStock_name(Ljava/lang/String;)V
    .registers 2
    .param p1, "stock_name"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/qinggan/datatracking/app/StockTracking$StockObj;->stock_name:Ljava/lang/String;

    .line 53
    return-void
.end method
