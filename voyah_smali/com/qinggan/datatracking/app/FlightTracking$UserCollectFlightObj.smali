.class public Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;
.super Ljava/lang/Object;
.source "FlightTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/FlightTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserCollectFlightObj"
.end annotation


# instance fields
.field private airline:Ljava/lang/String;

.field private airlinename:Ljava/lang/String;

.field private deptcityname:Ljava/lang/String;

.field private deptcode:Ljava/lang/String;

.field private destcityname:Ljava/lang/String;

.field private destcode:Ljava/lang/String;

.field private flightdate:Ljava/lang/String;

.field private flightnum:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 996
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirline()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1032
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->airline:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlinename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1040
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->airlinename:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptcityname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1048
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->deptcityname:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1056
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->deptcode:Ljava/lang/String;

    return-object v0
.end method

.method public getDestcityname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1064
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->destcityname:Ljava/lang/String;

    return-object v0
.end method

.method public getDestcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1072
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->destcode:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightdate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1024
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->flightdate:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightnum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1016
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->flightnum:Ljava/lang/String;

    return-object v0
.end method

.method public setAirline(Ljava/lang/String;)V
    .registers 2
    .param p1, "airline"    # Ljava/lang/String;

    .prologue
    .line 1036
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->airline:Ljava/lang/String;

    .line 1037
    return-void
.end method

.method public setAirlinename(Ljava/lang/String;)V
    .registers 2
    .param p1, "airlinename"    # Ljava/lang/String;

    .prologue
    .line 1044
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->airlinename:Ljava/lang/String;

    .line 1045
    return-void
.end method

.method public setDeptcityname(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptcityname"    # Ljava/lang/String;

    .prologue
    .line 1052
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->deptcityname:Ljava/lang/String;

    .line 1053
    return-void
.end method

.method public setDeptcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptcode"    # Ljava/lang/String;

    .prologue
    .line 1060
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->deptcode:Ljava/lang/String;

    .line 1061
    return-void
.end method

.method public setDestcityname(Ljava/lang/String;)V
    .registers 2
    .param p1, "destcityname"    # Ljava/lang/String;

    .prologue
    .line 1068
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->destcityname:Ljava/lang/String;

    .line 1069
    return-void
.end method

.method public setDestcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "destcode"    # Ljava/lang/String;

    .prologue
    .line 1076
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->destcode:Ljava/lang/String;

    .line 1077
    return-void
.end method

.method public setFlightdate(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightdate"    # Ljava/lang/String;

    .prologue
    .line 1028
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->flightdate:Ljava/lang/String;

    .line 1029
    return-void
.end method

.method public setFlightnum(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightnum"    # Ljava/lang/String;

    .prologue
    .line 1020
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;->flightnum:Ljava/lang/String;

    .line 1021
    return-void
.end method
