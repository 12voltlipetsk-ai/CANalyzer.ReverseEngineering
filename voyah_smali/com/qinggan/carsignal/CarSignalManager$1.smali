.class Lcom/qinggan/carsignal/CarSignalManager$1;
.super Ljava/lang/Object;
.source "CarSignalManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/CarSignalManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/carsignal/CarSignalManager;


# direct methods
.method constructor <init>(Lcom/qinggan/carsignal/CarSignalManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/carsignal/CarSignalManager;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 10

    .prologue
    const/4 v8, 0x0

    .line 82
    const/16 v4, 0x64

    .line 83
    .local v4, "time":I
    :cond_3
    :goto_3
    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    iget-boolean v5, v5, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v5, :cond_6b

    .line 84
    const-string v5, "qg.carsignal"

    invoke-static {v5}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 86
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_29

    .line 87
    rem-int/lit16 v5, v4, 0x2710

    if-nez v5, :cond_1c

    .line 88
    const-string v5, "CarSignalManager"

    const-string v6, "can not get service qg.carsignal"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_1c
    const-wide/16 v6, 0x64

    :try_start_1e
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_21
    .catch Ljava/lang/InterruptedException; {:try_start_1e .. :try_end_21} :catch_24

    .line 91
    add-int/lit8 v4, v4, 0x64

    goto :goto_3

    .line 92
    :catch_24
    move-exception v2

    .line 93
    .local v2, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    .line 99
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_29
    :try_start_29
    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    iget-object v5, v5, Lcom/qinggan/carsignal/CarSignalManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v6, 0x0

    invoke-interface {v0, v5, v6}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_29 .. :try_end_31} :catch_66

    .line 103
    :goto_31
    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-static {v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/carsignal/ICarSignalService;

    move-result-object v6

    # setter for: Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;
    invoke-static {v5, v6}, Lcom/qinggan/carsignal/CarSignalManager;->access$002(Lcom/qinggan/carsignal/CarSignalManager;Lcom/qinggan/carsignal/ICarSignalService;)Lcom/qinggan/carsignal/ICarSignalService;

    .line 104
    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    const/4 v6, 0x1

    iput-boolean v6, v5, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    .line 105
    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    iget-object v6, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mCarSignalDispatcher:Lcom/qinggan/carsignal/CarSignalDispatcher;
    invoke-static {v6}, Lcom/qinggan/carsignal/CarSignalManager;->access$100(Lcom/qinggan/carsignal/CarSignalManager;)Lcom/qinggan/carsignal/CarSignalDispatcher;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/qinggan/carsignal/CarSignalManager;->registerCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z

    .line 106
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3

    .line 107
    # getter for: Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;
    invoke-static {}, Lcom/qinggan/carsignal/CarSignalManager;->access$200()Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .line 108
    .local v1, "callback":Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;
    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager$1;->this$0:Lcom/qinggan/carsignal/CarSignalManager;

    iget-boolean v5, v5, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-interface {v1, v5}, Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;->IsServiceConnected(Z)V

    goto :goto_3

    .line 100
    .end local v1    # "callback":Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;
    :catch_66
    move-exception v3

    .line 101
    .local v3, "e1":Landroid/os/RemoteException;
    invoke-virtual {v3}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_31

    .line 111
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v3    # "e1":Landroid/os/RemoteException;
    :cond_6b
    return-void
.end method
