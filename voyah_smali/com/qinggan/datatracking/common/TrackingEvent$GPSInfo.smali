.class public Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;
.super Ljava/lang/Object;
.source "TrackingEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/TrackingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GPSInfo"
.end annotation


# instance fields
.field public latitude:Ljava/lang/String;

.field public longitude:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 157
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
