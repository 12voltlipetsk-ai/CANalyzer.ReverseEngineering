.class public Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;
.super Ljava/lang/Object;
.source "PushMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/push/PushMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QGMqttMessage"
.end annotation


# instance fields
.field businessSubtype:Ljava/lang/String;

.field msgTitle:Ljava/lang/String;

.field pushBody:Ljava/lang/String;

.field pushBodyType:Ljava/lang/String;

.field pushType:Ljava/lang/String;

.field final synthetic this$0:Lcom/qinggan/tsp/push/PushMessageContent;


# direct methods
.method public constructor <init>(Lcom/qinggan/tsp/push/PushMessageContent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/push/PushMessageContent;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->this$0:Lcom/qinggan/tsp/push/PushMessageContent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBusinessSubtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->businessSubtype:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->msgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPushBody()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->pushBody:Ljava/lang/String;

    return-object v0
.end method

.method public getPushBodyType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->pushBodyType:Ljava/lang/String;

    return-object v0
.end method

.method public getPushType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->pushType:Ljava/lang/String;

    return-object v0
.end method

.method public setBusinessSubtype(Ljava/lang/String;)V
    .registers 2
    .param p1, "businessSubtype"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->businessSubtype:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setMsgTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgTitle"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->msgTitle:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setPushBody(Ljava/lang/String;)V
    .registers 2
    .param p1, "pushBody"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->pushBody:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setPushBodyType(Ljava/lang/String;)V
    .registers 2
    .param p1, "pushBodyType"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->pushBodyType:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setPushType(Ljava/lang/String;)V
    .registers 2
    .param p1, "pushType"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;->pushType:Ljava/lang/String;

    .line 75
    return-void
.end method
