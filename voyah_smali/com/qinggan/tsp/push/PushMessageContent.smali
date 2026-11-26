.class public Lcom/qinggan/tsp/push/PushMessageContent;
.super Ljava/lang/Object;
.source "PushMessageContent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/push/PushMessageContent$Options;,
        Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;
    }
.end annotation


# instance fields
.field private message:Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;

.field private options:Lcom/qinggan/tsp/push/PushMessageContent$Options;

.field private projectId:Ljava/lang/String;

.field private topics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent;->topics:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getMessage()Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;
    .registers 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent;->message:Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;

    return-object v0
.end method

.method public getOptions()Lcom/qinggan/tsp/push/PushMessageContent$Options;
    .registers 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent;->options:Lcom/qinggan/tsp/push/PushMessageContent$Options;

    return-object v0
.end method

.method public getProjectId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent;->projectId:Ljava/lang/String;

    return-object v0
.end method

.method public getTopics()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 133
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushMessageContent;->topics:Ljava/util/List;

    return-object v0
.end method

.method public setMessage(Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;)V
    .registers 2
    .param p1, "message"    # Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent;->message:Lcom/qinggan/tsp/push/PushMessageContent$QGMqttMessage;

    .line 114
    return-void
.end method

.method public setOptions(Lcom/qinggan/tsp/push/PushMessageContent$Options;)V
    .registers 2
    .param p1, "options"    # Lcom/qinggan/tsp/push/PushMessageContent$Options;

    .prologue
    .line 121
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent;->options:Lcom/qinggan/tsp/push/PushMessageContent$Options;

    .line 122
    return-void
.end method

.method public setProjectId(Ljava/lang/String;)V
    .registers 2
    .param p1, "projectId"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent;->projectId:Ljava/lang/String;

    .line 130
    return-void
.end method

.method public setTopics(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 137
    .local p1, "topics":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushMessageContent;->topics:Ljava/util/List;

    .line 138
    return-void
.end method
