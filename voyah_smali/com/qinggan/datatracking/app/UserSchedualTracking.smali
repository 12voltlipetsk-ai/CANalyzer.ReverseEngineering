.class public Lcom/qinggan/datatracking/app/UserSchedualTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "UserSchedualTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1013"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;
    }
.end annotation


# instance fields
.field private userschedual:Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveway"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;

    .prologue
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 14
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
.method public getUserschedual()Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;
    .registers 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserSchedualTracking;->userschedual:Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;

    return-object v0
.end method

.method public setUserschedual(Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;)V
    .registers 2
    .param p1, "userschedual"    # Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserSchedualTracking;->userschedual:Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;

    .line 28
    return-void
.end method
