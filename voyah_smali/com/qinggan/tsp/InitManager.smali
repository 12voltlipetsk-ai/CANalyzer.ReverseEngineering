.class public Lcom/qinggan/tsp/InitManager;
.super Ljava/lang/Object;
.source "InitManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/InitManager$InitStatus;
    }
.end annotation


# static fields
.field private static initManager:Lcom/qinggan/tsp/InitManager;

.field private static lock:Ljava/lang/Object;


# instance fields
.field public DEVICE_TYPE_FOR_CP:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field baseUrl:Ljava/lang/String;

.field clientTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

.field cmsUrl:Ljava/lang/String;

.field gwmUrl:Ljava/lang/String;

.field initListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArraySet",
            "<",
            "Lcom/qinggan/tsp/TspManager$OnInitDetailListener;",
            ">;"
        }
    .end annotation
.end field

.field private initLock:Ljava/lang/Object;

.field initStatus:Lcom/qinggan/tsp/InitManager$InitStatus;

.field private isParamInit:Z

.field private mContext:Landroid/content/Context;

.field private mPdsn:Ljava/lang/String;

.field mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

.field private mTspApi:Lcom/pateo/tsp/TSPAPI;

.field private projectKey:Ljava/lang/String;

.field serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

.field serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

.field tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

.field trackingUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 30
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/InitManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-class v0, Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    .line 32
    const-string v0, "https://dfh97gw-pros.pateo.com.cn"

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    .line 33
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager;

    iget-object v1, p0, Lcom/qinggan/tsp/InitManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/tsp/manager/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->cmsUrl:Ljava/lang/String;

    .line 35
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->gwmUrl:Ljava/lang/String;

    .line 36
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->trackingUrl:Ljava/lang/String;

    .line 37
    const-string v0, "ccwb"

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->DEVICE_TYPE_FOR_CP:Ljava/lang/String;

    .line 38
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->mPdsn:Ljava/lang/String;

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/tsp/InitManager;->isParamInit:Z

    .line 41
    const-string v0, "n45acfe084d63b20d128bje85e7b5f21"

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->projectKey:Ljava/lang/String;

    .line 58
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->initListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 67
    sget-object v0, Lcom/qinggan/tsp/InitManager$InitStatus;->notInit:Lcom/qinggan/tsp/InitManager$InitStatus;

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->initStatus:Lcom/qinggan/tsp/InitManager$InitStatus;

    .line 68
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->initLock:Ljava/lang/Object;

    .line 114
    new-instance v0, Lcom/qinggan/tsp/InitManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/InitManager$2;-><init>(Lcom/qinggan/tsp/InitManager;)V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    .line 44
    iput-object p1, p0, Lcom/qinggan/tsp/InitManager;->mContext:Landroid/content/Context;

    .line 45
    new-instance v0, Lcom/pateo/tsp/TSPAPI;

    invoke-direct {v0}, Lcom/pateo/tsp/TSPAPI;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    .line 46
    return-void
.end method

.method private getAuthToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    sget-object v0, Lcom/qinggan/tsp/InitManager;->initManager:Lcom/qinggan/tsp/InitManager;

    if-eqz v0, :cond_7

    .line 50
    sget-object v0, Lcom/qinggan/tsp/InitManager;->initManager:Lcom/qinggan/tsp/InitManager;

    .line 56
    :goto_6
    return-object v0

    .line 51
    :cond_7
    sget-object v1, Lcom/qinggan/tsp/InitManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 52
    :try_start_a
    sget-object v0, Lcom/qinggan/tsp/InitManager;->initManager:Lcom/qinggan/tsp/InitManager;

    if-eqz v0, :cond_15

    .line 53
    sget-object v0, Lcom/qinggan/tsp/InitManager;->initManager:Lcom/qinggan/tsp/InitManager;

    monitor-exit v1

    goto :goto_6

    .line 55
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 54
    :cond_15
    :try_start_15
    new-instance v0, Lcom/qinggan/tsp/InitManager;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/InitManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qinggan/tsp/InitManager;->initManager:Lcom/qinggan/tsp/InitManager;

    .line 55
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 56
    sget-object v0, Lcom/qinggan/tsp/InitManager;->initManager:Lcom/qinggan/tsp/InitManager;

    goto :goto_6
.end method

.method private initTspApi()V
    .registers 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    if-eqz v0, :cond_c

    .line 98
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    const-string v1, "serviceParamManager is not null, return"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_b
    return-void

    .line 102
    :cond_c
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceParamManager;

    iget-object v1, p0, Lcom/qinggan/tsp/InitManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qinggan/tsp/InitManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    invoke-direct {v0, v1, v2}, Lcom/qinggan/tsp/manager/ServiceParamManager;-><init>(Landroid/content/Context;Lcom/pateo/tsp/TSPAPI;)V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    .line 103
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    new-instance v1, Lcom/qinggan/tsp/InitManager$1;

    invoke-direct {v1, p0}, Lcom/qinggan/tsp/InitManager$1;-><init>(Lcom/qinggan/tsp/InitManager;)V

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/manager/ServiceParamManager;->initParamConfig(Lcom/qinggan/tsp/manager/ServiceParamManager$ParamInitListener;)V

    goto :goto_b
.end method

.method private onResult(ZLcom/qinggan/tsp/InitError;)V
    .registers 7
    .param p1, "isConnected"    # Z
    .param p2, "restError"    # Lcom/qinggan/tsp/InitError;

    .prologue
    .line 82
    iget-object v2, p0, Lcom/qinggan/tsp/InitManager;->initListenerList:Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/TspManager$OnInitDetailListener;

    .line 84
    .local v1, "onInitDetailListener":Lcom/qinggan/tsp/TspManager$OnInitDetailListener;
    :try_start_12
    invoke-virtual {v1, p1, p2}, Lcom/qinggan/tsp/TspManager$OnInitDetailListener;->onResult(ZLcom/qinggan/tsp/InitError;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_16

    goto :goto_6

    .line 85
    :catch_16
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 89
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "onInitDetailListener":Lcom/qinggan/tsp/TspManager$OnInitDetailListener;
    :cond_1b
    return-void
.end method

.method private requestTokenForInit()V
    .registers 9

    .prologue
    .line 125
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 126
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error baseUrl is :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    :goto_22
    return-void

    .line 130
    :cond_23
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    if-nez v0, :cond_2f

    .line 131
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/manager/TokenManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    .line 133
    :cond_2f
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v1, p0, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/InitManager;->cmsUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/InitManager;->gwmUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/InitManager;->trackingUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/InitManager;->mPdsn:Ljava/lang/String;

    iget-object v6, p0, Lcom/qinggan/tsp/InitManager;->projectKey:Ljava/lang/String;

    iget-object v7, p0, Lcom/qinggan/tsp/InitManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    invoke-virtual/range {v0 .. v7}, Lcom/qinggan/tsp/manager/TokenManager;->init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/tsp/TSPAPI;)V

    .line 134
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    iget-object v1, p0, Lcom/qinggan/tsp/InitManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/manager/TokenManager;->setTokenListener(Lcom/qinggan/tsp/manager/TokenManager$TokenListener;)V

    goto :goto_22
.end method


# virtual methods
.method public getCmsService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 285
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/qinggan/tsp/util/VehicleUtil;->isOverSeaVehicle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 286
    const/4 v0, 0x0

    .line 288
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getDeviceTypeForCp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 316
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->DEVICE_TYPE_FOR_CP:Ljava/lang/String;

    return-object v0
.end method

.method public getGwmService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 292
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/qinggan/tsp/util/VehicleUtil;->isOverSeaVehicle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 293
    const/4 v0, 0x0

    .line 295
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getGwmService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getIviAdminUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 312
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getMqttService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 271
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/qinggan/tsp/util/VehicleUtil;->isOverSeaVehicle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 272
    const/4 v0, 0x0

    .line 274
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getMqttService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getProjectKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 320
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->projectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getRetrofitBuilder()Lretrofit2/Retrofit$Builder;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createRetrofitBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    if-nez v0, :cond_15

    .line 263
    const-string v2, "https://dfh97gw-pros.pateo.com.cn"

    .line 264
    .local v2, "baseUrl":Ljava/lang/String;
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager;

    iget-object v1, p0, Lcom/qinggan/tsp/InitManager;->mContext:Landroid/content/Context;

    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/tsp/manager/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    .line 267
    .end local v2    # "baseUrl":Ljava/lang/String;
    :cond_15
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getSoulMateCloudService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 278
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {}, Lcom/qinggan/tsp/util/VehicleUtil;->isOverSeaVehicle()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 279
    const/4 v0, 0x0

    .line 281
    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getSoulMateCloudService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_7
.end method

.method public getTokenUserInfo()Lcom/qinggan/tsp/models/TokenUserInfo;
    .registers 9

    .prologue
    .line 205
    iget-object v6, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v6}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v4

    .line 206
    .local v4, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    if-nez v4, :cond_a

    const/4 v5, 0x0

    .line 212
    :goto_9
    return-object v5

    .line 207
    :cond_a
    invoke-virtual {v4}, Lcom/qinggan/tsp/models/TokenBean;->getAccessToken()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\\."

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 208
    .local v0, "data":[Ljava/lang/String;
    const/4 v6, 0x1

    aget-object v2, v0, v6

    .line 209
    .local v2, "loginMsg":Ljava/lang/String;
    invoke-static {v2}, Lcom/qinggan/tsp/manager/TokenManager;->getFromBASE64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "loginMsgJson":Ljava/lang/String;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 211
    .local v1, "gson":Lcom/google/gson/Gson;
    const-class v6, Lcom/qinggan/tsp/models/TokenUserInfo;

    invoke-virtual {v1, v3, v6}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/tsp/models/TokenUserInfo;

    .line 212
    .local v5, "tokenUserInfo":Lcom/qinggan/tsp/models/TokenUserInfo;
    goto :goto_9
.end method

.method public getTrackingService(Ljava/lang/Class;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 299
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getTrackingService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTspConfig(I)Lcom/qinggan/tsp/config/TspConfigBean;
    .registers 3
    .param p1, "tspType"    # I

    .prologue
    .line 303
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getTspConfig(I)Lcom/qinggan/tsp/config/TspConfigBean;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$OnInitDetailListener;)V
    .registers 7
    .param p1, "pdsn"    # Ljava/lang/String;
    .param p2, "initListener"    # Lcom/qinggan/tsp/TspManager$OnInitDetailListener;

    .prologue
    .line 77
    if-eqz p2, :cond_f

    .line 78
    const/4 v0, 0x0

    new-instance v1, Lcom/qinggan/tsp/InitError;

    sget-object v2, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->OVER_SEAN_NOT_SUPPROT:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v3, "OVER_SEAN_NOT_SUPPROT"

    invoke-direct {v1, v2, v3}, Lcom/qinggan/tsp/InitError;-><init>(Lcom/qinggan/tsp/restmiddle/RestError$Kind;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/qinggan/tsp/TspManager$OnInitDetailListener;->onResult(ZLcom/qinggan/tsp/InitError;)V

    .line 79
    :cond_f
    return-void
.end method

.method public logoutGlobalToken()V
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    if-nez v0, :cond_c

    .line 198
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    const-string v1, "logoutGlobalToken tokenManager is null, please init..."

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    :goto_b
    return-void

    .line 201
    :cond_c
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->logoutGlobalToken()V

    goto :goto_b
.end method

.method public setCmsHuToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "huToken"    # Ljava/lang/String;

    .prologue
    .line 191
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsHuToken huToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->setCmsHuToken(Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method public setGlobalToken(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    .registers 4
    .param p1, "authLoginResponseItem"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    if-nez v0, :cond_c

    .line 184
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    const-string v1, "setGlobalToken tokenManager is null, please init..."

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_b
    return-void

    .line 187
    :cond_c
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->setUserToken(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V

    goto :goto_b
.end method

.method public setOtaPushMessageListener(Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;)V
    .registers 5
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaPushMessageListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    if-nez v0, :cond_24

    .line 159
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    const-string v1, "setOtaPushMessageListener serviceParamManager is null"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    :goto_23
    return-void

    .line 162
    :cond_24
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceParamManager;->setOtaPushMessageListener(Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;)V

    goto :goto_23
.end method

.method public setPoiPushMessageListener(Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;)V
    .registers 5
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPoiPushMessageListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    if-nez v0, :cond_24

    .line 168
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    const-string v1, "setPoiPushMessageListener serviceParamManager is null"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :goto_23
    return-void

    .line 171
    :cond_24
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceParamManager;->setPoiPushMessageListener(Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;)V

    goto :goto_23
.end method

.method public setPushMessageListener(Lcom/qinggan/tsp/TspManager$PushMessageListener;)V
    .registers 5
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$PushMessageListener;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPushMessageListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    if-nez v0, :cond_24

    .line 145
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->TAG:Ljava/lang/String;

    const-string v1, "setPushMessageListener serviceParamManager is null"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 149
    :goto_23
    return-void

    .line 148
    :cond_24
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->serviceParamManager:Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/manager/ServiceParamManager;->setPushMessageListener(Lcom/qinggan/tsp/TspManager$PushMessageListener;)V

    goto :goto_23
.end method

.method public setTokenListener(Lcom/qinggan/tsp/manager/TokenManager$TokenListener;)V
    .registers 4
    .param p1, "tokenListener"    # Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    .prologue
    .line 175
    iput-object p1, p0, Lcom/qinggan/tsp/InitManager;->clientTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    .line 176
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->clientTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    if-eqz v0, :cond_1d

    .line 177
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager;->clientTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    iget-object v1, p0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v1}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 179
    :cond_1d
    return-void
.end method

.method public subscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
    .registers 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subscribeListener"    # Lcom/qinggan/tsp/TspManager$SubscribeListener;

    .prologue
    .line 227
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qinggan/tsp/InitManager$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/qinggan/tsp/InitManager$3;-><init>(Lcom/qinggan/tsp/InitManager;Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 239
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 241
    return-void
.end method

.method public unSubscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
    .registers 5
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subscribeListener"    # Lcom/qinggan/tsp/TspManager$SubscribeListener;

    .prologue
    .line 251
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/qinggan/tsp/InitManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/qinggan/tsp/InitManager$4;-><init>(Lcom/qinggan/tsp/InitManager;Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 258
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 259
    return-void
.end method
