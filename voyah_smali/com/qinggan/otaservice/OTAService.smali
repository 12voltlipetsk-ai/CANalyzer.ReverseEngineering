.class public Lcom/qinggan/otaservice/OTAService;
.super Landroid/app/Service;
.source "OTAService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;
    }
.end annotation


# static fields
.field public static final APA_ID:I = 0x743

.field public static final H56A_PRODUCT_NAME:Ljava/lang/String; = "f0506h"

.field public static final H97A_PRODUCT_NAME:Ljava/lang/String; = "f0505h"

.field public static final ICM_ID:I = 0x709

.field static final SHUTDOWN_ACTION:Ljava/lang/String; = "com.qinggan.otaservice.action.SHUTDOWN"

.field public static final SP_KEY_DST_MCU_VERSION:Ljava/lang/String; = "dst_mcu_version"

.field public static final SP_KEY_DST_MPU_VERSION:Ljava/lang/String; = "dst_mpu_version"

.field public static final SP_KEY_LASTUPGRADE_TIME:Ljava/lang/String; = "last_upgrade_time"

.field public static final SP_KEY_SILENCE_UPGRADE_FINISHED:Ljava/lang/String; = "silence_finished"

.field public static final SP_KEY_SILENCE_UPGRADING:Ljava/lang/String; = "silence"

.field public static final SP_KEY_TASKITEM_SID:Ljava/lang/String; = "taskitem_sid"

.field public static final SP_KEY_TASK_SID:Ljava/lang/String; = "task_sid"

.field public static final SP_OTA:Ljava/lang/String; = "ota"

.field static final START_ACTION:Ljava/lang/String; = "com.qinggan.otamanager.action.OTAMANAGER_SERVICE"

.field protected static final TAG:Ljava/lang/String; = "OTAService"

.field static final UNMOUNT_ACTION:Ljava/lang/String; = "com.qinggan.otaservice.action.UNMOUNT"


# instance fields
.field private final mBinder:Lcom/qinggan/ota/IOTAService$Stub;

.field private mCachedPushInfo:Lcom/qinggan/ota/OTAPushInfo;

.field private mCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/qinggan/ota/IOTAServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

.field private mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;

.field private mExcelforeServiceConnection:Landroid/content/ServiceConnection;

.field protected mExecutor:Ljava/util/concurrent/ExecutorService;

.field private mFirst:Z

.field private mHandler:Landroid/os/Handler;

.field private mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;

.field private mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;

.field private mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

.field private mPendingNotifyNewVersion:Z

.field private mProductName:Ljava/lang/String;

.field private mSilence:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mState:I

.field private mSystemInfo:Lcom/qinggan/os/SystemInfo;

.field private mTBReceiver:Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 81
    iput v1, p0, Lcom/qinggan/otaservice/OTAService;->mState:I

    .line 87
    iput-boolean v1, p0, Lcom/qinggan/otaservice/OTAService;->mPendingNotifyNewVersion:Z

    .line 89
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/OTAService;->mFirst:Z

    .line 90
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mHandler:Landroid/os/Handler;

    .line 93
    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mProductName:Ljava/lang/String;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mSilence:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 99
    new-instance v0, Lcom/qinggan/otaservice/OTAService$1;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/OTAService$1;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mExcelforeServiceConnection:Landroid/content/ServiceConnection;

    .line 652
    new-instance v0, Lcom/qinggan/otaservice/OTAService$3;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/OTAService$3;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mBinder:Lcom/qinggan/ota/IOTAService$Stub;

    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/otaservice/OTAService;)Lcom/excelfore/hmiagent/IHMIAgent;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qinggan/otaservice/OTAService;Lcom/excelfore/hmiagent/IHMIAgent;)Lcom/excelfore/hmiagent/IHMIAgent;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;
    .param p1, "x1"    # Lcom/excelfore/hmiagent/IHMIAgent;

    .prologue
    .line 56
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService;->mHmiagentService:Lcom/excelfore/hmiagent/IHMIAgent;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/OTAService;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/qinggan/otaservice/OTAService;->bindExcelforeService()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/LocalUpgrade;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qinggan/otaservice/OTAService;Lcom/qinggan/ota/IOTAServiceListener;)Z
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;
    .param p1, "x1"    # Lcom/qinggan/ota/IOTAServiceListener;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/OTAService;->unregisterOTAListener(Lcom/qinggan/ota/IOTAServiceListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/qinggan/otaservice/OTAService;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mProductName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/EthernetUpgrade;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qinggan/otaservice/OTAService;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/qinggan/otaservice/OTAService;->mFirst:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qinggan/otaservice/OTAService;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/qinggan/otaservice/OTAService;->mFirst:Z

    return p1
.end method

.method static synthetic access$300(Lcom/qinggan/otaservice/OTAService;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/qinggan/otaservice/OTAService;->initVersions()V

    return-void
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/OTAService;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/qinggan/otaservice/OTAService;->recordUpgradeTime()V

    return-void
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/OTAService;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/qinggan/otaservice/OTAService;->initService()V

    return-void
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/OTAService;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/qinggan/otaservice/OTAService;->readUpgradeResult()V

    return-void
.end method

.method static synthetic access$700(Lcom/qinggan/otaservice/OTAService;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qinggan/otaservice/OTAService;)Lcom/qinggan/otaservice/NetUpgrade;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qinggan/otaservice/OTAService;Lcom/qinggan/ota/IOTAServiceListener;)Z
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/OTAService;
    .param p1, "x1"    # Lcom/qinggan/ota/IOTAServiceListener;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/OTAService;->registerOTAListener(Lcom/qinggan/ota/IOTAServiceListener;)Z

    move-result v0

    return v0
.end method

.method private bindExcelforeService()V
    .registers 5

    .prologue
    .line 895
    const-string v1, "OTAService"

    const-string v2, "bindExcelforeService"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 896
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 897
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.excelfore.ESYNC_SERVICE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 898
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.excelfore.hmiagent"

    const-string v3, "com.excelfore.hmiagent.main.HmiagentService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 899
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mExcelforeServiceConnection:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/qinggan/otaservice/OTAService;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 900
    return-void
.end method

.method private getDstVersion(Lcom/qinggan/ota/OTAVersion;)V
    .registers 3
    .param p1, "version"    # Lcom/qinggan/ota/OTAVersion;

    .prologue
    .line 279
    iget-object v0, p1, Lcom/qinggan/ota/OTAVersion;->mpuVersion:Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p1, Lcom/qinggan/ota/OTAVersion;->mpuVersion:Ljava/lang/String;

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_c
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    :goto_e
    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    .line 281
    iget-object v0, p1, Lcom/qinggan/ota/OTAVersion;->mcuVersion:Ljava/lang/String;

    if-eqz v0, :cond_1c

    iget-object v0, p1, Lcom/qinggan/ota/OTAVersion;->mcuVersion:Ljava/lang/String;

    .line 282
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_24

    :cond_1c
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    :goto_1e
    sput-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    .line 283
    return-void

    .line 280
    :cond_21
    iget-object v0, p1, Lcom/qinggan/ota/OTAVersion;->mpuVersion:Ljava/lang/String;

    goto :goto_e

    .line 282
    :cond_24
    iget-object v0, p1, Lcom/qinggan/ota/OTAVersion;->mcuVersion:Ljava/lang/String;

    goto :goto_1e
.end method

.method private initService()V
    .registers 3

    .prologue
    .line 131
    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 132
    const-string v0, "f0505h"

    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "f0506h"

    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mProductName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 133
    :cond_1a
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;

    .line 139
    :goto_21
    return-void

    .line 135
    :cond_22
    new-instance v0, Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/LocalUpgrade;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mLocalUpgrade:Lcom/qinggan/otaservice/LocalUpgrade;

    .line 136
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    goto :goto_21
.end method

.method private initVersions()V
    .registers 12

    .prologue
    const/16 v10, 0x3d

    const/16 v9, 0x3c

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 142
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getBootSystem()I

    move-result v3

    .line 143
    .local v3, "systemId":I
    if-nez v3, :cond_214

    .line 144
    const-string v6, "OTAService"

    const-string v7, "Current System A"

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSystemInfo()Lcom/qinggan/os/SystemInfo;

    move-result-object v6

    .line 146
    invoke-virtual {v6}, Lcom/qinggan/os/SystemInfo;->getSystemSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 147
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    .line 150
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/NativeManager;->getSystemVersion(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    .line 160
    :cond_28
    :goto_28
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System Version Code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 162
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Backup System Version Code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getVehicleType()I

    move-result v6

    sput v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    .line 165
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getVehicleTypeName()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    .line 166
    sget v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    const/4 v7, 0x5

    if-gt v6, v7, :cond_81

    .line 167
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getMCUPlatform()I

    move-result v6

    sput v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    .line 168
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 169
    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getMCUPlatformString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    .line 171
    :cond_81
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System MCUPlatform: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System MCUPlatformString: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 174
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getMCUSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 175
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System MCUVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 178
    .local v0, "abMpuEqual":Z
    invoke-static {v9}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v1

    .line 180
    .local v1, "cachedA":Ljava/lang/String;
    invoke-static {v10}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v2

    .line 181
    .local v2, "cachedB":Ljava/lang/String;
    if-nez v3, :cond_234

    .line 182
    if-eqz v1, :cond_f3

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_f8

    .line 183
    :cond_f3
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/qinggan/os/SystemProperties;->nvramWrite(Ljava/lang/String;I)I

    .line 186
    :cond_f8
    if-eqz v0, :cond_109

    .line 187
    if-eqz v2, :cond_104

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_109

    .line 188
    :cond_104
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/qinggan/os/SystemProperties;->nvramWrite(Ljava/lang/String;I)I

    .line 204
    :cond_109
    :goto_109
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getCanBoxVersion()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    .line 205
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System CANVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSystemInfo()Lcom/qinggan/os/SystemInfo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/qinggan/os/SystemInfo;->getIVokaResourceVersion()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sResVersion:Ljava/lang/String;

    .line 207
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System RESVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sResVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v6}, Lcom/qinggan/carsignal/CarSignalManager;->getMCUHardwareVersion()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sHwVersion:Ljava/lang/String;

    .line 209
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Current System HWVersion: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sHwVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    invoke-static {}, Lcom/qinggan/os/MiniRecoveryNative;->getSystemType()I

    move-result v6

    if-nez v6, :cond_258

    :goto_177
    sput-boolean v4, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    .line 211
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current System Dual System: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-boolean v6, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v4, "ro.qg.ota_extra"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    .line 213
    const-string v4, "ro.qg.ota_mpu"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMpuName:Ljava/lang/String;

    .line 214
    const-string v4, "ro.qg.ota_mcu"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    .line 215
    const-string v4, "ro.qg.ota_can"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    .line 216
    const-string v4, "ro.qg.ota_res"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sResName:Ljava/lang/String;

    .line 218
    const-string v4, "C62IPDA"

    sput-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    .line 219
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "local upgrade name format: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMpuName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sResName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    return-void

    .line 151
    .end local v0    # "abMpuEqual":Z
    .end local v1    # "cachedA":Ljava/lang/String;
    .end local v2    # "cachedB":Ljava/lang/String;
    :cond_214
    if-ne v3, v4, :cond_28

    .line 152
    const-string v6, "OTAService"

    const-string v7, "Current System B"

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSystemInfo()Lcom/qinggan/os/SystemInfo;

    move-result-object v6

    .line 154
    invoke-virtual {v6}, Lcom/qinggan/os/SystemInfo;->getSystemSoftwareVersion()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 155
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-static {v4, v6}, Lcom/qinggan/otaservice/engine/NativeManager;->setSystemVersionCode(ILjava/lang/String;)I

    .line 158
    invoke-static {v5}, Lcom/qinggan/otaservice/engine/NativeManager;->getSystemVersion(I)Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    goto/16 :goto_28

    .line 192
    .restart local v0    # "abMpuEqual":Z
    .restart local v1    # "cachedA":Ljava/lang/String;
    .restart local v2    # "cachedB":Ljava/lang/String;
    :cond_234
    if-ne v3, v4, :cond_109

    .line 193
    if-eqz v2, :cond_240

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_245

    .line 194
    :cond_240
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v6, v10}, Lcom/qinggan/os/SystemProperties;->nvramWrite(Ljava/lang/String;I)I

    .line 197
    :cond_245
    if-eqz v0, :cond_109

    .line 198
    if-eqz v1, :cond_251

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_109

    .line 199
    :cond_251
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v6, v9}, Lcom/qinggan/os/SystemProperties;->nvramWrite(Ljava/lang/String;I)I

    goto/16 :goto_109

    :cond_258
    move v4, v5

    .line 210
    goto/16 :goto_177
.end method

.method private notifyUpgradeStateChanged(I)V
    .registers 10
    .param p1, "state"    # I

    .prologue
    const/4 v7, 0x0

    .line 466
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_13

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 467
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-eqz v4, :cond_13

    .line 468
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_50

    .line 469
    :cond_13
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not notifyUpgradeStateChanged as silence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 470
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 469
    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_4f

    const/4 v4, 0x6

    if-ne p1, v4, :cond_4f

    .line 473
    const-string v4, "ota"

    invoke-virtual {p0, v4, v7}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    const-string v5, "silence_finished"

    const/4 v6, 0x1

    .line 474
    invoke-interface {v4, v5, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    .line 475
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 476
    invoke-virtual {p0, v7}, Lcom/qinggan/otaservice/OTAService;->setSilence(Z)V

    .line 496
    :cond_4f
    :goto_4f
    return-void

    .line 480
    :cond_50
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyUpgradeStateChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 481
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 482
    :try_start_6b
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 483
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_72
    if-ge v2, v0, :cond_a3

    .line 484
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 485
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_7c
    .catchall {:try_start_6b .. :try_end_7c} :catchall_a0

    .line 487
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_7c
    invoke-interface {v3, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onUpgradeStateChanged(I)V
    :try_end_7f
    .catch Landroid/os/RemoteException; {:try_start_7c .. :try_end_7f} :catch_82
    .catchall {:try_start_7c .. :try_end_7f} :catchall_a0

    .line 483
    :goto_7f
    add-int/lit8 v2, v2, 0x1

    goto :goto_72

    .line 488
    :catch_82
    move-exception v1

    .line 489
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_83
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyUpgradeStateChanged exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 491
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 489
    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7f

    .line 495
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_a0
    move-exception v4

    monitor-exit v5
    :try_end_a2
    .catchall {:try_start_83 .. :try_end_a2} :catchall_a0

    throw v4

    .line 494
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_a3
    :try_start_a3
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 495
    monitor-exit v5
    :try_end_a9
    .catchall {:try_start_a3 .. :try_end_a9} :catchall_a0

    goto :goto_4f
.end method

.method private readUpgradeResult()V
    .registers 15

    .prologue
    const-wide/16 v12, -0x1

    const/4 v10, 0x1

    const/4 v1, 0x0

    .line 302
    const-string v0, "ota"

    invoke-virtual {p0, v0, v1}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 303
    .local v9, "sp":Landroid/content/SharedPreferences;
    const-string v0, "dst_mpu_version"

    invoke-interface {v9, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1a

    const-string v0, "dst_mcu_version"

    .line 304
    invoke-interface {v9, v0}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    :cond_1a
    move v6, v10

    .line 305
    .local v6, "hasDstVersion":Z
    :goto_1b
    const-string v0, "dst_mpu_version"

    const-string v11, ""

    invoke-interface {v9, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 306
    .local v8, "mpu":Ljava/lang/String;
    const-string v0, "dst_mcu_version"

    const-string v11, ""

    invoke-interface {v9, v0, v11}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 307
    .local v7, "mcu":Ljava/lang/String;
    const-string v0, "task_sid"

    invoke-interface {v9, v0, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 308
    .local v2, "taskSid":J
    const-string v0, "taskitem_sid"

    invoke-interface {v9, v0, v12, v13}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 309
    .local v4, "taskItemSid":J
    const-string v0, "OTAService"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "readUpgradeResult: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " taskSid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " taskItemSid: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v0, v11}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    if-eqz v6, :cond_89

    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    if-eqz v0, :cond_89

    .line 312
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    sget-object v11, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_86

    sget-object v11, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 313
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_86

    move v1, v10

    .line 312
    :cond_86
    invoke-virtual/range {v0 .. v5}, Lcom/qinggan/otaservice/NetUpgrade;->uploadResult(ZJJ)V

    .line 315
    :cond_89
    return-void

    .end local v2    # "taskSid":J
    .end local v4    # "taskItemSid":J
    .end local v6    # "hasDstVersion":Z
    .end local v7    # "mcu":Ljava/lang/String;
    .end local v8    # "mpu":Ljava/lang/String;
    :cond_8a
    move v6, v1

    .line 304
    goto :goto_1b
.end method

.method private recordUpgradeTime()V
    .registers 10

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 319
    const-string v7, "ota"

    invoke-virtual {p0, v7, v5}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 320
    .local v3, "sp":Landroid/content/SharedPreferences;
    const-string v7, "dst_mpu_version"

    invoke-interface {v3, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_18

    const-string v7, "dst_mcu_version"

    .line 321
    invoke-interface {v3, v7}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5d

    :cond_18
    move v0, v6

    .line 322
    .local v0, "hasDstVersion":Z
    :goto_19
    const-string v7, "dst_mpu_version"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 323
    .local v2, "mpu":Ljava/lang/String;
    const-string v7, "dst_mcu_version"

    const-string v8, ""

    invoke-interface {v3, v7, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    .local v1, "mcu":Ljava/lang/String;
    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 325
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5f

    move v4, v6

    .line 326
    .local v4, "upgradeResult":Z
    :goto_3a
    if-eqz v0, :cond_5c

    if-eqz v4, :cond_5c

    .line 327
    const-string v6, "OTAService"

    const-string v7, "upgrade success and record upgrade time..."

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const-string v6, "ota"

    invoke-virtual {p0, v6, v5}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 329
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    const-string v6, "last_upgrade_time"

    .line 331
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v7

    .line 330
    invoke-interface {v5, v6, v7}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 332
    invoke-interface {v5}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    :cond_5c
    return-void

    .end local v0    # "hasDstVersion":Z
    .end local v1    # "mcu":Ljava/lang/String;
    .end local v2    # "mpu":Ljava/lang/String;
    .end local v4    # "upgradeResult":Z
    :cond_5d
    move v0, v5

    .line 321
    goto :goto_19

    .restart local v0    # "hasDstVersion":Z
    .restart local v1    # "mcu":Ljava/lang/String;
    .restart local v2    # "mpu":Ljava/lang/String;
    :cond_5f
    move v4, v5

    .line 325
    goto :goto_3a
.end method

.method private registerOTAListener(Lcom/qinggan/ota/IOTAServiceListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/qinggan/ota/IOTAServiceListener;

    .prologue
    .line 383
    const/4 v0, 0x0

    .line 384
    .local v0, "ret":Z
    if-nez p1, :cond_d

    .line 385
    const-string v3, "OTAService"

    const-string v4, "IOTAServiceListener is null"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .end local v0    # "ret":Z
    .local v1, "ret":Z
    move v2, v0

    .line 395
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_c
    return v2

    .line 388
    .end local v2    # "ret":I
    .restart local v0    # "ret":Z
    :cond_d
    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_23

    .line 389
    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    .line 390
    iget-boolean v3, p0, Lcom/qinggan/otaservice/OTAService;->mPendingNotifyNewVersion:Z

    if-eqz v3, :cond_23

    .line 391
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/qinggan/otaservice/OTAService;->mPendingNotifyNewVersion:Z

    .line 392
    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService;->mCachedPushInfo:Lcom/qinggan/ota/OTAPushInfo;

    invoke-virtual {p0, v3}, Lcom/qinggan/otaservice/OTAService;->notifyPushVersionInfo(Lcom/qinggan/ota/OTAPushInfo;)V

    :cond_23
    move v1, v0

    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    move v2, v0

    .line 395
    .restart local v2    # "ret":I
    goto :goto_c
.end method

.method private unbindExcelforeService()V
    .registers 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mExcelforeServiceConnection:Landroid/content/ServiceConnection;

    if-eqz v0, :cond_9

    .line 904
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mExcelforeServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/OTAService;->unbindService(Landroid/content/ServiceConnection;)V

    .line 906
    :cond_9
    return-void
.end method

.method private unregisterOTAListener(Lcom/qinggan/ota/IOTAServiceListener;)Z
    .registers 7
    .param p1, "listener"    # Lcom/qinggan/ota/IOTAServiceListener;

    .prologue
    .line 399
    const/4 v0, 0x0

    .line 401
    .local v0, "ret":Z
    if-nez p1, :cond_d

    .line 402
    const-string v3, "OTAService"

    const-string v4, "IOTAServiceListener is null"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    .end local v0    # "ret":Z
    .local v1, "ret":Z
    move v2, v0

    .line 410
    .end local v1    # "ret":Z
    .local v2, "ret":I
    :goto_c
    return v2

    .line 406
    .end local v2    # "ret":I
    .restart local v0    # "ret":Z
    :cond_d
    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v3, :cond_17

    .line 407
    iget-object v3, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    :cond_17
    move v1, v0

    .end local v0    # "ret":Z
    .restart local v1    # "ret":Z
    move v2, v0

    .line 410
    .restart local v2    # "ret":I
    goto :goto_c
.end method


# virtual methods
.method cleanUpgradeResult()V
    .registers 3

    .prologue
    .line 338
    const-string v0, "ota"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dst_mpu_version"

    .line 339
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dst_mcu_version"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "task_sid"

    .line 340
    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "taskitem_sid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 341
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 342
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 231
    const-string v0, "OTAService"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 232
    invoke-static {p1, p2, p3}, Lcom/qinggan/otaservice/common/SYSCache;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 233
    const-string v0, "/n----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 234
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "State: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/otaservice/OTAService;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 235
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    if-eqz v0, :cond_2e

    .line 236
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v0, p1, p2, p3}, Lcom/qinggan/otaservice/NetUpgrade;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 239
    :cond_2e
    return-void
.end method

.method public getServiceContext()Landroid/content/Context;
    .registers 1

    .prologue
    .line 345
    return-object p0
.end method

.method public getSilence()Z
    .registers 2

    .prologue
    .line 890
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mSilence:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized getState()I
    .registers 2

    .prologue
    .line 879
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/qinggan/otaservice/OTAService;->mState:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getSystemInfo()Lcom/qinggan/os/SystemInfo;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mSystemInfo:Lcom/qinggan/os/SystemInfo;

    if-nez v0, :cond_a

    .line 125
    invoke-static {p0}, Lcom/qinggan/os/SystemInfo;->getInstance(Landroid/content/Context;)Lcom/qinggan/os/SystemInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mSystemInfo:Lcom/qinggan/os/SystemInfo;

    .line 127
    :cond_a
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mSystemInfo:Lcom/qinggan/os/SystemInfo;

    return-object v0
.end method

.method notifyDownLoadProgress(IIJJ)V
    .registers 18
    .param p1, "current"    # I
    .param p2, "total"    # I
    .param p3, "currentSize"    # J
    .param p5, "totalSize"    # J

    .prologue
    .line 631
    iget-object v2, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_12

    iget-object v2, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 632
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v2

    if-eqz v2, :cond_12

    .line 633
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v2

    if-eqz v2, :cond_13

    .line 650
    :cond_12
    :goto_12
    return-void

    .line 636
    :cond_13
    iget-object v10, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v10

    .line 637
    :try_start_16
    iget-object v2, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 638
    .local v0, "N":I
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1d
    if-ge v9, v0, :cond_53

    .line 639
    iget-object v2, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 640
    invoke-virtual {v2, v9}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_50

    .local v1, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    move v2, p1

    move v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    .line 642
    :try_start_2c
    invoke-interface/range {v1 .. v7}, Lcom/qinggan/ota/IOTAServiceListener;->onDownLoadProgress(IIJJ)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_32
    .catchall {:try_start_2c .. :try_end_2f} :catchall_50

    .line 638
    :goto_2f
    add-int/lit8 v9, v9, 0x1

    goto :goto_1d

    .line 644
    :catch_32
    move-exception v8

    .line 645
    .local v8, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v2, "OTAService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "notifyError exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v8}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 649
    .end local v0    # "N":I
    .end local v1    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    .end local v8    # "e":Landroid/os/RemoteException;
    .end local v9    # "i":I
    :catchall_50
    move-exception v2

    monitor-exit v10
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_50

    throw v2

    .line 648
    .restart local v0    # "N":I
    .restart local v9    # "i":I
    :cond_53
    :try_start_53
    iget-object v2, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 649
    monitor-exit v10
    :try_end_59
    .catchall {:try_start_53 .. :try_end_59} :catchall_50

    goto :goto_12
.end method

.method public notifyEFCheckLicAgreementReq()V
    .registers 10

    .prologue
    .line 980
    const-string v5, "OTAService"

    const-string v6, "notifyEFCheckLicAgreementReq: "

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v6

    .line 982
    :try_start_a
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 983
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_60

    .line 984
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 985
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_3f

    .line 987
    .local v4, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_1b
    invoke-interface {v4}, Lcom/qinggan/ota/IOTAServiceListener;->onEFCheckLicAgreementReq()V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_1e} :catch_42
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3f

    .line 983
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 988
    :catch_21
    move-exception v1

    .line 989
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 990
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 989
    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 996
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_3f
    move-exception v5

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v5

    .line 991
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_42
    move-exception v2

    .line 992
    .local v2, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_43
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 995
    .end local v2    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_60
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 996
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_3f

    .line 997
    return-void
.end method

.method public notifyEFInstallReq(Lcom/excelfore/hmiagent/DiagTaskInfo;)V
    .registers 11
    .param p1, "info"    # Lcom/excelfore/hmiagent/DiagTaskInfo;

    .prologue
    .line 1000
    const-string v5, "OTAService"

    const-string v6, "notifyEFInstallReq: "

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1001
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v6

    .line 1002
    :try_start_a
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1003
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_60

    .line 1004
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 1005
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_3f

    .line 1007
    .local v4, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_1b
    invoke-interface {v4, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onEFInstallReq(Lcom/excelfore/hmiagent/DiagTaskInfo;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_1e} :catch_42
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3f

    .line 1003
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1008
    :catch_21
    move-exception v1

    .line 1009
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1010
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1009
    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1016
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_3f
    move-exception v5

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v5

    .line 1011
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_42
    move-exception v2

    .line 1012
    .local v2, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_43
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1015
    .end local v2    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_60
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1016
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_3f

    .line 1017
    return-void
.end method

.method public notifyEFRealtimeDiagReq(Lcom/excelfore/hmiagent/DiagOnlineReq;)V
    .registers 11
    .param p1, "info"    # Lcom/excelfore/hmiagent/DiagOnlineReq;

    .prologue
    .line 1020
    const-string v5, "OTAService"

    const-string v6, "notifyEFRealtimeDiagReq: "

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1021
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v6

    .line 1022
    :try_start_a
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1023
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_60

    .line 1024
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 1025
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_3f

    .line 1027
    .local v4, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_1b
    invoke-interface {v4, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onEFRealtimeDiagReq(Lcom/excelfore/hmiagent/DiagOnlineReq;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_1e} :catch_42
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3f

    .line 1023
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1028
    :catch_21
    move-exception v1

    .line 1029
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1030
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1029
    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1036
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_3f
    move-exception v5

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v5

    .line 1031
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_42
    move-exception v2

    .line 1032
    .local v2, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_43
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1035
    .end local v2    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_60
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1036
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_3f

    .line 1037
    return-void
.end method

.method public notifyEFRealtimeDiagUpdate(Lcom/excelfore/hmiagent/VehicleDiagState;)V
    .registers 11
    .param p1, "info"    # Lcom/excelfore/hmiagent/VehicleDiagState;

    .prologue
    .line 1041
    const-string v5, "OTAService"

    const-string v6, "notifyEFRealtimeDiagUpdate: "

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1042
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v6

    .line 1043
    :try_start_a
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 1044
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_11
    if-ge v3, v0, :cond_60

    .line 1045
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 1046
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_1b
    .catchall {:try_start_a .. :try_end_1b} :catchall_3f

    .line 1048
    .local v4, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_1b
    invoke-interface {v4, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onEFRealtimeDiagUpdate(Lcom/excelfore/hmiagent/VehicleDiagState;)V
    :try_end_1e
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_1e} :catch_21
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1b .. :try_end_1e} :catch_42
    .catchall {:try_start_1b .. :try_end_1e} :catchall_3f

    .line 1044
    :goto_1e
    add-int/lit8 v3, v3, 0x1

    goto :goto_11

    .line 1049
    :catch_21
    move-exception v1

    .line 1050
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_22
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1051
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1050
    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1057
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_3f
    move-exception v5

    monitor-exit v6
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_3f

    throw v5

    .line 1052
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_42
    move-exception v2

    .line 1053
    .local v2, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_43
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e

    .line 1056
    .end local v2    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_60
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 1057
    monitor-exit v6
    :try_end_66
    .catchall {:try_start_43 .. :try_end_66} :catchall_3f

    .line 1058
    return-void
.end method

.method public notifyError(I)V
    .registers 10
    .param p1, "error"    # I

    .prologue
    .line 548
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 549
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-eqz v4, :cond_12

    .line 550
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 551
    :cond_12
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not notifyError as silence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 552
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 553
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/qinggan/otaservice/OTAService;->setSilence(Z)V

    .line 574
    :cond_38
    :goto_38
    return-void

    .line 560
    :cond_39
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 562
    :try_start_54
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 563
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_5b
    if-ge v2, v0, :cond_8e

    .line 564
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 565
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_65
    .catchall {:try_start_54 .. :try_end_65} :catchall_8b

    .line 567
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_65
    const-string v4, ""

    invoke-interface {v3, p1, v4}, Lcom/qinggan/ota/IOTAServiceListener;->onError(ILjava/lang/String;)V
    :try_end_6a
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_6a} :catch_6d
    .catchall {:try_start_65 .. :try_end_6a} :catchall_8b

    .line 563
    :goto_6a
    add-int/lit8 v2, v2, 0x1

    goto :goto_5b

    .line 568
    :catch_6d
    move-exception v1

    .line 569
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_6e
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyError exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6a

    .line 573
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_8b
    move-exception v4

    monitor-exit v5
    :try_end_8d
    .catchall {:try_start_6e .. :try_end_8d} :catchall_8b

    throw v4

    .line 572
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_8e
    :try_start_8e
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 573
    monitor-exit v5
    :try_end_94
    .catchall {:try_start_8e .. :try_end_94} :catchall_8b

    goto :goto_38
.end method

.method public notifyError(ILjava/lang/String;)V
    .registers 11
    .param p1, "error"    # I
    .param p2, "msg"    # Ljava/lang/String;

    .prologue
    .line 601
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 602
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-eqz v4, :cond_12

    .line 603
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_39

    .line 604
    :cond_12
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not notifyError as silence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 609
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/qinggan/otaservice/OTAService;->setSilence(Z)V

    .line 627
    :cond_38
    :goto_38
    return-void

    .line 613
    :cond_39
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyError: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 614
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 615
    :try_start_5e
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 616
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_65
    if-ge v2, v0, :cond_96

    .line 617
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 618
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_6f
    .catchall {:try_start_5e .. :try_end_6f} :catchall_93

    .line 620
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_6f
    invoke-interface {v3, p1, p2}, Lcom/qinggan/ota/IOTAServiceListener;->onError(ILjava/lang/String;)V
    :try_end_72
    .catch Landroid/os/RemoteException; {:try_start_6f .. :try_end_72} :catch_75
    .catchall {:try_start_6f .. :try_end_72} :catchall_93

    .line 616
    :goto_72
    add-int/lit8 v2, v2, 0x1

    goto :goto_65

    .line 621
    :catch_75
    move-exception v1

    .line 622
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_76
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyError exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_72

    .line 626
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_93
    move-exception v4

    monitor-exit v5
    :try_end_95
    .catchall {:try_start_76 .. :try_end_95} :catchall_93

    throw v4

    .line 625
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_96
    :try_start_96
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 626
    monitor-exit v5
    :try_end_9c
    .catchall {:try_start_96 .. :try_end_9c} :catchall_93

    goto :goto_38
.end method

.method public notifyExcelforeAppointmentResult(I)V
    .registers 11
    .param p1, "result"    # I

    .prologue
    .line 959
    const-string v5, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyExcelforeAppointmentResult: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v6

    .line 961
    :try_start_1b
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 962
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v0, :cond_71

    .line 963
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 964
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_50

    .line 966
    .local v4, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_2c
    invoke-interface {v4, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onExcelforeAppointmentResult(I)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_32
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2c .. :try_end_2f} :catch_53
    .catchall {:try_start_2c .. :try_end_2f} :catchall_50

    .line 962
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 967
    :catch_32
    move-exception v1

    .line 968
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 969
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 968
    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 975
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_50

    throw v5

    .line 970
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_53
    move-exception v2

    .line 971
    .local v2, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_54
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeAppointmentResult exception"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 974
    .end local v2    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_71
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 975
    monitor-exit v6
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_50

    .line 976
    return-void
.end method

.method public notifyExcelforeInstallUpdate(Lcom/excelfore/hmiagent/OtaInstallState;)V
    .registers 13
    .param p1, "state"    # Lcom/excelfore/hmiagent/OtaInstallState;

    .prologue
    const/4 v10, 0x1

    .line 929
    const-string v6, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyExcelforeInstallUpdate: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 930
    iget-object v7, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v7

    .line 931
    :try_start_1c
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 932
    .local v0, "N":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_23
    if-ge v4, v0, :cond_72

    .line 933
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 934
    invoke-virtual {v6, v4}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v5

    check-cast v5, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_2d
    .catchall {:try_start_1c .. :try_end_2d} :catchall_51

    .line 936
    .local v5, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_2d
    invoke-interface {v5, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onExcelforeInstallUpdate(Lcom/excelfore/hmiagent/OtaInstallState;)V
    :try_end_30
    .catch Landroid/os/RemoteException; {:try_start_2d .. :try_end_30} :catch_33
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2d .. :try_end_30} :catch_54
    .catchall {:try_start_2d .. :try_end_30} :catchall_51

    .line 932
    :goto_30
    add-int/lit8 v4, v4, 0x1

    goto :goto_23

    .line 937
    :catch_33
    move-exception v1

    .line 938
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_34
    const-string v6, "OTAService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyResponseVersionFromNetwork exception:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 939
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 938
    invoke-static {v6, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 955
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v4    # "i":I
    .end local v5    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_51
    move-exception v6

    monitor-exit v7
    :try_end_53
    .catchall {:try_start_34 .. :try_end_53} :catchall_51

    throw v6

    .line 940
    .restart local v0    # "N":I
    .restart local v4    # "i":I
    .restart local v5    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_54
    move-exception v3

    .line 941
    .local v3, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_55
    const-string v6, "OTAService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "notifyResponseVersionFromNetwork exception"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_30

    .line 944
    .end local v3    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v5    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_72
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v6}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 947
    if-eqz p1, :cond_95

    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;

    if-eqz v6, :cond_95

    .line 948
    invoke-virtual {p1}, Lcom/excelfore/hmiagent/OtaInstallState;->getInstallingEcu()I

    move-result v2

    .line 949
    .local v2, "ecuId":I
    const/16 v6, 0x743

    if-eq v2, v6, :cond_89

    const/16 v6, 0x709

    if-ne v2, v6, :cond_97

    :cond_89
    invoke-virtual {p1}, Lcom/excelfore/hmiagent/OtaInstallState;->getState()I

    move-result v6

    if-ne v6, v10, :cond_97

    .line 950
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;

    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lcom/qinggan/otaservice/EthernetUpgrade;->updateResetEcuState(Z)V

    .line 955
    .end local v2    # "ecuId":I
    :cond_95
    :goto_95
    monitor-exit v7

    .line 956
    return-void

    .line 952
    .restart local v2    # "ecuId":I
    :cond_97
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mEthernetUpgrade:Lcom/qinggan/otaservice/EthernetUpgrade;

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Lcom/qinggan/otaservice/EthernetUpgrade;->updateResetEcuState(Z)V
    :try_end_9d
    .catchall {:try_start_55 .. :try_end_9d} :catchall_51

    goto :goto_95
.end method

.method public notifyExcelforePushVersionInfo(Lcom/excelfore/hmiagent/OtaUpdateReq;)V
    .registers 11
    .param p1, "info"    # Lcom/excelfore/hmiagent/OtaUpdateReq;

    .prologue
    .line 909
    const-string v5, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyExcelforePushVersionInfo: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 910
    iget-object v6, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v6

    .line 911
    :try_start_1b
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 912
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_22
    if-ge v3, v0, :cond_71

    .line 913
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 914
    invoke-virtual {v5, v3}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_2c
    .catchall {:try_start_1b .. :try_end_2c} :catchall_50

    .line 916
    .local v4, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_2c
    invoke-interface {v4, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onExcelforePushVersionInfo(Lcom/excelfore/hmiagent/OtaUpdateReq;)V
    :try_end_2f
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_2f} :catch_32
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2c .. :try_end_2f} :catch_53
    .catchall {:try_start_2c .. :try_end_2f} :catchall_50

    .line 912
    :goto_2f
    add-int/lit8 v3, v3, 0x1

    goto :goto_22

    .line 917
    :catch_32
    move-exception v1

    .line 918
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_33
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyResponseVersionFromNetwork exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 919
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 918
    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 925
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_50
    move-exception v5

    monitor-exit v6
    :try_end_52
    .catchall {:try_start_33 .. :try_end_52} :catchall_50

    throw v5

    .line 920
    .restart local v0    # "N":I
    .restart local v3    # "i":I
    .restart local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catch_53
    move-exception v2

    .line 921
    .local v2, "ex":Ljava/lang/NoSuchMethodError;
    :try_start_54
    const-string v5, "OTAService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "notifyResponseVersionFromNetwork exception:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/lang/NoSuchMethodError;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2f

    .line 924
    .end local v2    # "ex":Ljava/lang/NoSuchMethodError;
    .end local v4    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :cond_71
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 925
    monitor-exit v6
    :try_end_77
    .catchall {:try_start_54 .. :try_end_77} :catchall_50

    .line 926
    return-void
.end method

.method public notifyInfo(I)V
    .registers 10
    .param p1, "info"    # I

    .prologue
    .line 577
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 578
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-eqz v4, :cond_12

    .line 579
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_2f

    .line 580
    :cond_12
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not notifyInfo as silence: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 598
    :goto_2e
    return-void

    .line 583
    :cond_2f
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 585
    :try_start_4a
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 586
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v0, :cond_82

    .line 587
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 588
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_5b
    .catchall {:try_start_4a .. :try_end_5b} :catchall_7f

    .line 590
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_5b
    invoke-interface {v3, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onInfo(I)V
    :try_end_5e
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_5e} :catch_61
    .catchall {:try_start_5b .. :try_end_5e} :catchall_7f

    .line 586
    :goto_5e
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 591
    :catch_61
    move-exception v1

    .line 592
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_62
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyInfoexception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5e

    .line 596
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_7f
    move-exception v4

    monitor-exit v5
    :try_end_81
    .catchall {:try_start_62 .. :try_end_81} :catchall_7f

    throw v4

    .line 595
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_82
    :try_start_82
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 596
    monitor-exit v5
    :try_end_88
    .catchall {:try_start_82 .. :try_end_88} :catchall_7f

    goto :goto_2e
.end method

.method notifyPushVersionInfo(Lcom/qinggan/ota/OTAPushInfo;)V
    .registers 10
    .param p1, "info"    # Lcom/qinggan/ota/OTAPushInfo;

    .prologue
    .line 521
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-nez v4, :cond_8

    if-nez p1, :cond_9

    .line 545
    :cond_8
    :goto_8
    return-void

    .line 524
    :cond_9
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyPushVersionInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lcom/qinggan/ota/OTAPushInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 525
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_31

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 526
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-nez v4, :cond_37

    .line 527
    :cond_31
    iput-object p1, p0, Lcom/qinggan/otaservice/OTAService;->mCachedPushInfo:Lcom/qinggan/ota/OTAPushInfo;

    .line 528
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qinggan/otaservice/OTAService;->mPendingNotifyNewVersion:Z

    goto :goto_8

    .line 531
    :cond_37
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 532
    :try_start_3a
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 533
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_41
    if-ge v2, v0, :cond_72

    .line 534
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 535
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_4b
    .catchall {:try_start_3a .. :try_end_4b} :catchall_6f

    .line 537
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_4b
    invoke-interface {v3, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onPushVersionInfo(Lcom/qinggan/ota/OTAPushInfo;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_4b .. :try_end_4e} :catch_51
    .catchall {:try_start_4b .. :try_end_4e} :catchall_6f

    .line 533
    :goto_4e
    add-int/lit8 v2, v2, 0x1

    goto :goto_41

    .line 538
    :catch_51
    move-exception v1

    .line 539
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_52
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyPushVersionInfo exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 540
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 539
    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4e

    .line 544
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_6f
    move-exception v4

    monitor-exit v5
    :try_end_71
    .catchall {:try_start_52 .. :try_end_71} :catchall_6f

    throw v4

    .line 543
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_72
    :try_start_72
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 544
    monitor-exit v5
    :try_end_78
    .catchall {:try_start_72 .. :try_end_78} :catchall_6f

    goto :goto_8
.end method

.method notifyResponseVersionFromLocal(Lcom/qinggan/ota/OTAVersion;)V
    .registers 10
    .param p1, "version"    # Lcom/qinggan/ota/OTAVersion;

    .prologue
    .line 414
    if-eqz p1, :cond_5

    .line 415
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/OTAService;->getDstVersion(Lcom/qinggan/ota/OTAVersion;)V

    .line 416
    :cond_5
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 417
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-nez v4, :cond_12

    .line 436
    :cond_11
    :goto_11
    return-void

    .line 420
    :cond_12
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyResponseVersionFromLocal: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 421
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 422
    :try_start_2d
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 423
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_34
    if-ge v2, v0, :cond_65

    .line 424
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 425
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_62

    .line 427
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_3e
    invoke-interface {v3, p1}, Lcom/qinggan/ota/IOTAServiceListener;->onResponseVersionFromLocal(Lcom/qinggan/ota/OTAVersion;)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_41} :catch_44
    .catchall {:try_start_3e .. :try_end_41} :catchall_62

    .line 423
    :goto_41
    add-int/lit8 v2, v2, 0x1

    goto :goto_34

    .line 428
    :catch_44
    move-exception v1

    .line 429
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_45
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyResponseVersionFromLocal exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 431
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 429
    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_41

    .line 435
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_62
    move-exception v4

    monitor-exit v5
    :try_end_64
    .catchall {:try_start_45 .. :try_end_64} :catchall_62

    throw v4

    .line 434
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_65
    :try_start_65
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 435
    monitor-exit v5
    :try_end_6b
    .catchall {:try_start_65 .. :try_end_6b} :catchall_62

    goto :goto_11
.end method

.method notifyResponseVersionFromNetwork(Lcom/qinggan/ota/OTAFullPkg;Ljava/util/List;JJI)V
    .registers 23
    .param p1, "fullPkg"    # Lcom/qinggan/ota/OTAFullPkg;
    .param p3, "size"    # J
    .param p5, "sendTime"    # J
    .param p7, "sourceType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/ota/OTAFullPkg;",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/ota/OTAPatchPkg;",
            ">;JJI)V"
        }
    .end annotation

    .prologue
    .line 440
    .local p2, "patchPkgList":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/ota/OTAPatchPkg;>;"
    if-eqz p2, :cond_71

    invoke-interface/range {p2 .. p2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_71

    .line 441
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qinggan/ota/OTAPatchPkg;

    iget-object v4, v4, Lcom/qinggan/ota/OTAPatchPkg;->version:Lcom/qinggan/ota/OTAVersion;

    invoke-direct {p0, v4}, Lcom/qinggan/otaservice/OTAService;->getDstVersion(Lcom/qinggan/ota/OTAVersion;)V

    .line 446
    :cond_1b
    :goto_1b
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyResponseVersionFromNetwork: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-wide/from16 v0, p3

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 448
    iget-object v13, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v13

    .line 449
    :try_start_50
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v2

    .line 450
    .local v2, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_57
    if-ge v12, v2, :cond_9c

    .line 451
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 452
    invoke-virtual {v4, v12}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_61
    .catchall {:try_start_50 .. :try_end_61} :catchall_99

    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move/from16 v10, p7

    .line 454
    :try_start_6b
    invoke-interface/range {v3 .. v10}, Lcom/qinggan/ota/IOTAServiceListener;->onResponseVersionFromNetwork(Lcom/qinggan/ota/OTAFullPkg;Ljava/util/List;JJI)V
    :try_end_6e
    .catch Landroid/os/RemoteException; {:try_start_6b .. :try_end_6e} :catch_7b
    .catchall {:try_start_6b .. :try_end_6e} :catchall_99

    .line 450
    :goto_6e
    add-int/lit8 v12, v12, 0x1

    goto :goto_57

    .line 442
    .end local v2    # "N":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    .end local v12    # "i":I
    :cond_71
    if-eqz p1, :cond_1b

    .line 443
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/qinggan/ota/OTAFullPkg;->version:Lcom/qinggan/ota/OTAVersion;

    invoke-direct {p0, v4}, Lcom/qinggan/otaservice/OTAService;->getDstVersion(Lcom/qinggan/ota/OTAVersion;)V

    goto :goto_1b

    .line 456
    .restart local v2    # "N":I
    .restart local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    .restart local v12    # "i":I
    :catch_7b
    move-exception v11

    .line 457
    .local v11, "e":Landroid/os/RemoteException;
    :try_start_7c
    const-string v4, "OTAService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "notifyResponseVersionFromNetwork exception:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 458
    invoke-virtual {v11}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 457
    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6e

    .line 462
    .end local v2    # "N":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    .end local v11    # "e":Landroid/os/RemoteException;
    .end local v12    # "i":I
    :catchall_99
    move-exception v4

    monitor-exit v13
    :try_end_9b
    .catchall {:try_start_7c .. :try_end_9b} :catchall_99

    throw v4

    .line 461
    .restart local v2    # "N":I
    .restart local v12    # "i":I
    :cond_9c
    :try_start_9c
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 462
    monitor-exit v13
    :try_end_a2
    .catchall {:try_start_9c .. :try_end_a2} :catchall_99

    .line 463
    return-void
.end method

.method notifyUpgradeProgress(II)V
    .registers 11
    .param p1, "current"    # I
    .param p2, "total"    # I

    .prologue
    .line 499
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v4, :cond_12

    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 500
    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v4

    if-eqz v4, :cond_12

    .line 501
    invoke-virtual {p0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    if-eqz v4, :cond_13

    .line 518
    :cond_12
    :goto_12
    return-void

    .line 504
    :cond_13
    iget-object v5, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 505
    :try_start_16
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 506
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1d
    if-ge v2, v0, :cond_4e

    .line 507
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 508
    invoke-virtual {v4, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/qinggan/ota/IOTAServiceListener;
    :try_end_27
    .catchall {:try_start_16 .. :try_end_27} :catchall_4b

    .line 510
    .local v3, "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :try_start_27
    invoke-interface {v3, p1, p2}, Lcom/qinggan/ota/IOTAServiceListener;->onUpgradeProgress(II)V
    :try_end_2a
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_2a} :catch_2d
    .catchall {:try_start_27 .. :try_end_2a} :catchall_4b

    .line 506
    :goto_2a
    add-int/lit8 v2, v2, 0x1

    goto :goto_1d

    .line 511
    :catch_2d
    move-exception v1

    .line 512
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2e
    const-string v4, "OTAService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "notifyUpgradeProgress exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 513
    invoke-virtual {v1}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 512
    invoke-static {v4, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2a

    .line 517
    .end local v0    # "N":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    .end local v3    # "listener":Lcom/qinggan/ota/IOTAServiceListener;
    :catchall_4b
    move-exception v4

    monitor-exit v5
    :try_end_4d
    .catchall {:try_start_2e .. :try_end_4d} :catchall_4b

    throw v4

    .line 516
    .restart local v0    # "N":I
    .restart local v2    # "i":I
    :cond_4e
    :try_start_4e
    iget-object v4, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v4}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 517
    monitor-exit v5
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_4b

    goto :goto_12
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .registers 3
    .param p1, "arg0"    # Landroid/content/Intent;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mBinder:Lcom/qinggan/ota/IOTAService$Stub;

    return-object v0
.end method

.method public onCreate()V
    .registers 4

    .prologue
    .line 243
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 244
    const-string v1, "OTAService"

    const-string v2, "onCreate"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v1, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    iput-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mTBReceiver:Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;

    .line 249
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 250
    .local v0, "intentfil":Landroid/content/IntentFilter;
    const-string v1, "hmiagent.update.req"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 251
    const-string v1, "hmiagent.install.update"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 252
    const-string v1, "ota.debug"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 253
    const-string v1, "ota.setap"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 254
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mTBReceiver:Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/qinggan/otaservice/OTAService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 255
    new-instance v1, Landroid/os/RemoteCallbackList;

    invoke-direct {v1}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 256
    new-instance v1, Lcom/qinggan/otaservice/OTAService$2;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/OTAService$2;-><init>(Lcom/qinggan/otaservice/OTAService;)V

    invoke-static {p0, v1}, Lcom/qinggan/carsignal/CarSignalManager;->getInstance(Landroid/content/Context;Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;)Lcom/qinggan/carsignal/CarSignalManager;

    move-result-object v1

    iput-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 275
    return-void
.end method

.method public onDestroy()V
    .registers 3

    .prologue
    .line 350
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 351
    const-string v0, "OTAService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    if-eqz v0, :cond_16

    .line 353
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 354
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mCallbackList:Landroid/os/RemoteCallbackList;

    .line 357
    :cond_16
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mTBReceiver:Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;

    if-eqz v0, :cond_1f

    .line 358
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mTBReceiver:Lcom/qinggan/otaservice/OTAService$TestBroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/OTAService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 360
    :cond_1f
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .registers 8
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 364
    if-eqz p1, :cond_31

    .line 365
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 366
    .local v0, "action":Ljava/lang/String;
    if-eqz v0, :cond_31

    .line 367
    const-string v1, "OTAService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStartCommand: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 368
    const-string v1, "com.qinggan.otaservice.action.UNMOUNT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 369
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    if-eqz v1, :cond_31

    .line 370
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/NetUpgrade;->handleUnmount()V

    .line 379
    .end local v0    # "action":Ljava/lang/String;
    :cond_31
    :goto_31
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v1

    return v1

    .line 372
    .restart local v0    # "action":Ljava/lang/String;
    :cond_36
    const-string v1, "com.qinggan.otaservice.action.SHUTDOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 373
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    if-eqz v1, :cond_31

    .line 374
    iget-object v1, p0, Lcom/qinggan/otaservice/OTAService;->mNetUpgrade:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/NetUpgrade;->disconnectFd()V

    goto :goto_31
.end method

.method public setSilence(Z)V
    .registers 4
    .param p1, "silence"    # Z

    .prologue
    .line 883
    iget-object v0, p0, Lcom/qinggan/otaservice/OTAService;->mSilence:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 884
    const-string v0, "ota"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "silence"

    .line 885
    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 886
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 887
    return-void
.end method

.method public declared-synchronized setState(I)V
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 872
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/qinggan/otaservice/OTAService;->mState:I

    if-eq v0, p1, :cond_c

    .line 873
    iput p1, p0, Lcom/qinggan/otaservice/OTAService;->mState:I

    .line 874
    iget v0, p0, Lcom/qinggan/otaservice/OTAService;->mState:I

    invoke-direct {p0, v0}, Lcom/qinggan/otaservice/OTAService;->notifyUpgradeStateChanged(I)V
    :try_end_c
    .catchall {:try_start_1 .. :try_end_c} :catchall_e

    .line 876
    :cond_c
    monitor-exit p0

    return-void

    .line 872
    :catchall_e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public writeDstVersion()V
    .registers 5

    .prologue
    .line 286
    const-string v0, "OTAService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeDstVersion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    const-string v0, "ota"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dst_mpu_version"

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    .line 290
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "dst_mcu_version"

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    .line 292
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "task_sid"

    sget-wide v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 294
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "taskitem_sid"

    sget-wide v2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 296
    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 299
    return-void
.end method
