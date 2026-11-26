.class public Lcom/qinggan/otaservice/engine/SYSVersionManager;
.super Ljava/lang/Object;
.source "SYSVersionManager.java"


# static fields
.field private static sInstance:Lcom/qinggan/otaservice/engine/SYSVersionManager;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sInstance:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-class v0, Lcom/qinggan/otaservice/engine/SYSVersionManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method private findLatestVersion(Ljava/util/ArrayList;)I
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 23
    .local p1, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v2, 0x0

    .line 24
    .local v2, "index":I
    const/4 v3, 0x0

    .line 25
    .local v3, "mLatestVersionBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_f

    .line 26
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "mLatestVersionBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v3, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 28
    .restart local v3    # "mLatestVersionBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_f
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_10
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_2f

    .line 29
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 30
    .local v0, "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 31
    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    .line 30
    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_2c

    .line 32
    move-object v3, v0

    .line 33
    move v2, v1

    .line 28
    :cond_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 36
    .end local v0    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_2f
    return v2
.end method

.method private findLatestVersion(Ljava/util/HashMap;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 40
    .local p1, "versionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const-string v2, ""

    .line 41
    .local v2, "mLatestVersion":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 42
    .local v1, "keySet":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 43
    .local v3, "mList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_18

    .line 44
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "mLatestVersion":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .line 46
    .restart local v2    # "mLatestVersion":Ljava/lang/String;
    :cond_18
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_19
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2f

    .line 47
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 48
    .local v4, "tempVersion":Ljava/lang/String;
    invoke-static {v4, v2}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_2c

    .line 49
    move-object v2, v4

    .line 46
    :cond_2c
    add-int/lit8 v0, v0, 0x1

    goto :goto_19

    .line 52
    .end local v4    # "tempVersion":Ljava/lang/String;
    :cond_2f
    return-object v2
.end method

.method public static getInstance()Lcom/qinggan/otaservice/engine/SYSVersionManager;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sInstance:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    if-nez v0, :cond_b

    .line 17
    new-instance v0, Lcom/qinggan/otaservice/engine/SYSVersionManager;

    invoke-direct {v0}, Lcom/qinggan/otaservice/engine/SYSVersionManager;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sInstance:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    .line 19
    :cond_b
    sget-object v0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->sInstance:Lcom/qinggan/otaservice/engine/SYSVersionManager;

    return-object v0
.end method


# virtual methods
.method public getUpgradeListByVersionDesc(Lcom/qinggan/otaservice/engine/SYSVersionInfo;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 13
    .param p1, "targetBean"    # Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .param p3, "baseVersion"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p2, "sortedlist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    iget-object v6, p0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Get Upgrade List By Version Code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 143
    invoke-virtual {p1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 140
    invoke-static {v6, v7}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 146
    .local v3, "mRetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_21
    invoke-virtual {p1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getDependencyVersionCode()Ljava/lang/String;

    move-result-object v0

    .line 147
    .local v0, "dependVersionCode":Ljava/lang/String;
    invoke-static {p3, v0}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_47

    .line 148
    invoke-virtual {p1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v6

    sget-object v7, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 149
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v7

    if-eq v6, v7, :cond_47

    sget-boolean v6, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-nez v6, :cond_4b

    .line 150
    invoke-virtual {p1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v6

    sget-object v7, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 151
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v7

    if-ne v6, v7, :cond_4b

    .line 152
    :cond_47
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 175
    :goto_4a
    return-object v3

    .line 155
    :cond_4b
    const/4 v1, 0x0

    .line 156
    .local v1, "hasAvailableBean":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_4d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v2, v6, :cond_68

    .line 157
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 158
    .local v4, "tempBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    .line 159
    .local v5, "tempVersionCode":Ljava/lang/String;
    invoke-static {v0, v5}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-nez v6, :cond_8c

    .line 161
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    move-object p1, v4

    .line 163
    const/4 v1, 0x1

    .line 167
    .end local v4    # "tempBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .end local v5    # "tempVersionCode":Ljava/lang/String;
    :cond_68
    if-nez v1, :cond_21

    .line 168
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 169
    iget-object v6, p0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Dependency Version Code = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " Can\'t Found"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4a

    .line 156
    .restart local v4    # "tempBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .restart local v5    # "tempVersionCode":Ljava/lang/String;
    :cond_8c
    add-int/lit8 v2, v2, 0x1

    goto :goto_4d
.end method

.method public isVersionSuitToUpgrade(Lcom/qinggan/otaservice/engine/SYSVersionInfo;)Z
    .registers 7
    .param p1, "bean"    # Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .prologue
    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "isHigherThanBackup":Z
    const/4 v1, 0x0

    .line 104
    .local v1, "isHigherThanCurrent":Z
    sget-boolean v2, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v2, :cond_10

    const-string v2, ""

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_41

    .line 105
    :cond_10
    const/4 v0, 0x1

    .line 112
    :cond_11
    :goto_11
    const-string v2, ""

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4f

    .line 113
    const/4 v1, 0x1

    .line 120
    :cond_1c
    :goto_1c
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Update File Version, Higher than Backup = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", Higher than Current = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    and-int v2, v0, v1

    return v2

    .line 107
    :cond_41
    invoke-virtual {p1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sBackupVersionCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_11

    .line 109
    const/4 v0, 0x1

    goto :goto_11

    .line 115
    :cond_4f
    invoke-virtual {p1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-lez v2, :cond_1c

    .line 117
    const/4 v1, 0x1

    goto :goto_1c
.end method

.method public setNeedSync(Z)V
    .registers 5
    .param p1, "flag"    # Z

    .prologue
    .line 179
    sget-boolean v0, Lcom/qinggan/otaservice/common/SYSCache;->sNeedSyncSYS:Z

    if-eq v0, p1, :cond_1f

    .line 180
    sput-boolean p1, Lcom/qinggan/otaservice/common/SYSCache;->sNeedSyncSYS:Z

    .line 181
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Set SYS Need Sync, Flag = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :goto_1e
    return-void

    .line 183
    :cond_1f
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sync Flag is Already "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logi(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public sortListByVersionDesc(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 82
    .local v3, "mRetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v0, 0x0

    .line 83
    .local v0, "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    const/4 v2, 0x0

    .line 84
    .local v2, "index":I
    const/4 v1, 0x0

    .line 85
    .local v1, "i":I
    :goto_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_21

    .line 86
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->findLatestVersion(Ljava/util/ArrayList;)I

    move-result v2

    .line 87
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 88
    .restart local v0    # "bean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v3, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 89
    add-int/lit8 v1, v1, 0x1

    .line 90
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_8

    .line 92
    :cond_21
    return-object v3
.end method

.method public sortListByVersionDesc(Ljava/util/HashMap;)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "versionMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 63
    .local v0, "mRetList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v2, 0x0

    .line 64
    .local v2, "versionInfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :goto_6
    invoke-virtual {p1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1d

    .line 65
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/engine/SYSVersionManager;->findLatestVersion(Ljava/util/HashMap;)Ljava/lang/String;

    move-result-object v1

    .line 66
    .local v1, "version":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "versionInfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    check-cast v2, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 67
    .restart local v2    # "versionInfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 70
    .end local v1    # "version":Ljava/lang/String;
    :cond_1d
    return-object v0
.end method
