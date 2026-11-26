.class public Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
.super Ljava/lang/Object;
.source "TspAdapter.java"

# interfaces
.implements Lcom/qinggan/otaservice/engine/ServerAdapter;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mErrorCode:J

.field private mErrorMsg:Ljava/lang/String;

.field private mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

.field private mHandler:Landroid/os/Handler;

.field private mInit:Z

.field private mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

.field private final mPDSN:Ljava/lang/String;

.field private mPatchPkgs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation
.end field

.field private mPushListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

.field private mSendTime:J

.field private mTspManager:Lcom/qinggan/tsp/TspManager;

.field private mUpdateLocalVersionPending:Z

.field private mUploadResult:I

.field private mUploadResultPending:Z

.field private mVhlType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 41
    const-class v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/qinggan/os/SystemProperties;->getProductSN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPDSN:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mHandler:Landroid/os/Handler;

    .line 46
    iput-object v3, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mVhlType:Ljava/lang/String;

    .line 50
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mSendTime:J

    .line 52
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorMsg:Ljava/lang/String;

    .line 53
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorCode:J

    .line 57
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z

    .line 59
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z

    .line 61
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z

    .line 62
    iput v2, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResult:I

    .line 64
    iput-object v3, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .line 101
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;-><init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPushListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    .line 67
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMCUPlatform: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    sget v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatform:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_5c

    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    if-eqz v0, :cond_5c

    .line 69
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mVhlType:Ljava/lang/String;

    .line 71
    :cond_5c
    invoke-static {p1}, Lcom/qinggan/tsp/TspManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/TspManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    .line 72
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPDSN:Ljava/lang/String;

    new-instance v2, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;

    invoke-direct {v2, p0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;-><init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/tsp/TspManager;->init(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$OnInitDetailListener;)V

    .line 99
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 39
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPushListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/tsp/TspManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 39
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z

    return p1
.end method

.method static synthetic access$602(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Ljava/util/List;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$702(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Lcom/qinggan/otaservice/common/FullUpgradePkg;)Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
    .param p1, "x1"    # Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    return-object p1
.end method

.method static synthetic access$802(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;J)J
    .registers 4
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mSendTime:J

    return-wide p1
.end method

.method static synthetic access$900(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/otaservice/engine/ServerAdapterListener;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    return-object v0
.end method

.method private convertCode(I)Ljava/lang/String;
    .registers 5
    .param p1, "code"    # I

    .prologue
    .line 362
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "convertCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    const/16 v0, 0xa

    if-ge p1, v0, :cond_30

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 366
    :goto_2f
    return-object v0

    :cond_30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2f
.end method

.method private doParsePackages(Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;)V
    .registers 14
    .param p1, "pkg"    # Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;

    .prologue
    const/4 v11, 0x0

    .line 379
    if-nez p1, :cond_4

    .line 448
    :cond_3
    :goto_3
    return-void

    .line 382
    :cond_4
    iget-object v3, p1, Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;->FullProfile:Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;

    .line 383
    .local v3, "fullServer":Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;
    if-eqz v3, :cond_79

    .line 384
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from Tsp , full pkg url = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->fileUrl:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from Tsp , full pkg version = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->swReference:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from Tsp , full size = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->swSize:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    new-instance v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;

    invoke-direct {v2}, Lcom/qinggan/otaservice/common/FullUpgradePkg;-><init>()V

    .line 389
    .local v2, "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    iget-object v8, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->fileUrl:Ljava/lang/String;

    iput-object v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    .line 390
    iget-object v8, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->swReference:Ljava/lang/String;

    iput-object v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 391
    iget-object v8, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->releaseNote:Ljava/lang/String;

    iput-object v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    .line 392
    iget v8, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->updateMode:I

    iput v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    .line 393
    iget-object v8, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->checkCode:Ljava/lang/String;

    iput-object v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    .line 395
    :try_start_6f
    iget-object v8, v3, Lcom/qinggan/tsp/models/usi/UpdateResponse$FullProfile;->swSize:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_77} :catch_10a

    .line 400
    :goto_77
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 403
    .end local v2    # "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    :cond_79
    iget-object v8, p1, Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;->PatchProfile:Ljava/util/List;

    invoke-direct {p0, v8}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v6

    .line 405
    .local v6, "patchServer":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    if-eqz v6, :cond_1a5

    .line 406
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_82
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_114

    .line 407
    sget-object v9, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from Tsp , patch["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] swReference:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 408
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;

    iget-object v8, v8, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swReference:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 407
    invoke-static {v9, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    sget-object v9, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from Tsp , patch["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] swAppliedReference:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 410
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;

    iget-object v8, v8, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swAppliedReference:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 409
    invoke-static {v9, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    sget-object v9, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "from Tsp , patch["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] fileUrl:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 413
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;

    iget-object v8, v8, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->fileUrl:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 411
    invoke-static {v9, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_82

    .line 396
    .end local v4    # "i":I
    .end local v6    # "patchServer":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    .restart local v2    # "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    :catch_10a
    move-exception v1

    .line 397
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 398
    const-wide/16 v8, 0x0

    iput-wide v8, v2, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    goto/16 :goto_77

    .line 417
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .restart local v4    # "i":I
    .restart local v6    # "patchServer":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    :cond_114
    invoke-direct {p0, v6}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->getUpgradeListByVersionDesc(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v7

    .line 418
    .local v7, "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    if-eqz v7, :cond_1a3

    .line 419
    const/4 v4, 0x0

    :goto_11b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    if-ge v4, v8, :cond_1a3

    .line 420
    sget-object v9, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after sorted , patch["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] swReference:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 421
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    iget-object v8, v8, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 420
    invoke-static {v9, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    sget-object v9, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after sorted , patch["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] swAppliedReference:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 424
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    iget-object v8, v8, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 422
    invoke-static {v9, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    sget-object v9, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "after sorted , patch["

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, "] fileUrl:"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 426
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    iget-object v8, v8, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 425
    invoke-static {v9, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_11b

    .line 430
    :cond_1a3
    iput-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    .line 432
    .end local v4    # "i":I
    .end local v7    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    :cond_1a5
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    if-eqz v8, :cond_3

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    if-eqz v8, :cond_3

    .line 433
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    const-string v9, "compare full & patch , choose the latest package"

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    iget-object v9, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 435
    .local v5, "patch":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compare ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    iget-object v10, v10, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "] ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    iget-object v8, v8, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    iget-object v9, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-static {v8, v9}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 439
    .local v0, "compare":I
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "compare result , "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    if-eqz v0, :cond_3

    .line 441
    if-lez v0, :cond_224

    .line 442
    iput-object v11, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    goto/16 :goto_3

    .line 444
    :cond_224
    iput-object v11, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    goto/16 :goto_3
.end method

.method private findSuitableBean(Ljava/lang/String;Ljava/util/List;)Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    .registers 7
    .param p1, "dependVersionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;",
            ">;)",
            "Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;"
        }
    .end annotation

    .prologue
    .line 513
    .local p2, "sortedlist":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;

    .line 514
    .local v0, "tempBean":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    iget-object v1, v0, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swAppliedReference:Ljava/lang/String;

    .line 515
    .local v1, "tempVersionCode":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 520
    .end local v0    # "tempBean":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    .end local v1    # "tempVersionCode":Ljava/lang/String;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getUpgradeListByVersionDesc(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "sortedlist":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 472
    .local v3, "mRetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    const-string v0, ""

    .line 473
    .local v0, "dependVersionCode":Ljava/lang/String;
    sget v7, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v8, 0x1c

    if-lt v7, v8, :cond_22

    .line 474
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    const-string v8, "Android 9.0 or above,use current code"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 475
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 482
    :goto_16
    invoke-direct {p0, v0, p1}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->findSuitableBean(Ljava/lang/String;Ljava/util/List;)Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;

    move-result-object v6

    .line 484
    .local v6, "targetBean":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    if-eqz v6, :cond_2c

    .line 485
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    iget-object v0, v6, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swReference:Ljava/lang/String;

    .line 489
    goto :goto_16

    .line 477
    .end local v6    # "targetBean":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    :cond_22
    sget-boolean v7, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v7, :cond_29

    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    :goto_28
    goto :goto_16

    :cond_29
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    goto :goto_28

    .line 490
    .restart local v6    # "targetBean":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    :cond_2c
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 491
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_35
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_73

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;

    .line 492
    .local v4, "p":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    new-instance v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    invoke-direct {v5}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;-><init>()V

    .line 493
    .local v5, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    iget-object v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swAppliedReference:Ljava/lang/String;

    iput-object v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    .line 494
    iget-object v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->releaseNote:Ljava/lang/String;

    iput-object v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->features:Ljava/lang/String;

    .line 495
    iget-object v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->checkCode:Ljava/lang/String;

    iput-object v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->checkCode:Ljava/lang/String;

    .line 496
    iget-object v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swReference:Ljava/lang/String;

    iput-object v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 497
    iget-object v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->fileUrl:Ljava/lang/String;

    iput-object v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    .line 498
    iget v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->updateMode:I

    iput v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->type:I

    .line 500
    :try_start_5e
    iget-object v8, v4, Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;->swSize:Ljava/lang/String;

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_5e .. :try_end_66} :catch_6a

    .line 505
    :goto_66
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 501
    :catch_6a
    move-exception v1

    .line 502
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 503
    const-wide/16 v8, 0x0

    iput-wide v8, v5, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    goto :goto_66

    .line 507
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v4    # "p":Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;
    .end local v5    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_73
    return-object v2
.end method

.method private sort(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;",
            ">;"
        }
    .end annotation

    .prologue
    .line 452
    .local p1, "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    if-nez p1, :cond_4

    .line 453
    const/4 p1, 0x0

    .line 465
    .end local p1    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    :goto_3
    return-object p1

    .line 454
    .restart local p1    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/usi/UpdateResponse$PatchProfile;>;"
    :cond_4
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$3;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$3;-><init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3
.end method


# virtual methods
.method public finishDownload(Ljava/lang/String;)V
    .registers 13
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 300
    :try_start_0
    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 301
    invoke-static {v8}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 302
    .local v7, "version":Ljava/lang/String;
    const/4 v6, 0x0

    .line 303
    .local v6, "userProfile":Lorg/json/JSONObject;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 304
    .local v2, "item":Lorg/json/JSONObject;
    const-string v8, "pdsn"

    iget-object v9, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPDSN:Ljava/lang/String;

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "newReference"

    invoke-virtual {v8, v9, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "oldReference"

    .line 305
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "type"

    const-string v10, "03"

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "remark"

    const-string v10, " "

    .line 306
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 307
    new-instance v3, Lorg/json/JSONStringer;

    invoke-direct {v3}, Lorg/json/JSONStringer;-><init>()V

    .line 308
    .local v3, "js":Lorg/json/JSONStringer;
    invoke-virtual {v3}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v8

    const-string v9, "SoftwareLog"

    invoke-virtual {v8, v9}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8, v2}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 309
    new-instance v6, Lorg/json/JSONObject;

    .end local v6    # "userProfile":Lorg/json/JSONObject;
    invoke-virtual {v3}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 310
    .restart local v6    # "userProfile":Lorg/json/JSONObject;
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SoftwareLog is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    invoke-virtual {v8, v6}, Lcom/qinggan/tsp/TspManager;->saveSoftLog(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/StatusResponse;

    move-result-object v5

    .line 312
    .local v5, "response":Lcom/qinggan/tsp/models/Update/StatusResponse;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 313
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 314
    .local v4, "json":Ljava/lang/String;
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Response is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    .line 318
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "js":Lorg/json/JSONStringer;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "response":Lcom/qinggan/tsp/models/Update/StatusResponse;
    .end local v6    # "userProfile":Lorg/json/JSONObject;
    .end local v7    # "version":Ljava/lang/String;
    :goto_8d
    return-void

    .line 315
    :catch_8e
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8d
.end method

.method public getErrorCode()J
    .registers 3

    .prologue
    .line 376
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorCode:J

    return-wide v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 373
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 2

    .prologue
    .line 284
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    return-object v0
.end method

.method public getPatchPkgs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 289
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    return-object v0
.end method

.method public getSendTime()J
    .registers 3

    .prologue
    .line 294
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mSendTime:J

    return-wide v0
.end method

.method public processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V
    .registers 2
    .param p1, "processInfo"    # Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .prologue
    .line 334
    return-void
.end method

.method public searchUpdate(I)Z
    .registers 20
    .param p1, "createType"    # I

    .prologue
    .line 234
    const/4 v13, 0x0

    :try_start_1
    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 235
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;

    .line 236
    const/4 v11, 0x0

    .line 237
    .local v11, "userProfile":Lorg/json/JSONObject;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_a0

    .line 239
    .local v5, "item":Lorg/json/JSONObject;
    :try_start_14
    const-string v13, "pdsn"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPDSN:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v13

    const-string v14, "type"

    const-string v15, "03"

    invoke-virtual {v13, v14, v15}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 240
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mVhlType:Ljava/lang/String;

    if-eqz v13, :cond_34

    .line 241
    const-string v13, "vhlType"

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mVhlType:Ljava/lang/String;

    invoke-virtual {v5, v13, v14}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 243
    :cond_34
    new-instance v6, Lorg/json/JSONStringer;

    invoke-direct {v6}, Lorg/json/JSONStringer;-><init>()V

    .line 244
    .local v6, "js":Lorg/json/JSONStringer;
    invoke-virtual {v6}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v13

    const-string v14, "vhlVersionSearch"

    invoke-virtual {v13, v14}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v13

    invoke-virtual {v13, v5}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v13

    invoke-virtual {v13}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 245
    new-instance v12, Lorg/json/JSONObject;

    invoke-virtual {v6}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_53
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_53} :catch_9b
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_53} :catch_a0

    .line 246
    .end local v11    # "userProfile":Lorg/json/JSONObject;
    .local v12, "userProfile":Lorg/json/JSONObject;
    :try_start_53
    sget-object v13, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "vhlVersionSearch is :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6b
    .catch Lorg/json/JSONException; {:try_start_53 .. :try_end_6b} :catch_10f
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_6b} :catch_a0

    move-object v11, v12

    .line 250
    .end local v6    # "js":Lorg/json/JSONStringer;
    .end local v12    # "userProfile":Lorg/json/JSONObject;
    .restart local v11    # "userProfile":Lorg/json/JSONObject;
    :goto_6c
    :try_start_6c
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    .line 251
    invoke-virtual {v13, v11}, Lcom/qinggan/tsp/TspManager;->softwareUpgradeVersionSearch(Lorg/json/JSONObject;)Lretrofit2/Response;

    move-result-object v9

    .line 252
    .local v9, "rawResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/qinggan/tsp/models/usi/UpdateResponse;>;"
    invoke-virtual {v9}, Lretrofit2/Response;->code()I

    move-result v2

    .line 253
    .local v2, "code":I
    const/16 v13, 0xc8

    if-eq v2, v13, :cond_b3

    .line 254
    sget-object v13, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "searchUpdate error code: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    int-to-long v14, v2

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorCode:J

    .line 256
    const/4 v13, 0x0

    .line 279
    .end local v2    # "code":I
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v9    # "rawResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/qinggan/tsp/models/usi/UpdateResponse;>;"
    .end local v11    # "userProfile":Lorg/json/JSONObject;
    :goto_9a
    return v13

    .line 247
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v11    # "userProfile":Lorg/json/JSONObject;
    :catch_9b
    move-exception v3

    .line 248
    .local v3, "e":Lorg/json/JSONException;
    :goto_9c
    invoke-virtual {v3}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_6c .. :try_end_9f} :catch_a0

    goto :goto_6c

    .line 273
    .end local v3    # "e":Lorg/json/JSONException;
    .end local v5    # "item":Lorg/json/JSONObject;
    .end local v11    # "userProfile":Lorg/json/JSONObject;
    :catch_a0
    move-exception v3

    .line 274
    .local v3, "e":Ljava/lang/Exception;
    sget-object v13, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    const-string v14, "searchUpdate may network error"

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    const-wide/16 v14, 0x3e7

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorCode:J

    .line 276
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 277
    const/4 v13, 0x0

    goto :goto_9a

    .line 258
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "code":I
    .restart local v5    # "item":Lorg/json/JSONObject;
    .restart local v9    # "rawResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/qinggan/tsp/models/usi/UpdateResponse;>;"
    .restart local v11    # "userProfile":Lorg/json/JSONObject;
    :cond_b3
    :try_start_b3
    invoke-virtual {v9}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qinggan/tsp/models/usi/UpdateResponse;

    .line 259
    .local v10, "response":Lcom/qinggan/tsp/models/usi/UpdateResponse;
    new-instance v4, Lcom/google/gson/Gson;

    invoke-direct {v4}, Lcom/google/gson/Gson;-><init>()V

    .line 260
    .local v4, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v4, v10}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 261
    .local v7, "json":Ljava/lang/String;
    sget-object v13, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Response is :"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    if-nez v10, :cond_e4

    .line 263
    const-string v13, ""

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorMsg:Ljava/lang/String;

    .line 264
    const/4 v13, 0x0

    goto :goto_9a

    .line 266
    :cond_e4
    iget-object v13, v10, Lcom/qinggan/tsp/models/usi/UpdateResponse;->softwareUpgradeVersionSearch:Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;

    iget-object v13, v13, Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;->status:Lcom/qinggan/tsp/models/usi/Status;

    iget-wide v14, v13, Lcom/qinggan/tsp/models/usi/Status;->code:J

    const-wide/16 v16, 0xc8

    cmp-long v13, v14, v16

    if-eqz v13, :cond_106

    .line 267
    iget-object v13, v10, Lcom/qinggan/tsp/models/usi/UpdateResponse;->softwareUpgradeVersionSearch:Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;

    iget-object v13, v13, Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;->status:Lcom/qinggan/tsp/models/usi/Status;

    iget-object v13, v13, Lcom/qinggan/tsp/models/usi/Status;->description:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorMsg:Ljava/lang/String;

    .line 268
    iget-object v13, v10, Lcom/qinggan/tsp/models/usi/UpdateResponse;->softwareUpgradeVersionSearch:Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;

    iget-object v13, v13, Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;->status:Lcom/qinggan/tsp/models/usi/Status;

    iget-wide v14, v13, Lcom/qinggan/tsp/models/usi/Status;->code:J

    move-object/from16 v0, p0

    iput-wide v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mErrorCode:J

    .line 269
    const/4 v13, 0x0

    goto :goto_9a

    .line 271
    :cond_106
    iget-object v8, v10, Lcom/qinggan/tsp/models/usi/UpdateResponse;->softwareUpgradeVersionSearch:Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;

    .line 272
    .local v8, "pkg":Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->doParsePackages(Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;)V
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_b3 .. :try_end_10d} :catch_a0

    .line 279
    const/4 v13, 0x1

    goto :goto_9a

    .line 247
    .end local v2    # "code":I
    .end local v4    # "gson":Lcom/google/gson/Gson;
    .end local v7    # "json":Ljava/lang/String;
    .end local v8    # "pkg":Lcom/qinggan/tsp/models/usi/UpdateResponse$SoftwareUpgradeVersionSearch;
    .end local v9    # "rawResponse":Lretrofit2/Response;, "Lretrofit2/Response<Lcom/qinggan/tsp/models/usi/UpdateResponse;>;"
    .end local v10    # "response":Lcom/qinggan/tsp/models/usi/UpdateResponse;
    .end local v11    # "userProfile":Lorg/json/JSONObject;
    .restart local v6    # "js":Lorg/json/JSONStringer;
    .restart local v12    # "userProfile":Lorg/json/JSONObject;
    :catch_10f
    move-exception v3

    move-object v11, v12

    .end local v12    # "userProfile":Lorg/json/JSONObject;
    .restart local v11    # "userProfile":Lorg/json/JSONObject;
    goto :goto_9c
.end method

.method public setListener(Lcom/qinggan/otaservice/engine/ServerAdapterListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .prologue
    .line 169
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .line 170
    return-void
.end method

.method public updateLocalVersion(Z)Z
    .registers 16
    .param p1, "currentSys"    # Z

    .prologue
    .line 174
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z

    if-eqz v10, :cond_110

    .line 175
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z

    .line 177
    :try_start_7
    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 178
    invoke-static {v10}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 179
    .local v9, "version":Ljava/lang/String;
    if-nez p1, :cond_4c

    .line 180
    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mcu"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_106

    .line 181
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getBootSystem()I

    move-result v7

    .line 182
    .local v7, "systemId":I
    const-string v0, ""

    .line 183
    .local v0, "backupMcuVersion":Ljava/lang/String;
    if-nez v7, :cond_fb

    .line 184
    const/16 v10, 0x3d

    .line 185
    invoke-static {v10}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v0

    .line 190
    :cond_2b
    :goto_2b
    invoke-static {v0}, Lcom/qinggan/otaservice/common/Tool;->nvdataIsLegal(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_33

    .line 191
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 193
    :cond_33
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v11, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 200
    .end local v0    # "backupMcuVersion":Ljava/lang/String;
    .end local v7    # "systemId":I
    :cond_4c
    :goto_4c
    const/4 v8, 0x0

    .line 201
    .local v8, "userProfile":Lorg/json/JSONObject;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 202
    .local v3, "item":Lorg/json/JSONObject;
    const-string v10, "pdsn"

    iget-object v11, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPDSN:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "swReference"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "type"

    const-string v12, "03"

    .line 203
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mVhlType:Ljava/lang/String;

    if-eqz v10, :cond_72

    .line 205
    const-string v10, "vhlType"

    iget-object v11, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mVhlType:Ljava/lang/String;

    invoke-virtual {v3, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 207
    :cond_72
    new-instance v4, Lorg/json/JSONStringer;

    invoke-direct {v4}, Lorg/json/JSONStringer;-><init>()V

    .line 208
    .local v4, "js":Lorg/json/JSONStringer;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v10

    const-string v11, "vhlVersionSearch"

    invoke-virtual {v10, v11}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10, v3}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 209
    new-instance v8, Lorg/json/JSONObject;

    .end local v8    # "userProfile":Lorg/json/JSONObject;
    invoke-virtual {v4}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 210
    .restart local v8    # "userProfile":Lorg/json/JSONObject;
    sget-object v10, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "vhlVersionSearch is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    .line 212
    invoke-virtual {v10, v8}, Lcom/qinggan/tsp/TspManager;->updateSoftwareReference(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/StatusResponse;

    move-result-object v6

    .line 213
    .local v6, "response":Lcom/qinggan/tsp/models/Update/StatusResponse;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 214
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 215
    .local v5, "json":Ljava/lang/String;
    sget-object v10, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Response is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    if-eqz v6, :cond_10e

    iget-object v10, v6, Lcom/qinggan/tsp/models/Update/StatusResponse;->status:Lcom/qinggan/tsp/models/usi/Status;

    iget-wide v10, v10, Lcom/qinggan/tsp/models/usi/Status;->code:J

    const-wide/16 v12, 0xc8

    cmp-long v10, v10, v12

    if-eqz v10, :cond_10e

    .line 217
    new-instance v10, Ljava/lang/RuntimeException;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateSoftwareReference error : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10
    :try_end_f5
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_f5} :catch_f5

    .line 220
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "js":Lorg/json/JSONStringer;
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "response":Lcom/qinggan/tsp/models/Update/StatusResponse;
    .end local v8    # "userProfile":Lorg/json/JSONObject;
    .end local v9    # "version":Ljava/lang/String;
    :catch_f5
    move-exception v1

    .line 221
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 222
    const/4 v10, 0x0

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_fa
    return v10

    .line 186
    .restart local v0    # "backupMcuVersion":Ljava/lang/String;
    .restart local v7    # "systemId":I
    .restart local v9    # "version":Ljava/lang/String;
    :cond_fb
    const/4 v10, 0x1

    if-ne v7, v10, :cond_2b

    .line 187
    const/16 v10, 0x3c

    .line 188
    :try_start_100
    invoke-static {v10}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 196
    .end local v0    # "backupMcuVersion":Ljava/lang/String;
    .end local v7    # "systemId":I
    :cond_106
    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    .line 197
    invoke-static {v10}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;
    :try_end_10b
    .catch Ljava/lang/Exception; {:try_start_100 .. :try_end_10b} :catch_f5

    move-result-object v9

    goto/16 :goto_4c

    .line 224
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "item":Lorg/json/JSONObject;
    .restart local v4    # "js":Lorg/json/JSONStringer;
    .restart local v5    # "json":Ljava/lang/String;
    .restart local v6    # "response":Lcom/qinggan/tsp/models/Update/StatusResponse;
    .restart local v8    # "userProfile":Lorg/json/JSONObject;
    :cond_10e
    const/4 v10, 0x1

    goto :goto_fa

    .line 226
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "js":Lorg/json/JSONStringer;
    .end local v5    # "json":Ljava/lang/String;
    .end local v6    # "response":Lcom/qinggan/tsp/models/Update/StatusResponse;
    .end local v8    # "userProfile":Lorg/json/JSONObject;
    .end local v9    # "version":Ljava/lang/String;
    :cond_110
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z

    .line 228
    const/4 v10, 0x0

    goto :goto_fa
.end method

.method public uploadResult(IJJ)V
    .registers 7
    .param p1, "code"    # I
    .param p2, "taskId"    # J
    .param p4, "taskItemId"    # J

    .prologue
    .line 322
    iput p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResult:I

    .line 323
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z

    if-eqz v0, :cond_d

    .line 324
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z

    .line 325
    invoke-virtual {p0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->uploadResultImpl()V

    .line 329
    :goto_c
    return-void

    .line 327
    :cond_d
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z

    goto :goto_c
.end method

.method public uploadResultImpl()V
    .registers 11

    .prologue
    .line 338
    :try_start_0
    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 339
    invoke-static {v7}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 340
    .local v6, "version":Ljava/lang/String;
    iget v7, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResult:I

    invoke-direct {p0, v7}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->convertCode(I)Ljava/lang/String;

    move-result-object v1

    .line 341
    .local v1, "errorCode":Ljava/lang/String;
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 342
    .local v3, "item":Lorg/json/JSONObject;
    const-string v7, "deviceId"

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPDSN:Ljava/lang/String;

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "deviceType"

    const-string v9, "4"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "currentVersion"

    .line 343
    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "applicationType"

    const-string v9, "03"

    invoke-virtual {v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "upgradeStatus"

    iget v7, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResult:I

    if-nez v7, :cond_a8

    const-string v7, "1"

    .line 344
    :goto_37
    invoke-virtual {v8, v9, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v7

    const-string v8, "errorCode"

    .line 345
    invoke-virtual {v7, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    if-eqz v7, :cond_68

    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    if-eqz v7, :cond_68

    .line 348
    const-string v7, "targetVersion"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v9, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMpuVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "_"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    sget-object v9, Lcom/qinggan/otaservice/common/SYSCache;->sCachedDstMcuVersion:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    :cond_68
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "saveResult is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    invoke-virtual {v7, v3}, Lcom/qinggan/tsp/TspManager;->saveResult(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/SaveResultResponse;

    move-result-object v5

    .line 353
    .local v5, "response":Lcom/qinggan/tsp/models/Update/SaveResultResponse;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 354
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, v5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 355
    .local v4, "json":Ljava/lang/String;
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Response is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v4    # "json":Ljava/lang/String;
    .end local v5    # "response":Lcom/qinggan/tsp/models/Update/SaveResultResponse;
    .end local v6    # "version":Ljava/lang/String;
    :goto_a7
    return-void

    .line 343
    .restart local v1    # "errorCode":Ljava/lang/String;
    .restart local v3    # "item":Lorg/json/JSONObject;
    .restart local v6    # "version":Ljava/lang/String;
    :cond_a8
    const-string v7, "0"
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_aa} :catch_ab

    goto :goto_37

    .line 356
    .end local v1    # "errorCode":Ljava/lang/String;
    .end local v3    # "item":Lorg/json/JSONObject;
    .end local v6    # "version":Ljava/lang/String;
    :catch_ab
    move-exception v0

    .line 357
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a7
.end method
