.class Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;
.super Ljava/lang/Object;
.source "BaseCanBusComponent.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/service/BaseCanBusComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ObserverDeathRecipient"
.end annotation


# instance fields
.field private mObserver:Lcom/qinggan/canbus/ICanBusServiceCallback;

.field final synthetic this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;


# direct methods
.method public constructor <init>(Lcom/qinggan/canbus/service/BaseCanBusComponent;Lcom/qinggan/canbus/ICanBusServiceCallback;)V
    .registers 3
    .param p2, "observer"    # Lcom/qinggan/canbus/ICanBusServiceCallback;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 154
    iput-object p2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;->mObserver:Lcom/qinggan/canbus/ICanBusServiceCallback;

    .line 155
    return-void
.end method


# virtual methods
.method public binderDied()V
    .registers 5

    .prologue
    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;->this$0:Lcom/qinggan/canbus/service/BaseCanBusComponent;

    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;->mObserver:Lcom/qinggan/canbus/ICanBusServiceCallback;

    invoke-virtual {v1, v2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->detachObserver(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z

    .line 145
    sget-object v1, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "binderDied: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;->mObserver:Lcom/qinggan/canbus/ICanBusServiceCallback;

    invoke-interface {v3}, Lcom/qinggan/canbus/ICanBusServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;->mObserver:Lcom/qinggan/canbus/ICanBusServiceCallback;
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 151
    :goto_2c
    return-void

    .line 148
    :catch_2d
    move-exception v0

    .line 149
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_2c
.end method
