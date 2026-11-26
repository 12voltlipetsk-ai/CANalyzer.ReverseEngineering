.class public Lcom/qinggan/tsp/push/ClothesPushMessage;
.super Ljava/lang/Object;
.source "ClothesPushMessage.java"


# instance fields
.field city:Ljava/lang/String;

.field clothescolor:Ljava/lang/String;

.field clothesmode:Ljava/lang/String;

.field collecttime:Ljava/lang/String;

.field lat:D

.field lon:D

.field pantscolor:Ljava/lang/String;

.field pantsmode:Ljava/lang/String;

.field temperature:I

.field uid:Ljava/lang/String;

.field vin:Ljava/lang/String;

.field weather:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getClothescolor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->clothescolor:Ljava/lang/String;

    return-object v0
.end method

.method public getClothesmode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->clothesmode:Ljava/lang/String;

    return-object v0
.end method

.method public getCollecttime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->collecttime:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()D
    .registers 3

    .prologue
    .line 101
    iget-wide v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->lat:D

    return-wide v0
.end method

.method public getLon()D
    .registers 3

    .prologue
    .line 93
    iget-wide v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->lon:D

    return-wide v0
.end method

.method public getPantscolor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 69
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->pantscolor:Ljava/lang/String;

    return-object v0
.end method

.method public getPantsmode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->pantsmode:Ljava/lang/String;

    return-object v0
.end method

.method public getTemperature()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->temperature:I

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->uid:Ljava/lang/String;

    return-object v0
.end method

.method public getVin()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->vin:Ljava/lang/String;

    return-object v0
.end method

.method public getWeather()Ljava/lang/String;
    .registers 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->weather:Ljava/lang/String;

    return-object v0
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->city:Ljava/lang/String;

    .line 90
    return-void
.end method

.method public setClothescolor(Ljava/lang/String;)V
    .registers 2
    .param p1, "clothescolor"    # Ljava/lang/String;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->clothescolor:Ljava/lang/String;

    .line 66
    return-void
.end method

.method public setClothesmode(Ljava/lang/String;)V
    .registers 2
    .param p1, "clothesmode"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->clothesmode:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public setCollecttime(Ljava/lang/String;)V
    .registers 2
    .param p1, "collecttime"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->collecttime:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setLat(D)V
    .registers 4
    .param p1, "lat"    # D

    .prologue
    .line 105
    iput-wide p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->lat:D

    .line 106
    return-void
.end method

.method public setLon(D)V
    .registers 4
    .param p1, "lon"    # D

    .prologue
    .line 97
    iput-wide p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->lon:D

    .line 98
    return-void
.end method

.method public setPantscolor(Ljava/lang/String;)V
    .registers 2
    .param p1, "pantscolor"    # Ljava/lang/String;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->pantscolor:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPantsmode(Ljava/lang/String;)V
    .registers 2
    .param p1, "pantsmode"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->pantsmode:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setTemperature(I)V
    .registers 2
    .param p1, "temperature"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->temperature:I

    .line 114
    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2
    .param p1, "uid"    # Ljava/lang/String;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->uid:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public setVin(Ljava/lang/String;)V
    .registers 2
    .param p1, "vin"    # Ljava/lang/String;

    .prologue
    .line 25
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->vin:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public setWeather(Ljava/lang/String;)V
    .registers 2
    .param p1, "weather"    # Ljava/lang/String;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/qinggan/tsp/push/ClothesPushMessage;->weather:Ljava/lang/String;

    .line 82
    return-void
.end method
