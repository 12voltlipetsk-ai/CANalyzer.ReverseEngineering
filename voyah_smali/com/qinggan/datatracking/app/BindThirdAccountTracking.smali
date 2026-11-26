.class public Lcom/qinggan/datatracking/app/BindThirdAccountTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "BindThirdAccountTracking.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;
    }
.end annotation


# instance fields
.field private binding_data:Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;


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
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method


# virtual methods
.method public getBinding_data()Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;
    .registers 2

    .prologue
    .line 20
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BindThirdAccountTracking;->binding_data:Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;

    return-object v0
.end method

.method public setBinding_data(Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;)V
    .registers 2
    .param p1, "binding_data"    # Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BindThirdAccountTracking;->binding_data:Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;

    .line 25
    return-void
.end method
