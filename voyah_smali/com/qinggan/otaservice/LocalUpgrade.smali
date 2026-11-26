.class public Lcom/qinggan/otaservice/LocalUpgrade;
.super Ljava/lang/Object;
.source "LocalUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;,
        Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;,
        Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCachedVersion:Lcom/qinggan/ota/OTAVersion;

.field private mCheckLocalThread:Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;

.field private mHandler:Landroid/os/Handler;

.field private mIsErrorNotified:Z

.field private volatile mLocalPercentThreadFlag:Z

.field private final mLocalUpLock:Ljava/lang/Object;

.field private mNeedCheckLocal:Z

.field private mService:Lcom/qinggan/otaservice/OTAService;

.field private mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const-class v0, Lcom/qinggan/otaservice/LocalUpgrade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 4
    .param p1, "service"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z

    .line 25
    iput-boolean v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z

    .line 26
    iput-boolean v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;

    .line 29
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mLocalUpLock:Ljava/lang/Object;

    .line 34
    iput-object p1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 35
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/ota/OTAVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;

    return-object v0
.end method

.method static synthetic access$002(Lcom/qinggan/otaservice/LocalUpgrade;Lcom/qinggan/ota/OTAVersion;)Lcom/qinggan/ota/OTAVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;
    .param p1, "x1"    # Lcom/qinggan/ota/OTAVersion;

    .prologue
    .line 18
    iput-object p1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mCachedVersion:Lcom/qinggan/ota/OTAVersion;

    return-object p1
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/OTAService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/qinggan/otaservice/LocalUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z

    return v0
.end method

.method static synthetic access$202(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mLocalPercentThreadFlag:Z

    return p1
.end method

.method static synthetic access$300()Ljava/lang/String;
    .registers 1

    .prologue
    .line 18
    sget-object v0, Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/LocalUpgrade;)Ljava/lang/Object;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mLocalUpLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/LocalUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/LocalUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z

    return v0
.end method

.method static synthetic access$602(Lcom/qinggan/otaservice/LocalUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z

    return p1
.end method

.method static synthetic access$700(Lcom/qinggan/otaservice/LocalUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/qinggan/otaservice/LocalUpgrade;->startLocalPercentUpdate()V

    return-void
.end method

.method static synthetic access$800(Lcom/qinggan/otaservice/LocalUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/LocalUpgrade;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mSysVersionManager:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    return-object v0
.end method

.method private doLocalCheck(Z)V
    .registers 4
    .param p1, "needUpgrade"    # Z

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 54
    new-instance v0, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;

    invoke-direct {v0, p0, p1}, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;-><init>(Lcom/qinggan/otaservice/LocalUpgrade;Z)V

    iput-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mCheckLocalThread:Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;

    .line 55
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mCheckLocalThread:Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/LocalUpgrade$CheckLocalThread;->start()V

    .line 56
    return-void
.end method

.method private doLocalUpgrade()V
    .registers 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 78
    iget-boolean v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mNeedCheckLocal:Z

    if-eqz v0, :cond_a

    .line 79
    invoke-direct {p0, v3}, Lcom/qinggan/otaservice/LocalUpgrade;->doLocalCheck(Z)V

    .line 89
    :goto_9
    return-void

    .line 82
    :cond_a
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-static {v0, v3, v4, v4}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 83
    sget-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v0, :cond_1e

    .line 84
    iput-boolean v3, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mIsErrorNotified:Z

    .line 85
    new-instance v0, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;-><init>(Lcom/qinggan/otaservice/LocalUpgrade;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/LocalUpgrade$DualUpgradeThread;->start()V

    goto :goto_9

    .line 87
    :cond_1e
    new-instance v0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;

    iget-object v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v4, v3, v2}, Lcom/qinggan/otaservice/common/SingleUpgradeThread;-><init>(Lcom/qinggan/otaservice/OTAService;ZZLcom/qinggan/otaservice/engine/ServerAdapter;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->start()V

    goto :goto_9
.end method

.method private startLocalPercentUpdate()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 74
    new-instance v0, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;-><init>(Lcom/qinggan/otaservice/LocalUpgrade;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/LocalUpgrade$LocalPercentUpdateThread;->start()V

    .line 75
    return-void
.end method


# virtual methods
.method requestCachedVersion()V
    .registers 3

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qinggan/otaservice/LocalUpgrade$1;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/LocalUpgrade$1;-><init>(Lcom/qinggan/otaservice/LocalUpgrade;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method

.method startCheckLocal()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 39
    iget-object v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 40
    sget-object v1, Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iget-object v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const-string v2, "ota"

    invoke-virtual {v1, v2, v0}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silence"

    .line 42
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 43
    const/4 v0, -0x6

    .line 49
    :goto_38
    return v0

    .line 45
    :cond_39
    const/4 v0, -0x2

    goto :goto_38

    .line 48
    :cond_3b
    invoke-direct {p0, v0}, Lcom/qinggan/otaservice/LocalUpgrade;->doLocalCheck(Z)V

    goto :goto_38
.end method

.method startUpgradeFromLocal()I
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 59
    iget-object v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v1

    if-eqz v1, :cond_3b

    .line 60
    sget-object v1, Lcom/qinggan/otaservice/LocalUpgrade;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid State "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v1, p0, Lcom/qinggan/otaservice/LocalUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const-string v2, "ota"

    invoke-virtual {v1, v2, v0}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "silence"

    .line 62
    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_39

    .line 63
    const/4 v0, -0x6

    .line 69
    :goto_38
    return v0

    .line 65
    :cond_39
    const/4 v0, -0x2

    goto :goto_38

    .line 68
    :cond_3b
    invoke-direct {p0}, Lcom/qinggan/otaservice/LocalUpgrade;->doLocalUpgrade()V

    goto :goto_38
.end method
