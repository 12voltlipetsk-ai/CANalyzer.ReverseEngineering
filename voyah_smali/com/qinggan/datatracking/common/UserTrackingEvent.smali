.class public abstract Lcom/qinggan/datatracking/common/UserTrackingEvent;
.super Ljava/lang/Object;
.source "UserTrackingEvent.java"


# instance fields
.field transient interactiveway:Ljava/lang/String;
    .annotation runtime Lcom/qinggan/datatracking/annotation/CommonParam;
    .end annotation
.end field

.field transient mBehaviorId:Ljava/lang/String;

.field transient mContext:Landroid/content/Context;

.field transient mHappenGPS:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

.field transient startTime:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->interactiveway:Ljava/lang/String;

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mContext:Landroid/content/Context;

    .line 69
    iput-object p2, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->interactiveway:Ljava/lang/String;

    .line 70
    iput-object p3, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mBehaviorId:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;
    .param p4, "appStartTime"    # Ljava/lang/String;

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mContext:Landroid/content/Context;

    .line 75
    iput-object p2, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->interactiveway:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mBehaviorId:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->startTime:Ljava/lang/String;

    .line 78
    return-void
.end method


# virtual methods
.method public getBehaviorId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mBehaviorId:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getHappenGPS()Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mHappenGPS:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    return-object v0
.end method

.method public getInteractiveway()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->interactiveway:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->startTime:Ljava/lang/String;

    return-object v0
.end method

.method public setBehaviorId(Ljava/lang/String;)V
    .registers 2
    .param p1, "mBehaviorId"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mBehaviorId:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .registers 2
    .param p1, "mContext"    # Landroid/content/Context;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mContext:Landroid/content/Context;

    .line 50
    return-void
.end method

.method public setHappenPosition(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "longitude"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/String;

    .prologue
    .line 53
    new-instance v0, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    invoke-direct {v0}, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;-><init>()V

    iput-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mHappenGPS:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    .line 54
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mHappenGPS:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    iput-object p1, v0, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;->longitude:Ljava/lang/String;

    .line 55
    iget-object v0, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->mHappenGPS:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    iput-object p2, v0, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;->latitude:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setInteractiveway(Ljava/lang/String;)V
    .registers 2
    .param p1, "interactiveway"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->interactiveway:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/qinggan/datatracking/common/UserTrackingEvent;->startTime:Ljava/lang/String;

    .line 42
    return-void
.end method
