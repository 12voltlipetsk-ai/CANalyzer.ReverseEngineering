.class public Lcom/qinggan/datatracking/app/GpsTracking;
.super Lcom/qinggan/datatracking/common/UserTrackingEvent;
.source "GpsTracking.java"


# annotations
.annotation runtime Lcom/qinggan/datatracking/annotation/UserTracking;
    behaviorId = "1009"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;,
        Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;,
        Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;
    }
.end annotation


# instance fields
.field private collectionpoi:Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;

.field private destination:Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;

.field private stopposition:Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;


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
.method public getCollectionpoi()Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking;->collectionpoi:Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;

    return-object v0
.end method

.method public getDestination()Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;
    .registers 2

    .prologue
    .line 24
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking;->destination:Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;

    return-object v0
.end method

.method public getStopposition()Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qinggan/datatracking/app/GpsTracking;->stopposition:Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;

    return-object v0
.end method

.method public setCollectionpoi(Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;)V
    .registers 2
    .param p1, "collectionpoi"    # Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking;->collectionpoi:Lcom/qinggan/datatracking/app/GpsTracking$CollectionpoiObj;

    .line 45
    return-void
.end method

.method public setDestination(Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;)V
    .registers 2
    .param p1, "destination"    # Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking;->destination:Lcom/qinggan/datatracking/app/GpsTracking$DestionationObj;

    .line 29
    return-void
.end method

.method public setStopposition(Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;)V
    .registers 2
    .param p1, "stopposition"    # Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/qinggan/datatracking/app/GpsTracking;->stopposition:Lcom/qinggan/datatracking/app/GpsTracking$StoppositionObj;

    .line 37
    return-void
.end method
