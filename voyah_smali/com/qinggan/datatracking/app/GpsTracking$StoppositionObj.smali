.class public Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;
.super Ljava/lang/Object;
.source "GpsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/GpsTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StoppositionObj"
.end annotation


# instance fields
.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private positionaddress:Ljava/lang/String;

.field private stoptime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionaddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->positionaddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStoptime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->stoptime:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->latitude:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->longitude:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setPositionaddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "positionaddress"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->positionaddress:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setStoptime(Ljava/lang/String;)V
    .registers 2
    .param p1, "stoptime"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;->stoptime:Ljava/lang/String;

    .line 120
    return-void
.end method
