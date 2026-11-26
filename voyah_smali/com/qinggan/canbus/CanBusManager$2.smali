.class Lcom/qinggan/canbus/CanBusManager$2;
.super Ljava/lang/Object;
.source "CanBusManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/CanBusManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/canbus/CanBusManager;


# direct methods
.method constructor <init>(Lcom/qinggan/canbus/CanBusManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/canbus/CanBusManager;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager$2;->this$0:Lcom/qinggan/canbus/CanBusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 212
    const/16 v3, 0x64

    .line 213
    .local v3, "time":I
    :goto_2
    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v4

    if-nez v4, :cond_4c

    .line 214
    const-string v4, "qg.canbus"

    invoke-static {v4}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 216
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_28

    .line 217
    rem-int/lit16 v4, v3, 0x3e8

    if-nez v4, :cond_1b

    .line 218
    const-string v4, "CanBusManager"

    const-string v5, "mReObtain can not get service qg.canbus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1b
    const-wide/16 v4, 0x64

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_23

    .line 221
    add-int/lit8 v3, v3, 0x64

    goto :goto_2

    .line 222
    :catch_23
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 230
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_28
    :try_start_28
    iget-object v4, p0, Lcom/qinggan/canbus/CanBusManager$2;->this$0:Lcom/qinggan/canbus/CanBusManager;

    iget-object v4, v4, Lcom/qinggan/canbus/CanBusManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_30} :catch_47

    .line 234
    :goto_30
    iget-object v4, p0, Lcom/qinggan/canbus/CanBusManager$2;->this$0:Lcom/qinggan/canbus/CanBusManager;

    invoke-static {v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusService;

    move-result-object v5

    # setter for: Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;
    invoke-static {v4, v5}, Lcom/qinggan/canbus/CanBusManager;->access$102(Lcom/qinggan/canbus/CanBusManager;Lcom/qinggan/canbus/ICanBusService;)Lcom/qinggan/canbus/ICanBusService;

    .line 235
    const/4 v4, 0x1

    # setter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {v4}, Lcom/qinggan/canbus/CanBusManager;->access$002(Z)Z

    .line 236
    iget-object v4, p0, Lcom/qinggan/canbus/CanBusManager$2;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v5

    # invokes: Lcom/qinggan/canbus/CanBusManager;->dispatchConnectStatus(Z)V
    invoke-static {v4, v5}, Lcom/qinggan/canbus/CanBusManager;->access$500(Lcom/qinggan/canbus/CanBusManager;Z)V

    goto :goto_2

    .line 231
    :catch_47
    move-exception v2

    .line 232
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_30

    .line 238
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_4c
    return-void
.end method
