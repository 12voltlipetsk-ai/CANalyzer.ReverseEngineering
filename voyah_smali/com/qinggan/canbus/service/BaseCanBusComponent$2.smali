.class Lcom/qinggan/canbus/service/BaseCanBusComponent$2;
.super Landroid/database/ContentObserver;
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
.method constructor <init>(Lcom/qinggan/canbus/service/BaseCanBusComponent;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/canbus/service/BaseCanBusComponent;
    .param p2, "x0"    # Landroid/os/Handler;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$2;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6
    .param p1, "selfChange"    # Z

    .prologue
    const/4 v1, 0x0

    .line 114
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 115
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$2;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    iget-object v2, v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->contentResolver:Landroid/content/ContentResolver;

    const-string v3, "persist.qg.canbus.log_enable"

    invoke-static {v2, v3, v1}, Lcom/qinggan/provider/QGSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 116
    .local v0, "canbusServiceValue":I
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$2;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    if-nez v0, :cond_31

    :goto_12
    iput-boolean v1, v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    .line 117
    sget-object v1, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "canLogContentObserver canLogEnable  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$2;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    iget-boolean v3, v3, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    return-void

    .line 116
    :cond_31
    const/4 v1, 0x1

    goto :goto_12
.end method
