.class public Lcom/qinggan/datatracking/DataTracking;
.super Ljava/lang/Object;
.source "DataTracking.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onEvent(Lcom/qinggan/datatracking/common/UserTrackingEvent;)V
    .registers 1
    .param p0, "appEvent"    # Lcom/qinggan/datatracking/common/UserTrackingEvent;

    .prologue
    .line 12
    return-void
.end method
