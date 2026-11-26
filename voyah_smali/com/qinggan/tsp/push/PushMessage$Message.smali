.class public Lcom/qinggan/tsp/push/PushMessage$Message;
.super Ljava/lang/Object;
.source "PushMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/push/PushMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Message"
.end annotation


# instance fields
.field businessSubtype:Ljava/lang/String;

.field msgTitle:Ljava/lang/String;

.field pushBody:Ljava/lang/String;

.field pushBodyType:Ljava/lang/String;

.field pushType:Ljava/lang/String;

.field final synthetic this$0:Lcom/qinggan/tsp/push/PushMessage;


# direct methods
.method public constructor <init>(Lcom/qinggan/tsp/push/PushMessage;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/push/PushMessage;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->this$0:Lcom/qinggan/tsp/push/PushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessSubtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->businessSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->msgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPushBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushBody:Ljava/lang/String;

    return-object v0
.end method

.method public getPushBodyType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushBodyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessSubtype(Ljava/lang/String;)V
    .registers 2
    .param p1, "businessSubtype"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->businessSubtype:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setMsgTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgTitle"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->msgTitle:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setPushBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "pushBody"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushBody:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setPushBodyType(Ljava/lang/String;)V
    .registers 2
    .param p1, "pushBodyType"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushBodyType:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .registers 2
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushType:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Message{msgTitle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->msgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", businessSubtype=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->businessSubtype:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushBody=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushBody:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushBodyType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushBodyType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushType=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushMessage$Message;->pushType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
