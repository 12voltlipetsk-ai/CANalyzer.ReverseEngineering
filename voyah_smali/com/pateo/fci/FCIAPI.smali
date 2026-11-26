.class public Lcom/pateo/fci/FCIAPI;
.super Ljava/lang/Object;
.source "FCIAPI.java"


# instance fields
.field private BASE_URL:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field private mCPSPService:Lcom/pateo/fci/CPSPService;

.field private mPushService:Lcom/pateo/fci/PushService;

.field private mTASIVIService:Lcom/pateo/fci/TASIVIService;

.field private mTASService:Lcom/pateo/fci/TASService;

.field private mTASTSPService:Lcom/pateo/fci/TASTSPService;

.field private mTShopService:Lcom/pateo/fci/TShopService;

.field private mUSIService:Lcom/pateo/fci/USIService;

.field private mUpdateService:Lcom/pateo/fci/UpdateService;

.field private mVDGService:Lcom/pateo/fci/VDGService;

.field private mVMSService:Lcom/pateo/fci/VMSService;

.field private okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

.field private final requestInterceptor:Lretrofit/RequestInterceptor;

.field private useTLS12:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/pateo/fci/FCIAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pateo/fci/FCIAPI;->useTLS12:Z

    .line 24
    const-string v0, "https://2civireg.ivoka.com.cn"

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 98
    new-instance v0, Lcom/pateo/fci/FCIAPI$1;

    invoke-direct {v0, p0}, Lcom/pateo/fci/FCIAPI$1;-><init>(Lcom/pateo/fci/FCIAPI;)V

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 52
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 53
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initServices()V

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "baseUrl"    # Ljava/lang/String;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/pateo/fci/FCIAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pateo/fci/FCIAPI;->useTLS12:Z

    .line 24
    const-string v0, "https://2civireg.ivoka.com.cn"

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 98
    new-instance v0, Lcom/pateo/fci/FCIAPI$1;

    invoke-direct {v0, p0}, Lcom/pateo/fci/FCIAPI$1;-><init>(Lcom/pateo/fci/FCIAPI;)V

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 57
    if-eqz p1, :cond_20

    .line 58
    iput-object p1, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    .line 60
    :cond_20
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 61
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initServices()V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "baseUrl"    # Ljava/lang/String;
    .param p2, "useTLS12"    # Z

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const-class v0, Lcom/pateo/fci/FCIAPI;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->TAG:Ljava/lang/String;

    .line 22
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pateo/fci/FCIAPI;->useTLS12:Z

    .line 24
    const-string v0, "https://2civireg.ivoka.com.cn"

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    .line 38
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 98
    new-instance v0, Lcom/pateo/fci/FCIAPI$1;

    invoke-direct {v0, p0}, Lcom/pateo/fci/FCIAPI$1;-><init>(Lcom/pateo/fci/FCIAPI;)V

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 64
    if-eqz p1, :cond_22

    .line 65
    iput-object p1, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    .line 66
    iput-boolean p2, p0, Lcom/pateo/fci/FCIAPI;->useTLS12:Z

    .line 68
    :cond_22
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;

    move-result-object v0

    iput-object v0, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    .line 69
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initServices()V

    .line 70
    return-void
.end method

.method private getUnsafeOkHttpClient()Lcom/squareup/okhttp/OkHttpClient;
    .registers 9

    .prologue
    .line 111
    const/4 v5, 0x1

    :try_start_1
    new-array v4, v5, [Ljavax/net/ssl/TrustManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/pateo/fci/FCIAPI$2;

    invoke-direct {v6, p0}, Lcom/pateo/fci/FCIAPI$2;-><init>(Lcom/pateo/fci/FCIAPI;)V

    aput-object v6, v4, v5

    .line 132
    .local v4, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    iget-boolean v5, p0, Lcom/pateo/fci/FCIAPI;->useTLS12:Z

    if-eqz v5, :cond_33

    .line 134
    new-instance v3, Lcom/pateo/fci/Tls12SocketFactory;

    invoke-direct {v3, v4}, Lcom/pateo/fci/Tls12SocketFactory;-><init>([Ljavax/net/ssl/TrustManager;)V

    .line 147
    .local v3, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :goto_14
    new-instance v1, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v1}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 148
    .local v1, "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    const-wide/16 v6, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setReadTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 149
    const-wide/16 v6, 0x14

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v5}, Lcom/squareup/okhttp/OkHttpClient;->setConnectTimeout(JLjava/util/concurrent/TimeUnit;)V

    .line 150
    invoke-virtual {v1, v3}, Lcom/squareup/okhttp/OkHttpClient;->setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)Lcom/squareup/okhttp/OkHttpClient;

    .line 151
    new-instance v5, Lcom/pateo/fci/FCIAPI$3;

    invoke-direct {v5, p0}, Lcom/pateo/fci/FCIAPI$3;-><init>(Lcom/pateo/fci/FCIAPI;)V

    invoke-virtual {v1, v5}, Lcom/squareup/okhttp/OkHttpClient;->setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/squareup/okhttp/OkHttpClient;

    .line 160
    return-object v1

    .line 137
    .end local v1    # "okHttpClient":Lcom/squareup/okhttp/OkHttpClient;
    .end local v3    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :cond_33
    const-string v5, "FCIAPI"

    const-string v6, "use ssl..."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    const-string v5, "SSL"

    invoke-static {v5}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v2

    .line 140
    .local v2, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v5, 0x0

    new-instance v6, Ljava/security/SecureRandom;

    invoke-direct {v6}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v2, v5, v4, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 144
    invoke-virtual {v2}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4c} :catch_4e

    move-result-object v3

    .restart local v3    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    goto :goto_14

    .line 161
    .end local v2    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v3    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v4    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :catch_4e
    move-exception v0

    .line 162
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-direct {v5, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v5
.end method

.method private initCPSPService()V
    .registers 7

    .prologue
    .line 168
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 169
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/gisnavi/tservice/gisnavi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 172
    .local v0, "CPSP_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 173
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 174
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 175
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 176
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 177
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/CPSPService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/CPSPService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mCPSPService:Lcom/pateo/fci/CPSPService;

    .line 178
    return-void
.end method

.method private initPushService()V
    .registers 7

    .prologue
    .line 320
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 321
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/sh/tservice/sh"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "PUSH_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 326
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 327
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 328
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 329
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 330
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/PushService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/PushService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mPushService:Lcom/pateo/fci/PushService;

    .line 331
    return-void
.end method

.method private initServices()V
    .registers 1

    .prologue
    .line 83
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initUSIService()V

    .line 84
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initCPSPService()V

    .line 85
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initTASService()V

    .line 86
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initUpdateService()V

    .line 87
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initVDGService()V

    .line 88
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initVMSService()V

    .line 89
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initTASTSPService()V

    .line 90
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initTASIVIService()V

    .line 91
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initTShopService()V

    .line 92
    invoke-direct {p0}, Lcom/pateo/fci/FCIAPI;->initPushService()V

    .line 93
    return-void
.end method

.method private initTASIVIService()V
    .registers 7

    .prologue
    .line 293
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 294
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tas/tservice/ivi"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 297
    .local v0, "TASIVI_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 298
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 299
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 300
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 301
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 302
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/TASIVIService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/TASIVIService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mTASIVIService:Lcom/pateo/fci/TASIVIService;

    .line 303
    return-void
.end method

.method private initTASService()V
    .registers 7

    .prologue
    .line 223
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 224
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tas/tservice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 228
    .local v0, "TAS_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 229
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 230
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 231
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 232
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 233
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/TASService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/TASService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mTASService:Lcom/pateo/fci/TASService;

    .line 234
    return-void
.end method

.method private initTASTSPService()V
    .registers 7

    .prologue
    .line 279
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 280
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tas/tservice/tsp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 284
    .local v0, "TASTSP_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 285
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 286
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 287
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 288
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 289
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/TASTSPService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/TASTSPService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mTASTSPService:Lcom/pateo/fci/TASTSPService;

    .line 290
    return-void
.end method

.method private initTShopService()V
    .registers 7

    .prologue
    .line 306
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 307
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/tshop/tservice/portal"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 311
    .local v0, "TSHOP_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 312
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 313
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 314
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 315
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 316
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/TShopService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/TShopService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mTShopService:Lcom/pateo/fci/TShopService;

    .line 317
    return-void
.end method

.method private initUSIService()V
    .registers 8

    .prologue
    .line 205
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    const-string v5, "yyyy-MM-dd HH:mm:ss"

    invoke-virtual {v4, v5}, Lcom/google/gson/GsonBuilder;->setDateFormat(Ljava/lang/String;)Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 206
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v2

    .line 208
    .local v2, "gson":Lcom/google/gson/Gson;
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 209
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/usi/tservice/usi"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 213
    .local v0, "USI_URL":Ljava/lang/String;
    new-instance v4, Lretrofit/RestAdapter$Builder;

    invoke-direct {v4}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v5, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 214
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    new-instance v5, Lretrofit/converter/GsonConverter;

    invoke-direct {v5, v2}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;)V

    .line 215
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setConverter(Lretrofit/converter/Converter;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 216
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    new-instance v5, Lretrofit/client/OkClient;

    iget-object v6, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v5, v6}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 217
    invoke-virtual {v4, v5}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    .line 218
    invoke-virtual {v4, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v3

    .line 219
    .local v3, "restAdapter":Lretrofit/RestAdapter;
    const-class v4, Lcom/pateo/fci/USIService;

    invoke-virtual {v3, v4}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pateo/fci/USIService;

    iput-object v4, p0, Lcom/pateo/fci/FCIAPI;->mUSIService:Lcom/pateo/fci/USIService;

    .line 220
    return-void
.end method

.method private initUpdateService()V
    .registers 7

    .prologue
    .line 237
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 238
    .local v1, "executor":Ljava/util/concurrent/Executor;
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    .line 242
    .local v0, "UPDATE_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 243
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 244
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 245
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 246
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 247
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/UpdateService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/UpdateService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mUpdateService:Lcom/pateo/fci/UpdateService;

    .line 248
    return-void
.end method

.method private initVDGService()V
    .registers 7

    .prologue
    .line 251
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 252
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vdg/tservice/vdgservice"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 256
    .local v0, "VDG_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 257
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 258
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 259
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 260
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 261
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/VDGService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/VDGService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mVDGService:Lcom/pateo/fci/VDGService;

    .line 262
    return-void
.end method

.method private initVMSService()V
    .registers 7

    .prologue
    .line 265
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v1

    .line 266
    .local v1, "executor":Ljava/util/concurrent/Executor;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->BASE_URL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/vms/tservice/vms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 270
    .local v0, "VMS_URL":Ljava/lang/String;
    new-instance v3, Lretrofit/RestAdapter$Builder;

    invoke-direct {v3}, Lretrofit/RestAdapter$Builder;-><init>()V

    sget-object v4, Lretrofit/RestAdapter$LogLevel;->FULL:Lretrofit/RestAdapter$LogLevel;

    .line 271
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setLogLevel(Lretrofit/RestAdapter$LogLevel;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/pateo/fci/FCIAPI;->requestInterceptor:Lretrofit/RequestInterceptor;

    .line 272
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setRequestInterceptor(Lretrofit/RequestInterceptor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    new-instance v4, Lretrofit/client/OkClient;

    iget-object v5, p0, Lcom/pateo/fci/FCIAPI;->okHttpClient:Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4, v5}, Lretrofit/client/OkClient;-><init>(Lcom/squareup/okhttp/OkHttpClient;)V

    .line 273
    invoke-virtual {v3, v4}, Lretrofit/RestAdapter$Builder;->setClient(Lretrofit/client/Client;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    .line 274
    invoke-virtual {v3, v1, v1}, Lretrofit/RestAdapter$Builder;->setExecutors(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3, v0}, Lretrofit/RestAdapter$Builder;->setEndpoint(Ljava/lang/String;)Lretrofit/RestAdapter$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lretrofit/RestAdapter$Builder;->build()Lretrofit/RestAdapter;

    move-result-object v2

    .line 275
    .local v2, "restAdapter":Lretrofit/RestAdapter;
    const-class v3, Lcom/pateo/fci/VMSService;

    invoke-virtual {v2, v3}, Lretrofit/RestAdapter;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/pateo/fci/VMSService;

    iput-object v3, p0, Lcom/pateo/fci/FCIAPI;->mVMSService:Lcom/pateo/fci/VMSService;

    .line 276
    return-void
.end method


# virtual methods
.method public getCPSPService()Lcom/pateo/fci/CPSPService;
    .registers 2

    .prologue
    .line 387
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mCPSPService:Lcom/pateo/fci/CPSPService;

    return-object v0
.end method

.method public getPushService()Lcom/pateo/fci/PushService;
    .registers 2

    .prologue
    .line 437
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mPushService:Lcom/pateo/fci/PushService;

    return-object v0
.end method

.method public getTASIVIService()Lcom/pateo/fci/TASIVIService;
    .registers 2

    .prologue
    .line 429
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mTASIVIService:Lcom/pateo/fci/TASIVIService;

    return-object v0
.end method

.method public getTASService()Lcom/pateo/fci/TASService;
    .registers 2

    .prologue
    .line 410
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mTASService:Lcom/pateo/fci/TASService;

    return-object v0
.end method

.method public getTASTSPService()Lcom/pateo/fci/TASTSPService;
    .registers 2

    .prologue
    .line 425
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mTASTSPService:Lcom/pateo/fci/TASTSPService;

    return-object v0
.end method

.method public getTShopService()Lcom/pateo/fci/TShopService;
    .registers 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mTShopService:Lcom/pateo/fci/TShopService;

    return-object v0
.end method

.method public getUSIService()Lcom/pateo/fci/USIService;
    .registers 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mUSIService:Lcom/pateo/fci/USIService;

    return-object v0
.end method

.method public getUpdateService()Lcom/pateo/fci/UpdateService;
    .registers 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mUpdateService:Lcom/pateo/fci/UpdateService;

    return-object v0
.end method

.method public getVDGService()Lcom/pateo/fci/VDGService;
    .registers 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mVDGService:Lcom/pateo/fci/VDGService;

    return-object v0
.end method

.method public getVMSService()Lcom/pateo/fci/VMSService;
    .registers 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/pateo/fci/FCIAPI;->mVMSService:Lcom/pateo/fci/VMSService;

    return-object v0
.end method

.method public setUseTLS12()V
    .registers 2

    .prologue
    .line 73
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pateo/fci/FCIAPI;->useTLS12:Z

    .line 74
    return-void
.end method
