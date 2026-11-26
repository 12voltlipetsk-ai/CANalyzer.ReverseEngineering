.class public Lcom/qinggan/otaservice/EthernetUpgrade;
.super Ljava/lang/Object;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/EthernetUpgrade$MyIpkUpdateCallback;,
        Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;,
        Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;,
        Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;,
        Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;
    }
.end annotation


# static fields
.field private static final AP_CHANGED_MASK:I = 0xffff

.field private static final AP_STATE_CHANGED:I = 0x1

.field private static final AP_TIMEOUT_CHANGED:I = 0x100

.field private static final AP_WIFI_CHANGED:I = 0x10

.field private static final DOIP_ACTION:Ljava/lang/String; = "com.qingos.doipserver.DoIPService"

.field private static final DOIP_PACKAGE_NAME:Ljava/lang/String; = "com.qingos.doipserver"

.field private static final DOIP_SERVICE_NAME:Ljava/lang/String; = "qg.doip_service"

.field private static final OTA_AP_WIFI_ENV_STATE:Ljava/lang/String; = "apenv"

.field private static final PROGRAM_DEPENDENCES_RESP_ERROR:I = 0x1

.field private static final PROGRAM_DEPENDENCES_RESP_HARDWARE_ERROR:I = 0x2

.field private static final PROGRAM_DEPENDENCES_RESP_NO_ERROR:I = 0x0

.field private static final PROGRAM_DEPENDENCES_RESP_RID:I = 0xff01

.field private static final PROGRAM_DEPENDENCES_RESP_SOFTWARE_ERROR:I = 0x3

.field private static final PROGRAM_INSTALL_RESP_NOT_STARTED:I = 0x1

.field private static final PROGRAM_INSTALL_RESP_RID:I = 0xfd08

.field private static final PROGRAM_INSTALL_RESP_STARTED:I = 0x0

.field private static final ROUTINE_CONTROL_RESP_SID:I = 0x71

.field private static final ROUTINE_CONTROL_RESP_SUNFUNC:I = 0x1

.field private static final TAG:Ljava/lang/String; = "EthernetUpgrade"

.field private static final UPDATE_TYPE_DEFAULT:I = 0x0

.field private static final UPDATE_TYPE_MCU:I = 0x2

.field private static final UPDATE_TYPE_METER:I = 0x3

.field private static final UPDATE_TYPE_MPU:I = 0x1

.field private static mIsConnected:Z


# instance fields
.field private hasUboot:Z

.field private mCM:Landroid/net/ConnectivityManager;

.field private mCachedVersion:Lcom/qinggan/ota/OTAVersion;

.field private mCanBusInitListener:Lcom/qinggan/common/OnInitListener;

.field private mCanBusListener:Lcom/qinggan/canbus/CanBusListener;

.field private mCanBusManager:Lcom/qinggan/canbus/CanBusManager;

.field private mCheckUpgradeDependencesThread:Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;

.field private mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;

.field mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mDoIPServerListener:Lcom/qinggan/doip/IDoIPListener$Stub;

.field private mDoIPService:Lcom/qinggan/system/IDoIPService;

.field private mIpkManager:Lcom/qinggan/ipksync/IpkUpdateManager;

.field private mIsErrorNotified:Z

.field private final mLock:Ljava/lang/Object;

.field private mOTAService:Lcom/qinggan/otaservice/OTAService;

.field private mObtainDoIPServerRunnable:Ljava/lang/Runnable;

.field private mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;

.field private mTboxVehicleMode:I

.field private mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 69
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z

    return-void
.end method

.method public constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 4
    .param p1, "service"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    const/4 v1, 0x0

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;

    .line 90
    iput-boolean v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->hasUboot:Z

    .line 92
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 93
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 94
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 95
    iput-boolean v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsErrorNotified:Z

    .line 96
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mLock:Ljava/lang/Object;

    .line 100
    const/4 v0, -0x1

    iput v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mTboxVehicleMode:I

    .line 138
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$1;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$1;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPServerListener:Lcom/qinggan/doip/IDoIPListener$Stub;

    .line 171
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$2;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$2;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mObtainDoIPServerRunnable:Ljava/lang/Runnable;

    .line 575
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$3;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$3;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 766
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$5;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$5;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusListener:Lcom/qinggan/canbus/CanBusListener;

    .line 776
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$6;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$6;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusInitListener:Lcom/qinggan/common/OnInitListener;

    .line 110
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    .line 111
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    .line 113
    invoke-virtual {p1}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 114
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->initCanBusManager()V

    .line 115
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->checkOTAMode()V

    .line 116
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->connectDoIPService()V

    .line 118
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/EthernetUpgrade;I)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/OTAService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mUpgradePercentThreadFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->startUpgradePercentUpdate()V

    return-void
.end method

.method static synthetic access$1300(Lcom/qinggan/otaservice/EthernetUpgrade;I)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/EthernetUpgrade;->reboot(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->connectDoIPService()V

    return-void
.end method

.method static synthetic access$1500(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ipksync/IpkUpdateManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIpkManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qinggan/otaservice/EthernetUpgrade;)Landroid/net/ConnectivityManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->checkOTAMode()V

    return-void
.end method

.method static synthetic access$1800(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/canbus/CanBusManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/canbus/CanBusListener;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusListener:Lcom/qinggan/canbus/CanBusListener;

    return-object v0
.end method

.method static synthetic access$200()Z
    .registers 1

    .prologue
    .line 63
    sget-boolean v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 63
    sput-boolean p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z

    return p0
.end method

.method static synthetic access$302(Lcom/qinggan/otaservice/EthernetUpgrade;Lcom/qinggan/system/IDoIPService;)Lcom/qinggan/system/IDoIPService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;
    .param p1, "x1"    # Lcom/qinggan/system/IDoIPService;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;

    return-object p1
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->registerDoIPListener()V

    return-void
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/EthernetUpgrade;I)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/EthernetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->hasUboot:Z

    return v0
.end method

.method static synthetic access$602(Lcom/qinggan/otaservice/EthernetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->hasUboot:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qinggan/otaservice/EthernetUpgrade;)Lcom/qinggan/ota/OTAVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;

    return-object v0
.end method

.method static synthetic access$802(Lcom/qinggan/otaservice/EthernetUpgrade;Lcom/qinggan/ota/OTAVersion;)Lcom/qinggan/ota/OTAVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;
    .param p1, "x1"    # Lcom/qinggan/ota/OTAVersion;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;

    return-object p1
.end method

.method static synthetic access$900(Lcom/qinggan/otaservice/EthernetUpgrade;)Ljava/util/concurrent/atomic/AtomicInteger;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method private checkOTAMode()V
    .registers 4

    .prologue
    .line 877
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkOTAMode ota mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->getTboxVehicleMode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 878
    const/4 v0, 0x5

    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->getTboxVehicleMode()I

    move-result v1

    if-ne v0, v1, :cond_2f

    .line 879
    const-string v0, "vendor.vehicle.ota.mode"

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/qinggan/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 880
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->setupHotport(Z)V

    .line 885
    :goto_2e
    return-void

    .line 882
    :cond_2f
    const-string v0, "vendor.vehicle.ota.mode"

    const-string v1, "0"

    invoke-static {v0, v1}, Lcom/qinggan/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 883
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->setupHotport(Z)V

    goto :goto_2e
.end method

.method private connectDoIPService()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 121
    const-string v2, "qg.doip_service"

    invoke-static {v2}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 122
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_19

    .line 123
    sput-boolean v3, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z

    .line 124
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->startDoIPServer()V

    .line 125
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mObtainDoIPServerRunnable:Ljava/lang/Runnable;

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    .line 136
    :goto_18
    return-void

    .line 127
    :cond_19
    invoke-static {v0}, Lcom/qinggan/system/IDoIPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/system/IDoIPService;

    move-result-object v2

    iput-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;

    .line 128
    const/4 v2, 0x1

    sput-boolean v2, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z

    .line 130
    :try_start_22
    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_28} :catch_2c

    .line 134
    :goto_28
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->registerDoIPListener()V

    goto :goto_18

    .line 131
    :catch_2c
    move-exception v1

    .line 132
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_28
.end method

.method private doLocalCheck(Z)V
    .registers 4
    .param p1, "needUpgrade"    # Z

    .prologue
    .line 240
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 241
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckUpgradeDependencesThread:Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;

    .line 242
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckUpgradeDependencesThread:Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/EthernetUpgrade$CheckUpgradeDependencesThread;->start()V

    .line 243
    return-void
.end method

.method private doLocalUpgrade()V
    .registers 5

    .prologue
    const/4 v3, 0x0

    .line 396
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doLocalUpgrade isDualSystem = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    sget-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v0, :cond_2d

    .line 398
    iput-boolean v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIsErrorNotified:Z

    .line 399
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/EthernetUpgrade$DualUpgradeThread;->start()V

    .line 400
    invoke-direct {p0, v3}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    .line 405
    :goto_2c
    return-void

    .line 402
    :cond_2d
    const-string v0, "EthernetUpgrade"

    const-string v1, "NOT Dual system ..."

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    goto :goto_2c
.end method

.method private getTboxVehicleMode()I
    .registers 3

    .prologue
    .line 800
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;

    if-eqz v0, :cond_d

    .line 801
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;

    sget-object v1, Lcom/qinggan/canbus/VehicleState;->TBOX_VEHICLE_MODE:Lcom/qinggan/canbus/VehicleState;

    invoke-virtual {v0, v1}, Lcom/qinggan/canbus/CanBusManager;->getVehicleState(Lcom/qinggan/canbus/VehicleState;)I

    move-result v0

    .line 803
    :goto_c
    return v0

    :cond_d
    const/4 v0, -0x1

    goto :goto_c
.end method

.method private initCanBusManager()V
    .registers 3

    .prologue
    .line 792
    const-string v0, "EthernetUpgrade"

    const-string v1, "initCanBusManager"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;

    if-nez v0, :cond_20

    .line 794
    const-string v0, "EthernetUpgrade"

    const-string v1, "initCanBusManager getInstance"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 795
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusInitListener:Lcom/qinggan/common/OnInitListener;

    invoke-static {v0, v1}, Lcom/qinggan/canbus/CanBusManager;->getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/canbus/CanBusManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCanBusManager:Lcom/qinggan/canbus/CanBusManager;

    .line 797
    :cond_20
    return-void
.end method

.method private monitorEthernetState()V
    .registers 5

    .prologue
    .line 713
    const-string v1, "EthernetUpgrade"

    const-string v2, "monitorEthernetState"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 714
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    iput-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;

    .line 715
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;

    if-eqz v1, :cond_45

    .line 716
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_44

    .line 717
    new-instance v1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    const/16 v2, 0xc

    .line 718
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x3

    .line 719
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 720
    invoke-virtual {v1, v2}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 721
    .local v0, "mNRB":Landroid/net/NetworkRequest$Builder;
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCM:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v2

    new-instance v3, Lcom/qinggan/otaservice/EthernetUpgrade$4;

    invoke-direct {v3, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$4;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 764
    .end local v0    # "mNRB":Landroid/net/NetworkRequest$Builder;
    :cond_44
    :goto_44
    return-void

    .line 762
    :cond_45
    const-string v1, "EthernetUpgrade"

    const-string v2, "ConnectivityManager is null"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_44
.end method

.method private processMCUStartInstall()Z
    .registers 10

    .prologue
    const/4 v5, 0x0

    .line 621
    const-string v6, "EthernetUpgrade"

    const-string v7, "processMCUStartInstall()"

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    new-instance v0, Ljava/io/File;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 623
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/update/update.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 624
    .local v0, "file":Ljava/io/File;
    if-eqz v0, :cond_e1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_e1

    .line 625
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/data/media/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 626
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/update/update-mcu.zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 627
    .local v1, "newName":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 628
    const-string v2, "MCU"

    .line 629
    .local v2, "pre":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 630
    .local v4, "sMcu":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":#"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 632
    .local v3, "recoveryCmd":Ljava/lang/String;
    const-string v6, ":"

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_93

    .line 633
    const-string v6, ":"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 635
    :cond_93
    const-string v6, "usb1/"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#:"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#"

    const-string v8, ""

    .line 636
    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 637
    const-string v6, "#:"

    const-string v7, ""

    invoke-virtual {v3, v6, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "#"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 639
    const-string v6, "EthernetUpgrade"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "processMCUStartInstall() cmd = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    invoke-static {v3}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 641
    const-string v6, "--"

    invoke-static {v6}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 642
    iget-object v6, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v6, v5}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 644
    const/4 v5, 0x1

    .line 648
    .end local v1    # "newName":Ljava/lang/String;
    .end local v2    # "pre":Ljava/lang/String;
    .end local v3    # "recoveryCmd":Ljava/lang/String;
    .end local v4    # "sMcu":Ljava/lang/String;
    :goto_e0
    return v5

    .line 647
    :cond_e1
    const-string v6, "EthernetUpgrade"

    const-string v7, "processMCUStartInstall() update.zip not found"

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e0
.end method

.method private processMeterStartInstall()Z
    .registers 7

    .prologue
    .line 591
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/update/update.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 592
    .local v1, "file":Ljava/io/File;
    if-eqz v1, :cond_72

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_72

    .line 593
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/media/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 594
    .local v0, "baseName":Ljava/lang/String;
    const-string v2, ""

    .line 595
    .local v2, "newName":Ljava/lang/String;
    iget-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    packed-switch v3, :pswitch_data_ae

    .line 610
    :goto_4c
    const-string v3, "EthernetUpgrade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processMeterStartInstall() newName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_72

    .line 613
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 616
    .end local v0    # "baseName":Ljava/lang/String;
    .end local v2    # "newName":Ljava/lang/String;
    :cond_72
    iget-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;

    invoke-direct {v4, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$MyInitListener;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    invoke-static {v3, v4}, Lcom/qinggan/ipksync/IpkUpdateManager;->getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/ipksync/IpkUpdateManager;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mIpkManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    .line 617
    const/4 v3, 0x1

    return v3

    .line 603
    .restart local v0    # "baseName":Ljava/lang/String;
    .restart local v2    # "newName":Ljava/lang/String;
    :pswitch_85
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/update/h97-cluster-update-mcu.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 604
    goto :goto_4c

    .line 606
    :pswitch_99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/update/h97-cluster-update-mpu.zip"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4c

    .line 595
    nop

    :pswitch_data_ae
    .packed-switch 0x1
        :pswitch_99
        :pswitch_85
    .end packed-switch
.end method

.method private reboot(I)V
    .registers 8
    .param p1, "mode"    # I

    .prologue
    .line 653
    const-string v3, "EthernetUpgrade"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "reboot mode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    if-nez p1, :cond_2e

    .line 655
    iget-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 656
    .local v2, "mPM":Landroid/os/PowerManager;
    const-string v3, "ota"

    invoke-virtual {v2, v3}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V

    .line 667
    .end local v2    # "mPM":Landroid/os/PowerManager;
    :cond_2d
    :goto_2d
    return-void

    .line 657
    :cond_2e
    const/4 v3, 0x1

    if-ne p1, v3, :cond_2d

    .line 658
    const-string v3, "EthernetUpgrade"

    const-string v4, "reboot power"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 660
    :try_start_38
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    const-string v4, "reboot power"

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_41
    .catch Ljava/lang/IllegalArgumentException; {:try_start_38 .. :try_end_41} :catch_42
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_41} :catch_4b

    goto :goto_2d

    .line 661
    :catch_42
    move-exception v1

    .line 662
    .local v1, "iae":Ljava/lang/IllegalArgumentException;
    const-string v3, "EthernetUpgrade"

    const-string v4, "reboot power IllegalArgumentException"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d

    .line 663
    .end local v1    # "iae":Ljava/lang/IllegalArgumentException;
    :catch_4b
    move-exception v0

    .line 664
    .local v0, "e":Ljava/io/IOException;
    const-string v3, "EthernetUpgrade"

    const-string v4, "reboot power IOException"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2d
.end method

.method private registerDoIPListener()V
    .registers 5

    .prologue
    .line 203
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;

    if-eqz v1, :cond_b

    .line 205
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;

    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPServerListener:Lcom/qinggan/doip/IDoIPListener$Stub;

    invoke-interface {v1, v2}, Lcom/qinggan/system/IDoIPService;->registerListener(Lcom/qinggan/doip/IDoIPListener;)Z
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_c

    .line 210
    :cond_b
    :goto_b
    return-void

    .line 206
    :catch_c
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetUpgrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoIPService RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method private sendDoIPResultByRID(IIII)V
    .registers 9
    .param p1, "sid"    # I
    .param p2, "sub_func"    # I
    .param p3, "rid"    # I
    .param p4, "res"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;

    if-eqz v1, :cond_9

    .line 215
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/qinggan/system/IDoIPService;->sendDoIPResultByRID(IIII)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 220
    :cond_9
    :goto_9
    return-void

    .line 216
    :catch_a
    move-exception v0

    .line 217
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "EthernetUpgrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DoIPService RemoteException "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9
.end method

.method private sendProgramDependences(I)V
    .registers 5
    .param p1, "resp"    # I

    .prologue
    .line 337
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 338
    const/16 v0, 0x71

    const/4 v1, 0x1

    const v2, 0xff01

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendDoIPResultByRID(IIII)V

    .line 339
    return-void
.end method

.method private sendProgramInstall(I)V
    .registers 5
    .param p1, "resp"    # I

    .prologue
    .line 482
    const/16 v0, 0x71

    const/4 v1, 0x1

    const v2, 0xfd08

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendDoIPResultByRID(IIII)V

    .line 483
    return-void
.end method

.method private startDoIPServer()V
    .registers 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 166
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.qingos.doipserver.DoIPService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 167
    const-string v1, "com.qingos.doipserver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 168
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 169
    return-void
.end method

.method private startUpgradeFromEthernet()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 381
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 382
    const-string v1, "EthernetUpgrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 383
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    .line 384
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    const-string v2, "ota"

    invoke-virtual {v1, v2, v0}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silence"

    .line 385
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 386
    const/4 v0, -0x6

    .line 392
    :goto_3c
    return v0

    .line 388
    :cond_3d
    const/4 v0, -0x2

    goto :goto_3c

    .line 391
    :cond_3f
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->doLocalUpgrade()V

    goto :goto_3c
.end method

.method private startUpgradePercentUpdate()V
    .registers 2

    .prologue
    .line 486
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 487
    new-instance v0, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;-><init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/EthernetUpgrade$UpgradePercentUpdateThread;->start()V

    .line 488
    return-void
.end method


# virtual methods
.method public setupHotport(Z)V
    .registers 19
    .param p1, "enabled"    # Z

    .prologue
    .line 807
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v12}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    .line 808
    .local v3, "context":Landroid/content/Context;
    const-string v12, "apenv"

    const/4 v13, 0x0

    invoke-virtual {v3, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v11

    .line 809
    .local v11, "sp":Landroid/content/SharedPreferences;
    const-string v12, "apenv"

    const/4 v13, 0x0

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    .line 810
    .local v10, "originState":I
    const-string v12, "EthernetUpgrade"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupHotport enabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ", originState = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 811
    if-eqz p1, :cond_15d

    .line 812
    const/4 v4, 0x0

    .line 813
    .local v4, "currentState":I
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "soft_ap_timeout_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 814
    .local v1, "ap_timeout_enabled":I
    const-string v12, "EthernetUpgrade"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupHotport isApTimeoutEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    if-eqz v1, :cond_72

    .line 817
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "soft_ap_timeout_enabled"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 818
    or-int/lit16 v4, v4, 0x100

    .line 821
    :cond_72
    const-string v12, "EthernetUpgrade"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupHotport isWifiEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v14}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v12, :cond_ac

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v12}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v12

    if-eqz v12, :cond_ac

    .line 823
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 824
    or-int/lit8 v4, v4, 0x10

    .line 827
    :cond_ac
    :try_start_ac
    const-class v12, Landroid/net/wifi/WifiManager;

    const-string v13, "isWifiApEnabled"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 828
    .local v8, "isWifiApEnabled":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v8, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    .line 829
    .local v7, "isApEnabled":Z
    const-string v12, "EthernetUpgrade"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupHotport isApEnabled = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 833
    if-nez v7, :cond_119

    .line 834
    const-class v12, Landroid/net/wifi/WifiManager;

    const-string v13, "getWifiApConfiguration"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 835
    .local v6, "getConfigMethod":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v6, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    .line 837
    .local v2, "conf":Landroid/net/wifi/WifiConfiguration;
    const-class v12, Landroid/net/wifi/WifiManager;

    const-string v13, "startSoftAp"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Class;

    const/4 v15, 0x0

    const-class v16, Landroid/net/wifi/WifiConfiguration;

    aput-object v16, v14, v15

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 839
    .local v9, "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v2, v13, v14

    invoke-virtual {v9, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_117
    .catch Ljava/lang/Exception; {:try_start_ac .. :try_end_117} :catch_143

    .line 840
    or-int/lit8 v4, v4, 0x1

    .line 846
    .end local v2    # "conf":Landroid/net/wifi/WifiConfiguration;
    .end local v6    # "getConfigMethod":Ljava/lang/reflect/Method;
    .end local v7    # "isApEnabled":Z
    .end local v8    # "isWifiApEnabled":Ljava/lang/reflect/Method;
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :cond_119
    :goto_119
    const-string v12, "EthernetUpgrade"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "setupHotport finally currentState = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 847
    const v12, 0xffff

    and-int/2addr v12, v10

    if-eqz v12, :cond_14f

    .line 848
    const-string v12, "EthernetUpgrade"

    const-string v13, "ota ap env has changed before"

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 874
    .end local v1    # "ap_timeout_enabled":I
    .end local v4    # "currentState":I
    :goto_142
    return-void

    .line 842
    .restart local v1    # "ap_timeout_enabled":I
    .restart local v4    # "currentState":I
    :catch_143
    move-exception v5

    .line 843
    .local v5, "e":Ljava/lang/Exception;
    const-string v12, "EthernetUpgrade"

    const-string v13, "startSoftAp exception"

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_119

    .line 850
    .end local v5    # "e":Ljava/lang/Exception;
    :cond_14f
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "apenv"

    invoke-interface {v12, v13, v4}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_142

    .line 854
    .end local v1    # "ap_timeout_enabled":I
    .end local v4    # "currentState":I
    :cond_15d
    and-int/lit8 v12, v10, 0x1

    if-eqz v12, :cond_17d

    .line 855
    :try_start_161
    const-class v12, Landroid/net/wifi/WifiManager;

    const-string v13, "stopSoftAp"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Class;

    invoke-virtual {v12, v13, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    .line 856
    .restart local v9    # "method":Ljava/lang/reflect/Method;
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Object;

    invoke-virtual {v9, v12, v13}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 857
    const-string v12, "EthernetUpgrade"

    const-string v13, "reset soft ap"

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 859
    .end local v9    # "method":Ljava/lang/reflect/Method;
    :cond_17d
    and-int/lit16 v12, v10, 0x100

    if-eqz v12, :cond_192

    .line 860
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "soft_ap_timeout_enabled"

    const/4 v14, 0x1

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 861
    const-string v12, "EthernetUpgrade"

    const-string v13, "reset soft ap timeout"

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    :cond_192
    and-int/lit8 v12, v10, 0x10

    if-eqz v12, :cond_1a5

    .line 864
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/otaservice/EthernetUpgrade;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v13, 0x1

    invoke-virtual {v12, v13}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 865
    const-string v12, "EthernetUpgrade"

    const-string v13, "reset wifi enable"

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1a5
    .catch Ljava/lang/Exception; {:try_start_161 .. :try_end_1a5} :catch_1b4
    .catchall {:try_start_161 .. :try_end_1a5} :catchall_1cf

    .line 871
    :cond_1a5
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "apenv"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto :goto_142

    .line 867
    :catch_1b4
    move-exception v5

    .line 868
    .restart local v5    # "e":Ljava/lang/Exception;
    :try_start_1b5
    const-string v12, "EthernetUpgrade"

    const-string v13, "stopSoftAp exception"

    invoke-static {v12, v13}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1bf
    .catchall {:try_start_1b5 .. :try_end_1bf} :catchall_1cf

    .line 871
    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    const-string v13, "apenv"

    const/4 v14, 0x0

    invoke-interface {v12, v13, v14}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v12

    invoke-interface {v12}, Landroid/content/SharedPreferences$Editor;->apply()V

    goto/16 :goto_142

    .end local v5    # "e":Ljava/lang/Exception;
    :catchall_1cf
    move-exception v12

    invoke-interface {v11}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    const-string v14, "apenv"

    const/4 v15, 0x0

    invoke-interface {v13, v14, v15}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v13

    invoke-interface {v13}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 872
    throw v12
.end method

.method public startCheckUpgradeDependences()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 225
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v1

    if-eqz v1, :cond_3f

    .line 226
    const-string v1, "EthernetUpgrade"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 227
    const/4 v1, 0x1

    invoke-direct {p0, v1}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramDependences(I)V

    .line 228
    iget-object v1, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    const-string v2, "ota"

    invoke-virtual {v1, v2, v0}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silence"

    .line 229
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3d

    .line 230
    const/4 v0, -0x6

    .line 236
    :goto_3c
    return v0

    .line 232
    :cond_3d
    const/4 v0, -0x2

    goto :goto_3c

    .line 235
    :cond_3f
    invoke-direct {p0, v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->doLocalCheck(Z)V

    goto :goto_3c
.end method

.method public startInstall()V
    .registers 5

    .prologue
    const/4 v3, 0x1

    .line 342
    const-string v0, "EthernetUpgrade"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startInstall mDependencsChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pkgType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mDependencsChecked:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_3b

    .line 344
    invoke-direct {p0, v3}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    .line 376
    :goto_3a
    return-void

    .line 348
    :cond_3b
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mCheckedPkgType:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    packed-switch v0, :pswitch_data_5e

    .line 373
    invoke-direct {p0, v3}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    goto :goto_3a

    .line 365
    :pswitch_48
    invoke-direct {p0}, Lcom/qinggan/otaservice/EthernetUpgrade;->processMeterStartInstall()Z

    move-result v0

    if-eqz v0, :cond_59

    .line 366
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade;->mOTAService:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 367
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    goto :goto_3a

    .line 369
    :cond_59
    invoke-direct {p0, v3}, Lcom/qinggan/otaservice/EthernetUpgrade;->sendProgramInstall(I)V

    goto :goto_3a

    .line 348
    nop

    :pswitch_data_5e
    .packed-switch 0x1
        :pswitch_48
        :pswitch_48
        :pswitch_48
    .end packed-switch
.end method

.method public updateResetEcuState(Z)V
    .registers 4
    .param p1, "canreset"    # Z

    .prologue
    .line 888
    const-string v1, "vendor.vehicle.ota.can.reset"

    if-eqz p1, :cond_a

    const-string v0, "1"

    :goto_6
    invoke-static {v1, v0}, Lcom/qinggan/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 889
    return-void

    .line 888
    :cond_a
    const-string v0, "0"

    goto :goto_6
.end method
