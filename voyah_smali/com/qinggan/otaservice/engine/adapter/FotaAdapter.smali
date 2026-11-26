.class public Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
.super Ljava/lang/Object;
.source "FotaAdapter.java"

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

.field private mLastUpgradeTime:Ljava/lang/String;

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

.field private mRecordTaskId:J

.field private mRecordTaskItemId:J

.field private mSendTime:J

.field private mTspManager:Lcom/qinggan/tsp/TspManager;

.field private mUpdateLocalVersionPending:Z

.field private mUploadResult:I

.field private mUploadResultPending:Z

.field private final mVinCode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-class v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {}, Lcom/qinggan/os/SystemProperties;->getProductSN()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPDSN:Ljava/lang/String;

    .line 42
    invoke-static {}, Lcom/qinggan/os/SystemProperties;->getVinCode()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;

    .line 44
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mHandler:Landroid/os/Handler;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;

    .line 50
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 54
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mInit:Z

    .line 56
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUpdateLocalVersionPending:Z

    .line 58
    iput-boolean v2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResultPending:Z

    .line 59
    iput v2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResult:I

    .line 63
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .line 108
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;-><init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPushListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    .line 70
    const-string v0, "ota"

    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "last_upgrade_time"

    const-string v2, ""

    .line 71
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    .line 72
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 73
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v1, "Frist boot or After Recovery FactorySet."

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    .line 76
    :cond_56
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LastUpgradeTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    invoke-static {p1}, Lcom/qinggan/tsp/TspManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/TspManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    .line 79
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPDSN:Ljava/lang/String;

    new-instance v2, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;

    invoke-direct {v2, p0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;-><init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)V

    invoke-virtual {v0, v1, v2}, Lcom/qinggan/tsp/TspManager;->init(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$OnInitDetailListener;)V

    .line 106
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 38
    sget-object v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mInit:Z

    return v0
.end method

.method static synthetic access$1002(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 38
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mInit:Z

    return p1
.end method

.method static synthetic access$200(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPushListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Lcom/qinggan/tsp/TspManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResultPending:Z

    return v0
.end method

.method static synthetic access$402(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResultPending:Z

    return p1
.end method

.method static synthetic access$500(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUpdateLocalVersionPending:Z

    return v0
.end method

.method static synthetic access$502(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
    .param p1, "x1"    # Z

    .prologue
    .line 38
    iput-boolean p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUpdateLocalVersionPending:Z

    return p1
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Lcom/qinggan/otaservice/engine/ServerAdapterListener;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Landroid/os/Handler;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;J)J
    .registers 4
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
    .param p1, "x1"    # J

    .prologue
    .line 38
    iput-wide p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    return-wide p1
.end method

.method private doParsePackages(Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;)Z
    .registers 28
    .param p1, "resopnse"    # Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;

    .prologue
    .line 404
    if-nez p1, :cond_5

    .line 405
    const/16 v21, 0x0

    .line 512
    :goto_4
    return v21

    .line 407
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v6, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->releaseDesc:Ljava/lang/String;

    .line 408
    .local v6, "desc":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->taskSid:J

    move-wide/from16 v16, v0

    .line 409
    .local v16, "taskId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->taskItemSid:J

    move-wide/from16 v18, v0

    .line 410
    .local v18, "taskItemId":J
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->upgradeMode:I

    move/from16 v20, v0

    .line 411
    .local v20, "upgradeMode":I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v15, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->targetVersionNo:Ljava/lang/String;

    .line 412
    .local v15, "targetVersionNo":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v14, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->softwareName:Ljava/lang/String;

    .line 414
    .local v14, "softwareName":Ljava/lang/String;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v13, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->releaseTime:Ljava/lang/String;

    .line 421
    .local v13, "releaseTime":Ljava/lang/String;
    sget-object v21, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-static/range {v21 .. v21}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 422
    .local v5, "currVersion":Ljava/lang/String;
    invoke-static {v15, v5}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v21

    if-gtz v21, :cond_87

    .line 423
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "[doParsePackages] target: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " is lower than current: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 424
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 427
    :cond_87
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v22, "-------VersionResponse Info-----------"

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Desc: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "taskSid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " taskItemid: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " upgradeMode: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "targetVersion: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 431
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "softwareCode: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, " releaseTime: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v8, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->fullPkgInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;

    .line 436
    .local v8, "fullPkgInfo":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->upgradeInfo:Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$UpgradeInfo;->extraPkgInfoList:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->sort(Ljava/util/List;)Ljava/util/List;

    move-result-object v11

    .line 437
    .local v11, "patchPkgInfos":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    if-nez v8, :cond_14d

    if-nez v11, :cond_14d

    .line 438
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v22, "Pkg info null"

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 439
    const/16 v21, 0x0

    goto/16 :goto_4

    .line 442
    :cond_14d
    if-eqz v8, :cond_1fc

    .line 443
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , full pkg url  = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , full pkg size = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-wide v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgSize:J

    move-wide/from16 v24, v0

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , full pkg type = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgType:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , full pkg name = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;

    invoke-direct {v7}, Lcom/qinggan/otaservice/common/FullUpgradePkg;-><init>()V

    .line 448
    .local v7, "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    iget-object v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    .line 449
    iput-object v15, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 450
    iput-object v6, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    .line 451
    move/from16 v0, v20

    iput v0, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    .line 452
    iget-object v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->oriPkgMd5:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    .line 453
    iget-object v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgSignAlg:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    .line 454
    iget-wide v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgSize:J

    move-wide/from16 v22, v0

    move-wide/from16 v0, v22

    iput-wide v0, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    .line 455
    iget-object v0, v8, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$FullPkgInfo;->pkgSign:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iput-object v0, v7, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    .line 457
    move-object/from16 v0, p0

    iput-object v7, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 460
    .end local v7    # "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    :cond_1fc
    if-eqz v11, :cond_422

    .line 461
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1ff
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_347

    .line 462
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] targetVersion:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 463
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->targetVersionNo:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 462
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 464
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] baseVersion:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 465
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->startVersionNo:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 464
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 466
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] fileUrl:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 468
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgUrl:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 466
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 469
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] size:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 471
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgSize:J

    move-wide/from16 v24, v0

    invoke-virtual/range {v23 .. v25}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 469
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "from Tsp , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] type:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 474
    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgType:I

    move/from16 v21, v0

    move-object/from16 v0, v23

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 472
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 461
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1ff

    .line 478
    :cond_347
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v11, v6, v1}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->getUpgradeListByVersionDesc(Ljava/util/List;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v12

    .line 479
    .local v12, "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    if-eqz v12, :cond_41e

    .line 480
    const/4 v9, 0x0

    :goto_352
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v21

    move/from16 v0, v21

    if-ge v9, v0, :cond_41e

    .line 481
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "after sorted , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] swReference:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 482
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 481
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 483
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "after sorted , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] swAppliedReference:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 485
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 483
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 486
    sget-object v22, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "after sorted , patch["

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v23, "] fileUrl:"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    .line 487
    invoke-interface {v12, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    .line 486
    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 480
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_352

    .line 491
    :cond_41e
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    .line 494
    .end local v9    # "i":I
    .end local v12    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    :cond_422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Ljava/util/List;->isEmpty()Z

    move-result v21

    if-nez v21, :cond_4cf

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v21, v0

    if-eqz v21, :cond_4cf

    .line 495
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v22, "compare full & patch , choose the latest package"

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    move-object/from16 v22, v0

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->size()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 497
    .local v10, "patch":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "compare ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "] ["

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    iget-object v0, v10, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "]"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 499
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v21, v0

    iget-object v0, v10, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    move-object/from16 v22, v0

    invoke-static/range {v21 .. v22}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 501
    .local v4, "compare":I
    sget-object v21, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "compare result , "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 502
    if-eqz v4, :cond_4cf

    .line 503
    if-lez v4, :cond_4e0

    .line 504
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    .line 510
    .end local v4    # "compare":I
    .end local v10    # "patch":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_4cf
    :goto_4cf
    invoke-static/range {v16 .. v19}, Lcom/qinggan/otaservice/common/Tool;->updateTaskId(JJ)V

    .line 511
    invoke-static {v13}, Lcom/qinggan/otaservice/common/Tool;->covertTimeToLong(Ljava/lang/String;)J

    move-result-wide v22

    move-wide/from16 v0, v22

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mSendTime:J

    .line 512
    const/16 v21, 0x1

    goto/16 :goto_4

    .line 506
    .restart local v4    # "compare":I
    .restart local v10    # "patch":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_4e0
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    goto :goto_4cf
.end method

.method private findSuitableBean(Ljava/lang/String;Ljava/util/List;)Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    .registers 7
    .param p1, "dependVersionCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;",
            ">;)",
            "Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;"
        }
    .end annotation

    .prologue
    .line 575
    .local p2, "sortedlist":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    .line 576
    .local v0, "tempBean":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    iget-object v1, v0, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->startVersionNo:Ljava/lang/String;

    .line 577
    .local v1, "tempVersionCode":Ljava/lang/String;
    invoke-static {p1, v1}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-nez v3, :cond_4

    .line 582
    .end local v0    # "tempBean":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    .end local v1    # "tempVersionCode":Ljava/lang/String;
    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private getUpgradeListByVersionDesc(Ljava/util/List;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 14
    .param p2, "desc"    # Ljava/lang/String;
    .param p3, "updateMode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;",
            ">;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 536
    .local p1, "sortedlist":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 537
    .local v2, "mRetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    const-string v0, ""

    .line 538
    .local v0, "dependVersionCode":Ljava/lang/String;
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v6, v7, :cond_22

    .line 539
    sget-object v6, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v7, "Android 9.0 or above,use current code"

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 547
    :goto_16
    invoke-direct {p0, v0, p1}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->findSuitableBean(Ljava/lang/String;Ljava/util/List;)Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    move-result-object v5

    .line 549
    .local v5, "targetBean":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    if-eqz v5, :cond_2c

    .line 550
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    iget-object v0, v5, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->targetVersionNo:Ljava/lang/String;

    .line 554
    goto :goto_16

    .line 542
    .end local v5    # "targetBean":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    :cond_22
    sget-boolean v6, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v6, :cond_29

    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    :goto_28
    goto :goto_16

    :cond_29
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    goto :goto_28

    .line 555
    .restart local v5    # "targetBean":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    :cond_2c
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 556
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_35
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6a

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    .line 557
    .local v3, "p":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    new-instance v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    invoke-direct {v4}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;-><init>()V

    .line 558
    .local v4, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    iget-object v7, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->startVersionNo:Ljava/lang/String;

    iput-object v7, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    .line 559
    iput-object p2, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->features:Ljava/lang/String;

    .line 560
    iget-object v7, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->targetVersionNo:Ljava/lang/String;

    iput-object v7, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 561
    iget-object v7, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgUrl:Ljava/lang/String;

    iput-object v7, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    .line 562
    iput p3, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->type:I

    .line 563
    iget-object v7, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->oriPkgMd5:Ljava/lang/String;

    iput-object v7, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->checkCode:Ljava/lang/String;

    .line 564
    iget-object v7, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgSignAlg:Ljava/lang/String;

    iput-object v7, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signAlg:Ljava/lang/String;

    .line 565
    iget-wide v8, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgSize:J

    iput-wide v8, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    .line 566
    iget-object v7, v3, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->pkgSign:Ljava/lang/String;

    iput-object v7, v4, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signInfo:Ljava/lang/String;

    .line 567
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_35

    .line 569
    .end local v3    # "p":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    .end local v4    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_6a
    return-object v1
.end method

.method private sort(Ljava/util/List;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 517
    .local p1, "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    if-nez p1, :cond_4

    .line 518
    const/4 p1, 0x0

    .line 530
    .end local p1    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    :goto_3
    return-object p1

    .line 519
    .restart local p1    # "patchs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;>;"
    :cond_4
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$4;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$4;-><init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)V

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_3
.end method


# virtual methods
.method public finishDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 393
    return-void
.end method

.method public getErrorCode()J
    .registers 3

    .prologue
    .line 401
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    return-wide v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 2

    .prologue
    .line 377
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

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
    .line 382
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    return-object v0
.end method

.method public getSendTime()J
    .registers 3

    .prologue
    .line 387
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mSendTime:J

    return-wide v0
.end method

.method public processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V
    .registers 3
    .param p1, "processInfo"    # Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .prologue
    .line 337
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;-><init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 372
    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->start()V

    .line 373
    return-void
.end method

.method public searchUpdate(I)Z
    .registers 16
    .param p1, "createType"    # I

    .prologue
    const-wide/16 v12, 0x3e7

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 238
    :try_start_4
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "searchUpdate type: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 239
    const/4 v8, 0x0

    iput-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 240
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    iput-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mPatchPkgs:Ljava/util/List;

    .line 241
    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 242
    invoke-static {v8}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 243
    .local v5, "version":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 244
    .local v2, "item":Lorg/json/JSONObject;
    if-nez p1, :cond_ba

    .line 245
    sget-wide v8, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    const-wide/16 v10, -0x1

    cmp-long v8, v8, v10

    if-nez v8, :cond_47

    .line 246
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v8, "TaskId Error"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    const-string v7, "TaskId\u9519\u8bef"

    iput-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;

    .line 292
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v5    # "version":Ljava/lang/String;
    :goto_46
    return v6

    .line 250
    .restart local v2    # "item":Lorg/json/JSONObject;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_47
    const-string v8, "objectType"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "objectId"

    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "softwareCode"

    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    .line 251
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "runningVersionNo"

    .line 252
    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "upgradeVersionNo"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "createType"

    const/4 v10, 0x0

    .line 253
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "taskSid"

    sget-wide v10, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    invoke-virtual {v8, v9, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "upgradeTime"

    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    .line 254
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 262
    :cond_80
    :goto_80
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "searchUpdate request is: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    invoke-virtual {v8, v2}, Lcom/qinggan/tsp/TspManager;->versionCheck(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;

    move-result-object v4

    .line 266
    .local v4, "response":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;
    if-nez v4, :cond_ee

    .line 267
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v8, "searchUpdate response null"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 268
    const-wide/16 v8, 0x3e7

    iput-wide v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J
    :try_end_ab
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_ab} :catch_ac

    goto :goto_46

    .line 286
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;
    .end local v5    # "version":Ljava/lang/String;
    :catch_ac
    move-exception v0

    .line 287
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v8, "searchUpdate may network error"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    iput-wide v12, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 289
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_46

    .line 255
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v2    # "item":Lorg/json/JSONObject;
    .restart local v5    # "version":Ljava/lang/String;
    :cond_ba
    if-ne p1, v7, :cond_80

    .line 256
    :try_start_bc
    const-string v8, "objectType"

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "objectId"

    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;

    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "softwareCode"

    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    .line 257
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "runningVersionNo"

    .line 258
    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "upgradeVersionNo"

    invoke-virtual {v8, v9, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "createType"

    const/4 v10, 0x1

    .line 259
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "upgradeTime"

    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    .line 260
    invoke-virtual {v8, v9, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_80

    .line 271
    .restart local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;
    :cond_ee
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 272
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 273
    .local v3, "json":Ljava/lang/String;
    sget-object v8, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "searchUpdate Response is :"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    iget-object v8, v4, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->code:Ljava/lang/String;

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_127

    .line 275
    iget-object v7, v4, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->code:Ljava/lang/String;

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    iput-wide v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 276
    iget-object v7, v4, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;->description:Ljava/lang/String;

    iput-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;

    goto/16 :goto_46

    .line 280
    :cond_127
    invoke-direct {p0, v4}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->doParsePackages(Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;)Z

    move-result v8

    if-nez v8, :cond_13a

    .line 281
    sget-object v7, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v8, "Parse Packages failed"

    invoke-static {v7, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    const-string v7, "\u5347\u7ea7\u5305\u89e3\u6790\u5f02\u5e38"

    iput-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;
    :try_end_138
    .catch Ljava/lang/Exception; {:try_start_bc .. :try_end_138} :catch_ac

    goto/16 :goto_46

    :cond_13a
    move v6, v7

    .line 292
    goto/16 :goto_46
.end method

.method public setListener(Lcom/qinggan/otaservice/engine/ServerAdapterListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .prologue
    .line 162
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .line 163
    return-void
.end method

.method public updateLocalVersion(Z)Z
    .registers 15
    .param p1, "currentSys"    # Z

    .prologue
    .line 167
    iget-boolean v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mInit:Z

    if-eqz v10, :cond_11f

    .line 168
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUpdateLocalVersionPending:Z

    .line 170
    :try_start_7
    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 171
    invoke-static {v10}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 172
    .local v7, "version":Ljava/lang/String;
    if-nez p1, :cond_4c

    .line 173
    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mcu"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_d2

    .line 174
    invoke-static {}, Lcom/qinggan/otaservice/engine/NativeManager;->getBootSystem()I

    move-result v5

    .line 175
    .local v5, "systemId":I
    const-string v0, ""

    .line 176
    .local v0, "backupMcuVersion":Ljava/lang/String;
    if-nez v5, :cond_c7

    .line 177
    const/16 v10, 0x3d

    .line 178
    invoke-static {v10}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v0

    .line 183
    :cond_2b
    :goto_2b
    invoke-static {v0}, Lcom/qinggan/otaservice/common/Tool;->nvdataIsLegal(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_33

    .line 184
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 186
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

    move-result-object v7

    .line 194
    .end local v0    # "backupMcuVersion":Ljava/lang/String;
    .end local v5    # "systemId":I
    :cond_4c
    :goto_4c
    new-instance v6, Lorg/json/JSONObject;

    invoke-direct {v6}, Lorg/json/JSONObject;-><init>()V

    .line 195
    .local v6, "updateInfo":Lorg/json/JSONObject;
    new-instance v9, Lorg/json/JSONArray;

    invoke-direct {v9}, Lorg/json/JSONArray;-><init>()V

    .line 196
    .local v9, "versionList":Lorg/json/JSONArray;
    new-instance v8, Lorg/json/JSONObject;

    invoke-direct {v8}, Lorg/json/JSONObject;-><init>()V

    .line 197
    .local v8, "versionInfo":Lorg/json/JSONObject;
    const-string v10, "runningVersionNo"

    sget-object v11, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-static {v11}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "upgradeVersionNo"

    .line 198
    invoke-virtual {v10, v11, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "softwareCode"

    sget-object v12, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    .line 199
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "upgradeTime"

    iget-object v12, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mLastUpgradeTime:Ljava/lang/String;

    .line 200
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 201
    invoke-virtual {v9, v8}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 202
    const-string v10, "objectId"

    iget-object v11, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;

    invoke-virtual {v6, v10, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "objectType"

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "fotaFlag"

    const/4 v12, 0x1

    .line 203
    invoke-virtual {v10, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v10

    const-string v11, "versionList"

    invoke-virtual {v10, v11, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 204
    sget-object v10, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLocalVersion info :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    invoke-virtual {v10, v6}, Lcom/qinggan/tsp/TspManager;->versionReport(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;

    move-result-object v4

    .line 208
    .local v4, "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    if-nez v4, :cond_da

    .line 209
    sget-object v10, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    const-string v11, "updateLocalVersion response null"

    invoke-static {v10, v11}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    const-wide/16 v10, 0x3e7

    iput-wide v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 211
    const/4 v10, 0x0

    .line 232
    .end local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .end local v6    # "updateInfo":Lorg/json/JSONObject;
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "versionInfo":Lorg/json/JSONObject;
    .end local v9    # "versionList":Lorg/json/JSONArray;
    :goto_c6
    return v10

    .line 179
    .restart local v0    # "backupMcuVersion":Ljava/lang/String;
    .restart local v5    # "systemId":I
    .restart local v7    # "version":Ljava/lang/String;
    :cond_c7
    const/4 v10, 0x1

    if-ne v5, v10, :cond_2b

    .line 180
    const/16 v10, 0x3c

    .line 181
    invoke-static {v10}, Lcom/qinggan/os/SystemProperties;->nvramRead(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2b

    .line 189
    .end local v0    # "backupMcuVersion":Ljava/lang/String;
    .end local v5    # "systemId":I
    :cond_d2
    sget-object v10, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    .line 190
    invoke-static {v10}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_4c

    .line 214
    .restart local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .restart local v6    # "updateInfo":Lorg/json/JSONObject;
    .restart local v8    # "versionInfo":Lorg/json/JSONObject;
    .restart local v9    # "versionList":Lorg/json/JSONArray;
    :cond_da
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 215
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "json":Ljava/lang/String;
    sget-object v10, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "updateLocalVersion Response is :"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v10, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->code:Ljava/lang/String;

    const-string v11, "0"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_11d

    .line 219
    iget-object v10, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->code:Ljava/lang/String;

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 220
    iget-object v10, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->description:Ljava/lang/String;

    iput-object v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;
    :try_end_111
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_111} :catch_113

    .line 221
    const/4 v10, 0x0

    goto :goto_c6

    .line 223
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .end local v6    # "updateInfo":Lorg/json/JSONObject;
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "versionInfo":Lorg/json/JSONObject;
    .end local v9    # "versionList":Lorg/json/JSONArray;
    :catch_113
    move-exception v1

    .line 224
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 225
    const-wide/16 v10, 0x3e7

    iput-wide v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 226
    const/4 v10, 0x0

    goto :goto_c6

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local v2    # "gson":Lcom/google/gson/Gson;
    .restart local v3    # "json":Ljava/lang/String;
    .restart local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .restart local v6    # "updateInfo":Lorg/json/JSONObject;
    .restart local v7    # "version":Ljava/lang/String;
    .restart local v8    # "versionInfo":Lorg/json/JSONObject;
    .restart local v9    # "versionList":Lorg/json/JSONArray;
    :cond_11d
    const/4 v10, 0x1

    goto :goto_c6

    .line 230
    .end local v2    # "gson":Lcom/google/gson/Gson;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .end local v6    # "updateInfo":Lorg/json/JSONObject;
    .end local v7    # "version":Ljava/lang/String;
    .end local v8    # "versionInfo":Lorg/json/JSONObject;
    .end local v9    # "versionList":Lorg/json/JSONArray;
    :cond_11f
    const/4 v10, 0x1

    iput-boolean v10, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUpdateLocalVersionPending:Z

    .line 232
    const/4 v10, 0x0

    goto :goto_c6
.end method

.method public uploadResult(IJJ)V
    .registers 8
    .param p1, "code"    # I
    .param p2, "taskId"    # J
    .param p4, "taskItemId"    # J

    .prologue
    .line 297
    iput p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResult:I

    .line 298
    iput-wide p2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mRecordTaskId:J

    .line 299
    iput-wide p4, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mRecordTaskItemId:J

    .line 300
    iget-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mInit:Z

    if-eqz v0, :cond_11

    .line 301
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResultPending:Z

    .line 302
    invoke-virtual {p0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->uploadResultImpl()V

    .line 306
    :goto_10
    return-void

    .line 304
    :cond_11
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResultPending:Z

    goto :goto_10
.end method

.method public uploadResultImpl()V
    .registers 11

    .prologue
    .line 310
    :try_start_0
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 311
    invoke-static {v6}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 312
    .local v5, "version":Ljava/lang/String;
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 313
    .local v2, "item":Lorg/json/JSONObject;
    const-string v6, "objectType"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "objectId"

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "softwareCode"

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sSoftWareCode:Ljava/lang/String;

    .line 314
    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "status"

    iget v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mUploadResult:I

    .line 315
    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "statusDes"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "runningVersionNo"

    .line 316
    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "upgradeVersionNo"

    invoke-virtual {v6, v7, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "taskSid"

    iget-wide v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mRecordTaskId:J

    .line 317
    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "taskItemSid"

    iget-wide v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mRecordTaskItemId:J

    invoke-virtual {v6, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "endTime"

    .line 318
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentTime()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 319
    sget-object v6, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upgradeResultReport is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    iget-object v6, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;

    invoke-virtual {v6, v2}, Lcom/qinggan/tsp/TspManager;->upgradeResultReport(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;

    move-result-object v4

    .line 321
    .local v4, "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 322
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 323
    .local v3, "json":Ljava/lang/String;
    sget-object v6, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "upgradeResultReport Response is :"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 324
    if-eqz v4, :cond_b2

    iget-object v6, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->code:Ljava/lang/String;

    const-string v7, "0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_b2

    .line 325
    iget-object v6, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->code:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J

    .line 326
    iget-object v6, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->description:Ljava/lang/String;

    iput-object v6, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;
    :try_end_b2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b2} :catch_b3

    .line 331
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .end local v5    # "version":Ljava/lang/String;
    :cond_b2
    :goto_b2
    return-void

    .line 328
    :catch_b3
    move-exception v0

    .line 329
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b2
.end method
