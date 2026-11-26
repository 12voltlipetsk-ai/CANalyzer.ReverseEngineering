.class Lcom/qinggan/canbus/service/BaseCanBusComponent$1;
.super Landroid/os/Handler;
.source "BaseCanBusComponent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/service/BaseCanBusComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;


# direct methods
.method constructor <init>(Lcom/qinggan/canbus/service/BaseCanBusComponent;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/canbus/service/BaseCanBusComponent;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$1;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 102
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v1, :cond_c

    .line 103
    sget-object v1, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v2, "msg.obj is null"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_b
    return-void

    .line 106
    :cond_c
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/Bundle;

    invoke-static {v1}, Lcom/qinggan/os/BundleFormat;->getIntList(Landroid/os/Bundle;)[I

    move-result-object v0

    .line 107
    .local v0, "data":[I
    iget-object v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$1;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2, v0}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->dispatchCanData(I[I)Z

    goto :goto_b
.end method
