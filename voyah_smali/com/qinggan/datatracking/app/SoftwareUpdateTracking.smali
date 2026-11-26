.class public Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "SoftwareUpdateTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1030"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;
    }
.end annotation


# instance fields
.field private software_update:Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;


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
.method public getSoftware_update()Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;->software_update:Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;

    return-object v0
.end method

.method public setSoftware_update(Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;)V
    .registers 2
    .param p1, "software_update"    # Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;->software_update:Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;

    .line 27
    return-void
.end method
