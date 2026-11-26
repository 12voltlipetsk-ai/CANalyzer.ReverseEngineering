.class public Lcom/qinggan/datatracking/app/FlightTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "FlightTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1012"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;,
        Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;,
        Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;
    }
.end annotation


# instance fields
.field private flightplanning:Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;

.field private flightstatus:Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;

.field private usercollectflight:Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveway"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "interactiveWay"    # Ljava/lang/String;
    .param p3, "behaviorId"    # Ljava/lang/String;
    .param p4, "appStartTime"    # Ljava/lang/String;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/qinggan/datatracking/common/UserTrackingEvent;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void
.end method


# virtual methods
.method public getFlightplanning()Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking;->flightplanning:Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;

    return-object v0
.end method

.method public getFlightstatus()Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking;->flightstatus:Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;

    return-object v0
.end method

.method public getUsercollectflight()Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking;->usercollectflight:Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;

    return-object v0
.end method

.method public setFlightplanning(Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;)V
    .registers 2
    .param p1, "flightplanning"    # Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking;->flightplanning:Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;

    .line 29
    return-void
.end method

.method public setFlightstatus(Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;)V
    .registers 2
    .param p1, "flightstatus"    # Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking;->flightstatus:Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;

    .line 37
    return-void
.end method

.method public setUsercollectflight(Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;)V
    .registers 2
    .param p1, "usercollectflight"    # Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking;->usercollectflight:Lcom/qinggan/datatracking/app/FlightTracking$UserCollectFlightObj;

    .line 45
    return-void
.end method
