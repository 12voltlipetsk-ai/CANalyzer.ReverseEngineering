.class public Lcom/qinggan/tsp/util/VehicleUtil;
.super Ljava/lang/Object;
.source "VehicleUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isOverSeaVehicle()Z
    .registers 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method
