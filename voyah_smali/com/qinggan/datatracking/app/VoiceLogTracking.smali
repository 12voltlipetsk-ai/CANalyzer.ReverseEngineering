.class public Lcom/qinggan/datatracking/app/VoiceLogTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "VoiceLogTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1026"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;
    }
.end annotation


# instance fields
.field private voice:Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;


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
.method public getVoice()Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking;->voice:Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;

    return-object v0
.end method

.method public setVoice(Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;)V
    .registers 2
    .param p1, "voice"    # Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking;->voice:Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;

    .line 29
    return-void
.end method
