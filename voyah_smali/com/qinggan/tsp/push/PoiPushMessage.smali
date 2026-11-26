.class public Lcom/qinggan/tsp/push/PoiPushMessage;
.super Lcom/pateo/tsp/push/PushObject;
.source "PoiPushMessage.java"


# instance fields
.field private poi:Lcom/pateo/tsp/push/PushPoi;


# direct methods
.method public constructor <init>(Lcom/pateo/tsp/push/PushPoi;)V
    .registers 2
    .param p1, "poi"    # Lcom/pateo/tsp/push/PushPoi;

    .prologue
    .line 9
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    .line 11
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .registers 2

    .prologue
    .line 34
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDistance()I
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getDistance()I

    move-result v0

    return v0
.end method

.method public getLat()I
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getLat()I

    move-result v0

    return v0
.end method

.method public getLon()I
    .registers 2

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getLon()I

    move-result v0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 14
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPoiType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getPoiType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getShifted()I
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getShifted()I

    move-result v0

    return v0
.end method

.method public getTelnum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qinggan/tsp/push/PoiPushMessage;->poi:Lcom/pateo/tsp/push/PushPoi;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushPoi;->getTelnum()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
