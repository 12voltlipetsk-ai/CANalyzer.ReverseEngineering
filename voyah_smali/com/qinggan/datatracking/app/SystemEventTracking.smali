.class public Lcom/qinggan/datatracking/app/SystemEventTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "SystemEventTracking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;
    }
.end annotation


# instance fields
.field private systemEventobj:Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveway"    # Ljava/lang/String;

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2, p3}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;
    .param p4, "appStartTime"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    return-void
.end method


# virtual methods
.method public getNews()Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SystemEventTracking;->systemEventobj:Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;

    return-object v0
.end method

.method public setNews(Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;)V
    .registers 2
    .param p1, "news"    # Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SystemEventTracking;->systemEventobj:Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;

    .line 26
    return-void
.end method
