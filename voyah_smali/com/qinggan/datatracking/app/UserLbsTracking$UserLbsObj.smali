.class public Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;
.super Ljava/lang/Object;
.source "UserLbsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/UserLbsTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserLbsObj"
.end annotation


# instance fields
.field private bearing:Ljava/lang/String;

.field private carspeed:Ljava/lang/String;

.field private deviceid:Ljava/lang/String;

.field private direction:Ljava/lang/String;

.field private gpsreliable:Ljava/lang/String;

.field private gpsspeed:Ljava/lang/String;

.field private gpstime:Ljava/lang/String;

.field private height:Ljava/lang/String;

.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private offsetx:Ljava/lang/String;

.field private offsety:Ljava/lang/String;

.field private roadlevel:Ljava/lang/String;

.field private updatetime:Ljava/lang/String;

.field private user:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getUser()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->user:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getBearing()Ljava/lang/String;
    .registers 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->bearing:Ljava/lang/String;

    return-object v0
.end method

.method public getCarspeed()Ljava/lang/String;
    .registers 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->carspeed:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->deviceid:Ljava/lang/String;

    return-object v0
.end method

.method public getDirection()Ljava/lang/String;
    .registers 2

    .prologue
    .line 128
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->direction:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsreliable()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->gpsreliable:Ljava/lang/String;

    return-object v0
.end method

.method public getGpsspeed()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->gpsspeed:Ljava/lang/String;

    return-object v0
.end method

.method public getGpstime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->gpstime:Ljava/lang/String;

    return-object v0
.end method

.method public getHeight()Ljava/lang/String;
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->height:Ljava/lang/String;

    return-object v0
.end method

.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsetx()Ljava/lang/String;
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->offsetx:Ljava/lang/String;

    return-object v0
.end method

.method public getOffsety()Ljava/lang/String;
    .registers 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->offsety:Ljava/lang/String;

    return-object v0
.end method

.method public getRoadlevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->roadlevel:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatetime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 152
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->updatetime:Ljava/lang/String;

    return-object v0
.end method

.method public setBearing(Ljava/lang/String;)V
    .registers 2
    .param p1, "bearing"    # Ljava/lang/String;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->bearing:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setCarspeed(Ljava/lang/String;)V
    .registers 2
    .param p1, "carspeed"    # Ljava/lang/String;

    .prologue
    .line 124
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->carspeed:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setDeviceid(Ljava/lang/String;)V
    .registers 2
    .param p1, "deviceid"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->deviceid:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setDirection(Ljava/lang/String;)V
    .registers 2
    .param p1, "direction"    # Ljava/lang/String;

    .prologue
    .line 132
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->direction:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setGpsreliable(Ljava/lang/String;)V
    .registers 2
    .param p1, "gpsreliable"    # Ljava/lang/String;

    .prologue
    .line 140
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->gpsreliable:Ljava/lang/String;

    .line 141
    return-void
.end method

.method public setGpsspeed(Ljava/lang/String;)V
    .registers 2
    .param p1, "gpsspeed"    # Ljava/lang/String;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->gpsspeed:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setGpstime(Ljava/lang/String;)V
    .registers 2
    .param p1, "gpstime"    # Ljava/lang/String;

    .prologue
    .line 148
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->gpstime:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setHeight(Ljava/lang/String;)V
    .registers 2
    .param p1, "height"    # Ljava/lang/String;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->height:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->latitude:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->longitude:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setOffsetx(Ljava/lang/String;)V
    .registers 2
    .param p1, "offsetx"    # Ljava/lang/String;

    .prologue
    .line 172
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->offsetx:Ljava/lang/String;

    .line 173
    return-void
.end method

.method public setOffsety(Ljava/lang/String;)V
    .registers 2
    .param p1, "offsety"    # Ljava/lang/String;

    .prologue
    .line 180
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->offsety:Ljava/lang/String;

    .line 181
    return-void
.end method

.method public setRoadlevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "roadlevel"    # Ljava/lang/String;

    .prologue
    .line 164
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->roadlevel:Ljava/lang/String;

    .line 165
    return-void
.end method

.method public setUpdatetime(Ljava/lang/String;)V
    .registers 2
    .param p1, "updatetime"    # Ljava/lang/String;

    .prologue
    .line 156
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->updatetime:Ljava/lang/String;

    .line 157
    return-void
.end method

.method public setUser(Ljava/lang/String;)V
    .registers 2
    .param p1, "user"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserLbsTracking$UserLbsObj;->user:Ljava/lang/String;

    .line 69
    return-void
.end method
