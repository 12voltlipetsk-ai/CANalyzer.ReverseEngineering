.class public Lcom/qinggan/tsp/push/OtaPushMessage;
.super Lcom/pateo/tsp/push/PushObject;
.source "OtaPushMessage.java"


# instance fields
.field private pushMessage:Lcom/pateo/tsp/push/PushMessage;


# direct methods
.method public constructor <init>(Lcom/pateo/tsp/push/PushMessage;)V
    .registers 2
    .param p1, "pushMessage"    # Lcom/pateo/tsp/push/PushMessage;

    .prologue
    .line 12
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/qinggan/tsp/push/OtaPushMessage;->pushMessage:Lcom/pateo/tsp/push/PushMessage;

    .line 14
    return-void
.end method


# virtual methods
.method public getLength()I
    .registers 2

    .prologue
    .line 29
    iget-object v0, p0, Lcom/qinggan/tsp/push/OtaPushMessage;->pushMessage:Lcom/pateo/tsp/push/PushMessage;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushMessage;->getLength()I

    move-result v0

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 25
    iget-object v0, p0, Lcom/qinggan/tsp/push/OtaPushMessage;->pushMessage:Lcom/pateo/tsp/push/PushMessage;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushMessage;->getMessage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsgTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 21
    iget-object v0, p0, Lcom/qinggan/tsp/push/OtaPushMessage;->pushMessage:Lcom/pateo/tsp/push/PushMessage;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushMessage;->getMsgTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPushBodyType()I
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/qinggan/tsp/push/OtaPushMessage;->pushMessage:Lcom/pateo/tsp/push/PushMessage;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushMessage;->getPushBodyType()I

    move-result v0

    return v0
.end method

.method public getPushType()I
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/tsp/push/OtaPushMessage;->pushMessage:Lcom/pateo/tsp/push/PushMessage;

    invoke-virtual {v0}, Lcom/pateo/tsp/push/PushMessage;->getPushType()I

    move-result v0

    return v0
.end method
