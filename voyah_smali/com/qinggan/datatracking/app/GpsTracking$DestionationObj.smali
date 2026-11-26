.class public Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;
.super Ljava/lang/Object;
.source "GpsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/GpsTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DestionationObj"
.end annotation


# instance fields
.field private latitude:Ljava/lang/String;

.field private longitude:Ljava/lang/String;

.field private positionaddress:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLatitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;->latitude:Ljava/lang/String;

    return-object v0
.end method

.method public getLongitude()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;->longitude:Ljava/lang/String;

    return-object v0
.end method

.method public getPositionaddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;->positionaddress:Ljava/lang/String;

    return-object v0
.end method

.method public setLatitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "latitude"    # Ljava/lang/String;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;->latitude:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setLongitude(Ljava/lang/String;)V
    .registers 2
    .param p1, "longitude"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;->longitude:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setPositionaddress(Ljava/lang/String;)V
    .registers 2
    .param p1, "positionaddress"    # Ljava/lang/String;

    .prologue
    .line 76
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;->positionaddress:Ljava/lang/String;

    .line 77
    return-void
.end method
