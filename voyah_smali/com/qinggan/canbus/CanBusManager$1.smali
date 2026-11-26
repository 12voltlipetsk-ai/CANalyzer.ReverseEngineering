.class Lcom/qinggan/canbus/CanBusManager$1;
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
    .line 164
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    .prologue
    .line 168
    const-wide/16 v6, 0x32

    :try_start_2
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_28

    .line 172
    :goto_5
    const/16 v4, 0x64

    .line 173
    .local v4, "time":I
    :cond_7
    :goto_7
    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v5

    if-nez v5, :cond_97

    .line 174
    const-string v5, "qg.canbus"

    invoke-static {v5}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 176
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_32

    .line 177
    rem-int/lit16 v5, v4, 0x3e8

    if-nez v5, :cond_20

    .line 178
    const-string v5, "CanBusManager"

    const-string v6, "mObtain can not get service qg.canbus"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    :cond_20
    const-wide/16 v6, 0x64

    :try_start_22
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_25} :catch_2d

    .line 181
    add-int/lit8 v4, v4, 0x64

    goto :goto_7

    .line 169
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v4    # "time":I
    :catch_28
    move-exception v1

    .line 170
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5

    .line 182
    .end local v1    # "e":Ljava/lang/InterruptedException;
    .restart local v0    # "binder":Landroid/os/IBinder;
    .restart local v4    # "time":I
    :catch_2d
    move-exception v1

    .line 184
    .restart local v1    # "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_7

    .line 190
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_32
    :try_start_32
    iget-object v5, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    iget-object v5, v5, Lcom/qinggan/canbus/CanBusManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_3a} :catch_92

    .line 194
    :goto_3a
    iget-object v5, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    invoke-static {v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusService;

    move-result-object v6

    # setter for: Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;
    invoke-static {v5, v6}, Lcom/qinggan/canbus/CanBusManager;->access$102(Lcom/qinggan/canbus/CanBusManager;Lcom/qinggan/canbus/ICanBusService;)Lcom/qinggan/canbus/ICanBusService;

    .line 195
    const/4 v5, 0x1

    # setter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {v5}, Lcom/qinggan/canbus/CanBusManager;->access$002(Z)Z

    .line 196
    iget-object v5, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/qinggan/canbus/CanBusManager;->access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;

    move-result-object v5

    if-eqz v5, :cond_74

    iget-object v5, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/qinggan/canbus/CanBusManager;->access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    if-lez v5, :cond_74

    .line 197
    iget-object v5, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;
    invoke-static {v5}, Lcom/qinggan/canbus/CanBusManager;->access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;

    move-result-object v5

    iget-object v6, p0, Lcom/qinggan/canbus/CanBusManager$1;->this$0:Lcom/qinggan/canbus/CanBusManager;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/qinggan/canbus/CanBusManager;->access$300(Lcom/qinggan/canbus/CanBusManager;)Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/common/OnInitListener;

    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 200
    :cond_74
    # getter for: Lcom/qinggan/canbus/CanBusManager;->mGetIntanceList:Ljava/util/Set;
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$400()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_7c
    :goto_7c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/common/OnInitListener;

    .line 201
    .local v3, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v3, :cond_7c

    .line 202
    # getter for: Lcom/qinggan/canbus/CanBusManager;->isConnected:Z
    invoke-static {}, Lcom/qinggan/canbus/CanBusManager;->access$000()Z

    move-result v6

    invoke-interface {v3, v6}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    goto :goto_7c

    .line 191
    .end local v3    # "listener":Lcom/qinggan/common/OnInitListener;
    :catch_92
    move-exception v2

    .line 192
    .local v2, "e1":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_3a

    .line 205
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "e1":Landroid/os/RemoteException;
    :cond_97
    return-void
.end method
