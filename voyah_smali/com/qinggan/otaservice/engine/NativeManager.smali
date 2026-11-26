.class public Lcom/qinggan/otaservice/engine/NativeManager;
.super Ljava/lang/Object;
.source "NativeManager.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 13
    const-class v0, Lcom/qinggan/otaservice/engine/NativeManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/engine/NativeManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBootSystem()I
    .registers 1

    .prologue
    .line 47
    const/4 v0, 0x0

    .line 48
    .local v0, "systemID":I
    invoke-static {}, Lcom/qinggan/os/MiniRecoveryNative;->getBootSystem()I

    move-result v0

    .line 49
    return v0
.end method

.method public static getOTAInstallPercent()I
    .registers 1

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "percent":I
    invoke-static {}, Lcom/qinggan/os/MiniRecoveryNative;->getOtaInstallPercent()I

    move-result v0

    .line 70
    if-gez v0, :cond_8

    .line 71
    const/4 v0, 0x0

    .line 73
    :cond_8
    return v0
.end method

.method public static getSystemVersion(I)Ljava/lang/String;
    .registers 2
    .param p0, "systemID"    # I

    .prologue
    .line 23
    const-string v0, ""

    .line 24
    .local v0, "systemVersion":Ljava/lang/String;
    invoke-static {p0}, Lcom/qinggan/os/MiniRecoveryNative;->getSystemVersion(I)Ljava/lang/String;

    move-result-object v0

    .line 25
    return-object v0
.end method

.method public static installOTAPackage(Ljava/lang/String;)I
    .registers 2
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 137
    invoke-static {p0}, Lcom/qinggan/os/MiniRecoveryNative;->installotaPackage(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static setOTAInstallPercent(I)V
    .registers 1
    .param p0, "percent"    # I

    .prologue
    .line 58
    invoke-static {p0}, Lcom/qinggan/os/MiniRecoveryNative;->setOtaInstallPercent(I)I

    .line 59
    return-void
.end method

.method public static setRecoveryCmd(Ljava/lang/String;)V
    .registers 2
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p0, v0}, Lcom/qinggan/os/MiniRecoveryNative;->setRecoveryCmd(Ljava/lang/String;I)I

    .line 83
    return-void
.end method

.method public static setSystemVersionCode(ILjava/lang/String;)I
    .registers 3
    .param p0, "systemID"    # I
    .param p1, "systemVersionCode"    # Ljava/lang/String;

    .prologue
    .line 37
    invoke-static {p0, p1}, Lcom/qinggan/os/MiniRecoveryNative;->setSystemVersion(ILjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static switchBootSystem()V
    .registers 0

    .prologue
    .line 128
    invoke-static {}, Lcom/qinggan/os/MiniRecoveryNative;->switchBootSystem()V

    .line 129
    return-void
.end method

.method public static syncSystem()I
    .registers 1

    .prologue
    .line 146
    invoke-static {}, Lcom/qinggan/os/MiniRecoveryNative;->syncSystem()I

    move-result v0

    return v0
.end method

.method public static writeRecoveryCommand(Ljava/lang/String;)V
    .registers 9
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 95
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 122
    :goto_6
    return-void

    .line 97
    :cond_7
    const/4 v1, 0x0

    .line 99
    .local v1, "dirFile":Ljava/io/File;
    :try_start_8
    new-instance v2, Ljava/io/File;

    const-string v5, "/private/cache/recovery"

    invoke-direct {v2, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_f} :catch_57

    .line 100
    .end local v1    # "dirFile":Ljava/io/File;
    .local v2, "dirFile":Ljava/io/File;
    :try_start_f
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_28

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-nez v5, :cond_28

    .line 101
    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v0

    .line 102
    .local v0, "creadok":Z
    if-nez v0, :cond_28

    .line 103
    sget-object v5, Lcom/qinggan/otaservice/engine/NativeManager;->TAG:Ljava/lang/String;

    const-string v6, "Create recovery dir failed!"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_28} :catch_68

    .line 112
    .end local v0    # "creadok":Z
    :cond_28
    :try_start_28
    new-instance v4, Ljava/io/BufferedWriter;

    new-instance v5, Ljava/io/FileWriter;

    const-string v6, "/private/cache/recovery/command"

    invoke-direct {v5, v6}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 114
    .local v4, "out":Ljava/io/BufferedWriter;
    invoke-virtual {v4, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 115
    invoke-virtual {v4}, Ljava/io/BufferedWriter;->close()V
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_3a} :catch_5c

    .line 120
    .end local v4    # "out":Ljava/io/BufferedWriter;
    :goto_3a
    sget-object v5, Lcom/qinggan/otaservice/engine/NativeManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "writeRecoveryCommand "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    const/4 v5, 0x0

    invoke-static {v5}, Lcom/qinggan/os/MiniRecoveryNative;->SetRecoveryBoot(I)I

    goto :goto_6

    .line 106
    .end local v2    # "dirFile":Ljava/io/File;
    .restart local v1    # "dirFile":Ljava/io/File;
    :catch_57
    move-exception v3

    .line 107
    .local v3, "e":Ljava/lang/Exception;
    :goto_58
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 116
    .end local v1    # "dirFile":Ljava/io/File;
    .end local v3    # "e":Ljava/lang/Exception;
    .restart local v2    # "dirFile":Ljava/io/File;
    :catch_5c
    move-exception v3

    .line 117
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 118
    sget-object v5, Lcom/qinggan/otaservice/engine/NativeManager;->TAG:Ljava/lang/String;

    const-string v6, "Create recovery Command file failed!"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3a

    .line 106
    .end local v3    # "e":Ljava/io/IOException;
    :catch_68
    move-exception v3

    move-object v1, v2

    .end local v2    # "dirFile":Ljava/io/File;
    .restart local v1    # "dirFile":Ljava/io/File;
    goto :goto_58
.end method

.method public static writeUpdateAllCommand(ILjava/lang/String;)V
    .registers 4
    .param p0, "type"    # I
    .param p1, "cmd"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--update_all_package=TYPE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qinggan/otaservice/engine/NativeManager;->writeRecoveryCommand(Ljava/lang/String;)V

    .line 92
    return-void
.end method

.method public static writeUpdateCommand(Ljava/lang/String;)V
    .registers 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--update_package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/qinggan/otaservice/engine/NativeManager;->writeRecoveryCommand(Ljava/lang/String;)V

    .line 88
    return-void
.end method
