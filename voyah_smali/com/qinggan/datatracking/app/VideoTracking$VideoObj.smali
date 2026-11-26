.class public Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;
.super Ljava/lang/Object;
.source "VideoTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/VideoTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VideoObj"
.end annotation


# instance fields
.field private expand:Ljava/lang/String;

.field public storagetype:Ljava/lang/String;

.field private videocategary:Ljava/lang/String;

.field private videoid:Ljava/lang/String;

.field private videoname:Ljava/lang/String;

.field private watchduration:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getStoragetype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->storagetype:Ljava/lang/String;

    return-object v0
.end method

.method public getVideocategary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->videocategary:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->videoid:Ljava/lang/String;

    return-object v0
.end method

.method public getVideoname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->videoname:Ljava/lang/String;

    return-object v0
.end method

.method public getWatchduration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->watchduration:Ljava/lang/String;

    return-object v0
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->expand:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setStoragetype(Ljava/lang/String;)V
    .registers 2
    .param p1, "storagetype"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->storagetype:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setVideocategary(Ljava/lang/String;)V
    .registers 2
    .param p1, "videocategary"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->videocategary:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setVideoid(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoid"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->videoid:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setVideoname(Ljava/lang/String;)V
    .registers 2
    .param p1, "videoname"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->videoname:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setWatchduration(Ljava/lang/String;)V
    .registers 2
    .param p1, "watchduration"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VideoTracking$VideoObj;->watchduration:Ljava/lang/String;

    .line 75
    return-void
.end method
