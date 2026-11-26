.class public Lcom/qinggan/tsp/util/LocalFileUtils;
.super Ljava/lang/Object;
.source "LocalFileUtils.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final localLoginFile:Ljava/lang/String; = "/private/.LocalFile/.loginUserInfo"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/qinggan/tsp/util/LocalFileUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/util/LocalFileUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createAndSave(Ljava/io/File;Ljava/lang/String;)V
    .registers 7
    .param p0, "saveFile"    # Ljava/io/File;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 51
    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    .local v0, "parentDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_30

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 56
    :try_start_12
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_30} :catch_34

    .line 62
    :cond_30
    :goto_30
    invoke-static {p1, p0}, Lcom/qinggan/tsp/util/LocalFileUtils;->save(Ljava/lang/String;Ljava/io/File;)V

    .line 63
    return-void

    .line 57
    :catch_34
    move-exception v1

    .line 58
    .local v1, "var4":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_30
.end method

.method private static getContent(Ljava/io/File;)Ljava/lang/String;
    .registers 9
    .param p0, "saveFile"    # Ljava/io/File;

    .prologue
    .line 79
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_9

    .line 80
    const-string v5, ""

    .line 100
    :goto_8
    return-object v5

    .line 83
    :cond_9
    :try_start_9
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .local v0, "e":Ljava/io/BufferedReader;
    const-string v1, ""

    .line 85
    .local v1, "readline":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 87
    .local v2, "sb":Ljava/lang/StringBuffer;
    :goto_1a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_43

    .line 88
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readline:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_3b
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_3b} :catch_3c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_3b} :catch_4b

    goto :goto_1a

    .line 94
    .end local v0    # "e":Ljava/io/BufferedReader;
    .end local v1    # "readline":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catch_3c
    move-exception v3

    .line 95
    .local v3, "var4":Ljava/io/FileNotFoundException;
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 100
    .end local v3    # "var4":Ljava/io/FileNotFoundException;
    :goto_40
    const-string v5, ""

    goto :goto_8

    .line 92
    .restart local v0    # "e":Ljava/io/BufferedReader;
    .restart local v1    # "readline":Ljava/lang/String;
    .restart local v2    # "sb":Ljava/lang/StringBuffer;
    :cond_43
    :try_start_43
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_49
    .catch Ljava/io/FileNotFoundException; {:try_start_43 .. :try_end_49} :catch_3c
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_4b

    move-result-object v5

    goto :goto_8

    .line 96
    .end local v0    # "e":Ljava/io/BufferedReader;
    .end local v1    # "readline":Ljava/lang/String;
    .end local v2    # "sb":Ljava/lang/StringBuffer;
    :catch_4b
    move-exception v4

    .line 97
    .local v4, "var5":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_40
.end method

.method public static getLocalLoginFile()Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    .registers 9

    .prologue
    .line 27
    new-instance v7, Ljava/io/File;

    const-string v8, "/private/.LocalFile/.loginUserInfo"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .local v7, "saveFile":Ljava/io/File;
    invoke-static {v7}, Lcom/qinggan/tsp/util/LocalFileUtils;->getContent(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    .line 29
    .local v1, "content":Ljava/lang/String;
    const/4 v4, 0x0

    .line 31
    .local v4, "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    :try_start_c
    new-instance v3, Lcom/google/gson/Gson;

    invoke-direct {v3}, Lcom/google/gson/Gson;-><init>()V

    .line 32
    .local v3, "gson":Lcom/google/gson/Gson;
    const-class v8, Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;

    invoke-virtual {v3, v1, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    move-object v0, v8

    check-cast v0, Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;

    move-object v4, v0
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_1b} :catch_1e

    move-object v5, v4

    .end local v4    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    .local v5, "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    move-object v6, v4

    .line 38
    .end local v3    # "gson":Lcom/google/gson/Gson;
    .end local v5    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    .local v6, "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    :goto_1d
    return-object v6

    .line 33
    .end local v6    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    .restart local v4    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    :catch_1e
    move-exception v2

    .line 34
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    move-object v5, v4

    .end local v4    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    .restart local v5    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    move-object v6, v4

    .line 35
    .end local v5    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    .restart local v6    # "localLoginUserInfo":Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;
    goto :goto_1d
.end method

.method public static initLoginInfoFile()V
    .registers 5

    .prologue
    .line 43
    new-instance v1, Ljava/io/File;

    const-string v2, "/private/.LocalFile/.loginUserInfo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "saveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_29

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    move-result v0

    .line 46
    .local v0, "isInitLoginInfoFileSuccess":Z
    sget-object v2, Lcom/qinggan/tsp/util/LocalFileUtils;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initLoginInfoFile, isInitLoginInfoFileSuccess = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v0    # "isInitLoginInfoFileSuccess":Z
    :cond_29
    return-void
.end method

.method private static save(Ljava/lang/String;Ljava/io/File;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 67
    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 68
    .local v0, "e":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 69
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 70
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u5199\u5165\u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 71
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 777 "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_34} :catch_35

    .line 76
    .end local v0    # "e":Ljava/io/FileOutputStream;
    :goto_34
    return-void

    .line 72
    :catch_35
    move-exception v1

    .line 73
    .local v1, "var3":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public static setLocalLoginFile(Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;)V
    .registers 7
    .param p0, "localLoginUserInfo"    # Lcom/qinggan/tsp/models/gwm/LocalLoginUserInfo;

    .prologue
    .line 19
    new-instance v2, Ljava/io/File;

    const-string v3, "/private/.LocalFile/.loginUserInfo"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 20
    .local v2, "saveFile":Ljava/io/File;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 21
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 22
    .local v0, "content":Ljava/lang/String;
    sget-object v3, Lcom/qinggan/tsp/util/LocalFileUtils;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setLocalLoginFile, content = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-static {v2, v0}, Lcom/qinggan/tsp/util/LocalFileUtils;->createAndSave(Ljava/io/File;Ljava/lang/String;)V

    .line 24
    return-void
.end method
