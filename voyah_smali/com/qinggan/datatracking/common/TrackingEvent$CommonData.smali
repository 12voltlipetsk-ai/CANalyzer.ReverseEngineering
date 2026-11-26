.class public Lcom/qinggan/datatracking/common/TrackingEvent$CommonData;
.super Ljava/lang/Object;
.source "TrackingEvent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/TrackingEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CommonData"
.end annotation


# instance fields
.field public app_package_name:Ljava/lang/String;

.field public app_starttime:Ljava/lang/String;

.field public app_version:Ljava/lang/String;

.field public behaviorid:Ljava/lang/String;

.field public clienttype:Ljava/lang/String;

.field public clientversion:Ljava/lang/String;

.field public colectedtime:Ljava/lang/String;

.field public cp_source:Ljava/lang/String;

.field public device_starttime:Ljava/lang/String;

.field public event_type:Ljava/lang/String;

.field public frombrand:Ljava/lang/String;

.field public happenposition:Lcom/qinggan/datatracking/common/TrackingEvent$GPSInfo;

.field public happentime:Ljava/lang/String;

.field public id:Ljava/lang/String;

.field public imei:Ljava/lang/String;

.field public imsi:Ljava/lang/String;

.field public interactiveway:Ljava/lang/String;

.field public network_type:Ljava/lang/String;

.field public phone_num:Ljava/lang/String;

.field public screen_ratio:Ljava/lang/String;

.field public screen_size:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public userid_deviceid:Ljava/lang/String;

.field public uuid:Ljava/lang/String;

.field public vin:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 129
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
