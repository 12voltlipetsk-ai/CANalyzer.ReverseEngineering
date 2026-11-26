.class public Lcom/qinggan/tsp/push/PushMessageContent$Options;
.super Ljava/lang/Object;
.source "PushMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/push/PushMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Options"
.end annotation


# instance fields
.field msgId:Ljava/lang/String;

.field msgVersion:Ljava/lang/String;

.field sessionId:Ljava/lang/String;

.field final synthetic this$0:Lcom/qinggan/tsp/push/PushMessageContent;


# direct methods
.method public constructor <init>(Lcom/qinggan/tsp/push/PushMessageContent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/push/PushMessageContent;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->this$0:Lcom/qinggan/tsp/push/PushMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getMsgId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->msgId:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->msgVersion:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public setMsgId(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgId"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->msgId:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setMsgVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgVersion"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->msgVersion:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setSessionId(Ljava/lang/String;)V
    .registers 2
    .param p1, "sessionId"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$Options;->sessionId:Ljava/lang/String;

    .line 105
    return-void
.end method
