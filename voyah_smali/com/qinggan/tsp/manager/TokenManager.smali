.class public Lcom/qinggan/tsp/manager/TokenManager;
.super Ljava/lang/Object;
.source "TokenManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/manager/TokenManager$MyHandler;,
        Lcom/qinggan/tsp/manager/TokenManager$TokenListener;
    }
.end annotation


# static fields
.field public static final AUTHORIZATION_TOKEN_FORMAT:Ljava/lang/String; = "Bearer %s"

.field public static TAG:Ljava/lang/String; = null

.field private static baseUrl:Ljava/lang/String; = null

.field private static cmsUrl:Ljava/lang/String; = null

.field private static gwmUrl:Ljava/lang/String; = null

.field private static lock:Ljava/lang/Object; = null

.field static final requestRefreshToken:I = 0x23

.field static final requestTokenByLoginId:I = 0x22

.field static final requestTokenByPdsn:I = 0x21

.field private static serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

.field private static tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

.field private static trackingUrl:Ljava/lang/String;


# instance fields
.field cmsHuTokenListener:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

.field private cmsHutokenBeanCache:Ljava/lang/String;

.field globalTokenListener:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

.field handlerThread:Landroid/os/HandlerThread;

.field mCallback:Lcom/qinggan/tsp/restmiddle/RestCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPdsn:Ljava/lang/String;

.field private mProjectKey:Ljava/lang/String;

.field mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

.field private mTspApi:Lcom/pateo/tsp/TSPAPI;

.field private savedRefreshtoken:Ljava/lang/String;

.field private tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

.field private tokenLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-class v0, Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    .line 36
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/manager/TokenManager;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/qinggan/tsp/manager/TokenManager$1;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/TokenManager$1;-><init>(Lcom/qinggan/tsp/manager/TokenManager;)V

    iput-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->globalTokenListener:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    .line 100
    new-instance v0, Lcom/qinggan/tsp/manager/TokenManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/TokenManager$2;-><init>(Lcom/qinggan/tsp/manager/TokenManager;)V

    iput-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->cmsHuTokenListener:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    .line 161
    new-instance v0, Lcom/qinggan/tsp/manager/TokenManager$3;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/TokenManager$3;-><init>(Lcom/qinggan/tsp/manager/TokenManager;)V

    iput-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mCallback:Lcom/qinggan/tsp/restmiddle/RestCallback;

    .line 412
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenLock:Ljava/lang/Object;

    .line 124
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager;->mContext:Landroid/content/Context;

    .line 125
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "tokenHandle"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->handlerThread:Landroid/os/HandlerThread;

    .line 126
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 127
    new-instance v0, Lcom/qinggan/tsp/manager/TokenManager$MyHandler;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager;->handlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qinggan/tsp/manager/TokenManager$MyHandler;-><init>(Lcom/qinggan/tsp/manager/TokenManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    .line 128
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/tsp/manager/TokenManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p1, "x1"    # Lcom/qinggan/tsp/models/TokenBean;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V

    return-void
.end method

.method static synthetic access$200(Lcom/qinggan/tsp/manager/TokenManager;Ljava/lang/String;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->setCmsHutokenBeanCache(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;
    .registers 3
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p1, "x1"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->transToTokenBean(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p1, "x1"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshTokenAsync(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qinggan/tsp/manager/TokenManager;)V
    .registers 1
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->requestAuthTokenByPdsn()V

    return-void
.end method

.method static synthetic access$600(Lcom/qinggan/tsp/manager/TokenManager;)Lcom/qinggan/tsp/models/TokenBean;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 33
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->refreshToken()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/qinggan/tsp/manager/TokenManager;Ljava/lang/String;)J
    .registers 4
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->getExpTime(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$800(Lcom/qinggan/tsp/manager/TokenManager;JI)V
    .registers 5
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p1, "x1"    # J
    .param p3, "x2"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshToken(JI)V

    return-void
.end method

.method public static formatToken(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "srcToken"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 455
    const-string v0, "Bearer %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getExpTime(Ljava/lang/String;)J
    .registers 12
    .param p1, "accessToken"    # Ljava/lang/String;

    .prologue
    const-wide/16 v6, -0x1

    .line 289
    if-eqz p1, :cond_c

    if-eqz p1, :cond_d

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 304
    :cond_c
    :goto_c
    return-wide v6

    .line 291
    :cond_d
    const-string v8, "\\."

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 292
    .local v0, "data":[Ljava/lang/String;
    const/4 v8, 0x1

    aget-object v3, v0, v8

    .line 293
    .local v3, "loginMsg":Ljava/lang/String;
    invoke-static {v3}, Lcom/qinggan/tsp/manager/TokenManager;->getFromBASE64(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 294
    .local v4, "loginMsgJson":Ljava/lang/String;
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 295
    .local v2, "gson":Lcom/google/gson/Gson;
    const-class v8, Lcom/qinggan/tsp/models/TokenUserInfo;

    invoke-virtual {v2, v4, v8}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/tsp/models/TokenUserInfo;

    .line 296
    .local v5, "tokenUserInfo":Lcom/qinggan/tsp/models/TokenUserInfo;
    if-eqz v5, :cond_c

    .line 298
    :try_start_29
    invoke-virtual {v5}, Lcom/qinggan/tsp/models/TokenUserInfo;->getExp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/qinggan/tsp/manager/TokenManager;->standTimeToMillis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_38} :catch_3a

    move-result-wide v6

    .line 299
    .local v6, "time":J
    goto :goto_c

    .line 300
    .end local v6    # "time":J
    :catch_3a
    move-exception v1

    .line 301
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c
.end method

.method public static getFromBASE64(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 333
    if-nez p0, :cond_5

    const-string v1, ""

    .line 340
    :goto_4
    return-object v1

    .line 335
    :cond_5
    :try_start_5
    new-instance v1, Ljava/lang/String;

    const/16 v2, 0x8

    invoke-static {p0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_10} :catch_11

    .line 337
    .local v1, "oneBaseDecoder":Ljava/lang/String;
    goto :goto_4

    .line 338
    .end local v1    # "oneBaseDecoder":Ljava/lang/String;
    :catch_11
    move-exception v0

    .line 339
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    const-string v1, ""

    goto :goto_4
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/manager/TokenManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    if-eqz v0, :cond_7

    .line 51
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    .line 58
    :goto_6
    return-object v0

    .line 52
    :cond_7
    sget-object v1, Lcom/qinggan/tsp/manager/TokenManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 53
    :try_start_a
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    if-eqz v0, :cond_15

    .line 54
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    monitor-exit v1

    goto :goto_6

    .line 57
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 55
    :cond_15
    :try_start_15
    new-instance v0, Lcom/qinggan/tsp/manager/TokenManager;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/TokenManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qinggan/tsp/manager/TokenManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    .line 57
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 58
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    goto :goto_6
.end method

.method private initService()V
    .registers 7

    .prologue
    .line 81
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/qinggan/tsp/manager/TokenManager;->baseUrl:Ljava/lang/String;

    sget-object v3, Lcom/qinggan/tsp/manager/TokenManager;->cmsUrl:Ljava/lang/String;

    sget-object v4, Lcom/qinggan/tsp/manager/TokenManager;->gwmUrl:Ljava/lang/String;

    sget-object v5, Lcom/qinggan/tsp/manager/TokenManager;->trackingUrl:Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/tsp/manager/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/qinggan/tsp/manager/TokenManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    .line 82
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->registerGlobalTokenListener()V

    .line 83
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->registerCmsHuTokenListener()V

    .line 85
    return-void
.end method

.method private notHasToken()Z
    .registers 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    invoke-virtual {v0}, Lcom/qinggan/tsp/models/TokenBean;->getToken()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    invoke-virtual {v0}, Lcom/qinggan/tsp/models/TokenBean;->getToken()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private refreshToken()Lcom/qinggan/tsp/models/TokenBean;
    .registers 6

    .prologue
    .line 415
    const/4 v2, 0x0

    .line 417
    .local v2, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    new-instance v3, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 418
    .local v1, "policy":Landroid/os/StrictMode$ThreadPolicy;
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 419
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->syncRefreshToken()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    move-result-object v0

    .line 420
    .local v0, "authLoginResponseItem":Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;
    invoke-direct {p0, v0}, Lcom/qinggan/tsp/manager/TokenManager;->transToTokenBean(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v2

    .line 421
    sget-object v3, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v4, "refreshToken"

    invoke-static {v3, v4}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    invoke-direct {p0, v2}, Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 423
    iget-object v3, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    if-eqz v3, :cond_2c

    .line 424
    iget-object v3, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 425
    :cond_2c
    return-object v2
.end method

.method private registerCmsHuTokenListener()V
    .registers 3

    .prologue
    .line 115
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    if-nez v0, :cond_5

    .line 118
    :goto_4
    return-void

    .line 117
    :cond_5
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager;->cmsHuTokenListener:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    invoke-virtual {v0, v1}, Lcom/pateo/tsp/TSPAPI;->setCmsHuTokenListener(Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;)V

    goto :goto_4
.end method

.method private registerGlobalTokenListener()V
    .registers 3

    .prologue
    .line 109
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    if-nez v0, :cond_5

    .line 112
    :goto_4
    return-void

    .line 111
    :cond_5
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager;->globalTokenListener:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    invoke-virtual {v0, v1}, Lcom/pateo/tsp/TSPAPI;->setGlobalTokenListener(Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;)V

    goto :goto_4
.end method

.method private requestAuthTokenByPdsn()V
    .registers 3

    .prologue
    .line 192
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v1, "requestAuthTokenByPdsn"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    return-void
.end method

.method private requestAuthTokenByPdsnForService()V
    .registers 3

    .prologue
    .line 187
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v1, "requestAuthTokenByPdsnForService"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->requestAuthTokenByPdsn()V

    .line 189
    return-void
.end method

.method private requestNewToken()Lcom/qinggan/tsp/models/TokenBean;
    .registers 4

    .prologue
    .line 429
    sget-object v1, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v2, "requestNewToken"

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 433
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    .line 451
    :goto_11
    return-object v0

    .line 435
    :cond_12
    const/4 v0, 0x0

    .line 451
    .local v0, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    goto :goto_11
.end method

.method private setCmsHutokenBeanCache(Ljava/lang/String;)V
    .registers 2
    .param p1, "huToken"    # Ljava/lang/String;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager;->cmsHutokenBeanCache:Ljava/lang/String;

    .line 491
    return-void
.end method

.method private setNextRefreshToken(JI)V
    .registers 15
    .param p1, "expTime"    # J
    .param p3, "msgId"    # I

    .prologue
    .line 255
    const-wide/16 v6, -0x1

    cmp-long v6, p1, v6

    if-nez v6, :cond_7

    .line 286
    :goto_6
    return-void

    .line 257
    :cond_7
    const-wide/16 v4, -0x1

    .line 259
    .local v4, "utcTimeOnUtc":J
    :try_start_9
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getUtcTimeOnService()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_14} :catch_95

    move-result-wide v4

    .line 263
    :goto_15
    sget-object v6, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "setNextRefreshToken expTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " utcTimeOnUtc: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " curTime:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 264
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getTimeStamp()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 263
    invoke-static {v6, v7}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    const-wide/16 v6, -0x1

    cmp-long v6, v4, v6

    if-nez v6, :cond_c9

    .line 266
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTimeStamp()J

    move-result-wide v6

    cmp-long v6, p1, v6

    if-lez v6, :cond_9b

    .line 267
    iget-object v6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 268
    iget-object v6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 269
    .local v1, "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    add-long/2addr v8, p1

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->sendMessageAtTime(Landroid/os/Message;J)Z

    .line 270
    sget-object v6, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expTime:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]>currentTime:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTimeStamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 260
    .end local v1    # "message":Landroid/os/Message;
    :catch_95
    move-exception v0

    .line 261
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    .line 272
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_9b
    sget-object v6, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "expTime:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]<=currentTime:["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTimeStamp()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 275
    :cond_c9
    sub-long v2, p1, v4

    .line 276
    .local v2, "restTime":J
    sget-object v6, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "restTime: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    iget-object v6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p3}, Landroid/os/Handler;->removeMessages(I)V

    .line 278
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_f7

    .line 279
    sget-object v6, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v7, "token is expird, network or service is error!"

    invoke-static {v6, v7}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_6

    .line 282
    :cond_f7
    iget-object v6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, p3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 283
    .restart local v1    # "message":Landroid/os/Message;
    iget-object v6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    const-wide/32 v8, 0xea60

    add-long/2addr v8, v2

    invoke-virtual {v6, v1, v8, v9}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_6
.end method

.method private setNextRefreshTokenAsync(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 4
    .param p1, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;

    .prologue
    .line 240
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qinggan/tsp/manager/TokenManager$5;

    invoke-direct {v1, p0, p1}, Lcom/qinggan/tsp/manager/TokenManager$5;-><init>(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/TokenBean;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 247
    return-void
.end method

.method private setNextRefreshTokenAsync(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    .registers 4
    .param p1, "authLoginResponseItem"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 227
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/qinggan/tsp/manager/TokenManager$4;

    invoke-direct {v1, p0, p1}, Lcom/qinggan/tsp/manager/TokenManager$4;-><init>(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 237
    return-void
.end method

.method private setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 2
    .param p1, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;

    .prologue
    .line 482
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    .line 483
    return-void
.end method

.method public static standTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 314
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 315
    :cond_8
    const-string v0, ""

    .line 321
    :cond_a
    :goto_a
    return-object v0

    .line 316
    :cond_b
    const-string v0, ""

    .line 317
    .local v0, "tmpTime":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_29

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "000"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 319
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_a

    .line 320
    move-object v0, p0

    goto :goto_a
.end method

.method private syncRefreshToken()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;
    .registers 2

    .prologue
    .line 200
    const/4 v0, 0x0

    return-object v0
.end method

.method private syncRequestAuthTokenByPdsn()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;
    .registers 2

    .prologue
    .line 196
    const/4 v0, 0x0

    return-object v0
.end method

.method private transToTokenBean(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;
    .registers 10
    .param p1, "authLoginResponseItem"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 460
    const/4 v2, 0x0

    .line 461
    .local v2, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    if-eqz p1, :cond_9c

    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    if-eqz v3, :cond_9c

    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getAccesstoken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9c

    .line 462
    new-instance v2, Lcom/qinggan/tsp/models/TokenBean;

    .end local v2    # "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    invoke-direct {v2}, Lcom/qinggan/tsp/models/TokenBean;-><init>()V

    .line 463
    .restart local v2    # "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getAccesstoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qinggan/tsp/models/TokenBean;->setToken(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getRefreshtoken()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9d

    .line 465
    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getRefreshtoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_9d

    .line 466
    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getRefreshtoken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/qinggan/tsp/models/TokenBean;->setRefreshToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {p1}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;->getData()Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;

    move-result-object v3

    invoke-virtual {v3}, Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem$Data;->getRefreshtoken()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/tsp/manager/TokenManager;->savedRefreshtoken:Ljava/lang/String;

    .line 471
    :goto_50
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTimeStamp()J

    move-result-wide v0

    .line 474
    .local v0, "curTime":J
    invoke-virtual {v2}, Lcom/qinggan/tsp/models/TokenBean;->getToken()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qinggan/tsp/manager/TokenManager;->getExpTime(Ljava/lang/String;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Lcom/qinggan/tsp/models/TokenBean;->setExpiredTime(J)V

    .line 475
    invoke-direct {p0, v2}, Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 476
    sget-object v3, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "token: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qinggan/tsp/models/TokenBean;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] curTime:["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] expTime["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/qinggan/tsp/models/TokenBean;->getExpiredTime()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    .end local v0    # "curTime":J
    :cond_9c
    return-object v2

    .line 470
    :cond_9d
    iget-object v3, p0, Lcom/qinggan/tsp/manager/TokenManager;->savedRefreshtoken:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/qinggan/tsp/models/TokenBean;->setRefreshToken(Ljava/lang/String;)V

    goto :goto_50
.end method


# virtual methods
.method public asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<TT;>;"
    return-void
.end method

.method public getCmsHutokenBeanCache()Ljava/lang/String;
    .registers 2

    .prologue
    .line 494
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->cmsHutokenBeanCache:Ljava/lang/String;

    return-object v0
.end method

.method public getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;
    .registers 3

    .prologue
    .line 154
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->serviceManager:Lcom/qinggan/tsp/manager/ServiceManager;

    const-class v1, Lcom/qinggan/tsp/service/QGAuthService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/manager/ServiceManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGAuthService;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .registers 6

    .prologue
    .line 389
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->notHasToken()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 390
    sget-object v2, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v3, "not has token, request new token..."

    invoke-static {v2, v3}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 391
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->requestNewToken()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v1

    .line 392
    .local v1, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    if-nez v1, :cond_16

    const-string v2, ""

    .line 404
    .end local v1    # "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    :goto_15
    return-object v2

    .line 392
    .restart local v1    # "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    :cond_16
    invoke-virtual {v1}, Lcom/qinggan/tsp/models/TokenBean;->getToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_15

    .line 395
    .end local v1    # "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    :cond_1b
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->isExpired()Z

    move-result v2

    if-eqz v2, :cond_28

    .line 396
    sget-object v2, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v3, "token is expired , refresh new token..."

    invoke-static {v2, v3}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    :cond_28
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v2

    if-nez v2, :cond_31

    const-string v2, ""

    goto :goto_15

    :cond_31
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v2

    invoke-virtual {v2}, Lcom/qinggan/tsp/models/TokenBean;->getToken()Ljava/lang/String;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v2

    goto :goto_15

    .line 402
    :catch_3a
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getToken error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v2, ""

    goto :goto_15
.end method

.method public getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    return-object v0
.end method

.method public getUtcTimeOnService()Ljava/lang/String;
    .registers 6

    .prologue
    .line 348
    sget-object v3, Lcom/qinggan/tsp/manager/TokenManager;->baseUrl:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 349
    sget-object v3, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v4, "baseUrl is null..."

    invoke-static {v3, v4}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v2, ""

    .line 360
    :goto_11
    return-object v2

    .line 352
    :cond_12
    const-string v2, ""

    .line 354
    .local v2, "time":Ljava/lang/String;
    :try_start_14
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v3

    invoke-interface {v3}, Lcom/qinggan/tsp/service/QGAuthService;->utcTime()Lretrofit2/Call;

    move-result-object v0

    .line 355
    .local v0, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    invoke-static {v2}, Lcom/qinggan/tsp/manager/TokenManager;->standTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_1f} :catch_21

    move-result-object v2

    goto :goto_11

    .line 356
    .end local v0    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    :catch_21
    move-exception v1

    .line 357
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/tsp/TSPAPI;)V
    .registers 5
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "pdsn"    # Ljava/lang/String;
    .param p3, "projectKey"    # Ljava/lang/String;
    .param p4, "tspapi"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 73
    iput-object p4, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    .line 74
    sput-object p1, Lcom/qinggan/tsp/manager/TokenManager;->baseUrl:Ljava/lang/String;

    .line 75
    iput-object p2, p0, Lcom/qinggan/tsp/manager/TokenManager;->mPdsn:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/qinggan/tsp/manager/TokenManager;->mProjectKey:Ljava/lang/String;

    .line 77
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->initService()V

    .line 78
    return-void
.end method

.method public init(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/tsp/TSPAPI;)V
    .registers 8
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "cmsBaseUrl"    # Ljava/lang/String;
    .param p3, "gwmBaseUrl"    # Ljava/lang/String;
    .param p4, "tackingBaseUrl"    # Ljava/lang/String;
    .param p5, "pdsn"    # Ljava/lang/String;
    .param p6, "projectKey"    # Ljava/lang/String;
    .param p7, "tspapi"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 62
    iput-object p7, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    .line 63
    sput-object p1, Lcom/qinggan/tsp/manager/TokenManager;->baseUrl:Ljava/lang/String;

    .line 64
    sput-object p2, Lcom/qinggan/tsp/manager/TokenManager;->cmsUrl:Ljava/lang/String;

    .line 65
    sput-object p3, Lcom/qinggan/tsp/manager/TokenManager;->gwmUrl:Ljava/lang/String;

    .line 66
    sput-object p4, Lcom/qinggan/tsp/manager/TokenManager;->trackingUrl:Ljava/lang/String;

    .line 67
    iput-object p5, p0, Lcom/qinggan/tsp/manager/TokenManager;->mPdsn:Ljava/lang/String;

    .line 68
    iput-object p6, p0, Lcom/qinggan/tsp/manager/TokenManager;->mProjectKey:Ljava/lang/String;

    .line 69
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/TokenManager;->initService()V

    .line 70
    return-void
.end method

.method public isExpired()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    .line 375
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v5

    if-nez v5, :cond_8

    .line 384
    :cond_7
    :goto_7
    return v4

    .line 378
    :cond_8
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTimeStamp()J

    move-result-wide v0

    .line 379
    .local v0, "curTime":J
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qinggan/tsp/models/TokenBean;->getExpiredTime()J

    move-result-wide v2

    .line 381
    .local v2, "expiredTime":J
    cmp-long v5, v0, v2

    if-gez v5, :cond_7

    .line 382
    const/4 v4, 0x0

    goto :goto_7
.end method

.method public logoutGlobalToken()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 520
    invoke-direct {p0, v0}, Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 521
    invoke-direct {p0, v0}, Lcom/qinggan/tsp/manager/TokenManager;->setCmsHutokenBeanCache(Ljava/lang/String;)V

    .line 522
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    invoke-virtual {v0}, Lcom/pateo/tsp/TSPAPI;->logoutGlobalToken()V

    .line 523
    return-void
.end method

.method public setCmsHuToken(Ljava/lang/String;)V
    .registers 5
    .param p1, "huToken"    # Ljava/lang/String;

    .prologue
    .line 512
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCmsHuToken: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 513
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->setCmsHutokenBeanCache(Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    invoke-virtual {v0, p1}, Lcom/pateo/tsp/TSPAPI;->setCmsHuToken(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public setTokenListener(Lcom/qinggan/tsp/manager/TokenManager$TokenListener;)V
    .registers 4
    .param p1, "tokenListener"    # Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    .prologue
    .line 147
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    .line 148
    invoke-virtual {p0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 149
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager;->tokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    invoke-interface {v0, v1}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 151
    :cond_f
    return-void
.end method

.method public setUserToken(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    .registers 6
    .param p1, "authLoginResponseItem"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 498
    if-nez p1, :cond_a

    .line 500
    sget-object v1, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v2, "setUserToken authLoginResponseItem is null"

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 509
    :goto_9
    return-void

    .line 504
    :cond_a
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/TokenManager;->transToTokenBean(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v0

    .line 505
    .local v0, "tokenBean":Lcom/qinggan/tsp/models/TokenBean;
    sget-object v1, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setUserToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    invoke-direct {p0, v0}, Lcom/qinggan/tsp/manager/TokenManager;->setTokenBeanCache(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 507
    iget-object v1, p0, Lcom/qinggan/tsp/manager/TokenManager;->mTspApi:Lcom/pateo/tsp/TSPAPI;

    invoke-virtual {v1, v0}, Lcom/pateo/tsp/TSPAPI;->setGlobalToken(Lcom/qinggan/tsp/models/TokenBean;)V

    goto :goto_9
.end method

.method public syncMethod(Lretrofit2/Call;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lretrofit2/Call",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 364
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    invoke-interface {p1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    move-result-object v0

    invoke-virtual {v0}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
