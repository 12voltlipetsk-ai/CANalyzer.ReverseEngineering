.class public Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;
.super Ljava/lang/Object;
.source "WechatMsgTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/WechatMsgTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WechatMsgObj"
.end annotation


# instance fields
.field private trackingdata:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTrackingdata()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;->trackingdata:Ljava/lang/String;

    return-object v0
.end method

.method public setTrackingdata(Ljava/lang/String;)V
    .registers 2
    .param p1, "trackingdata"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;->trackingdata:Ljava/lang/String;

    .line 41
    return-void
.end method
