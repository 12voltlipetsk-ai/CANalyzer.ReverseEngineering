.class public Lcom/qinggan/otaservice/NetUpgrade;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Lcom/qinggan/otaservice/engine/ServerAdapterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;,
        Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;,
        Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final CHECK_ACCOFF_TIMEOUT:I

.field private mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

.field private mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;

.field private mCachedPatchPackage:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedPatchPkgs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/ota/OTAPatchPkg;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedTaskIteSid:J

.field private mCachedTaskSid:J

.field private mCanGetServerVersion:Z

.field private mDescription:Ljava/lang/String;

.field private mDownloadCallback:Lcom/qinggan/otaservice/common/IDownloadCallBack;

.field private mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

.field private mDownloadTotalSize:J

.field private mFinishedCount:I

.field private mFullTotalSize:J

.field private mHandler:Landroid/os/Handler;

.field private mHasFullTypeInList:Z

.field private mInitUpdateLocalVersion:Z

.field private mInstallOTADone:Z

.field private mIsDownloadSdcard:Z

.field private mIsDownloading:Z

.field private mIsUpdating:Z

.field private mNetUtil:Lcom/qinggan/util/NetUtil;

.field private mPatchTotalSize:J

.field private mPercent:I

.field private mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

.field private mPercentThreadFlag:Z

.field private mPowerState:I

.field private mSendTime:J

.field private mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

.field private mServerVersionCode:Ljava/lang/String;

.field private mService:Lcom/qinggan/otaservice/OTAService;

.field private mStartDownloadTime:Ljava/lang/String;

.field private mSystemEventHandler:Lcom/qinggan/system/SystemEventHelper$SystemEventHandler;

.field private mTotalSize:J

.field private mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;

.field private mUpgradeThread:Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;

.field private mUploadResult:Z

.field private mUploadResultPending:Z

.field private mUserCancel:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 49
    const-class v0, Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qinggan/otaservice/OTAService;)V
    .registers 12
    .param p1, "service"    # Lcom/qinggan/otaservice/OTAService;

    .prologue
    const-wide/16 v8, 0x0

    const-wide/16 v6, -0x1

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    const/16 v0, 0x1388

    iput v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->CHECK_ACCOFF_TIMEOUT:I

    .line 52
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z

    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerVersionCode:Ljava/lang/String;

    .line 54
    iput-wide v8, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    .line 55
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDescription:Ljava/lang/String;

    .line 56
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    .line 57
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    .line 59
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    .line 60
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z

    .line 61
    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    .line 62
    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 67
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z

    .line 74
    iput-boolean v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    .line 80
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInitUpdateLocalVersion:Z

    .line 82
    const/4 v0, -0x1

    iput v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I

    .line 86
    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;

    .line 87
    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;

    .line 88
    iput-wide v8, p0, Lcom/qinggan/otaservice/NetUpgrade;->mSendTime:J

    .line 89
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z

    .line 91
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResultPending:Z

    .line 92
    iput-boolean v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResult:Z

    .line 93
    iput-wide v6, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskSid:J

    .line 94
    iput-wide v6, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskIteSid:J

    .line 151
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$2;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$2;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHandler:Landroid/os/Handler;

    .line 159
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$3;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$3;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mSystemEventHandler:Lcom/qinggan/system/SystemEventHelper$SystemEventHandler;

    .line 481
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$7;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$7;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadCallback:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    .line 98
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 99
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0, v3}, Lcom/qinggan/otaservice/OTAService;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 100
    invoke-static {}, Lcom/qinggan/otaservice/engine/DownloadManager;->getInstance()Lcom/qinggan/otaservice/engine/DownloadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    .line 101
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/ServerAdapterFactory;->getAdapter(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    .line 102
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v0, p0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->setListener(Lcom/qinggan/otaservice/engine/ServerAdapterListener;)V

    .line 103
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-static {v0}, Lcom/qinggan/util/NetUtil;->getInstance(Landroid/content/Context;)Lcom/qinggan/util/NetUtil;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mNetUtil:Lcom/qinggan/util/NetUtil;

    .line 104
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mNetUtil:Lcom/qinggan/util/NetUtil;

    new-instance v1, Lcom/qinggan/otaservice/NetUpgrade$1;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/NetUpgrade$1;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    invoke-virtual {v0, v1}, Lcom/qinggan/util/NetUtil;->registerNetworkCallback(Lcom/qinggan/util/NetUtil$NetworkChangeCallback;)V

    .line 144
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_91

    .line 145
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->initUpdateLocalVersion()V

    .line 147
    :cond_91
    new-instance v0, Lcom/qinggan/system/SystemEventHelper;

    invoke-direct {v0, p1}, Lcom/qinggan/system/SystemEventHelper;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mSystemEventHandler:Lcom/qinggan/system/SystemEventHelper$SystemEventHandler;

    .line 148
    invoke-virtual {v0, v1}, Lcom/qinggan/system/SystemEventHelper;->setSystemEventHandler(Lcom/qinggan/system/SystemEventHelper$SystemEventHandler;)V

    .line 149
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResultPending:Z

    return v0
.end method

.method static synthetic access$002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResultPending:Z

    return p1
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResult:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/qinggan/otaservice/NetUpgrade;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->isNetworkConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->clearFromServerPush()V

    return-void
.end method

.method static synthetic access$1300(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/otaservice/common/FullUpgradePkg;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/NetUpgrade;->setFromServerPushFull(Lcom/qinggan/otaservice/common/FullUpgradePkg;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z

    return v0
.end method

.method static synthetic access$1500(Lcom/qinggan/otaservice/NetUpgrade;Ljava/util/List;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/NetUpgrade;->setFromServerPushPatch(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/ota/OTAFullPkg;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;

    return-object v0
.end method

.method static synthetic access$1602(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/ota/OTAFullPkg;)Lcom/qinggan/ota/OTAFullPkg;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Lcom/qinggan/ota/OTAFullPkg;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPkg:Lcom/qinggan/ota/OTAFullPkg;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1702(Lcom/qinggan/otaservice/NetUpgrade;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPkgs:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1800(Lcom/qinggan/otaservice/NetUpgrade;)J
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mSendTime:J

    return-wide v0
.end method

.method static synthetic access$1802(Lcom/qinggan/otaservice/NetUpgrade;J)J
    .registers 4
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # J

    .prologue
    .line 48
    iput-wide p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mSendTime:J

    return-wide p1
.end method

.method static synthetic access$1900(Lcom/qinggan/otaservice/NetUpgrade;)J
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/qinggan/otaservice/NetUpgrade;)J
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskSid:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/qinggan/otaservice/NetUpgrade;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    return v0
.end method

.method static synthetic access$2202(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/qinggan/otaservice/NetUpgrade;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/NetUpgrade;->unzipEnd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/DownloadManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->createDownloadDir()V

    return-void
.end method

.method static synthetic access$2600(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    return v0
.end method

.method static synthetic access$2602(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    return p1
.end method

.method static synthetic access$2700(Lcom/qinggan/otaservice/NetUpgrade;)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I

    return v0
.end method

.method static synthetic access$2702(Lcom/qinggan/otaservice/NetUpgrade;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I

    return p1
.end method

.method static synthetic access$2800(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z

    return v0
.end method

.method static synthetic access$2802(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z

    return p1
.end method

.method static synthetic access$2900(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    return-object v0
.end method

.method static synthetic access$2902(Lcom/qinggan/otaservice/NetUpgrade;Lcom/qinggan/otaservice/engine/SYSVersionInfo;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUpdateBean:Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    return-object p1
.end method

.method static synthetic access$300(Lcom/qinggan/otaservice/NetUpgrade;)J
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskIteSid:J

    return-wide v0
.end method

.method static synthetic access$3002(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z

    return v0
.end method

.method static synthetic access$3102(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z

    return p1
.end method

.method static synthetic access$3200(Lcom/qinggan/otaservice/NetUpgrade;)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I

    return v0
.end method

.method static synthetic access$3202(Lcom/qinggan/otaservice/NetUpgrade;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I

    return p1
.end method

.method static synthetic access$3300(Lcom/qinggan/otaservice/NetUpgrade;)J
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mTotalSize:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/OTAService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    return-object v0
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->initUpdateLocalVersion()V

    return-void
.end method

.method static synthetic access$700(Lcom/qinggan/otaservice/NetUpgrade;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    return v0
.end method

.method static synthetic access$702(Lcom/qinggan/otaservice/NetUpgrade;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    return p1
.end method

.method static synthetic access$800()Ljava/lang/String;
    .registers 1

    .prologue
    .line 48
    sget-object v0, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/qinggan/otaservice/NetUpgrade;)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 48
    iget v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I

    return v0
.end method

.method static synthetic access$902(Lcom/qinggan/otaservice/NetUpgrade;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/NetUpgrade;
    .param p1, "x1"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I

    return p1
.end method

.method private checkDownloadedValid(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "update_file"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 810
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".url"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/common/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 811
    .local v1, "ori":Ljava/lang/String;
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old download url is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    if-eqz v1, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_63

    .line 813
    :cond_3b
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " download url change , delete old file ..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 816
    :try_start_53
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 817
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_53 .. :try_end_63} :catch_64

    .line 822
    :cond_63
    :goto_63
    return-void

    .line 818
    :catch_64
    move-exception v0

    .line 819
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_63
.end method

.method private clearFromServerPush()V
    .registers 5

    .prologue
    const-wide v2, 0x7fffffffffffffffL

    .line 278
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z

    .line 279
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerVersionCode:Ljava/lang/String;

    .line 280
    iput-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    .line 281
    iput-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    .line 282
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    .line 283
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z

    .line 284
    return-void
.end method

.method private clearOldUpdateFile()V
    .registers 2

    .prologue
    .line 199
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$4;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$4;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    .line 246
    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade$4;->start()V

    .line 247
    return-void
.end method

.method private createDownloadDir()V
    .registers 5

    .prologue
    .line 948
    iget-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    if-eqz v2, :cond_5b

    .line 949
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 950
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_2f

    .line 951
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 952
    :cond_2f
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/update/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 953
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 954
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 966
    .end local v0    # "file":Ljava/io/File;
    :cond_5a
    :goto_5a
    return-void

    .line 956
    :cond_5b
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 957
    .local v1, "udiskPath":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 958
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/download/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 959
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_88

    .line 960
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 961
    :cond_88
    new-instance v0, Ljava/io/File;

    .end local v0    # "file":Ljava/io/File;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/update/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 962
    .restart local v0    # "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_5a

    .line 963
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    goto :goto_5a
.end method

.method private createFileDownloadLogFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1, "update_file_path"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;

    .prologue
    .line 825
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".url"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/qinggan/otaservice/common/FileUtils;->writeToFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 826
    return-void
.end method

.method private doServerCheck()V
    .registers 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 359
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade$CheckServerThread;->start()V

    .line 361
    return-void
.end method

.method private downloadFullpkg()Z
    .registers 9

    .prologue
    const/4 v4, 0x1

    .line 784
    iget-object v5, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v5

    .line 785
    invoke-virtual {v5}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->readForceFullUpgrade()Z

    move-result v5

    if-eqz v5, :cond_12

    .line 793
    :cond_11
    :goto_11
    return v4

    .line 788
    :cond_12
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->getPatchTotalSize()J

    move-result-wide v2

    .line 789
    .local v2, "patchSize":J
    iget-object v5, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    if-eqz v5, :cond_46

    iget-object v5, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    iget-wide v0, v5, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    .line 791
    .local v0, "fullSize":J
    :goto_1e
    sget-object v5, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "downloadFullpkg ? patch is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", full is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 793
    cmp-long v5, v2, v0

    if-gtz v5, :cond_11

    const/4 v4, 0x0

    goto :goto_11

    .line 789
    .end local v0    # "fullSize":J
    :cond_46
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_1e
.end method

.method private getPatchTotalSize()J
    .registers 9

    .prologue
    .line 797
    const-wide/16 v2, 0x0

    .line 798
    .local v2, "size":J
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    if-eqz v1, :cond_2b

    .line 799
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 800
    const-wide v6, 0x7fffffffffffffffL

    move-wide v4, v2

    .line 806
    .end local v2    # "size":J
    .local v4, "size":J
    :goto_14
    return-wide v6

    .line 801
    .end local v4    # "size":J
    .restart local v2    # "size":J
    :cond_15
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_30

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 802
    .local v0, "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    iget-wide v6, v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    add-long/2addr v2, v6

    goto :goto_1b

    .line 804
    .end local v0    # "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_2b
    const-wide v2, 0x7fffffffffffffffL

    :cond_30
    move-wide v4, v2

    .end local v2    # "size":J
    .restart local v4    # "size":J
    move-wide v6, v2

    .line 806
    goto :goto_14
.end method

.method private initUpdateLocalVersion()V
    .registers 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInitUpdateLocalVersion:Z

    if-nez v0, :cond_f

    .line 251
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInitUpdateLocalVersion:Z

    .line 252
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$5;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$5;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    .line 257
    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade$5;->start()V

    .line 259
    :cond_f
    return-void
.end method

.method private isNetworkConnected()Z
    .registers 2

    .prologue
    .line 274
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qinggan/util/NetUtil;->isNetworkConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private setFromServerPushFull(Lcom/qinggan/otaservice/common/FullUpgradePkg;)V
    .registers 6
    .param p1, "fullpkg"    # Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .prologue
    .line 324
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z

    .line 325
    iget-object v0, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerVersionCode:Ljava/lang/String;

    .line 326
    iget-wide v0, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    .line 327
    iget-object v0, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDescription:Ljava/lang/String;

    .line 328
    sget-object v0, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "info from full pkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerVersionCode:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDescription:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->readForceFullUpgrade()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 332
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    .line 339
    :goto_55
    return-void

    .line 334
    :cond_56
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_6b

    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_6b

    .line 335
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    goto :goto_55

    .line 337
    :cond_6b
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    goto :goto_55
.end method

.method private setFromServerPushPatch(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    const-wide/16 v8, 0x0

    .line 287
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_95

    .line 288
    new-instance v2, Lcom/qinggan/otaservice/NetUpgrade$6;

    invoke-direct {v2, p0}, Lcom/qinggan/otaservice/NetUpgrade$6;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 297
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 298
    .local v1, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 299
    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 298
    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_95

    .line 301
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCanGetServerVersion:Z

    .line 302
    iget-object v2, v1, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    iput-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerVersionCode:Ljava/lang/String;

    .line 303
    iget-object v2, v1, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->features:Ljava/lang/String;

    iput-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDescription:Ljava/lang/String;

    .line 304
    iput-wide v8, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    .line 305
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 306
    .local v0, "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    iget-wide v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    iget-wide v6, v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    goto :goto_3b

    .line 308
    .end local v0    # "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_4f
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "info from patch pkg: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerVersionCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDescription:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 310
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v2}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->readForceFullUpgrade()Z

    move-result v2

    if-eqz v2, :cond_96

    .line 312
    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    iput-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    .line 321
    .end local v1    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_95
    :goto_95
    return-void

    .line 314
    .restart local v1    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_96
    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    cmp-long v2, v2, v8

    if-lez v2, :cond_a9

    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    iget-wide v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_a9

    .line 315
    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFullTotalSize:J

    iput-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    goto :goto_95

    .line 317
    :cond_a9
    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPatchTotalSize:J

    iput-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadTotalSize:J

    goto :goto_95
.end method

.method private unzipEnd(Ljava/lang/String;)V
    .registers 13
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x6

    const/4 v9, 0x3

    const/4 v2, 0x2

    const/4 v8, 0x0

    .line 711
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v3, "unzipEnd"

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 712
    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    if-eqz v1, :cond_7e

    .line 713
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromSDCard()Ljava/util/ArrayList;

    move-result-object v7

    .line 714
    .local v7, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :goto_13
    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    if-eqz v1, :cond_85

    .line 715
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesFromExtsd()Z

    .line 719
    :goto_1a
    if-eqz v7, :cond_22

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_b2

    .line 720
    :cond_22
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v3, "system upgrade file is empty"

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 721
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v1

    if-eqz v1, :cond_8b

    .line 723
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v6

    .line 724
    .local v6, "cmd":Ljava/lang/String;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 725
    const-string v1, "--"

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 726
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v1

    if-nez v1, :cond_48

    .line 727
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 729
    :cond_48
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other upgrade file is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 730
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_CHECK"

    .line 731
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5355MCU\u5347\u7ea7\u5305\u5b8c\u6574\u6027\u9a8c\u8bc1\u6210\u529f"

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 732
    .local v0, "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 733
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v10}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 734
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 781
    .end local v6    # "cmd":Ljava/lang/String;
    :goto_7d
    return-void

    .line 713
    .end local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    .end local v7    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_7e
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipFromUdisk(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v7

    goto :goto_13

    .line 717
    .restart local v7    # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_85
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->findOtherUpdateFilesFromUdisk(Landroid/content/Context;)Z

    goto :goto_1a

    .line 737
    :cond_8b
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v2, "other upgrade file is empty"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_CHECK"

    .line 740
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5355MCU\u5347\u7ea7\u5305\u5b8c\u6574\u6027\u9a8c\u8bc1\u5931\u8d25"

    move v2, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 741
    .restart local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 742
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 743
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto :goto_7d

    .line 746
    .end local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_b2
    invoke-virtual {p0, v7}, Lcom/qinggan/otaservice/NetUpgrade;->checkUpdateFile(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_d6

    .line 747
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v3, "doUpgradeFromUsb"

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_CHECK"

    .line 749
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5347\u7ea7\u5305\u5b8c\u6574\u6027\u9a8c\u8bc1\u6210\u529f"

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 750
    .restart local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 751
    invoke-virtual {p0}, Lcom/qinggan/otaservice/NetUpgrade;->doUpgradeFromDownloaded()V

    goto :goto_7d

    .line 753
    .end local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_d6
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v1

    if-eqz v1, :cond_12c

    .line 755
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v6

    .line 756
    .restart local v6    # "cmd":Ljava/lang/String;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 757
    const-string v1, "--"

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 758
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v1

    if-nez v1, :cond_f5

    .line 759
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 761
    :cond_f5
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "other upgrade file is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_CHECK"

    .line 763
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5355MCU\u5347\u7ea7\u5305\u5b8c\u6574\u6027\u9a8c\u8bc1\u6210\u529f"

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 764
    .restart local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 765
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v10}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 766
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_7d

    .line 770
    .end local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    .end local v6    # "cmd":Ljava/lang/String;
    :cond_12c
    sget-object v1, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v2, "onUpgradeError"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_CHECK"

    .line 773
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5355MCU\u5347\u7ea7\u5305\u5b8c\u6574\u6027\u9a8c\u8bc1\u5931\u8d25"

    move v2, v9

    move-object v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 774
    .restart local v0    # "vertifyCompl":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 775
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 776
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v8}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_7d
.end method


# virtual methods
.method public cancelDownload()V
    .registers 2

    .prologue
    .line 270
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/DownloadManager;->cancelDownload()V

    .line 271
    return-void
.end method

.method public checkUpdateFile(Ljava/util/ArrayList;)Z
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "mRetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v8, 0x0

    .line 641
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "UDisk Ret List Size = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    sget-object v9, Lcom/qinggan/otaservice/common/SYSCache;->sLocalSYSFileMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->clear()V

    .line 643
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_146

    .line 644
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_29
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_41

    .line 645
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 646
    .local v7, "versioninfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v9, Lcom/qinggan/otaservice/common/SYSCache;->sLocalSYSFileMap:Ljava/util/HashMap;

    invoke-virtual {v7}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    add-int/lit8 v4, v4, 0x1

    goto :goto_29

    .line 649
    .end local v7    # "versioninfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_41
    new-instance v2, Ljava/util/HashMap;

    sget-object v9, Lcom/qinggan/otaservice/common/SYSCache;->sLocalSYSFileMap:Ljava/util/HashMap;

    invoke-direct {v2, v9}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 652
    .local v2, "cloneLocalSYSFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v9

    invoke-virtual {v9, v2}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sortListByVersionDesc(Ljava/util/HashMap;)Ljava/util/ArrayList;

    move-result-object v6

    .line 654
    .local v6, "mVersionSortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v4, 0x0

    :goto_51
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_8a

    .line 655
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 656
    .local v1, "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "SYS Bean in Local File Map Sorted, Version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 658
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", Path = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 659
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 656
    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    add-int/lit8 v4, v4, 0x1

    goto :goto_51

    .line 662
    .end local v1    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_8a
    const/4 v4, 0x0

    :goto_8b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v4, v9, :cond_146

    .line 663
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 664
    .restart local v1    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "For No Sycn Case, SYS Bean Version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 666
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 664
    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 667
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v9

    .line 668
    invoke-virtual {v9, v1}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->isVersionSuitToUpgrade(Lcom/qinggan/otaservice/engine/SYSVersionInfo;)Z

    move-result v3

    .line 669
    .local v3, "flag":Z
    if-eqz v3, :cond_129

    .line 671
    sget v9, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v10, 0x1c

    if-lt v9, v10, :cond_f8

    .line 672
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 678
    .local v0, "baseVersion":Ljava/lang/String;
    :goto_c5
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v9

    .line 679
    invoke-virtual {v9, v1, v6, v0}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getUpgradeListByVersionDesc(Lcom/qinggan/otaservice/engine/SYSVersionInfo;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 683
    .local v5, "mUpgradeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_102

    .line 684
    invoke-static {}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;

    move-result-object v9

    invoke-virtual {v9, v8}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->setNeedSync(Z)V

    .line 686
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v8

    sput-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sTargetVersionCodeDisplay:Ljava/lang/String;

    .line 687
    sput-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 688
    const-string v8, ""

    sput-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sTargetVersionDesc:Ljava/lang/String;

    .line 689
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    invoke-virtual {p0, v8}, Lcom/qinggan/otaservice/NetUpgrade;->setTotalSize(I)V

    .line 690
    sget-object v8, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v9, "--------------------------------------------------------------------------"

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    const/4 v8, 0x1

    .line 707
    .end local v0    # "baseVersion":Ljava/lang/String;
    .end local v1    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .end local v2    # "cloneLocalSYSFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    .end local v3    # "flag":Z
    .end local v4    # "i":I
    .end local v5    # "mUpgradeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    .end local v6    # "mVersionSortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :goto_f7
    return v8

    .line 674
    .restart local v1    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .restart local v2    # "cloneLocalSYSFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    .restart local v3    # "flag":Z
    .restart local v4    # "i":I
    .restart local v6    # "mVersionSortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_f8
    sget-boolean v9, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v9, :cond_ff

    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    .restart local v0    # "baseVersion":Ljava/lang/String;
    :goto_fe
    goto :goto_c5

    .end local v0    # "baseVersion":Ljava/lang/String;
    :cond_ff
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    goto :goto_fe

    .line 694
    .restart local v0    # "baseVersion":Ljava/lang/String;
    .restart local v5    # "mUpgradeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_102
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "For No Sycn Case, Can\'t Upgrade to this Version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 696
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 694
    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    .end local v0    # "baseVersion":Ljava/lang/String;
    .end local v5    # "mUpgradeList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :goto_11e
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v10, "--------------------------------------------------------------------------"

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_8b

    .line 699
    :cond_129
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "For No Sycn Case, No Suitable Bean, Version = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 700
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 699
    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11e

    .line 706
    .end local v1    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .end local v2    # "cloneLocalSYSFileMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    .end local v3    # "flag":Z
    .end local v4    # "i":I
    .end local v6    # "mVersionSortedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_146
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v10, "checkUpdateFile return false"

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f7
.end method

.method public disconnectFd()V
    .registers 2

    .prologue
    .line 1192
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/NetUpgrade;->disconnectFd(I)V

    .line 1193
    return-void
.end method

.method public disconnectFd(I)V
    .registers 8
    .param p1, "error"    # I

    .prologue
    const/4 v2, 0x3

    .line 1196
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v1

    if-ne v1, v2, :cond_32

    .line 1197
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z

    .line 1198
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/DownloadManager;->cancelDownload()V

    .line 1199
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/ZipManager;->cancelUnzip()V

    .line 1201
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_DOWNLOAD"

    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;

    .line 1202
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v4

    const-string v5, "\u5347\u7ea7\u5305\u4e0b\u8f7d\u5931\u8d25"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1203
    .local v0, "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1204
    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 1206
    .end local v0    # "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_32
    return-void
.end method

.method public doUpgradeFromDownloaded()V
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 1125
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z

    if-eqz v0, :cond_7

    .line 1141
    :cond_6
    :goto_6
    return-void

    .line 1127
    :cond_7
    sget-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v0, :cond_31

    .line 1128
    invoke-virtual {p0, v4}, Lcom/qinggan/otaservice/NetUpgrade;->startUpdate(I)V

    .line 1130
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    if-nez v0, :cond_6

    .line 1131
    sget-object v0, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v1, "Start Percent Thread"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1132
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    .line 1133
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    .line 1134
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    const-string v1, "UpdatePerThread"

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->setName(Ljava/lang/String;)V

    .line 1135
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->start()V

    .line 1136
    iput-boolean v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z

    goto :goto_6

    .line 1139
    :cond_31
    new-instance v0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;

    iget-object v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v2}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v2

    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/qinggan/otaservice/common/SingleUpgradeThread;-><init>(Lcom/qinggan/otaservice/OTAService;ZZLcom/qinggan/otaservice/engine/ServerAdapter;)V

    invoke-virtual {v0}, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->start()V

    goto :goto_6
.end method

.method public declared-synchronized download()V
    .registers 29

    .prologue
    .line 830
    monitor-enter p0

    const-wide/16 v14, 0x0

    .line 831
    .local v14, "totalSize":J
    const-wide/16 v8, 0x0

    .line 832
    .local v8, "downloadedPkgSize":J
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadCallback:Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Lcom/qinggan/otaservice/engine/DownloadManager;->setCallBack(Lcom/qinggan/otaservice/common/IDownloadCallBack;)V

    .line 833
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileListCopy:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 834
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->clear()V

    .line 835
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/DownloadManager;->reset()V

    .line 836
    invoke-direct/range {p0 .. p0}, Lcom/qinggan/otaservice/NetUpgrade;->downloadFullpkg()Z

    move-result v22

    if-nez v22, :cond_1b5

    .line 837
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    if-eqz v22, :cond_32f

    .line 838
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_3f
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_32f

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 839
    .local v13, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    new-instance v21, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-direct/range {v21 .. v21}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;-><init>()V

    .line 840
    .local v21, "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 841
    .local v20, "versionCode":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setVersionCode(Ljava/lang/String;)V

    .line 842
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->checkCode:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setCheckCode(Ljava/lang/String;)V

    .line 843
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signAlg:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSignAlg(Ljava/lang/String;)V

    .line 844
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signInfo:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSignInfo(Ljava/lang/String;)V

    .line 845
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    move/from16 v23, v0

    if-eqz v23, :cond_182

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "/data/media/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/download/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 847
    .local v6, "dir":Ljava/lang/String;
    :goto_a1
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "patch-"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ".zip"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 849
    .local v17, "update_file_path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 850
    .local v16, "update_file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 851
    .local v4, "breakpoint":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v23

    if-eqz v23, :cond_1a1

    .line 852
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->checkDownloadedValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 853
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 861
    :goto_e2
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v23

    invoke-direct {v0, v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->createFileDownloadLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    sget-object v23, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "BreakPoint = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", PackageSize = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-wide v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    move-wide/from16 v26, v0

    move-object/from16 v0, v24

    move-wide/from16 v1, v26

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", Path = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 865
    iget-wide v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    move-wide/from16 v24, v0

    cmp-long v23, v4, v24

    if-gez v23, :cond_1ac

    .line 866
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setUrl(Ljava/lang/String;)V

    .line 867
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setLocalPath(Ljava/lang/String;)V

    .line 868
    iget-wide v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSize(J)V

    .line 869
    sget-object v23, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 874
    :goto_157
    iget-object v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setUrl(Ljava/lang/String;)V

    .line 875
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setLocalPath(Ljava/lang/String;)V

    .line 876
    iget-wide v0, v13, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v21

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSize(J)V

    .line 877
    sget-object v23, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileListCopy:Ljava/util/ArrayList;

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_17d
    .catchall {:try_start_5 .. :try_end_17d} :catchall_17f

    goto/16 :goto_3f

    .line 830
    .end local v4    # "breakpoint":J
    .end local v6    # "dir":Ljava/lang/String;
    .end local v13    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .end local v16    # "update_file":Ljava/io/File;
    .end local v17    # "update_file_path":Ljava/lang/String;
    .end local v20    # "versionCode":Ljava/lang/String;
    .end local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :catchall_17f
    move-exception v22

    monitor-exit p0

    throw v22

    .line 845
    .restart local v13    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .restart local v20    # "versionCode":Ljava/lang/String;
    .restart local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_182
    :try_start_182
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    move-object/from16 v24, v0

    .line 846
    invoke-static/range {v24 .. v24}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/download/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_19e
    .catchall {:try_start_182 .. :try_end_19e} :catchall_17f

    move-result-object v6

    goto/16 :goto_a1

    .line 856
    .restart local v4    # "breakpoint":J
    .restart local v6    # "dir":Ljava/lang/String;
    .restart local v16    # "update_file":Ljava/io/File;
    .restart local v17    # "update_file_path":Ljava/lang/String;
    :cond_1a1
    :try_start_1a1
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z
    :try_end_1a4
    .catch Ljava/io/IOException; {:try_start_1a1 .. :try_end_1a4} :catch_1a6
    .catchall {:try_start_1a1 .. :try_end_1a4} :catchall_17f

    goto/16 :goto_e2

    .line 857
    :catch_1a6
    move-exception v7

    .line 858
    .local v7, "e":Ljava/io/IOException;
    :try_start_1a7
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_e2

    .line 871
    .end local v7    # "e":Ljava/io/IOException;
    :cond_1ac
    sget-object v23, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v24, "File Exist and Not Need Download"

    invoke-static/range {v23 .. v24}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    add-long/2addr v8, v4

    goto :goto_157

    .line 880
    .end local v4    # "breakpoint":J
    .end local v6    # "dir":Ljava/lang/String;
    .end local v13    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .end local v16    # "update_file":Ljava/io/File;
    .end local v17    # "update_file_path":Ljava/lang/String;
    .end local v20    # "versionCode":Ljava/lang/String;
    .end local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_1b5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    if-eqz v22, :cond_32f

    .line 881
    new-instance v21, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-direct/range {v21 .. v21}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;-><init>()V

    .line 882
    .restart local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 883
    .restart local v20    # "versionCode":Ljava/lang/String;
    move-object/from16 v0, v21

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setVersionCode(Ljava/lang/String;)V

    .line 884
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setCheckCode(Ljava/lang/String;)V

    .line 885
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSignAlg(Ljava/lang/String;)V

    .line 886
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSignInfo(Ljava/lang/String;)V

    .line 887
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    move/from16 v22, v0

    if-eqz v22, :cond_3d0

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/media/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/download/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 889
    .restart local v6    # "dir":Ljava/lang/String;
    :goto_227
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "update-"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ".zip"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 890
    .restart local v17    # "update_file_path":Ljava/lang/String;
    new-instance v16, Ljava/io/File;

    invoke-direct/range {v16 .. v17}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 891
    .restart local v16    # "update_file":Ljava/io/File;
    const-wide/16 v4, 0x0

    .line 892
    .restart local v4    # "breakpoint":J
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->exists()Z

    move-result v22

    if-eqz v22, :cond_3ef

    .line 893
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->checkDownloadedValid(Ljava/lang/String;Ljava/lang/String;)V

    .line 894
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->length()J

    move-result-wide v4

    .line 902
    :goto_270
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lcom/qinggan/otaservice/NetUpgrade;->createFileDownloadLogFile(Ljava/lang/String;Ljava/lang/String;)V

    .line 903
    sget-object v22, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "BreakPoint = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", PackageSize = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, ", Path = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    move-wide/from16 v22, v0

    cmp-long v22, v4, v22

    if-gez v22, :cond_3fa

    .line 906
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setUrl(Ljava/lang/String;)V

    .line 907
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setLocalPath(Ljava/lang/String;)V

    .line 908
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSize(J)V

    .line 909
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 913
    :goto_301
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setUrl(Ljava/lang/String;)V

    .line 914
    move-object/from16 v0, v21

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setLocalPath(Ljava/lang/String;)V

    .line 915
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    move-wide/from16 v22, v0

    invoke-virtual/range {v21 .. v23}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setSize(J)V

    .line 916
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileListCopy:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v4    # "breakpoint":J
    .end local v6    # "dir":Ljava/lang/String;
    .end local v16    # "update_file":Ljava/io/File;
    .end local v17    # "update_file_path":Ljava/lang/String;
    .end local v20    # "versionCode":Ljava/lang/String;
    .end local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_32f
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_330
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    move/from16 v0, v22

    if-ge v10, v0, :cond_408

    .line 919
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getSize()J

    move-result-wide v22

    add-long v14, v14, v22

    .line 920
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v11

    .line 921
    .local v11, "localPath":Ljava/lang/String;
    sget-object v22, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SYS Download Zip Save Path = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_372
    .catchall {:try_start_1a7 .. :try_end_372} :catchall_17f

    .line 922
    const/16 v18, 0x0

    .line 924
    .local v18, "url":Ljava/net/URL;
    :try_start_374
    new-instance v19, Ljava/net/URL;

    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_38b
    .catch Ljava/lang/Exception; {:try_start_374 .. :try_end_38b} :catch_403
    .catchall {:try_start_374 .. :try_end_38b} :catchall_17f

    .line 925
    .end local v18    # "url":Ljava/net/URL;
    .local v19, "url":Ljava/net/URL;
    :try_start_38b
    sget-object v23, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "SYS Download Zip URL = "

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    .line 926
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getUrl()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v24

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 925
    move-object/from16 v0, v23

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 927
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1, v11}, Lcom/qinggan/otaservice/engine/DownloadManager;->addFile(Ljava/net/URL;Ljava/lang/String;)V
    :try_end_3ca
    .catch Ljava/lang/Exception; {:try_start_38b .. :try_end_3ca} :catch_455
    .catchall {:try_start_38b .. :try_end_3ca} :catchall_17f

    move-object/from16 v18, v19

    .line 918
    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    :goto_3cc
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_330

    .line 887
    .end local v10    # "i":I
    .end local v11    # "localPath":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    .restart local v20    # "versionCode":Ljava/lang/String;
    .restart local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_3d0
    :try_start_3d0
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    move-object/from16 v23, v0

    .line 888
    invoke-static/range {v23 .. v23}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/download/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_3ec
    .catchall {:try_start_3d0 .. :try_end_3ec} :catchall_17f

    move-result-object v6

    goto/16 :goto_227

    .line 897
    .restart local v4    # "breakpoint":J
    .restart local v6    # "dir":Ljava/lang/String;
    .restart local v16    # "update_file":Ljava/io/File;
    .restart local v17    # "update_file_path":Ljava/lang/String;
    :cond_3ef
    :try_start_3ef
    invoke-virtual/range {v16 .. v16}, Ljava/io/File;->createNewFile()Z
    :try_end_3f2
    .catch Ljava/io/IOException; {:try_start_3ef .. :try_end_3f2} :catch_3f4
    .catchall {:try_start_3ef .. :try_end_3f2} :catchall_17f

    goto/16 :goto_270

    .line 898
    :catch_3f4
    move-exception v7

    .line 899
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_3f5
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_270

    .line 911
    .end local v7    # "e":Ljava/io/IOException;
    :cond_3fa
    sget-object v22, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v23, "File Exist and Not Need Download"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_301

    .line 928
    .end local v4    # "breakpoint":J
    .end local v6    # "dir":Ljava/lang/String;
    .end local v16    # "update_file":Ljava/io/File;
    .end local v17    # "update_file_path":Ljava/lang/String;
    .end local v20    # "versionCode":Ljava/lang/String;
    .end local v21    # "versionInfoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .restart local v10    # "i":I
    .restart local v11    # "localPath":Ljava/lang/String;
    .restart local v18    # "url":Ljava/net/URL;
    :catch_403
    move-exception v7

    .line 929
    .local v7, "e":Ljava/lang/Exception;
    :goto_404
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3cc

    .line 932
    .end local v7    # "e":Ljava/lang/Exception;
    .end local v11    # "localPath":Ljava/lang/String;
    .end local v18    # "url":Ljava/net/URL;
    :cond_408
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/DownloadManager;->startDownload()V

    .line 933
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileList:Ljava/util/ArrayList;

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v22

    if-lez v22, :cond_43e

    .line 934
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    add-long v24, v14, v8

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/otaservice/engine/DownloadManager;->setTotalSize(J)V

    .line 935
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v8, v9}, Lcom/qinggan/otaservice/engine/DownloadManager;->setDownloadedPkgSize(J)V

    .line 936
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/DownloadManager;->startPercent()V
    :try_end_43c
    .catchall {:try_start_3f5 .. :try_end_43c} :catchall_17f

    .line 945
    :cond_43c
    :goto_43c
    monitor-exit p0

    return-void

    .line 938
    :cond_43e
    :try_start_43e
    sget-object v22, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v23, "SYSCache Download File List Size = 0"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/NetUpgrade;->mDownloadManager:Lcom/qinggan/otaservice/engine/DownloadManager;

    move-object/from16 v22, v0

    .line 940
    invoke-virtual/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/DownloadManager;->getDownloadCallBack()Lcom/qinggan/otaservice/common/IDownloadCallBack;

    move-result-object v12

    .line 941
    .local v12, "mDownloadCallBack":Lcom/qinggan/otaservice/common/IDownloadCallBack;
    if-eqz v12, :cond_43c

    .line 942
    invoke-interface {v12}, Lcom/qinggan/otaservice/common/IDownloadCallBack;->finishDownload()V
    :try_end_454
    .catchall {:try_start_43e .. :try_end_454} :catchall_17f

    goto :goto_43c

    .line 928
    .end local v12    # "mDownloadCallBack":Lcom/qinggan/otaservice/common/IDownloadCallBack;
    .restart local v11    # "localPath":Ljava/lang/String;
    .restart local v19    # "url":Ljava/net/URL;
    :catch_455
    move-exception v7

    move-object/from16 v18, v19

    .end local v19    # "url":Ljava/net/URL;
    .restart local v18    # "url":Ljava/net/URL;
    goto :goto_404
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "writer"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1478
    const-string v0, "\n----"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1479
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsDownloading: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1480
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UserCancel: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1481
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FinishedCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1482
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TotalSize: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mTotalSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1483
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsUpdating: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1484
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HasFullTypeInList: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1485
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PercentThreadFlag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1486
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsDownloadSdcard: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1487
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitUpdateLocalVersion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInitUpdateLocalVersion:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1488
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1490
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InstallOTADone: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1491
    return-void
.end method

.method public handleUnmount()V
    .registers 2

    .prologue
    .line 1186
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloadSdcard:Z

    if-nez v0, :cond_8

    .line 1187
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/NetUpgrade;->disconnectFd(I)V

    .line 1189
    :cond_8
    return-void
.end method

.method public isDownloading()Z
    .registers 2

    .prologue
    .line 266
    iget-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    return v0
.end method

.method public onNewVersionNotify(Lcom/qinggan/otaservice/common/PushVersionInfo;)V
    .registers 8
    .param p1, "info"    # Lcom/qinggan/otaservice/common/PushVersionInfo;

    .prologue
    const/4 v5, 0x0

    .line 1422
    if-nez p1, :cond_b

    .line 1423
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v3, "pushVersion info null"

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    .line 1457
    :goto_a
    return-void

    .line 1427
    :cond_b
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onNewVersionNotify: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1429
    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1430
    .local v0, "currentVersion":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getTargetVerNo()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-ltz v2, :cond_3f

    .line 1431
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v3, "PushVersion is lower than current!"

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1434
    :cond_3f
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getTargetSoftware()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_53

    .line 1435
    sget-object v2, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v3, "Software code not match!"

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 1439
    :cond_53
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getUpgradeMode()I

    move-result v2

    sget v3, Lcom/qinggan/otaservice/common/Constant;->FOTA_UPGRADE_MODE_SILENCE:I

    if-ne v2, v3, :cond_7a

    .line 1440
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/qinggan/otaservice/OTAService;->setSilence(Z)V

    .line 1442
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const-string v3, "ota"

    invoke-virtual {v2, v3, v5}, Lcom/qinggan/otaservice/OTAService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1443
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v3, "silence_finished"

    .line 1444
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1445
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1446
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->doServerCheck()V

    goto :goto_a

    .line 1448
    :cond_7a
    new-instance v1, Lcom/qinggan/ota/OTAPushInfo;

    invoke-direct {v1}, Lcom/qinggan/ota/OTAPushInfo;-><init>()V

    .line 1449
    .local v1, "pushInfo":Lcom/qinggan/ota/OTAPushInfo;
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getReleaseDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qinggan/ota/OTAPushInfo;->releaseDate:Ljava/lang/String;

    .line 1450
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getReleaseDesc()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qinggan/ota/OTAPushInfo;->releaseDesc:Ljava/lang/String;

    .line 1451
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getTargetSoftware()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qinggan/ota/OTAPushInfo;->targetSoftware:Ljava/lang/String;

    .line 1452
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getTargetVerNo()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/qinggan/ota/OTAPushInfo;->targetVerNo:Ljava/lang/String;

    .line 1453
    invoke-virtual {p1}, Lcom/qinggan/otaservice/common/PushVersionInfo;->getUpdateSize()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/qinggan/ota/OTAPushInfo;->updateSize:J

    .line 1454
    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v2, v1}, Lcom/qinggan/otaservice/OTAService;->notifyPushVersionInfo(Lcom/qinggan/ota/OTAPushInfo;)V

    goto/16 :goto_a
.end method

.method requestCachedVersion()V
    .registers 3

    .prologue
    .line 1209
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qinggan/otaservice/NetUpgrade$9;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/NetUpgrade$9;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 1217
    return-void
.end method

.method public setTotalSize(I)V
    .registers 6
    .param p1, "totalSize"    # I

    .prologue
    .line 633
    const/4 v0, 0x0

    iput v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mFinishedCount:I

    .line 634
    int-to-long v0, p1

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mTotalSize:J

    .line 635
    sget-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sNeedSyncSYS:Z

    if-eqz v0, :cond_11

    .line 636
    iget-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mTotalSize:J

    const-wide/16 v2, 0x64

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mTotalSize:J

    .line 638
    :cond_11
    return-void
.end method

.method public setUserCancel(Z)V
    .registers 2
    .param p1, "cancel"    # Z

    .prologue
    .line 262
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z

    .line 263
    return-void
.end method

.method startCheckServer()I
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 343
    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 344
    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_24

    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 345
    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_4e

    .line 346
    :cond_24
    sget-object v0, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid State "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v2}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 348
    const/4 v0, -0x6

    .line 354
    :goto_4b
    return v0

    .line 350
    :cond_4c
    const/4 v0, -0x2

    goto :goto_4b

    .line 353
    :cond_4e
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->doServerCheck()V

    .line 354
    const/4 v0, 0x0

    goto :goto_4b
.end method

.method public startUpdate(I)V
    .registers 10
    .param p1, "percent"    # I

    .prologue
    const/4 v4, 0x0

    const/4 v7, 0x1

    .line 1144
    iput-boolean v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mInstallOTADone:Z

    .line 1145
    iput p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I

    .line 1146
    invoke-static {v4}, Lcom/qinggan/otaservice/engine/NativeManager;->setOTAInstallPercent(I)V

    .line 1147
    const/4 v0, 0x0

    .line 1148
    .local v0, "START_UPDATE_PERCENT":I
    if-nez p1, :cond_45

    .line 1149
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_d
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_5f

    .line 1150
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 1152
    .local v3, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    if-eqz v3, :cond_38

    .line 1153
    :try_start_1f
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v4

    sget-object v5, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 1154
    invoke-virtual {v5}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v5

    if-ne v4, v5, :cond_35

    .line 1155
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mHasFullTypeInList:Z

    .line 1156
    sget-object v4, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v5, "Has Zip of Full Type in Update List"

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    :cond_35
    :goto_35
    add-int/lit8 v2, v2, 0x1

    goto :goto_d

    .line 1160
    :cond_38
    const-string v4, "46372"

    const-string v5, "System Version in Sorted Update List is Null"

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->loge(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_3f} :catch_40

    goto :goto_35

    .line 1163
    :catch_40
    move-exception v1

    .line 1164
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35

    .line 1168
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "i":I
    .end local v3    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_45
    sget-object v4, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Current Update Percent is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercent:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 1170
    :cond_5f
    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v5, 0x7

    invoke-virtual {v4, v5}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 1171
    new-instance v4, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;

    invoke-direct {v4, p0}, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    iput-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUpgradeThread:Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;

    .line 1172
    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUpgradeThread:Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;

    const-string v5, "UpdateZipThread"

    invoke-virtual {v4, v5}, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->setName(Ljava/lang/String;)V

    .line 1173
    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUpgradeThread:Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;

    invoke-virtual {v4}, Lcom/qinggan/otaservice/NetUpgrade$UpgradeThread;->start()V

    .line 1175
    iget-boolean v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    if-nez v4, :cond_9a

    .line 1176
    sget-object v4, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v5, "Start Percent Thread"

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 1177
    iput-boolean v7, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThreadFlag:Z

    .line 1178
    new-instance v4, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    invoke-direct {v4, p0}, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    iput-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    .line 1179
    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    const-string v5, "UpdatePerThread"

    invoke-virtual {v4, v5}, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->setName(Ljava/lang/String;)V

    .line 1180
    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mPercentThread:Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;

    invoke-virtual {v4}, Lcom/qinggan/otaservice/NetUpgrade$PercentDownLoadThread;->start()V

    .line 1181
    iput-boolean v7, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsUpdating:Z

    .line 1183
    :cond_9a
    return-void
.end method

.method startUpgradeFromNet()I
    .registers 11

    .prologue
    const/4 v8, -0x2

    const/4 v7, -0x6

    const/4 v9, 0x3

    const/4 v6, 0x0

    .line 971
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "UPGRADE_ACK"

    const/4 v2, 0x4

    .line 972
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    const-string v5, "\u5347\u7ea7\u5305\u4e0b\u8f7d\u786e\u8ba4"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    .local v0, "downloadAck":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v3, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 976
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;

    .line 978
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v3

    if-eqz v3, :cond_66

    .line 979
    sget-object v3, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid State "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/OTAService;->getState()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    new-instance v1, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v2, "PACKAGE_DOWNLOAD"

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;

    .line 981
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5347\u7ea7\u7cfb\u7edf\u6b63\u5fd9"

    move v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 982
    .local v1, "downloaInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v3, v1}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 983
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v3

    if-eqz v3, :cond_64

    move v3, v7

    .line 1121
    .end local v1    # "downloaInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :goto_63
    return v3

    .restart local v1    # "downloaInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_64
    move v3, v8

    .line 986
    goto :goto_63

    .line 990
    .end local v1    # "downloaInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_66
    iget-boolean v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    if-eqz v3, :cond_a5

    .line 991
    sget-object v3, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mIsDownloading --"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/qinggan/otaservice/NetUpgrade;->mIsDownloading:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    new-instance v1, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v2, "PACKAGE_DOWNLOAD"

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;

    .line 993
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, "\u5347\u7ea7\u7cfb\u7edf\u6b63\u5904\u4e8e\u4e0b\u8f7d\u72b6\u6001"

    move v3, v9

    invoke-direct/range {v1 .. v6}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    .restart local v1    # "downloaInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v3, v1}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 995
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v3

    if-eqz v3, :cond_a3

    move v3, v7

    .line 996
    goto :goto_63

    :cond_a3
    move v3, v8

    .line 998
    goto :goto_63

    .line 1002
    .end local v1    # "downloaInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_a5
    iput-boolean v6, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUserCancel:Z

    .line 1003
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 1004
    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    .line 1003
    invoke-static {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v3

    .line 1004
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->readPatchUpgradePkg()Ljava/util/ArrayList;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    .line 1005
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 1006
    invoke-virtual {v3}, Lcom/qinggan/otaservice/OTAService;->getServiceContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SettingLastMemory;->readFullUpgradePkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 1007
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedPatchPackage:Ljava/util/ArrayList;

    if-nez v3, :cond_ee

    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedFullPackage:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    if-nez v3, :cond_ee

    .line 1008
    sget-object v3, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v4, "No package has been get "

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    new-instance v2, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v3, "PACKAGE_DOWNLOAD"

    iget-object v5, p0, Lcom/qinggan/otaservice/NetUpgrade;->mStartDownloadTime:Ljava/lang/String;

    .line 1011
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u672a\u627e\u5230\u5347\u7ea7\u5305\u4fe1\u606f"

    move v4, v9

    invoke-direct/range {v2 .. v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .local v2, "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v3, v2}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 1013
    const/4 v3, -0x3

    goto/16 :goto_63

    .line 1015
    .end local v2    # "downloadInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_ee
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/qinggan/otaservice/OTAService;->getExternalFilesDirs(Ljava/lang/String;)[Ljava/io/File;

    .line 1016
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    iget-object v4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v4}, Lcom/qinggan/otaservice/OTAService;->getSilence()Z

    move-result v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v6, v5}, Lcom/qinggan/otaservice/common/Tool;->dataTracking(Landroid/content/Context;ZZZ)V

    .line 1017
    iget-object v3, p0, Lcom/qinggan/otaservice/NetUpgrade;->mService:Lcom/qinggan/otaservice/OTAService;

    iget-object v3, v3, Lcom/qinggan/otaservice/OTAService;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v4, Lcom/qinggan/otaservice/NetUpgrade$8;

    invoke-direct {v4, p0}, Lcom/qinggan/otaservice/NetUpgrade$8;-><init>(Lcom/qinggan/otaservice/NetUpgrade;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    move v3, v6

    .line 1121
    goto/16 :goto_63
.end method

.method uploadResult(ZJJ)V
    .registers 12
    .param p1, "success"    # Z
    .param p2, "taskSid"    # J
    .param p4, "taskItemSid"    # J

    .prologue
    .line 1460
    iput-boolean p1, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResult:Z

    .line 1461
    iput-wide p2, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskSid:J

    .line 1462
    iput-wide p4, p0, Lcom/qinggan/otaservice/NetUpgrade;->mCachedTaskIteSid:J

    .line 1463
    invoke-direct {p0}, Lcom/qinggan/otaservice/NetUpgrade;->isNetworkConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 1464
    new-instance v0, Lcom/qinggan/otaservice/NetUpgrade$10;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/NetUpgrade$10;-><init>(Lcom/qinggan/otaservice/NetUpgrade;JJ)V

    .line 1471
    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade$10;->start()V

    .line 1475
    :goto_17
    return-void

    .line 1473
    :cond_18
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/NetUpgrade;->mUploadResultPending:Z

    goto :goto_17
.end method

.method public validateCheckCode()Z
    .registers 13

    .prologue
    const/4 v7, 0x0

    .line 602
    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sDownloadFileListCopy:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_83

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 603
    .local v3, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v4

    .line 604
    .local v4, "path":Ljava/lang/String;
    if-eqz v4, :cond_7

    .line 605
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 606
    .local v2, "file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_7

    .line 607
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getSignAlg()Ljava/lang/String;

    move-result-object v5

    .line 608
    .local v5, "signAlg":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getSignInfo()Ljava/lang/String;

    move-result-object v6

    .line 609
    .local v6, "signInfo":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getCheckCode()Ljava/lang/String;

    move-result-object v1

    .line 610
    .local v1, "checkCode":Ljava/lang/String;
    invoke-static {v5, v4, v6}, Lcom/qinggan/otaservice/common/CryptoUtils;->verifySign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 611
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v10, "Verify signature failed\uff01"

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    if-eqz v1, :cond_82

    .line 613
    const-string v9, "MD5"

    invoke-static {v2, v9}, Lcom/qinggan/otaservice/common/CryptoUtils;->calPackageCheckCode(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "calCheckCode":Ljava/lang/String;
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "orignal check code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 615
    sget-object v9, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "calculate check code: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 616
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_7

    .line 617
    sget-object v8, Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;

    const-string v9, "MD5 check fail too!"

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    .end local v0    # "calCheckCode":Ljava/lang/String;
    .end local v1    # "checkCode":Ljava/lang/String;
    .end local v2    # "file":Ljava/io/File;
    .end local v3    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .end local v4    # "path":Ljava/lang/String;
    .end local v5    # "signAlg":Ljava/lang/String;
    .end local v6    # "signInfo":Ljava/lang/String;
    :cond_82
    :goto_82
    return v7

    :cond_83
    const/4 v7, 0x1

    goto :goto_82
.end method
