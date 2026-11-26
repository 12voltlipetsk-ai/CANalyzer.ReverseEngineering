.class public Lcom/qinggan/carsignal/CarSignalManager;
.super Ljava/lang/Object;
.source "CarSignalManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;,
        Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;
    }
.end annotation


# static fields
.field public static final ACC_CRANK:I = 0x3

.field public static final ACC_OFF:I = 0x0

.field public static final ACC_ON:I = 0x1

.field public static final ACC_RUN:I = 0x2

.field public static final ACC_SK:I = 0x4

.field public static final CARSIGNAL_SERVICE:Ljava/lang/String; = "com.qinggan.carsignal.CarSignalService"

.field public static final CARSIGNAL_SERVICE_PACKAGE:Ljava/lang/String; = "com.qinggan.carsignal.service"

.field public static final MCU_PLATFORM_TOC007:I = 0x0

.field public static final MCU_PLATFORM_TOC008:I = 0x1

.field public static final MCU_PLATFORM_TOC008A:I = 0x2

.field public static final SERVICE_NAME:Ljava/lang/String; = "qg.carsignal"

.field public static final SHUTDOWN_MODE_ACC_OFF:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final SHUTDOWN_MODE_DOOR_OFF:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "CarSignalManager"

.field private static final mGetIntanceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static volatile sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;


# instance fields
.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private final mCarSignalDispatcher:Lcom/qinggan/carsignal/CarSignalDispatcher;

.field private mContext:Landroid/content/Context;

.field public mIsConnected:Z

.field private mObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;

.field private mReObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;

.field private mService:Lcom/qinggan/carsignal/ICarSignalService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callback"    # Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .prologue
    const/4 v4, 0x0

    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    .line 79
    new-instance v1, Lcom/qinggan/carsignal/CarSignalManager$1;

    invoke-direct {v1, p0}, Lcom/qinggan/carsignal/CarSignalManager$1;-><init>(Lcom/qinggan/carsignal/CarSignalManager;)V

    iput-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;

    .line 115
    new-instance v1, Lcom/qinggan/carsignal/CarSignalManager$2;

    invoke-direct {v1, p0}, Lcom/qinggan/carsignal/CarSignalManager$2;-><init>(Lcom/qinggan/carsignal/CarSignalManager;)V

    iput-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mReObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;

    .line 148
    new-instance v1, Lcom/qinggan/carsignal/CarSignalManager$3;

    invoke-direct {v1, p0}, Lcom/qinggan/carsignal/CarSignalManager$3;-><init>(Lcom/qinggan/carsignal/CarSignalManager;)V

    iput-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 197
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mContext:Landroid/content/Context;

    .line 198
    const-string v1, "CarSignalManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CarSignalManagerService CarSignalManagers pkgname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/carsignal/CarSignalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    new-instance v1, Lcom/qinggan/carsignal/CarSignalDispatcher;

    invoke-direct {v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;-><init>()V

    iput-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mCarSignalDispatcher:Lcom/qinggan/carsignal/CarSignalDispatcher;

    .line 200
    if-eqz p2, :cond_4d

    .line 201
    sget-object v1, Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v4, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 203
    :cond_4d
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_59

    .line 204
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "CarSignalManager context is null!"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 207
    :cond_59
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "callbackcanbusinit"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v1, Lcom/qinggan/carsignal/CarSignalManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 208
    sget-object v1, Lcom/qinggan/carsignal/CarSignalManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 209
    new-instance v1, Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;

    sget-object v2, Lcom/qinggan/carsignal/CarSignalManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/qinggan/carsignal/CarSignalManager$GetInstanceHandler;-><init>(Lcom/qinggan/carsignal/CarSignalManager;Landroid/os/Looper;)V

    sput-object v1, Lcom/qinggan/carsignal/CarSignalManager;->mHandler:Landroid/os/Handler;

    .line 211
    invoke-virtual {p0}, Lcom/qinggan/carsignal/CarSignalManager;->initCarSignalService()Z

    move-result v0

    .line 213
    .local v0, "ret":Z
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/carsignal/CarSignalManager;Lcom/qinggan/carsignal/ICarSignalService;)Lcom/qinggan/carsignal/ICarSignalService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/CarSignalManager;
    .param p1, "x1"    # Lcom/qinggan/carsignal/ICarSignalService;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qinggan/carsignal/CarSignalManager;)Lcom/qinggan/carsignal/CarSignalDispatcher;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/CarSignalManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalManager;->mCarSignalDispatcher:Lcom/qinggan/carsignal/CarSignalDispatcher;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/ArrayList;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/qinggan/carsignal/CarSignalManager;->mGetIntanceList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/carsignal/CarSignalManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/CarSignalManager;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalManager;->mReObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$400()Lcom/qinggan/carsignal/CarSignalManager;
    .registers 1

    .prologue
    .line 45
    sget-object v0, Lcom/qinggan/carsignal/CarSignalManager;->sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;)Lcom/qinggan/carsignal/CarSignalManager;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "callback"    # Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .prologue
    .line 168
    const-class v3, Lcom/qinggan/carsignal/CarSignalManager;

    monitor-enter v3

    .line 169
    :try_start_3
    sget-object v2, Lcom/qinggan/carsignal/CarSignalManager;->sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_33

    if-nez v2, :cond_36

    .line 171
    :try_start_7
    new-instance v2, Lcom/qinggan/carsignal/CarSignalManager;

    invoke-direct {v2, p0, p1}, Lcom/qinggan/carsignal/CarSignalManager;-><init>(Landroid/content/Context;Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;)V

    sput-object v2, Lcom/qinggan/carsignal/CarSignalManager;->sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 172
    sget-object v2, Lcom/qinggan/carsignal/CarSignalManager;->sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;
    :try_end_10
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_10} :catch_48
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_10} :catch_12
    .catchall {:try_start_7 .. :try_end_10} :catchall_33

    :try_start_10
    monitor-exit v3

    .line 185
    :goto_11
    return-object v2

    .line 175
    :catch_12
    move-exception v0

    .line 176
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CarSignalManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Create CarSignalManager error : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    sget-object v2, Lcom/qinggan/carsignal/CarSignalManager;->sCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    monitor-exit v3

    goto :goto_11

    .line 186
    :catchall_33
    move-exception v2

    monitor-exit v3
    :try_end_35
    .catchall {:try_start_10 .. :try_end_35} :catchall_33

    throw v2

    .line 179
    :cond_36
    if-eqz p1, :cond_2f

    .line 180
    :try_start_38
    sget-object v2, Lcom/qinggan/carsignal/CarSignalManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 181
    .local v1, "message":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 182
    sget-object v2, Lcom/qinggan/carsignal/CarSignalManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
    :try_end_47
    .catchall {:try_start_38 .. :try_end_47} :catchall_33

    goto :goto_2f

    .line 173
    .end local v1    # "message":Landroid/os/Message;
    :catch_48
    move-exception v2

    goto :goto_2f
.end method


# virtual methods
.method public PowerOff()V
    .registers 4

    .prologue
    .line 348
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 355
    :goto_4
    return-void

    .line 351
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1}, Lcom/qinggan/carsignal/ICarSignalService;->PowerOff()V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 352
    :catch_b
    move-exception v0

    .line 353
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public destroy()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 192
    const-string v0, "CarSignalManager"

    const-string v1, "disConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    const/4 v0, 0x1

    return v0
.end method

.method public getAVNStatus()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 959
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 966
    :goto_5
    return v1

    .line 962
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getAVNStatus()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 963
    :catch_d
    move-exception v0

    .line 964
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getAlarmState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 463
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 470
    :goto_5
    return v1

    .line 466
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getAlarmState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 467
    :catch_d
    move-exception v0

    .line 468
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getAlarmTime()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 442
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 449
    :goto_5
    return v1

    .line 445
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getAlarmTime()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 446
    :catch_d
    move-exception v0

    .line 447
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getBatteryLevel()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 737
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 744
    :goto_5
    return v1

    .line 740
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getBatteryLevel()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 741
    :catch_d
    move-exception v0

    .line 742
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCanBoxVersion()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 309
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 316
    :goto_5
    return-object v1

    .line 312
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCanBoxVersion()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 313
    :catch_d
    move-exception v0

    .line 314
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCanBusState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 790
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 797
    :goto_5
    return v1

    .line 793
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCanBusState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 794
    :catch_d
    move-exception v0

    .line 795
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCarKeyStatus()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 989
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 996
    :goto_5
    return v1

    .line 992
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCarKeyStatus()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 993
    :catch_d
    move-exception v0

    .line 994
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCarType()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1325
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1335
    :goto_5
    return-object v1

    .line 1330
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCarType()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 1331
    :catch_d
    move-exception v0

    .line 1332
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCarVideoStreamMod()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 974
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 981
    :goto_5
    return v1

    .line 977
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCarVideoStreamMode()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 978
    :catch_d
    move-exception v0

    .line 979
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCurrStateInScreenOffState()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1197
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1204
    :goto_5
    return v1

    .line 1200
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCurrStateInScreenOffState()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1201
    :catch_d
    move-exception v0

    .line 1202
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCurrentMBHighTempLevel()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1173
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1180
    :goto_5
    return v1

    .line 1176
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCurrentMBHighTempLevel()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1177
    :catch_d
    move-exception v0

    .line 1178
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getCurrentMBHighTempValue()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1184
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1191
    :goto_5
    return v1

    .line 1187
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getCurrentMBHighTempValue()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1188
    :catch_d
    move-exception v0

    .line 1189
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getDABAnt()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 893
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 900
    :goto_5
    return v1

    .line 896
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getDABAnt()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 897
    :catch_d
    move-exception v0

    .line 898
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getFactoryModeKey()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 926
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 933
    :goto_5
    return v1

    .line 929
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getFactoryModeKey()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 930
    :catch_d
    move-exception v0

    .line 931
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getGPSAnt()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 773
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 780
    :goto_5
    return v1

    .line 776
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getGPSAnt()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 777
    :catch_d
    move-exception v0

    .line 778
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getHeadLampStatus()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1019
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1026
    :goto_5
    return v1

    .line 1022
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getHeadLampStatus()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1023
    :catch_d
    move-exception v0

    .line 1024
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getKeyBoardBackLightValue()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1148
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1155
    :goto_5
    return v1

    .line 1151
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getKeyBoardBackLightValue()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1152
    :catch_d
    move-exception v0

    .line 1153
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getKeyCtlState()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1273
    const-string v2, "CarSignalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getKeyCtlState(),mIsConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_20

    .line 1282
    :goto_1f
    return v1

    .line 1278
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getKeyCtlState()I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    move-result v1

    goto :goto_1f

    .line 1279
    :catch_27
    move-exception v0

    .line 1280
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public getLCDBoardLightValue()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1225
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1232
    :goto_5
    return v1

    .line 1228
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getLCDBoardLightValue()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1229
    :catch_d
    move-exception v0

    .line 1230
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getLCDTemp()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1062
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1069
    :goto_5
    return v1

    .line 1065
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getLCDTemp()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1066
    :catch_d
    move-exception v0

    .line 1067
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getLFDoorState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 406
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 413
    :goto_5
    return v1

    .line 409
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getLFDoorState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 410
    :catch_d
    move-exception v0

    .line 411
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getLightSensorLevel()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1051
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1058
    :goto_5
    return v1

    .line 1054
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getLightSensorLevel()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1055
    :catch_d
    move-exception v0

    .line 1056
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getLinBusState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 875
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 882
    :goto_5
    return v1

    .line 878
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getLinBusState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 879
    :catch_d
    move-exception v0

    .line 880
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMCUHardwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 258
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 265
    :goto_5
    return-object v1

    .line 261
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMCUHardwareVersion()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 262
    :catch_d
    move-exception v0

    .line 263
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMCUPlatform()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 829
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 836
    :goto_5
    return v1

    .line 832
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMCUPlatform()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 833
    :catch_d
    move-exception v0

    .line 834
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMCUPlatformString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 840
    const/4 v0, 0x0

    .line 841
    .local v0, "res":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qinggan/carsignal/CarSignalManager;->getMCUPlatform()I

    move-result v1

    packed-switch v1, :pswitch_data_12

    .line 852
    :goto_8
    return-object v0

    .line 843
    :pswitch_9
    const-string v0, "toc007"

    .line 844
    goto :goto_8

    .line 846
    :pswitch_c
    const-string v0, "toc008"

    .line 847
    goto :goto_8

    .line 849
    :pswitch_f
    const-string v0, "toc008a"

    goto :goto_8

    .line 841
    :pswitch_data_12
    .packed-switch 0x0
        :pswitch_9
        :pswitch_c
        :pswitch_f
    .end packed-switch
.end method

.method public getMCUPowerMode()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 716
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 723
    :goto_5
    return v1

    .line 719
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMCUPowerMode()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 720
    :catch_d
    move-exception v0

    .line 721
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMCUSoftVersionDate()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 298
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 305
    :goto_5
    return-object v1

    .line 301
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMCUSoftVersionDate()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 302
    :catch_d
    move-exception v0

    .line 303
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMCUSoftwareVersion()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 273
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 280
    :goto_5
    return-object v1

    .line 276
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMCUSoftwareVersion()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 277
    :catch_d
    move-exception v0

    .line 278
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMPUKernelVersion()Ljava/lang/String;
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 284
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 291
    :goto_5
    return-object v1

    .line 287
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMPUKernelVersion()Ljava/lang/String;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result-object v1

    goto :goto_5

    .line 288
    :catch_d
    move-exception v0

    .line 289
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getMainSpeakState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 864
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 871
    :goto_5
    return v1

    .line 867
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getMainSpeakState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 868
    :catch_d
    move-exception v0

    .line 869
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getPAMuteState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 505
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 512
    :goto_5
    return v1

    .line 508
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getPAMuteState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 509
    :catch_d
    move-exception v0

    .line 510
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getPASLCDTemp()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1379
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1386
    :goto_5
    return v1

    .line 1382
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getPASLCDTemp()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1383
    :catch_d
    move-exception v0

    .line 1384
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getPASLightSensorLevel()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1367
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1375
    :goto_5
    return v1

    .line 1370
    :cond_6
    :try_start_6
    const-string v2, "CarSignalManager"

    const-string v3, "getPASLightSensorLevel"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getPASLightSensorLevel()I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_12} :catch_14

    move-result v1

    goto :goto_5

    .line 1372
    :catch_14
    move-exception v0

    .line 1373
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getRTCState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 484
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 491
    :goto_5
    return v1

    .line 487
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getRTCState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 488
    :catch_d
    move-exception v0

    .line 489
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getRTCTime()J
    .registers 6

    .prologue
    const-wide/16 v2, -0x1

    .line 391
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_7

    .line 398
    :goto_6
    return-wide v2

    .line 394
    :cond_7
    :try_start_7
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1}, Lcom/qinggan/carsignal/ICarSignalService;->getRTCTime()J
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result-wide v2

    goto :goto_6

    .line 395
    :catch_e
    move-exception v0

    .line 396
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v4, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public getRecoveryKey()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 915
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 922
    :goto_5
    return v1

    .line 918
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getRecoveryKey()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 919
    :catch_d
    move-exception v0

    .line 920
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getReverseState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1078
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1085
    :goto_5
    return v1

    .line 1081
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getReverseState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1082
    :catch_d
    move-exception v0

    .line 1083
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getScreenLightStatus()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1004
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1011
    :goto_5
    return v1

    .line 1007
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getScreenLightStatus()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1008
    :catch_d
    move-exception v0

    .line 1009
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getShutdownMode()I
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v1, -0x1

    .line 810
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 817
    :goto_5
    return v1

    .line 813
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getShutdownMode()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 814
    :catch_d
    move-exception v0

    .line 815
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getSideLightStatus()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1035
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1042
    :goto_5
    return v1

    .line 1038
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getSideLightStatus()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1039
    :catch_d
    move-exception v0

    .line 1040
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getStandbyStateRestoreMode()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1211
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1218
    :goto_5
    return v1

    .line 1214
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getStandbyStateRestoreMode()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1215
    :catch_d
    move-exception v0

    .line 1216
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getTboxMutePinState()I
    .registers 8

    .prologue
    .line 1404
    const/4 v1, -0x1

    .line 1405
    .local v1, "ret":I
    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v4, :cond_8

    move v2, v1

    .end local v1    # "ret":I
    .local v2, "ret":I
    move v3, v1

    .line 1413
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_7
    return v3

    .line 1408
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :cond_8
    :try_start_8
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v4}, Lcom/qinggan/carsignal/ICarSignalService;->getTboxMutePinState()I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_29

    move-result v1

    .line 1412
    :goto_e
    const-string v4, "CarSignalManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CarSignalManagerService getTboxMutePinState = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v2, v1

    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    move v3, v1

    .line 1413
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_7

    .line 1409
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :catch_29
    move-exception v0

    .line 1410
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService died, relaunch!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public getTimeModeState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 362
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 369
    :goto_5
    return v1

    .line 365
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getTimeModeState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 366
    :catch_d
    move-exception v0

    .line 367
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getTouchScreenState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 1249
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1256
    :goto_5
    return v1

    .line 1252
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getTouchScreenState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1253
    :catch_d
    move-exception v0

    .line 1254
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getTunerAnt()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 755
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 762
    :goto_5
    return v1

    .line 758
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getTunerAnt()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 759
    :catch_d
    move-exception v0

    .line 760
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getVehicleConfig()[I
    .registers 7

    .prologue
    .line 703
    const/16 v4, 0xa

    new-array v1, v4, [I

    .line 704
    .local v1, "ret":[I
    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v4, :cond_b

    move-object v2, v1

    .end local v1    # "ret":[I
    .local v2, "ret":[I
    move-object v3, v1

    .line 712
    .end local v2    # "ret":[I
    .local v3, "ret":[I
    :goto_a
    return-object v3

    .line 707
    .end local v3    # "ret":[I
    .restart local v1    # "ret":[I
    :cond_b
    :try_start_b
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v4}, Lcom/qinggan/carsignal/ICarSignalService;->getVehicleConfig()[I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_14

    move-result-object v1

    :goto_11
    move-object v2, v1

    .end local v1    # "ret":[I
    .restart local v2    # "ret":[I
    move-object v3, v1

    .line 712
    .end local v2    # "ret":[I
    .restart local v3    # "ret":[I
    goto :goto_a

    .line 708
    .end local v3    # "ret":[I
    .restart local v1    # "ret":[I
    :catch_14
    move-exception v0

    .line 709
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService died, relaunch!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_11
.end method

.method public getVehicleSpeed()F
    .registers 5

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 941
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_7

    .line 948
    :goto_6
    return v1

    .line 944
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getVehicleSpeed()F
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_c} :catch_e

    move-result v1

    goto :goto_6

    .line 945
    :catch_e
    move-exception v0

    .line 946
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public getVehicleType()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 537
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 544
    :goto_5
    return v1

    .line 540
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getVehicleType()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 541
    :catch_d
    move-exception v0

    .line 542
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getVehicleTypeName()Ljava/lang/String;
    .registers 3

    .prologue
    .line 552
    const-string v0, "default"

    .line 553
    .local v0, "vehicleTypeName":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qinggan/carsignal/CarSignalManager;->getVehicleType()I

    move-result v1

    sparse-switch v1, :sswitch_data_52

    .line 636
    :goto_9
    return-object v0

    .line 558
    :sswitch_a
    const-string v0, "g0003ah"

    .line 559
    goto :goto_9

    .line 561
    :sswitch_d
    const-string v0, "g0003am"

    .line 562
    goto :goto_9

    .line 564
    :sswitch_10
    const-string v0, "C40"

    .line 565
    goto :goto_9

    .line 567
    :sswitch_13
    const-string v0, "C53"

    .line 568
    goto :goto_9

    .line 570
    :sswitch_16
    const-string v0, "D0001"

    .line 571
    goto :goto_9

    .line 573
    :sswitch_19
    const-string v0, "D0002"

    .line 574
    goto :goto_9

    .line 576
    :sswitch_1c
    const-string v0, "c3004h"

    .line 577
    goto :goto_9

    .line 579
    :sswitch_1f
    const-string v0, "e0001h"

    .line 580
    goto :goto_9

    .line 582
    :sswitch_22
    const-string v0, "e0001h"

    .line 583
    goto :goto_9

    .line 585
    :sswitch_25
    const-string v0, "f0307h"

    .line 586
    goto :goto_9

    .line 588
    :sswitch_28
    const-string v0, "C35DB"

    .line 589
    goto :goto_9

    .line 591
    :sswitch_2b
    const-string v0, "w0001h"

    .line 592
    goto :goto_9

    .line 594
    :sswitch_2e
    const-string v0, "c3005h"

    .line 595
    goto :goto_9

    .line 597
    :sswitch_31
    const-string v0, "f0501h"

    .line 598
    goto :goto_9

    .line 603
    :sswitch_34
    const-string v0, "f0505h"

    .line 604
    goto :goto_9

    .line 606
    :sswitch_37
    const-string v0, "f0506h"

    .line 607
    goto :goto_9

    .line 609
    :sswitch_3a
    const-string v0, "f6802h"

    .line 610
    goto :goto_9

    .line 612
    :sswitch_3d
    const-string v0, "f6803f"

    .line 613
    goto :goto_9

    .line 615
    :sswitch_40
    const-string v0, "f6804h"

    .line 616
    goto :goto_9

    .line 618
    :sswitch_43
    const-string v0, "f6805h"

    .line 619
    goto :goto_9

    .line 621
    :sswitch_46
    const-string v0, "f6806"

    .line 622
    goto :goto_9

    .line 624
    :sswitch_49
    const-string v0, "f6811"

    .line 625
    goto :goto_9

    .line 627
    :sswitch_4c
    const-string v0, "f6810"

    .line 628
    goto :goto_9

    .line 630
    :sswitch_4f
    const-string v0, "f6809"

    .line 631
    goto :goto_9

    .line 553
    :sswitch_data_52
    .sparse-switch
        0x1e -> :sswitch_a
        0x1f -> :sswitch_d
        0x20 -> :sswitch_10
        0x21 -> :sswitch_13
        0x22 -> :sswitch_16
        0x23 -> :sswitch_19
        0x24 -> :sswitch_1f
        0x25 -> :sswitch_1c
        0x27 -> :sswitch_22
        0x28 -> :sswitch_25
        0x2a -> :sswitch_28
        0x2e -> :sswitch_2e
        0x30 -> :sswitch_2b
        0x4e -> :sswitch_31
        0x65 -> :sswitch_34
        0x6f -> :sswitch_37
        0x86 -> :sswitch_3a
        0x89 -> :sswitch_3d
        0x8f -> :sswitch_40
        0x3459 -> :sswitch_43
        0x345a -> :sswitch_49
        0x37dd -> :sswitch_46
        0x37de -> :sswitch_4c
        0x37df -> :sswitch_4f
    .end sparse-switch
.end method

.method public getVoltageValue()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 417
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 424
    :goto_5
    return v1

    .line 420
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getVoltageState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 421
    :catch_d
    move-exception v0

    .line 422
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getWTDogState()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 904
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 911
    :goto_5
    return v1

    .line 907
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getWTDogState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 908
    :catch_d
    move-exception v0

    .line 909
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getWakeupSrc()I
    .registers 5

    .prologue
    const/4 v1, -0x1

    .line 334
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 341
    :goto_5
    return v1

    .line 337
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getWakeupSrc()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 338
    :catch_d
    move-exception v0

    .line 339
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public getWheelKeyChannelLine1Value()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1299
    const-string v2, "CarSignalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWheelKeyChannelLine1Value(),mIsConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_20

    .line 1308
    :goto_1f
    return v1

    .line 1304
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getWheelKeyChannelLine1Value()I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    move-result v1

    goto :goto_1f

    .line 1305
    :catch_27
    move-exception v0

    .line 1306
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public getWheelKeyChannelLine2Value()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 1312
    const-string v2, "CarSignalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWheelKeyChannelLine2Value(),mIsConnected="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_20

    .line 1321
    :goto_1f
    return v1

    .line 1317
    :cond_20
    :try_start_20
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->getWheelKeyChannelLine2Value()I
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_27

    move-result v1

    goto :goto_1f

    .line 1318
    :catch_27
    move-exception v0

    .line 1319
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f
.end method

.method public initCarSignalService()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 216
    const-string v5, "qg.carsignal"

    invoke-static {v5}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 217
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_30

    .line 218
    const-string v4, "CarSignalManager"

    const-string v5, "can not get service qg.carsignal"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 220
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.qinggan.carsignal.service"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 221
    const-string v4, "com.qinggan.carsignal.CarSignalService"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 222
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 223
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/qinggan/carsignal/CarSignalManager;->mObtainICarSignalServiceBinderRunnable:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 254
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2f
    return v3

    .line 227
    :cond_30
    invoke-static {v0}, Lcom/qinggan/carsignal/ICarSignalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/carsignal/ICarSignalService;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    .line 228
    iput-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    .line 229
    iget-object v3, p0, Lcom/qinggan/carsignal/CarSignalManager;->mCarSignalDispatcher:Lcom/qinggan/carsignal/CarSignalDispatcher;

    invoke-virtual {p0, v3}, Lcom/qinggan/carsignal/CarSignalManager;->registerCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z

    .line 230
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/qinggan/carsignal/CarSignalManager$4;

    invoke-direct {v5, p0}, Lcom/qinggan/carsignal/CarSignalManager$4;-><init>(Lcom/qinggan/carsignal/CarSignalManager;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 247
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 250
    :try_start_4a
    iget-object v3, p0, Lcom/qinggan/carsignal/CarSignalManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_50
    .catch Landroid/os/RemoteException; {:try_start_4a .. :try_end_50} :catch_52

    :goto_50
    move v3, v4

    .line 254
    goto :goto_2f

    .line 251
    :catch_52
    move-exception v1

    .line 252
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_50
.end method

.method public isInMainBoardHighTempMode()Z
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 1162
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1169
    :goto_5
    return v1

    .line 1165
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2}, Lcom/qinggan/carsignal/ICarSignalService;->isInMainBoardHighTempMode()Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1166
    :catch_d
    move-exception v0

    .line 1167
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public ismIsConnected()Z
    .registers 2

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    return v0
.end method

.method public declared-synchronized registerCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z
    .registers 9
    .param p1, "cb"    # Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1089
    monitor-enter p0

    :try_start_3
    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_50

    if-nez v4, :cond_9

    .line 1106
    :goto_7
    monitor-exit p0

    return v2

    .line 1092
    :cond_9
    :try_start_9
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1093
    .local v1, "pkgname":Ljava/lang/String;
    const-string v4, "CarSignalManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CarSignalManagerService registerCallback pkgname="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    instance-of v4, p1, Lcom/qinggan/carsignal/CarSignalDispatcher;

    if-eqz v4, :cond_39

    .line 1095
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService registerCallback11 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v4, p1}, Lcom/qinggan/carsignal/ICarSignalService;->registerCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z

    move v2, v3

    .line 1097
    goto :goto_7

    .line 1099
    :cond_39
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService registerCallback22 "

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mCarSignalDispatcher:Lcom/qinggan/carsignal/CarSignalDispatcher;

    invoke-virtual {v4, p1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->addCallbacks(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)V
    :try_end_45
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_45} :catch_47
    .catchall {:try_start_9 .. :try_end_45} :catchall_50

    move v2, v3

    .line 1101
    goto :goto_7

    .line 1103
    .end local v1    # "pkgname":Ljava/lang/String;
    :catch_47
    move-exception v0

    .line 1104
    .local v0, "ex":Landroid/os/RemoteException;
    :try_start_48
    const-string v3, "CarSignalManager"

    const-string v4, "CarSignalManagerService died, relaunch!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_50

    goto :goto_7

    .line 1089
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catchall_50
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public setAlarmState(I)V
    .registers 5
    .param p1, "alarmState"    # I

    .prologue
    .line 474
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 481
    :goto_4
    return-void

    .line 477
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setAlarmState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 478
    :catch_b
    move-exception v0

    .line 479
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setAlarmTime(I)V
    .registers 5
    .param p1, "alarmTime"    # I

    .prologue
    .line 453
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 460
    :goto_4
    return-void

    .line 456
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setAlarmTime(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 457
    :catch_b
    move-exception v0

    .line 458
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setAudioSourceType(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 650
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 657
    :goto_4
    return-void

    .line 653
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setAudioSourceType(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 654
    :catch_b
    move-exception v0

    .line 655
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setBTPhoneState(I)V
    .registers 5
    .param p1, "type"    # I

    .prologue
    .line 660
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 667
    :goto_4
    return-void

    .line 663
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setBTPhoneState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 664
    :catch_b
    move-exception v0

    .line 665
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setBtMacValue([I)I
    .registers 8
    .param p1, "args"    # [I

    .prologue
    .line 1390
    const/4 v1, -0x1

    .line 1391
    .local v1, "ret":I
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService setBtMacValue"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v4, :cond_f

    move v2, v1

    .end local v1    # "ret":I
    .local v2, "ret":I
    move v3, v1

    .line 1400
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_e
    return v3

    .line 1395
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :cond_f
    :try_start_f
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v4, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setBtMacValue([I)I
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_18

    move-result v1

    :goto_15
    move v2, v1

    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    move v3, v1

    .line 1400
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_e

    .line 1396
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :catch_18
    move-exception v0

    .line 1397
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService died, relaunch!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15
.end method

.method public setDLSKeyguardStatus(Z)V
    .registers 5
    .param p1, "state"    # Z

    .prologue
    .line 1121
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 1128
    :goto_4
    return-void

    .line 1124
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setDLSKeyguardStatus(Z)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 1125
    :catch_b
    move-exception v0

    .line 1126
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setKeyBoardBackLightValue(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 1135
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 1142
    :goto_4
    return-void

    .line 1138
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setKeyBoardBackLightValue(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 1139
    :catch_b
    move-exception v0

    .line 1140
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setKeyCtlState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 1286
    const-string v1, "CarSignalManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyCtlState(),mIsConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1287
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_1f

    .line 1296
    :goto_1e
    return-void

    .line 1291
    :cond_1f
    :try_start_1f
    const-string v1, "CarSignalManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setKeyCtlState(),state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setKeyCtlState(I)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_3c} :catch_3d

    goto :goto_1e

    .line 1293
    :catch_3d
    move-exception v0

    .line 1294
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public setLCDBoardLightValue(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 1239
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 1246
    :goto_4
    return-void

    .line 1242
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setLCDBoardLightValue(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 1243
    :catch_b
    move-exception v0

    .line 1244
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setMCUMusicDiag(II)V
    .registers 7
    .param p1, "musicType"    # I
    .param p2, "volume"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1340
    const-string v1, "CarSignalManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMCUMusicDiag(),mIsConnected="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1341
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_1f

    .line 1350
    :goto_1e
    return-void

    .line 1345
    :cond_1f
    :try_start_1f
    const-string v1, "CarSignalManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMCUMusicDiag(),musicType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " volume = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1, p2}, Lcom/qinggan/carsignal/ICarSignalService;->setMCUMusicDiag(II)V
    :try_end_46
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_46} :catch_47

    goto :goto_1e

    .line 1347
    :catch_47
    move-exception v0

    .line 1348
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1e
.end method

.method public setMCUMusicDiagEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V
    .registers 7
    .param p1, "diagnosticInfo"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    .prologue
    .line 1353
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_5

    .line 1363
    :goto_4
    return-void

    .line 1357
    :cond_5
    :try_start_5
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setMCUMusicDiagEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_14

    goto :goto_4

    .line 1358
    :catch_b
    move-exception v1

    .line 1359
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1360
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_14
    move-exception v0

    .line 1361
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "CarSignalManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "CarSignalManager setMCUMusicDiagEx "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setMPUPowerMode([I)V
    .registers 5
    .param p1, "args"    # [I

    .prologue
    .line 640
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 647
    :goto_4
    return-void

    .line 643
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setMPUPowerMode([I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 644
    :catch_b
    move-exception v0

    .line 645
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setPAMuteState(I)V
    .registers 5
    .param p1, "muteState"    # I

    .prologue
    .line 516
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 523
    :goto_4
    return-void

    .line 519
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setPAMuteState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 520
    :catch_b
    move-exception v0

    .line 521
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setRTCState(I)V
    .registers 5
    .param p1, "rtcState"    # I

    .prologue
    .line 495
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 502
    :goto_4
    return-void

    .line 498
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setRTCState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 499
    :catch_b
    move-exception v0

    .line 500
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setRTCTime(I)V
    .registers 5
    .param p1, "time"    # I

    .prologue
    .line 432
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 439
    :goto_4
    return-void

    .line 435
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setRTCTime(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 436
    :catch_b
    move-exception v0

    .line 437
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setTimeModeState(I)V
    .registers 5
    .param p1, "state"    # I

    .prologue
    .line 377
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 384
    :goto_4
    return-void

    .line 380
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setTimeModeState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 381
    :catch_b
    move-exception v0

    .line 382
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setTouchScreenState(I)V
    .registers 5
    .param p1, "value"    # I

    .prologue
    .line 1263
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 1270
    :goto_4
    return-void

    .line 1266
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setTouchScreenState(I)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 1267
    :catch_b
    move-exception v0

    .line 1268
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public setVehicleConfig([I)I
    .registers 8
    .param p1, "args"    # [I

    .prologue
    .line 685
    const/4 v1, -0x1

    .line 686
    .local v1, "ret":I
    iget-boolean v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v4, :cond_8

    move v2, v1

    .end local v1    # "ret":I
    .local v2, "ret":I
    move v3, v1

    .line 694
    .end local v2    # "ret":I
    .local v3, "ret":I
    :goto_7
    return v3

    .line 689
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :cond_8
    :try_start_8
    iget-object v4, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v4, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setVehicleConfig([I)I
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_d} :catch_11

    move-result v1

    :goto_e
    move v2, v1

    .end local v1    # "ret":I
    .restart local v2    # "ret":I
    move v3, v1

    .line 694
    .end local v2    # "ret":I
    .restart local v3    # "ret":I
    goto :goto_7

    .line 690
    .end local v3    # "ret":I
    .restart local v1    # "ret":I
    :catch_11
    move-exception v0

    .line 691
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v4, "CarSignalManager"

    const-string v5, "CarSignalManagerService died, relaunch!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_e
.end method

.method public setVehicleVinCode(Ljava/lang/String;)V
    .registers 5
    .param p1, "vincode"    # Ljava/lang/String;

    .prologue
    .line 670
    iget-boolean v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v1, :cond_5

    .line 677
    :goto_4
    return-void

    .line 673
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v1, p1}, Lcom/qinggan/carsignal/ICarSignalService;->setVehicleVinCode(Ljava/lang/String;)V
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_a} :catch_b

    goto :goto_4

    .line 674
    :catch_b
    move-exception v0

    .line 675
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CarSignalManager"

    const-string v2, "CarSignalManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public unregisterCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z
    .registers 6
    .param p1, "cb"    # Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    .prologue
    const/4 v1, 0x0

    .line 1110
    iget-boolean v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mIsConnected:Z

    if-nez v2, :cond_6

    .line 1117
    :goto_5
    return v1

    .line 1113
    :cond_6
    :try_start_6
    iget-object v2, p0, Lcom/qinggan/carsignal/CarSignalManager;->mService:Lcom/qinggan/carsignal/ICarSignalService;

    invoke-interface {v2, p1}, Lcom/qinggan/carsignal/ICarSignalService;->unregisterCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_b} :catch_d

    move-result v1

    goto :goto_5

    .line 1114
    :catch_d
    move-exception v0

    .line 1115
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CarSignalManager"

    const-string v3, "CarSignalManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method
