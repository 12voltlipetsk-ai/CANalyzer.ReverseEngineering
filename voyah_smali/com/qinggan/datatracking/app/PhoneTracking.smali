.class public Lcom/qinggan/datatracking/app/PhoneTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "PhoneTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1005"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;
    }
.end annotation


# instance fields
.field private callconnecttype:Ljava/lang/String;

.field private calltext:Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;


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
.method public getCallconnecttype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PhoneTracking;->callconnecttype:Ljava/lang/String;

    return-object v0
.end method

.method public getCalltext()Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;
    .registers 2

    .prologue
    .line 35
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PhoneTracking;->calltext:Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;

    return-object v0
.end method

.method public setCallconnecttype(Ljava/lang/String;)V
    .registers 2
    .param p1, "callconnecttype"    # Ljava/lang/String;

    .prologue
    .line 31
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PhoneTracking;->callconnecttype:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setCalltext(Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;)V
    .registers 2
    .param p1, "calltext"    # Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PhoneTracking;->calltext:Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;

    .line 40
    return-void
.end method
