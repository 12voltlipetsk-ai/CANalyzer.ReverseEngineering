.class public Lcom/qinggan/tsp/push/PushMessage;
.super Ljava/lang/Object;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/push/PushMessage$Message;
    }
.end annotation


# instance fields
.field message:Lcom/qinggan/tsp/push/PushMessage$Message;

.field msgId:Ljava/lang/String;

.field msgVersion:Ljava/lang/String;

.field sendTime:Ljava/lang/String;

.field sessionId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/qinggan/tsp/push/PushMessage$Message;
    .registers 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage;->message:Lcom/qinggan/tsp/push/PushMessage$Message;

    return-object v0
.end method

.method public getMsgId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage;->msgVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSendTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage;->sendTime:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setMessage(Lcom/qinggan/tsp/push/PushMessage$Message;)V
    .registers 2
    .param p1, "message"    # Lcom/qinggan/tsp/push/PushMessage$Message;

    .prologue
    .line 68
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage;->message:Lcom/qinggan/tsp/push/PushMessage$Message;

    .line 69
    return-void
.end method

.method public setMsgId(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage;->msgId:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setMsgVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgVersion"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage;->msgVersion:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setSendTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "sendTime"    # Ljava/lang/String;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage;->sendTime:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage;->sessionId:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 141
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushMessage{sessionId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage;->sessionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sendTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage;->sendTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage;->msgId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgVersion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage;->msgVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage;->message:Lcom/qinggan/tsp/push/PushMessage$Message;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
