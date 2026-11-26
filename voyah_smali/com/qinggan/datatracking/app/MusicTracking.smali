.class public Lcom/qinggan/datatracking/app/MusicTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "MusicTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1007"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;
    }
.end annotation


# instance fields
.field private musicop:Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveway"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;
    .param p4, "appStartTime"    # Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    return-void
.end method


# virtual methods
.method public getMusicop()Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking;->musicop:Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;

    return-object v0
.end method

.method public setMusicop(Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;)V
    .registers 2
    .param p1, "musicop"    # Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking;->musicop:Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;

    .line 39
    return-void
.end method
