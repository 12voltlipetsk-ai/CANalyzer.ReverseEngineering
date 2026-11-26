.class public Lcom/qinggan/datatracking/common/TrackingEvent;
.super Ljava/lang/Object;
.source "TrackingEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;,
        Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;
    }
.end annotation


# instance fields
.field transient TAG:Ljava/lang/String;

.field public commondata:Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;

.field transient mContext:Landroid/content/Context;

.field trackingdata:Lcom/qinggan/datatracking/common/UserTrackingEvent;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "behaviorid"    # Ljava/lang/String;
    .param p3, "interactiveway"    # Ljava/lang/String;
    .param p4, "startTime"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-class v0, Lcom/qinggan/datatracking/common/TrackingEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    .line 32
    iput-object p1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->mContext:Landroid/content/Context;

    .line 34
    new-instance v0, Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;

    invoke-direct {v0}, Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;-><init>()V

    iput-object v0, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->commondata:Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;

    .line 59
    return-void
.end method

.method private getAppPackageName(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getAppVersion()Ljava/lang/String;
    .registers 6

    .prologue
    .line 89
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/datatracking/common/TrackingEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    if-nez v3, :cond_9

    .line 90
    const-string v3, ""

    .line 102
    :goto_8
    return-object v3

    .line 92
    :cond_9
    invoke-virtual {p0}, Lcom/qinggan/datatracking/common/TrackingEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 93
    .local v0, "e":Landroid/content/pm/PackageManager;
    invoke-virtual {p0}, Lcom/qinggan/datatracking/common/TrackingEvent;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 94
    .local v1, "info":Landroid/content/pm/PackageInfo;
    if-eqz v1, :cond_36

    .line 95
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 97
    :cond_36
    const-string v3, ""
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_39

    goto :goto_8

    .line 100
    .end local v0    # "e":Landroid/content/pm/PackageManager;
    .end local v1    # "info":Landroid/content/pm/PackageInfo;
    :catch_39
    move-exception v2

    .line 101
    .local v2, "var3":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 102
    const-string v3, ""

    goto :goto_8
.end method

.method private getClientVersion()Ljava/lang/String;
    .registers 3

    .prologue
    .line 207
    iget-object v1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->mContext:Landroid/content/Context;

    if-nez v1, :cond_7

    .line 208
    const-string v0, ""

    .line 214
    :cond_6
    :goto_6
    return-object v0

    .line 210
    :cond_7
    iget-object v1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qinggan/os/SystemInfo;->getInstance(Landroid/content/Context;)Lcom/qinggan/os/SystemInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/os/SystemInfo;->getSystemSoftwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "softwareVersion":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 212
    const-string v0, ""

    goto :goto_6
.end method

.method private getCpSource()Ljava/lang/String;
    .registers 3

    .prologue
    .line 179
    iget-object v1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->mContext:Landroid/content/Context;

    if-nez v1, :cond_7

    .line 180
    const-string v0, ""

    .line 186
    :cond_6
    :goto_6
    return-object v0

    .line 182
    :cond_7
    iget-object v1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 183
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_6

    .line 186
    const-string v0, ""

    goto :goto_6
.end method

.method private getDeviceStartTime()Ljava/lang/String;
    .registers 9

    .prologue
    .line 120
    :try_start_0
    const-string v4, "ro.runtime.firstboot"

    invoke-static {v4}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 121
    .local v0, "deviceStartTime":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long v2, v4, v6

    .line 122
    .local v2, "temp":J
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v4

    .line 125
    .end local v0    # "deviceStartTime":Ljava/lang/String;
    .end local v2    # "temp":J
    :goto_16
    return-object v4

    .line 123
    :catch_17
    move-exception v1

    .line 124
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    const-string v5, "getDeviceStartTime Exception"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v4, ""

    goto :goto_16
.end method

.method private getEventType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 109
    const-string v0, ""

    return-object v0
.end method

.method private getHappenPosition()Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;
    .registers 14

    .prologue
    const/4 v1, 0x0

    .line 232
    iget-object v10, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    const-string v11, "getHappenPosition"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-virtual {p0}, Lcom/qinggan/datatracking/common/TrackingEvent;->getContext()Landroid/content/Context;

    move-result-object v10

    const-string v11, "location"

    invoke-virtual {v10, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/LocationManager;

    .line 237
    .local v5, "locationManager":Landroid/location/LocationManager;
    const/4 v10, 0x1

    invoke-virtual {v5, v10}, Landroid/location/LocationManager;->getProviders(Z)Ljava/util/List;

    move-result-object v9

    .line 239
    .local v9, "providerList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v10, "gps"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7f

    .line 241
    const-string v8, "gps"

    .line 256
    .local v8, "provider":Ljava/lang/String;
    :goto_23
    invoke-virtual {v5, v8}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v4

    .line 257
    .local v4, "location":Landroid/location/Location;
    iget-object v10, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHappenPosition location: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    if-eqz v4, :cond_7e

    .line 260
    const-string v0, "\u7b2c\u4e00\u6b21\u8bf7\u6c42\u7684\u4fe1\u606f"

    .line 262
    .local v0, "firstInfo":Ljava/lang/String;
    invoke-virtual {v4}, Landroid/location/Location;->getLatitude()D

    move-result-wide v2

    .line 263
    .local v2, "latitude":D
    invoke-virtual {v4}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    .line 264
    .local v6, "longitude":D
    new-instance v1, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    invoke-direct {v1}, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;-><init>()V

    .line 265
    .local v1, "gpsInfo":Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;
    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;->latitude:Ljava/lang/String;

    .line 266
    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v1, Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;->longitude:Ljava/lang/String;

    .line 267
    iget-object v10, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getHappenPosition latitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " longitude: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    .end local v0    # "firstInfo":Ljava/lang/String;
    .end local v1    # "gpsInfo":Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;
    .end local v2    # "latitude":D
    .end local v4    # "location":Landroid/location/Location;
    .end local v6    # "longitude":D
    .end local v8    # "provider":Ljava/lang/String;
    :cond_7e
    :goto_7e
    return-object v1

    .line 242
    :cond_7f
    const-string v10, "network"

    invoke-interface {v9, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8a

    .line 243
    const-string v8, "network"

    .restart local v8    # "provider":Ljava/lang/String;
    goto :goto_23

    .line 248
    .end local v8    # "provider":Ljava/lang/String;
    :cond_8a
    iget-object v10, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    const-string v11, "no usable gps provider!"

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7e
.end method

.method private getHappenTime()Ljava/lang/String;
    .registers 6

    .prologue
    .line 164
    :try_start_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 165
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 167
    .local v2, "localSimpleDateFormat":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 168
    .local v3, "result":Ljava/lang/String;
    if-eqz v3, :cond_13

    .line 174
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "localSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "result":Ljava/lang/String;
    :goto_12
    return-object v3

    .line 171
    .restart local v0    # "date":Ljava/util/Date;
    .restart local v2    # "localSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .restart local v3    # "result":Ljava/lang/String;
    :cond_13
    const-string v3, ""
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_12

    .line 173
    .end local v0    # "date":Ljava/util/Date;
    .end local v2    # "localSimpleDateFormat":Ljava/text/SimpleDateFormat;
    .end local v3    # "result":Ljava/lang/String;
    :catch_16
    move-exception v1

    .line 174
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, ""

    goto :goto_12
.end method

.method private getId1()Ljava/lang/String;
    .registers 2

    .prologue
    .line 66
    const-string v0, ""

    return-object v0
.end method

.method private getImei()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    const/4 v0, 0x6

    invoke-static {v0}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getImsi()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x5

    invoke-static {v0}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getNetworkType(Landroid/content/Context;)Ljava/lang/String;
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    const-string v0, ""

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getScreenRatio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 79
    const-string v0, "16:9"

    return-object v0
.end method

.method private getScreenSize()Ljava/lang/String;
    .registers 2

    .prologue
    .line 82
    const-string v0, "1280x720"

    return-object v0
.end method

.method private getSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    const-string v0, ""

    return-object v0
.end method

.method private getUuid()Ljava/lang/String;
    .registers 5

    .prologue
    .line 113
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    .line 114
    .local v0, "uuid":Ljava/util/UUID;
    iget-object v1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getUuid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getVin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    invoke-static {}, Lcom/qinggan/os/SystemProperties;->getVinCode()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getContext()Landroid/content/Context;
    .registers 2

    .prologue
    .line 203
    iget-object v0, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .registers 6

    .prologue
    .line 192
    invoke-static {}, Lcom/qinggan/os/SystemProperties;->getProductSN()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "deviceId":Ljava/lang/String;
    const-string v2, "qinggan.account.uid"

    const-string v3, "-1"

    invoke-static {v2, v3}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    .local v1, "userId":Ljava/lang/String;
    iget-object v2, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " userId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    if-nez v0, :cond_44

    .line 196
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 198
    :goto_43
    return-object v2

    :cond_44
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_43
.end method

.method public getTrackingdata()Lcom/qinggan/datatracking/common/UserTrackingEvent;
    .registers 2

    .prologue
    .line 219
    iget-object v0, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->trackingdata:Lcom/qinggan/datatracking/common/UserTrackingEvent;

    return-object v0
.end method

.method public setHappenposition(Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;)V
    .registers 3
    .param p1, "gpsInfo"    # Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    .prologue
    .line 227
    if-eqz p1, :cond_6

    .line 228
    iget-object v0, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->commondata:Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;

    iput-object p1, v0, Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;->happenposition:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

    .line 229
    :cond_6
    return-void
.end method

.method public setTrackingdata(Lcom/qinggan/datatracking/common/UserTrackingEvent;)V
    .registers 2
    .param p1, "trackingdata"    # Lcom/qinggan/datatracking/common/UserTrackingEvent;

    .prologue
    .line 223
    iput-object p1, p0, Lcom/qinggan/datatracking/common/TrackingEvent;->trackingdata:Lcom/qinggan/datatracking/common/UserTrackingEvent;

    .line 224
    return-void
.end method
