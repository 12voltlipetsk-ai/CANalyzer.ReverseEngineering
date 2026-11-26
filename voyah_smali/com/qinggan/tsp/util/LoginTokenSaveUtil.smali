.class public Lcom/qinggan/tsp/util/LoginTokenSaveUtil;
.super Ljava/lang/Object;
.source "LoginTokenSaveUtil.java"


# static fields
.field private static final filePath:Ljava/lang/String; = "/private/configs/token/loginToken"

.field private static final gwmHuTokenFilePath:Ljava/lang/String; = "/private/configs/token/gwmToken"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAuthLoginFileMessage()Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;
    .registers 12

    .prologue
    const/4 v0, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v3, 0x1

    const/4 v7, 0x0

    .line 56
    const-string v8, "/private/configs/token/loginToken"

    invoke-static {v8}, Lcom/qinggan/tsp/util/LoginTokenSaveUtil;->getLoginToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 57
    .local v5, "loginToken":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_12

    .line 75
    :cond_11
    :goto_11
    return-object v0

    .line 58
    :cond_12
    const-string v8, "%"

    invoke-virtual {v5, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    .line 59
    .local v6, "tokens":[Ljava/lang/String;
    if-eqz v6, :cond_11

    const/4 v8, 0x4

    array-length v9, v6

    if-ne v8, v9, :cond_11

    aget-object v8, v6, v7

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    aget-object v8, v6, v3

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    aget-object v8, v6, v10

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    aget-object v8, v6, v11

    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_11

    .line 60
    new-instance v1, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;-><init>()V

    .line 61
    .local v1, "authLoginResponseItem":Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;
    new-instance v2, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    invoke-direct {v2}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;-><init>()V

    .line 62
    .local v2, "data":Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;
    aget-object v8, v6, v7

    invoke-virtual {v2, v8}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->setAccesstoken(Ljava/lang/String;)V

    .line 63
    aget-object v8, v6, v3

    invoke-virtual {v2, v8}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->setRefreshtoken(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1, v2}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->setData(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;)V

    .line 65
    aget-object v4, v6, v10

    .line 66
    .local v4, "loginTime":Ljava/lang/String;
    const-string v8, "0"

    aget-object v9, v6, v11

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_70

    .line 68
    .local v3, "isGuest":Z
    :goto_61
    new-instance v0, Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;

    invoke-direct {v0}, Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;-><init>()V

    .line 69
    .local v0, "authLoginFileMessage":Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;
    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;->setAuthLoginResponseItem(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V

    .line 70
    invoke-virtual {v0, v4}, Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;->setLoginTime(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, v3}, Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;->setGuest(Z)V

    goto :goto_11

    .end local v0    # "authLoginFileMessage":Lcom/qinggan/tsp/models/auth/AuthLoginFileMessage;
    .end local v3    # "isGuest":Z
    :cond_70
    move v3, v7

    .line 66
    goto :goto_61
.end method

.method public static getGwmToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    const-string v1, "/private/configs/token/gwmToken"

    invoke-static {v1}, Lcom/qinggan/tsp/util/LoginTokenSaveUtil;->getLoginToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 38
    .local v0, "gwmToken":Ljava/lang/String;
    return-object v0
.end method

.method private static getLoginToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 79
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 80
    .local v3, "saveFile":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_e

    const-string v5, ""

    .line 97
    :goto_d
    return-object v5

    .line 82
    :cond_e
    :try_start_e
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 83
    .local v0, "br":Ljava/io/BufferedReader;
    const-string v2, ""

    .line 84
    .local v2, "readline":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v4, "sb":Ljava/lang/StringBuffer;
    :goto_1f
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 86
    sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "readline:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_40
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_40} :catch_41
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_40} :catch_50

    goto :goto_1f

    .line 91
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "readline":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_41
    move-exception v1

    .line 92
    .local v1, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 97
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :goto_45
    const-string v5, ""

    goto :goto_d

    .line 89
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v2    # "readline":Ljava/lang/String;
    .restart local v4    # "sb":Ljava/lang/StringBuffer;
    :cond_48
    :try_start_48
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 90
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_4e
    .catch Ljava/io/FileNotFoundException; {:try_start_48 .. :try_end_4e} :catch_41
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_4e} :catch_50

    move-result-object v5

    goto :goto_d

    .line 93
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v2    # "readline":Ljava/lang/String;
    .end local v4    # "sb":Ljava/lang/StringBuffer;
    :catch_50
    move-exception v1

    .line 94
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_45
.end method

.method public static initLoginFile()V
    .registers 3

    .prologue
    .line 113
    new-instance v1, Ljava/io/File;

    const-string v2, "/private/configs/token/loginToken"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 114
    .local v1, "loginFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 115
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 118
    :cond_10
    new-instance v0, Ljava/io/File;

    const-string v2, "/private/configs/token/gwmToken"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 119
    .local v0, "gwmFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 120
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 122
    :cond_20
    return-void
.end method

.method private static save(Ljava/lang/String;Ljava/io/File;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 102
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 103
    .local v1, "fos":Ljava/io/FileOutputStream;
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 104
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 105
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "\u5199\u5165\u6210\u529f\uff1a"

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 106
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

    .line 110
    .end local v1    # "fos":Ljava/io/FileOutputStream;
    :goto_34
    return-void

    .line 107
    :catch_35
    move-exception v0

    .line 108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public static saveGwmToken(Ljava/lang/String;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v2, Ljava/io/File;

    const-string v3, "/private/configs/token/gwmToken"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 24
    .local v2, "saveFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    .local v1, "parentDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_37

    .line 26
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 28
    :try_start_19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_37} :catch_3b

    .line 33
    :cond_37
    :goto_37
    invoke-static {p0, v2}, Lcom/qinggan/tsp/util/LoginTokenSaveUtil;->save(Ljava/lang/String;Ljava/io/File;)V

    .line 34
    return-void

    .line 29
    :catch_3b
    move-exception v0

    .line 30
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method

.method public static saveLoginToken(Ljava/lang/String;)V
    .registers 7
    .param p0, "content"    # Ljava/lang/String;

    .prologue
    .line 42
    new-instance v2, Ljava/io/File;

    const-string v3, "/private/configs/token/loginToken"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 43
    .local v2, "saveFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "parentDir":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_37

    .line 45
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 47
    :try_start_19
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "chmod 777 "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_37} :catch_3b

    .line 52
    :cond_37
    :goto_37
    invoke-static {p0, v2}, Lcom/qinggan/tsp/util/LoginTokenSaveUtil;->save(Ljava/lang/String;Ljava/io/File;)V

    .line 53
    return-void

    .line 48
    :catch_3b
    move-exception v0

    .line 49
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_37
.end method
