.class public Lcom/qinggan/otaservice/common/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 18
    const-class v0, Lcom/qinggan/otaservice/common/FileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized clearDownloadedFilesSdcard(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    const-class v1, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/media/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/download/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Lcom/qinggan/otaservice/common/FileUtils;->delAllOldFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 89
    monitor-exit v1

    return-void

    .line 87
    :catchall_28
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearDownloadedFilesSdcard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseVersion"    # Ljava/lang/String;

    .prologue
    .line 101
    const-class v1, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/media/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/download/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0, p1, v2}, Lcom/qinggan/otaservice/common/FileUtils;->delAllOldFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 102
    monitor-exit v1

    return-void

    .line 101
    :catchall_26
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearDownloadedFilesUdisk(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 92
    const-class v2, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 93
    .local v0, "udiskPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_26

    .line 94
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/download/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Lcom/qinggan/otaservice/common/FileUtils;->delAllOldFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_26
    .catchall {:try_start_3 .. :try_end_26} :catchall_28

    .line 97
    :cond_26
    monitor-exit v2

    return-void

    .line 92
    .end local v0    # "udiskPath":Ljava/lang/String;
    :catchall_28
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized clearDownloadedFilesUdisk(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "baseVersion"    # Ljava/lang/String;

    .prologue
    .line 106
    const-class v2, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    .local v0, "udiskPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_24

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/download/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {v1, p1, v3}, Lcom/qinggan/otaservice/common/FileUtils;->delAllOldFile(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_24
    .catchall {:try_start_3 .. :try_end_24} :catchall_26

    .line 110
    :cond_24
    monitor-exit v2

    return-void

    .line 106
    .end local v0    # "udiskPath":Ljava/lang/String;
    :catchall_26
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static declared-synchronized clearUpdateFilesSdcard(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const-class v1, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v1

    :try_start_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/media/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/update/"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qinggan/otaservice/common/FileUtils;->delAllFile(Ljava/lang/String;)Z
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_25

    .line 114
    monitor-exit v1

    return-void

    .line 113
    :catchall_25
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized clearUpdateFilesUdisk(Landroid/content/Context;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-class v2, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v2

    :try_start_3
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 118
    .local v0, "udiskPath":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_29

    invoke-static {p0}, Lcom/qinggan/otaservice/common/FileUtils;->isFlagFileExist(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/update/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/otaservice/common/FileUtils;->delAllFile(Ljava/lang/String;)Z
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2b

    .line 121
    :cond_29
    monitor-exit v2

    return-void

    .line 117
    .end local v0    # "udiskPath":Ljava/lang/String;
    :catchall_2b
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public static createFlagFile(Landroid/content/Context;)V
    .registers 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 63
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 64
    .local v2, "udiskPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2c

    .line 66
    :try_start_a
    new-instance v1, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/update/temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 68
    sget-object v3, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    const-string v4, "create temp file"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2c} :catch_2d

    .line 73
    .end local v1    # "f":Ljava/io/File;
    :cond_2c
    :goto_2c
    return-void

    .line 69
    :catch_2d
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c
.end method

.method public static declared-synchronized delAllFile(Ljava/lang/String;)Z
    .registers 12
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 174
    const-class v8, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v8

    const/4 v1, 0x0

    .line 175
    .local v1, "flag":Z
    :try_start_4
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 176
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_c
    .catchall {:try_start_4 .. :try_end_c} :catchall_10a

    move-result v7

    if-nez v7, :cond_13

    move v2, v1

    .end local v1    # "flag":Z
    .local v2, "flag":Z
    move v3, v1

    .line 207
    .end local v2    # "flag":Z
    .local v3, "flag":I
    :goto_11
    monitor-exit v8

    return v3

    .line 179
    .end local v3    # "flag":I
    .restart local v1    # "flag":Z
    :cond_13
    :try_start_13
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_1c

    move v2, v1

    .end local v1    # "flag":Z
    .restart local v2    # "flag":Z
    move v3, v1

    .line 180
    .restart local v3    # "flag":I
    goto :goto_11

    .line 182
    .end local v2    # "flag":Z
    .end local v3    # "flag":I
    .restart local v1    # "flag":Z
    :cond_1c
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 183
    .local v6, "tempList":[Ljava/lang/String;
    if-eqz v6, :cond_10d

    .line 184
    const/4 v5, 0x0

    .line 185
    .local v5, "temp":Ljava/io/File;
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_24
    array-length v7, v6

    if-ge v4, v7, :cond_10d

    .line 186
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_b1

    .line 187
    new-instance v5, Ljava/io/File;

    .end local v5    # "temp":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 191
    .restart local v5    # "temp":Ljava/io/File;
    :goto_47
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_72

    .line 192
    sget-object v7, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "del : ["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "]"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 195
    :cond_72
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_ad

    .line 196
    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v7}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_d1

    .line 197
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/otaservice/common/FileUtils;->delAllFile(Ljava/lang/String;)Z

    .line 198
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/otaservice/common/FileUtils;->delFolder(Ljava/lang/String;)V

    .line 203
    :goto_ac
    const/4 v1, 0x1

    .line 185
    :cond_ad
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_24

    .line 189
    :cond_b1
    new-instance v5, Ljava/io/File;

    .end local v5    # "temp":Ljava/io/File;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v5    # "temp":Ljava/io/File;
    goto/16 :goto_47

    .line 200
    :cond_d1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/otaservice/common/FileUtils;->delAllFile(Ljava/lang/String;)Z

    .line 201
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v9, v6, v4

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/qinggan/otaservice/common/FileUtils;->delFolder(Ljava/lang/String;)V
    :try_end_109
    .catchall {:try_start_13 .. :try_end_109} :catchall_10a

    goto :goto_ac

    .line 174
    .end local v0    # "file":Ljava/io/File;
    .end local v4    # "i":I
    .end local v5    # "temp":Ljava/io/File;
    .end local v6    # "tempList":[Ljava/lang/String;
    :catchall_10a
    move-exception v7

    monitor-exit v8

    throw v7

    .restart local v0    # "file":Ljava/io/File;
    .restart local v6    # "tempList":[Ljava/lang/String;
    :cond_10d
    move v2, v1

    .end local v1    # "flag":Z
    .restart local v2    # "flag":Z
    move v3, v1

    .line 207
    .restart local v3    # "flag":I
    goto/16 :goto_11
.end method

.method private static delAllOldFile(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "baseVersion"    # Ljava/lang/String;
    .param p2, "delEqual"    # Z

    .prologue
    .line 125
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_c

    .line 158
    :cond_b
    return-void

    .line 129
    :cond_c
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v4

    .line 130
    .local v4, "tempList":[Ljava/lang/String;
    if-eqz v4, :cond_b

    .line 133
    const/4 v3, 0x0

    .line 134
    .local v3, "temp":Ljava/io/File;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_14
    array-length v5, v4

    if-ge v1, v5, :cond_b

    .line 135
    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8b

    .line 136
    new-instance v3, Ljava/io/File;

    .end local v3    # "temp":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .restart local v3    # "temp":Ljava/io/File;
    :goto_37
    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_88

    .line 141
    sget-object v5, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "temp.getAbsolutePath() = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    aget-object v2, v4, v1

    .line 143
    .local v2, "name":Ljava/lang/String;
    if-eqz p2, :cond_aa

    .line 144
    invoke-static {v2, p1}, Lcom/qinggan/otaservice/common/FileUtils;->isOlderThanOrEqualSystem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 145
    sget-object v5, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is old or equal,delete it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    .line 134
    .end local v2    # "name":Ljava/lang/String;
    :cond_88
    :goto_88
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    .line 138
    :cond_8b
    new-instance v3, Ljava/io/File;

    .end local v3    # "temp":Ljava/io/File;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v3    # "temp":Ljava/io/File;
    goto :goto_37

    .line 150
    .restart local v2    # "name":Ljava/lang/String;
    :cond_aa
    invoke-static {v2, p1}, Lcom/qinggan/otaservice/common/FileUtils;->isOlderThanSystem(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_88

    .line 151
    sget-object v5, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is old ,delete it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    goto :goto_88
.end method

.method public static declared-synchronized delFolder(Ljava/lang/String;)V
    .registers 5
    .param p0, "folderPath"    # Ljava/lang/String;

    .prologue
    .line 212
    const-class v3, Lcom/qinggan/otaservice/common/FileUtils;

    monitor-enter v3

    :try_start_3
    invoke-static {p0}, Lcom/qinggan/otaservice/common/FileUtils;->delAllFile(Ljava/lang/String;)Z

    .line 213
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 214
    .local v1, "myFilePath":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_e} :catch_10
    .catchall {:try_start_3 .. :try_end_e} :catchall_15

    .line 218
    .end local v1    # "myFilePath":Ljava/io/File;
    :goto_e
    monitor-exit v3

    return-void

    .line 215
    :catch_10
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_14
    .catchall {:try_start_11 .. :try_end_14} :catchall_15

    goto :goto_e

    .line 212
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_15
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public static isFlagFileExist(Landroid/content/Context;)Z
    .registers 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "udiskPath":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 78
    new-instance v0, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/update/temp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    .local v0, "f":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    .line 80
    .local v1, "result":Z
    sget-object v3, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "temp file exists: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .end local v0    # "f":Ljava/io/File;
    .end local v1    # "result":Z
    :goto_3e
    return v1

    :cond_3f
    const/4 v1, 0x0

    goto :goto_3e
.end method

.method private static isOlderThanOrEqualSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "baseVersion"    # Ljava/lang/String;

    .prologue
    .line 168
    const-string v1, "update-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patch-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    const-string v3, ""

    .line 169
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 170
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-ltz v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method private static isOlderThanSystem(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p0, "filename"    # Ljava/lang/String;
    .param p1, "baseVersion"    # Ljava/lang/String;

    .prologue
    .line 161
    const-string v1, "update-"

    const-string v2, ""

    invoke-virtual {p0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "patch-"

    const-string v3, ""

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".zip"

    const-string v3, ""

    .line 162
    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 163
    .local v0, "name":Ljava/lang/String;
    invoke-static {p1, v0}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-lez v1, :cond_20

    const/4 v1, 0x1

    :goto_1f
    return v1

    :cond_20
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public static readFromFile(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "filePath"    # Ljava/lang/String;

    .prologue
    .line 42
    sget-object v4, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readFromFile: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 46
    .local v1, "reader":Ljava/io/BufferedReader;
    :try_start_1e
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_28} :catch_33
    .catchall {:try_start_1e .. :try_end_28} :catchall_3c

    .line 48
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .local v2, "reader":Ljava/io/BufferedReader;
    :try_start_28
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_2b} :catch_4c
    .catchall {:try_start_28 .. :try_end_2b} :catchall_49

    move-result-object v3

    .line 52
    .local v3, "tempString":Ljava/lang/String;
    if-eqz v2, :cond_31

    .line 54
    :try_start_2e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_43

    :cond_31
    :goto_31
    move-object v1, v2

    .line 59
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "tempString":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :goto_32
    return-object v3

    .line 50
    :catch_33
    move-exception v4

    .line 52
    :goto_34
    if-eqz v1, :cond_39

    .line 54
    :try_start_36
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_39} :catch_45

    .line 59
    :cond_39
    :goto_39
    const-string v3, ""

    goto :goto_32

    .line 52
    :catchall_3c
    move-exception v4

    :goto_3d
    if-eqz v1, :cond_42

    .line 54
    :try_start_3f
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_3f .. :try_end_42} :catch_47

    .line 58
    :cond_42
    :goto_42
    throw v4

    .line 55
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "tempString":Ljava/lang/String;
    :catch_43
    move-exception v4

    goto :goto_31

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v3    # "tempString":Ljava/lang/String;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    :catch_45
    move-exception v4

    goto :goto_39

    :catch_47
    move-exception v5

    goto :goto_42

    .line 52
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catchall_49
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_3d

    .line 50
    .end local v1    # "reader":Ljava/io/BufferedReader;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    :catch_4c
    move-exception v4

    move-object v1, v2

    .end local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v1    # "reader":Ljava/io/BufferedReader;
    goto :goto_34
.end method

.method public static writeToFile(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 21
    sget-object v3, Lcom/qinggan/otaservice/common/FileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeToFile: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 23
    .local v0, "file":Ljava/io/File;
    const/4 v1, 0x0

    .line 25
    .local v1, "writer":Ljava/io/BufferedWriter;
    :try_start_2a
    new-instance v2, Ljava/io/BufferedWriter;

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_34} :catch_5d
    .catchall {:try_start_2a .. :try_end_34} :catchall_66

    .line 26
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .local v2, "writer":Ljava/io/BufferedWriter;
    :try_start_34
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\r\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_4d} :catch_72
    .catchall {:try_start_34 .. :try_end_4d} :catchall_6f

    .line 30
    if-eqz v2, :cond_75

    .line 32
    :try_start_4f
    invoke-virtual {v2}, Ljava/io/BufferedWriter;->close()V
    :try_end_52
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_52} :catch_5a

    move-object v1, v2

    .line 37
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    :cond_53
    :goto_53
    invoke-virtual {v0, v7, v6}, Ljava/io/File;->setReadable(ZZ)Z

    .line 38
    invoke-virtual {v0, v7, v6}, Ljava/io/File;->setWritable(ZZ)Z

    .line 39
    return-void

    .line 33
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_5a
    move-exception v3

    move-object v1, v2

    .line 34
    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_53

    .line 28
    :catch_5d
    move-exception v3

    .line 30
    :goto_5e
    if-eqz v1, :cond_53

    .line 32
    :try_start_60
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_63} :catch_64

    goto :goto_53

    .line 33
    :catch_64
    move-exception v3

    goto :goto_53

    .line 30
    :catchall_66
    move-exception v3

    :goto_67
    if-eqz v1, :cond_6c

    .line 32
    :try_start_69
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_69 .. :try_end_6c} :catch_6d

    .line 36
    :cond_6c
    :goto_6c
    throw v3

    .line 33
    :catch_6d
    move-exception v4

    goto :goto_6c

    .line 30
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catchall_6f
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_67

    .line 28
    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :catch_72
    move-exception v3

    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_5e

    .end local v1    # "writer":Ljava/io/BufferedWriter;
    .restart local v2    # "writer":Ljava/io/BufferedWriter;
    :cond_75
    move-object v1, v2

    .end local v2    # "writer":Ljava/io/BufferedWriter;
    .restart local v1    # "writer":Ljava/io/BufferedWriter;
    goto :goto_53
.end method
