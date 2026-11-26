.class public Lcom/qinggan/otaservice/common/SingleUpgradeThread;
.super Ljava/lang/Thread;
.source "SingleUpgradeThread.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

.field private mLocal:Z

.field private mService:Lcom/qinggan/otaservice/OTAService;

.field private mSilence:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/qinggan/otaservice/OTAService;ZZLcom/qinggan/otaservice/engine/ServerAdapter;)V
    .registers 6
    .param p1, "service"    # Lcom/qinggan/otaservice/OTAService;
    .param p2, "local"    # Z
    .param p3, "silence"    # Z
    .param p4, "adapter"    # Lcom/qinggan/otaservice/engine/ServerAdapter;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 22
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mSilence:Z

    .line 24
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    .line 27
    const-class v0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->setName(Ljava/lang/String;)V

    .line 28
    iput-object p1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    .line 29
    iput-boolean p2, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mLocal:Z

    .line 30
    iput-boolean p3, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mSilence:Z

    .line 31
    iput-object p4, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    .line 32
    return-void
.end method


# virtual methods
.method public run()V
    .registers 15

    .prologue
    const/4 v4, 0x6

    const/4 v2, 0x3

    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 36
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v1, :cond_195

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_195

    .line 37
    const-string v6, ""

    .line 38
    .local v6, "cmd":Ljava/lang/String;
    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->NA:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v11

    .line 40
    .local v11, "type":I
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v13, :cond_c7

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 41
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v1

    sget-object v3, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_c7

    .line 42
    sget-object v1, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->TAG:Ljava/lang/String;

    const-string v3, "factory case"

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v11

    .line 44
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 65
    :cond_60
    :goto_60
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_173

    .line 66
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v1

    if-eqz v1, :cond_89

    .line 67
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherCombinedUpdateString()Ljava/lang/String;

    move-result-object v10

    .line 68
    .local v10, "otherCmd":Ljava/lang/String;
    const-string v1, ":"

    invoke-virtual {v10, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_15a

    .line 69
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 74
    .end local v10    # "otherCmd":Ljava/lang/String;
    :cond_89
    :goto_89
    sget-object v1, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "write cmd: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    invoke-static {v11, v6}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateAllCommand(ILjava/lang/String;)V

    .line 76
    const-string v1, "--"

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 77
    iget-boolean v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mSilence:Z

    if-nez v1, :cond_bc

    .line 78
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 80
    :cond_bc
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 81
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v12}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 118
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v11    # "type":I
    :goto_c6
    return-void

    .line 47
    .restart local v6    # "cmd":Ljava/lang/String;
    .restart local v11    # "type":I
    :cond_c7
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ne v1, v13, :cond_111

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 49
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v1

    sget-object v3, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_111

    .line 50
    sget-object v1, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->TAG:Ljava/lang/String;

    const-string v3, "full ota case"

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v11

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_60

    .line 56
    :cond_111
    sget-object v1, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->TAG:Ljava/lang/String;

    const-string v3, "other case"

    invoke-static {v1, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v7, v1, -0x1

    .local v7, "i":I
    :goto_120
    if-ltz v7, :cond_60

    .line 58
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 59
    .local v8, "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v8}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v1

    sget-object v3, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v3

    if-ne v1, v3, :cond_157

    .line 60
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ":"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v8}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 61
    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v11

    .line 57
    :cond_157
    add-int/lit8 v7, v7, -0x1

    goto :goto_120

    .line 71
    .end local v7    # "i":I
    .end local v8    # "info":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .restart local v10    # "otherCmd":Ljava/lang/String;
    :cond_15a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_89

    .line 84
    .end local v10    # "otherCmd":Ljava/lang/String;
    :cond_173
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    if-eqz v1, :cond_189

    .line 86
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_INSTALL"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "\u5347\u7ea7\u5305\u5b89\u88c5\u5931\u8d25"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    .local v0, "installInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 90
    .end local v0    # "installInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_189
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v13}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 91
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v12}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_c6

    .line 94
    .end local v6    # "cmd":Ljava/lang/String;
    .end local v11    # "type":I
    :cond_195
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v9

    .line 95
    .local v9, "other":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1c9

    .line 96
    sget-object v1, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->TAG:Ljava/lang/String;

    const-string v2, "upgrade : go to recovery"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->needRebootToUpdate()Z

    move-result v1

    if-eqz v1, :cond_1af

    .line 98
    invoke-static {v9}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 100
    :cond_1af
    const-string v1, "--"

    invoke-static {v1}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 101
    iget-boolean v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mSilence:Z

    if-nez v1, :cond_1bd

    .line 102
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1}, Lcom/qinggan/otaservice/OTAService;->writeDstVersion()V

    .line 104
    :cond_1bd
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v4}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    .line 105
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v12}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_c6

    .line 108
    :cond_1c9
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    if-eqz v1, :cond_1df

    .line 110
    new-instance v0, Lcom/qinggan/otaservice/common/OtaProcessInfo;

    const-string v1, "PACKAGE_INSTALL"

    const-string v3, ""

    const-string v4, ""

    const-string v5, "\u5347\u7ea7\u5305\u5b89\u88c5\u5931\u8d25"

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/otaservice/common/OtaProcessInfo;-><init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    .restart local v0    # "installInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;

    invoke-interface {v1, v0}, Lcom/qinggan/otaservice/engine/ServerAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V

    .line 114
    .end local v0    # "installInfo":Lcom/qinggan/otaservice/common/OtaProcessInfo;
    :cond_1df
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v13}, Lcom/qinggan/otaservice/OTAService;->notifyError(I)V

    .line 115
    iget-object v1, p0, Lcom/qinggan/otaservice/common/SingleUpgradeThread;->mService:Lcom/qinggan/otaservice/OTAService;

    invoke-virtual {v1, v12}, Lcom/qinggan/otaservice/OTAService;->setState(I)V

    goto/16 :goto_c6
.end method
