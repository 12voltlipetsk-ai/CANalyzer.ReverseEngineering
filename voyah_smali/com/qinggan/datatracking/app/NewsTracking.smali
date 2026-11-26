.class public Lcom/qinggan/datatracking/app/NewsTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "NewsTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1028"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;
    }
.end annotation


# instance fields
.field private news:Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;


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
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getNews()Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qinggan/datatracking/app/NewsTracking;->news:Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;

    return-object v0
.end method

.method public setNews(Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;)V
    .registers 2
    .param p1, "news"    # Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/qinggan/datatracking/app/NewsTracking;->news:Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;

    .line 28
    return-void
.end method
