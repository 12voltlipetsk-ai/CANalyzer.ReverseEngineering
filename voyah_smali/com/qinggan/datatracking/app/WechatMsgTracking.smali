.class public Lcom/qinggan/datatracking/app/WechatMsgTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "WechatMsgTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1029"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;
    }
.end annotation


# instance fields
.field private wechatmsg:Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveway"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;
    .param p4, "appStartTime"    # Ljava/lang/String;

    .prologue
    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getWechatmsg()Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/datatracking/app/WechatMsgTracking;->wechatmsg:Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;

    return-object v0
.end method

.method public setWechatmsg(Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;)V
    .registers 2
    .param p1, "wechatmsg"    # Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qinggan/datatracking/app/WechatMsgTracking;->wechatmsg:Lcom/qinggan/datatracking/app/WechatMsgTracking$WechatMsgObj;

    .line 29
    return-void
.end method
