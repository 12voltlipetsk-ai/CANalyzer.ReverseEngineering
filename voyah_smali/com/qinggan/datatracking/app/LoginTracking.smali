.class public Lcom/qinggan/datatracking/app/LoginTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "LoginTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1103"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;
    }
.end annotation


# instance fields
.field private login:Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;


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
    .line 16
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void
.end method


# virtual methods
.method public getLogin()Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LoginTracking;->login:Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;

    return-object v0
.end method

.method public setLogin(Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;)V
    .registers 2
    .param p1, "login"    # Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LoginTracking;->login:Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;

    .line 26
    return-void
.end method
