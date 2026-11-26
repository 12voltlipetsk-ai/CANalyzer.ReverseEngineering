.class public Lcom/qinggan/tsp/config/TspSourceConfig;
.super Ljava/lang/Object;
.source "TspSourceConfig.java"


# static fields
.field private static final CMS_ENABLE:Ljava/lang/String; = "persist.sys.tsp.cms_enable"

.field private static final GWM_ENABLE:Ljava/lang/String; = "persist.sys.tsp.gwm_enable"

.field private static final TAG:Ljava/lang/String;

.field private static final cmsState:Z

.field private static final gwmState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 9
    const-class v0, Lcom/qinggan/tsp/config/TspSourceConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/config/TspSourceConfig;->TAG:Ljava/lang/String;

    .line 12
    const-string v0, "persist.sys.tsp.cms_enable"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/config/TspSourceConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsState:Z

    .line 13
    const-string v0, "persist.sys.tsp.gwm_enable"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/config/TspSourceConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/qinggan/tsp/config/TspSourceConfig;->gwmState:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method

.method public static cmsEnable()Z
    .registers 3

    .prologue
    .line 23
    sget-object v0, Lcom/qinggan/tsp/config/TspSourceConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cmsState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    sget-boolean v0, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsState:Z

    if-eqz v0, :cond_20

    .line 25
    const/4 v0, 0x1

    .line 26
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 37
    move v3, p1

    .line 39
    .local v3, "value":Z
    :try_start_1
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 40
    .local v0, "c":Ljava/lang/Class;
    const-string v4, "getBoolean"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 41
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    const/4 v5, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_30} :catch_32

    move-result v3

    .line 45
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_31
    return v3

    .line 42
    :catch_32
    move-exception v1

    .line 43
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method private static getBooleanSystemProperties(Ljava/lang/String;)Z
    .registers 2
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 19
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/qinggan/tsp/config/TspSourceConfig;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static getVinCode()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 51
    :try_start_1
    const-string v5, "com.qinggan.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 52
    .local v0, "c":Ljava/lang/Class;
    const-string v5, "getVinCode"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {v0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 53
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_1a
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1a} :catch_1b
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1a} :catch_21
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1a} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1a} :catch_2b

    .line 64
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_1a
    return-object v3

    .line 55
    :catch_1b
    move-exception v1

    .line 56
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_1f
    move-object v3, v4

    .line 64
    goto :goto_1a

    .line 57
    :catch_21
    move-exception v1

    .line 58
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_1f

    .line 59
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_26
    move-exception v1

    .line 60
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_1f

    .line 61
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2b
    move-exception v1

    .line 62
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public static gwmEnable()Z
    .registers 3

    .prologue
    .line 30
    sget-object v0, Lcom/qinggan/tsp/config/TspSourceConfig;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gwmState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/qinggan/tsp/config/TspSourceConfig;->gwmState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    sget-boolean v0, Lcom/qinggan/tsp/config/TspSourceConfig;->gwmState:Z

    if-eqz v0, :cond_20

    .line 32
    const/4 v0, 0x1

    .line 33
    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public static nvramRead(I)Ljava/lang/String;
    .registers 9
    .param p0, "item"    # I

    .prologue
    .line 70
    :try_start_0
    const-string v4, "com.qinggan.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 71
    .local v0, "c":Ljava/lang/Class;
    const-string v4, "nvramRead"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 72
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 77
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_24
    return-object v3

    .line 74
    :catch_25
    move-exception v1

    .line 75
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 77
    const/4 v3, 0x0

    goto :goto_24
.end method
