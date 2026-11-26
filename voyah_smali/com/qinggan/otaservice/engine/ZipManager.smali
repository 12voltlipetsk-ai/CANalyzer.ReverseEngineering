.class public Lcom/qinggan/otaservice/engine/ZipManager;
.super Ljava/lang/Object;
.source "ZipManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/engine/ZipManager$ZipManagerHolder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private volatile mUnzipFlag:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 24
    const-class v0, Lcom/qinggan/otaservice/engine/ZipManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/ZipManager;->mUnzipFlag:Z

    return-void
.end method

.method public static getInstance()Lcom/qinggan/otaservice/engine/ZipManager;
    .registers 1

    .prologue
    .line 28
    # getter for: Lcom/qinggan/otaservice/engine/ZipManager$ZipManagerHolder;->sInstance:Lcom/qinggan/otaservice/engine/ZipManager;
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager$ZipManagerHolder;->access$000()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public cancelUnzip()V
    .registers 2

    .prologue
    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/otaservice/engine/ZipManager;->mUnzipFlag:Z

    .line 182
    return-void
.end method

.method public hasFixupFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "zipPathName"    # Ljava/lang/String;

    .prologue
    .line 73
    const-string v0, "pateo_ivi_ota_fixup.sh"

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/otaservice/engine/ZipManager;->hasSpecElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasMd5CheckFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "zipPathName"    # Ljava/lang/String;

    .prologue
    .line 66
    const-string v0, "pateo_ivi_md5sum.txt"

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/otaservice/engine/ZipManager;->hasSpecElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public hasSpecElement(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 15
    .param p1, "zipPathName"    # Ljava/lang/String;
    .param p2, "eleName"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v2, 0x0

    .line 81
    .local v2, "flag":Z
    const-string v9, ""

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    move v3, v2

    .end local v2    # "flag":Z
    .local v3, "flag":Z
    move v4, v2

    .line 110
    .end local v3    # "flag":Z
    .local v4, "flag":I
    :goto_b
    return v4

    .line 84
    .end local v4    # "flag":I
    .restart local v2    # "flag":Z
    :cond_c
    sget-object v9, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "hasSpecElement zipPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",eleName="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const/4 v7, 0x0

    .line 87
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_2f
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p1}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_34
    .catch Ljava/io/IOException; {:try_start_2f .. :try_end_34} :catch_60
    .catchall {:try_start_2f .. :try_end_34} :catchall_6f

    .line 88
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    if-eqz v8, :cond_51

    .line 89
    :try_start_36
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v6

    .line 90
    .local v6, "zipEntrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_3a
    invoke-interface {v6}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v9

    if-eqz v9, :cond_51

    .line 91
    invoke-interface {v6}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/zip/ZipEntry;

    .line 92
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    invoke-virtual {v5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v1

    .line 93
    .local v1, "entryName":Ljava/lang/String;
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_4d
    .catch Ljava/io/IOException; {:try_start_36 .. :try_end_4d} :catch_7e
    .catchall {:try_start_36 .. :try_end_4d} :catchall_7b

    move-result v9

    if-eqz v9, :cond_3a

    .line 94
    const/4 v2, 0x1

    .line 102
    .end local v1    # "entryName":Ljava/lang/String;
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipEntrys":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+Ljava/util/zip/ZipEntry;>;"
    :cond_51
    if-eqz v8, :cond_81

    .line 104
    :try_start_53
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_53 .. :try_end_56} :catch_5a

    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_57
    :goto_57
    move v3, v2

    .end local v2    # "flag":Z
    .restart local v3    # "flag":Z
    move v4, v2

    .line 110
    .restart local v4    # "flag":I
    goto :goto_b

    .line 105
    .end local v3    # "flag":Z
    .end local v4    # "flag":I
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "flag":Z
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5a
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v7, v8

    .line 107
    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_57

    .line 99
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_60
    move-exception v0

    .line 100
    .local v0, "e":Ljava/io/IOException;
    :goto_61
    :try_start_61
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_6f

    .line 102
    if-eqz v7, :cond_57

    .line 104
    :try_start_66
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_66 .. :try_end_69} :catch_6a

    goto :goto_57

    .line 105
    :catch_6a
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_57

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_6f
    move-exception v9

    :goto_70
    if-eqz v7, :cond_75

    .line 104
    :try_start_72
    invoke-virtual {v7}, Ljava/util/zip/ZipFile;->close()V
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_72 .. :try_end_75} :catch_76

    .line 109
    :cond_75
    :goto_75
    throw v9

    .line 105
    :catch_76
    move-exception v0

    .line 106
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_75

    .line 102
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :catchall_7b
    move-exception v9

    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_70

    .line 99
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_7e
    move-exception v0

    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_61

    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_81
    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_57
.end method

.method public hasUbootUpgrade(Ljava/lang/String;)Z
    .registers 3
    .param p1, "zipPathName"    # Ljava/lang/String;

    .prologue
    .line 59
    const-string v0, "uboot.sh"

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/otaservice/engine/ZipManager;->hasSpecElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isMeterUpdateFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "zipPathName"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "update_config.xml"

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/otaservice/engine/ZipManager;->hasSpecElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isUpdateFile(Ljava/lang/String;)Z
    .registers 3
    .param p1, "zipPathName"    # Ljava/lang/String;

    .prologue
    .line 42
    const-string v0, "Manifest_SYS.xml"

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/otaservice/engine/ZipManager;->hasSpecElement(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public upZipFile(Ljava/io/File;Ljava/lang/String;)I
    .registers 19
    .param p1, "zipFile"    # Ljava/io/File;
    .param p2, "folderPath"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 120
    sget-object v13, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "upZipFile ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "] start!"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/qinggan/otaservice/engine/ZipManager;->mUnzipFlag:Z

    .line 122
    new-instance v12, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p1

    invoke-direct {v12, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;)V

    .line 123
    .local v12, "zfile":Ljava/util/zip/ZipFile;
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->entries()Ljava/util/Enumeration;

    move-result-object v10

    .line 124
    .local v10, "zList":Ljava/util/Enumeration;
    const/4 v11, 0x0

    .line 125
    .local v11, "ze":Ljava/util/zip/ZipEntry;
    const/16 v13, 0x400

    new-array v1, v13, [B

    .line 126
    .local v1, "buf":[B
    :cond_37
    :goto_37
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/qinggan/otaservice/engine/ZipManager;->mUnzipFlag:Z

    if-eqz v13, :cond_17f

    invoke-interface {v10}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v13

    if-eqz v13, :cond_17f

    .line 127
    invoke-interface {v10}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "ze":Ljava/util/zip/ZipEntry;
    check-cast v11, Ljava/util/zip/ZipEntry;

    .line 128
    .restart local v11    # "ze":Ljava/util/zip/ZipEntry;
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->isDirectory()Z

    move-result v13

    if-eqz v13, :cond_b3

    .line 129
    sget-object v13, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "upZipFile ze.getName() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " isDirectory"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, "dirstr":Ljava/lang/String;
    sget-object v13, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "upZipFile  str = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 134
    .local v4, "f":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->mkdir()Z

    move-result v13

    if-nez v13, :cond_37

    .line 135
    new-instance v13, Ljava/lang/RuntimeException;

    const-string v14, "upZipFile--mkdir fail."

    invoke-direct {v13, v14}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v13

    .line 138
    .end local v2    # "dirstr":Ljava/lang/String;
    .end local v4    # "f":Ljava/io/File;
    :cond_b3
    sget-object v13, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "upZipFile ze.getName() = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    const/4 v7, 0x0

    .line 140
    .local v7, "os":Ljava/io/OutputStream;
    const/4 v5, 0x0

    .line 142
    .local v5, "is":Ljava/io/InputStream;
    :try_start_d1
    new-instance v8, Ljava/io/BufferedOutputStream;

    new-instance v13, Ljava/io/FileOutputStream;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p2

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    .line 143
    invoke-virtual {v11}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-direct {v13, v14}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v8, v13}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f2
    .catch Ljava/lang/Exception; {:try_start_d1 .. :try_end_f2} :catch_1ac
    .catchall {:try_start_d1 .. :try_end_f2} :catchall_169

    .line 144
    .end local v7    # "os":Ljava/io/OutputStream;
    .local v8, "os":Ljava/io/OutputStream;
    :try_start_f2
    new-instance v6, Ljava/io/BufferedInputStream;

    invoke-virtual {v12, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v13

    invoke-direct {v6, v13}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_fb
    .catch Ljava/lang/Exception; {:try_start_f2 .. :try_end_fb} :catch_1af
    .catchall {:try_start_f2 .. :try_end_fb} :catchall_1a5

    .line 145
    .end local v5    # "is":Ljava/io/InputStream;
    .local v6, "is":Ljava/io/InputStream;
    const/4 v9, 0x0

    .line 146
    .local v9, "readLen":I
    :goto_fc
    :try_start_fc
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/qinggan/otaservice/engine/ZipManager;->mUnzipFlag:Z

    if-eqz v13, :cond_12f

    const/4 v13, 0x0

    const/16 v14, 0x400

    invoke-virtual {v6, v1, v13, v14}, Ljava/io/InputStream;->read([BII)I

    move-result v9

    const/4 v13, -0x1

    if-eq v9, v13, :cond_12f

    .line 147
    const/4 v13, 0x0

    invoke-virtual {v8, v1, v13, v9}, Ljava/io/OutputStream;->write([BII)V
    :try_end_110
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_110} :catch_111
    .catchall {:try_start_fc .. :try_end_110} :catchall_1a8

    goto :goto_fc

    .line 149
    :catch_111
    move-exception v3

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    move-object v7, v8

    .line 150
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "readLen":I
    .local v3, "e":Ljava/lang/Exception;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :goto_114
    :try_start_114
    invoke-virtual {v3}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "ENOSPC"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_150

    .line 151
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_123
    .catchall {:try_start_114 .. :try_end_123} :catchall_169

    .line 152
    const/4 v13, -0x1

    .line 158
    if-eqz v5, :cond_129

    .line 160
    :try_start_126
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_129
    .catch Ljava/lang/Exception; {:try_start_126 .. :try_end_129} :catch_146

    .line 165
    :cond_129
    :goto_129
    if-eqz v7, :cond_12e

    .line 167
    :try_start_12b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_12b .. :try_end_12e} :catch_14b

    .line 177
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    :cond_12e
    :goto_12e
    return v13

    .line 158
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "readLen":I
    :cond_12f
    if-eqz v6, :cond_134

    .line 160
    :try_start_131
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_134
    .catch Ljava/lang/Exception; {:try_start_131 .. :try_end_134} :catch_141

    .line 165
    :cond_134
    :goto_134
    if-eqz v8, :cond_37

    .line 167
    :try_start_136
    invoke-virtual {v8}, Ljava/io/OutputStream;->close()V
    :try_end_139
    .catch Ljava/lang/Exception; {:try_start_136 .. :try_end_139} :catch_13b

    goto/16 :goto_37

    .line 168
    :catch_13b
    move-exception v3

    .line 169
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_37

    .line 161
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_141
    move-exception v3

    .line 162
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_134

    .line 161
    .end local v6    # "is":Ljava/io/InputStream;
    .end local v8    # "os":Ljava/io/OutputStream;
    .end local v9    # "readLen":I
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    :catch_146
    move-exception v3

    .line 162
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_129

    .line 168
    :catch_14b
    move-exception v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12e

    .line 154
    :cond_150
    :try_start_150
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_169

    .line 155
    const/4 v13, -0x2

    .line 158
    if-eqz v5, :cond_159

    .line 160
    :try_start_156
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_156 .. :try_end_159} :catch_164

    .line 165
    :cond_159
    :goto_159
    if-eqz v7, :cond_12e

    .line 167
    :try_start_15b
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_15e
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_15e} :catch_15f

    goto :goto_12e

    .line 168
    :catch_15f
    move-exception v3

    .line 169
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12e

    .line 161
    :catch_164
    move-exception v3

    .line 162
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_159

    .line 158
    .end local v3    # "e":Ljava/lang/Exception;
    :catchall_169
    move-exception v13

    :goto_16a
    if-eqz v5, :cond_16f

    .line 160
    :try_start_16c
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_16c .. :try_end_16f} :catch_175

    .line 165
    :cond_16f
    :goto_16f
    if-eqz v7, :cond_174

    .line 167
    :try_start_171
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_174
    .catch Ljava/lang/Exception; {:try_start_171 .. :try_end_174} :catch_17a

    .line 172
    :cond_174
    :goto_174
    throw v13

    .line 161
    :catch_175
    move-exception v3

    .line 162
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16f

    .line 168
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_17a
    move-exception v3

    .line 169
    .restart local v3    # "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_174

    .line 174
    .end local v3    # "e":Ljava/lang/Exception;
    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    :cond_17f
    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->close()V

    .line 175
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/qinggan/otaservice/engine/ZipManager;->mUnzipFlag:Z

    .line 176
    sget-object v13, Lcom/qinggan/otaservice/engine/ZipManager;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "upZipFile finish "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v12}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const/4 v13, 0x0

    goto :goto_12e

    .line 158
    .restart local v5    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :catchall_1a5
    move-exception v13

    move-object v7, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    goto :goto_16a

    .end local v5    # "is":Ljava/io/InputStream;
    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v6    # "is":Ljava/io/InputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    .restart local v9    # "readLen":I
    :catchall_1a8
    move-exception v13

    move-object v5, v6

    .end local v6    # "is":Ljava/io/InputStream;
    .restart local v5    # "is":Ljava/io/InputStream;
    move-object v7, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    goto :goto_16a

    .line 149
    .end local v9    # "readLen":I
    :catch_1ac
    move-exception v3

    goto/16 :goto_114

    .end local v7    # "os":Ljava/io/OutputStream;
    .restart local v8    # "os":Ljava/io/OutputStream;
    :catch_1af
    move-exception v3

    move-object v7, v8

    .end local v8    # "os":Ljava/io/OutputStream;
    .restart local v7    # "os":Ljava/io/OutputStream;
    goto/16 :goto_114
.end method
