.class public Lcom/qinggan/tsp/manager/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;
    }
.end annotation


# instance fields
.field private CA_CERT:[B

.field private CERT_SN:[B

.field private CLIENT_BKS:[B

.field private CLIENT_CERT:[B

.field private ConnectTimeoutSecond:I

.field private final MqttBaseUrl:Ljava/lang/String;

.field private final MqttBaseUrl_pro:Ljava/lang/String;

.field private final PASSWORD:Ljava/lang/String;

.field private ReadTimeoutSecond:I

.field private final SoulMateCloudUrl:Ljava/lang/String;

.field private final SoulMateCloudUrl_pro:Ljava/lang/String;

.field TAG:Ljava/lang/String;

.field private TSP_ENV:Ljava/lang/String;

.field private cacheService:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private configBeans:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/qinggan/tsp/config/TspConfigBean;",
            ">;"
        }
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field private converterFactory:Lretrofit2/Converter$Factory;

.field private id:Ljava/lang/String;

.field private sign:Ljava/lang/String;

.field private sn:Ljava/lang/String;

.field private tspapi:Lcom/pateo/tsp/TSPAPI;

.field private vin:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v1, Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    .line 69
    const-string v1, "http://msmqttpush.uat.pateo.com.cn/"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->MqttBaseUrl:Ljava/lang/String;

    .line 70
    const-string v1, "http://msmqttpush.pro.ptcloud.t.home/"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->MqttBaseUrl_pro:Ljava/lang/String;

    .line 71
    const-string v1, "https://soulmate-cloud-uat.pateo.com.cn/"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->SoulMateCloudUrl:Ljava/lang/String;

    .line 72
    const-string v1, "https://qingai-soulmatecloud-pro.pateo.com.cn"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->SoulMateCloudUrl_pro:Ljava/lang/String;

    .line 73
    const/16 v1, 0x1e

    iput v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ReadTimeoutSecond:I

    .line 74
    const/4 v1, 0x5

    iput v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ConnectTimeoutSecond:I

    .line 76
    invoke-static {}, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->create()Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->converterFactory:Lretrofit2/Converter$Factory;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->cacheService:Ljava/util/Map;

    .line 78
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    .line 79
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CA_CERT:[B

    .line 80
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CLIENT_CERT:[B

    .line 81
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CERT_SN:[B

    .line 82
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CLIENT_BKS:[B

    .line 83
    const-string v1, "Aa111111"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->PASSWORD:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    .line 85
    const-string v1, "pro"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TSP_ENV:Ljava/lang/String;

    .line 128
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->context:Landroid/content/Context;

    .line 129
    new-instance v0, Lcom/qinggan/tsp/config/TspConfigBean;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/qinggan/tsp/config/TspConfigBean;-><init>(ILjava/lang/String;)V

    .line 130
    .local v0, "baseBean":Lcom/qinggan/tsp/config/TspConfigBean;
    iget-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/qinggan/tsp/config/TspConfigBean;->getTspType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "baseUrl"    # Ljava/lang/String;
    .param p3, "cmsUrl"    # Ljava/lang/String;
    .param p4, "gwmUrl"    # Ljava/lang/String;
    .param p5, "trackingUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    const-class v1, Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    .line 69
    const-string v1, "http://msmqttpush.uat.pateo.com.cn/"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->MqttBaseUrl:Ljava/lang/String;

    .line 70
    const-string v1, "http://msmqttpush.pro.ptcloud.t.home/"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->MqttBaseUrl_pro:Ljava/lang/String;

    .line 71
    const-string v1, "https://soulmate-cloud-uat.pateo.com.cn/"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->SoulMateCloudUrl:Ljava/lang/String;

    .line 72
    const-string v1, "https://qingai-soulmatecloud-pro.pateo.com.cn"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->SoulMateCloudUrl_pro:Ljava/lang/String;

    .line 73
    const/16 v1, 0x1e

    iput v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ReadTimeoutSecond:I

    .line 74
    const/4 v1, 0x5

    iput v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ConnectTimeoutSecond:I

    .line 76
    invoke-static {}, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->create()Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;

    move-result-object v1

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->converterFactory:Lretrofit2/Converter$Factory;

    .line 77
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->cacheService:Ljava/util/Map;

    .line 78
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    .line 79
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CA_CERT:[B

    .line 80
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CLIENT_CERT:[B

    .line 81
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CERT_SN:[B

    .line 82
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CLIENT_BKS:[B

    .line 83
    const-string v1, "Aa111111"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->PASSWORD:Ljava/lang/String;

    .line 84
    iput-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    .line 85
    const-string v1, "pro"

    iput-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TSP_ENV:Ljava/lang/String;

    .line 94
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->context:Landroid/content/Context;

    .line 95
    new-instance v0, Lcom/qinggan/tsp/config/TspConfigBean;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p2}, Lcom/qinggan/tsp/config/TspConfigBean;-><init>(ILjava/lang/String;)V

    .line 96
    .local v0, "baseBean":Lcom/qinggan/tsp/config/TspConfigBean;
    iget-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    invoke-virtual {v0}, Lcom/qinggan/tsp/config/TspConfigBean;->getTspType()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 97
    return-void
.end method

.method static synthetic access$100(Lcom/qinggan/tsp/manager/ServiceManager;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .registers 4
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/ServiceManager;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Z

    .prologue
    .line 67
    invoke-direct {p0, p1, p2}, Lcom/qinggan/tsp/manager/ServiceManager;->createHeaders(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v0

    return-object v0
.end method

.method private addCmsTokenHeader(Ljava/util/HashMap;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 471
    .local p1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 478
    :goto_2
    return-void

    .line 473
    :cond_3
    const-string v0, "Sign"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getSign()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    const-string v0, "id"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    const-string v0, "vin"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getVinCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    const-string v0, "sn"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getExternalSN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 477
    const-string v0, "huToken"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getHuToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private addTokenHeader(Lokhttp3/Request$Builder;)V
    .registers 4
    .param p1, "builder"    # Lokhttp3/Request$Builder;

    .prologue
    .line 456
    if-nez p1, :cond_3

    .line 459
    :goto_2
    return-void

    .line 458
    :cond_3
    const-string v0, "Authorization"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_2
.end method

.method private addXpateoCserial(Ljava/util/HashMap;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 481
    .local p1, "headers":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-nez p1, :cond_3

    .line 488
    :cond_2
    :goto_2
    return-void

    .line 483
    :cond_3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CERT_SN:[B

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    .line 484
    .local v0, "cert_sn":Ljava/lang/String;
    iget-object v1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cert_sn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 486
    const-string v1, "x-pateo-c-serial"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method private checkResponse(Lokhttp3/Response;Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 10
    .param p1, "tmpResponse"    # Lokhttp3/Response;
    .param p2, "chain"    # Lokhttp3/Interceptor$Chain;

    .prologue
    .line 590
    const/4 v0, 0x3

    .line 591
    .local v0, "count":I
    :goto_1
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->isResponseFailed(Lokhttp3/Response;)Z

    move-result v4

    if-eqz v4, :cond_5f

    if-lez v0, :cond_5f

    .line 592
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkResponse count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    invoke-interface {p2}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v2

    .line 594
    .local v2, "newBuilder":Lokhttp3/Request$Builder;
    invoke-direct {p0, v2}, Lcom/qinggan/tsp/manager/ServiceManager;->addTokenHeader(Lokhttp3/Request$Builder;)V

    .line 595
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v3

    .line 598
    .local v3, "newRequest":Lokhttp3/Request;
    :try_start_30
    invoke-interface {p2, v3}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_37

    move-result-object p1

    .line 603
    :goto_34
    add-int/lit8 v0, v0, -0x1

    .line 604
    goto :goto_1

    .line 599
    :catch_37
    move-exception v1

    .line 600
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkResponse count:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " error:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_34

    .line 605
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "newBuilder":Lokhttp3/Request$Builder;
    .end local v3    # "newRequest":Lokhttp3/Request;
    :cond_5f
    return-object p1
.end method

.method private createHeaders(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    .registers 6
    .param p1, "realUrl"    # Ljava/lang/String;
    .param p2, "safe"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 427
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 428
    .local v0, "headers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "User-Agent"

    const-string v2, "Retrofit-Sample-App"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 429
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->needAddToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1b

    .line 430
    const-string v1, "Authorization"

    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 432
    :cond_1b
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->needAddCmsToken(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_24

    .line 433
    invoke-direct {p0, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->addCmsTokenHeader(Ljava/util/HashMap;)V

    .line 436
    :cond_24
    if-eqz p2, :cond_29

    .line 437
    invoke-direct {p0, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->addXpateoCserial(Ljava/util/HashMap;)V

    .line 439
    :cond_29
    return-object v0
.end method

.method private createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 280
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager$1;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/ServiceManager$1;-><init>(Lcom/qinggan/tsp/manager/ServiceManager;)V

    .line 289
    .local v0, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    return-object v0
.end method

.method private createHostnameVerifierV2()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 349
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/ServiceManager$2;-><init>(Lcom/qinggan/tsp/manager/ServiceManager;)V

    .line 356
    .local v0, "hostnameVerifier":Ljavax/net/ssl/HostnameVerifier;
    return-object v0
.end method

.method private createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 7

    .prologue
    .line 293
    const/4 v2, 0x0

    .line 295
    .local v2, "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    :try_start_1
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->getTrustAllCerts()[Ljavax/net/ssl/TrustManager;

    move-result-object v3

    .line 296
    .local v3, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    const-string v4, "SSL"

    invoke-static {v4}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    .line 297
    .local v1, "sslContext":Ljavax/net/ssl/SSLContext;
    const/4 v4, 0x0

    new-instance v5, Ljava/security/SecureRandom;

    invoke-direct {v5}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v1, v4, v3, v5}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 298
    new-instance v2, Lcom/qinggan/tsp/manager/Tls12SocketFactory;

    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    invoke-direct {v2, v3}, Lcom/qinggan/tsp/manager/Tls12SocketFactory;-><init>([Ljavax/net/ssl/TrustManager;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_19} :catch_1a

    .line 303
    .restart local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    return-object v2

    .line 299
    .end local v1    # "sslContext":Ljavax/net/ssl/SSLContext;
    .end local v2    # "sslSocketFactory":Ljavax/net/ssl/SSLSocketFactory;
    .end local v3    # "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    :catch_1a
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 301
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private createSSLSocketFactoryV2()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 360
    const/4 v0, 0x0

    return-object v0
.end method

.method private createTspConfigHostnameVerifier(Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;
    .registers 4
    .param p1, "hostUrl"    # Ljava/lang/String;

    .prologue
    .line 339
    const-string v0, "-uats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-pros"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 340
    :cond_10
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "createTspConfigHostnameVerifier -uats or -pros"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->createHostnameVerifierV2()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    .line 344
    :goto_1b
    return-object v0

    .line 343
    :cond_1c
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "createTspConfigHostnameVerifier unsafe"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    goto :goto_1b
.end method

.method private createTspConfigSSLSocketFactory(Ljava/lang/String;)Ljavax/net/ssl/SSLSocketFactory;
    .registers 4
    .param p1, "hostUrl"    # Ljava/lang/String;

    .prologue
    .line 313
    const-string v0, "-uats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-pros"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 314
    :cond_10
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "createTspConfigSSLSocketFactory -uats or -pros"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->createSSLSocketFactoryV2()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    .line 318
    :goto_1b
    return-object v0

    .line 317
    :cond_1c
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "createTspConfigSSLSocketFactory unsafe"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->createSSLSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    goto :goto_1b
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .registers 10
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Z

    .prologue
    .line 565
    move v3, p1

    .line 567
    .local v3, "value":Z
    :try_start_1
    const-string v4, "android.os.SystemProperties"

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 568
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

    .line 569
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

    .line 573
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :goto_31
    return v3

    .line 570
    :catch_32
    move-exception v1

    .line 571
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_31
.end method

.method private getExternalSN()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 506
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sn:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 507
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sn:Ljava/lang/String;

    .line 523
    :goto_7
    return-object v3

    .line 510
    :cond_8
    :try_start_8
    const-string v3, "com.qinggan.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 511
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getExternalSN"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 512
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sn:Ljava/lang/String;

    .line 513
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sn:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_25} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_25} :catch_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_36

    goto :goto_7

    .line 514
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_26
    move-exception v1

    .line 515
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2a
    move-object v3, v4

    .line 523
    goto :goto_7

    .line 516
    :catch_2c
    move-exception v1

    .line 517
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 518
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_31
    move-exception v1

    .line 519
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2a

    .line 520
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_36
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method private getHeaderInterceptor(Z)Lokhttp3/Interceptor;
    .registers 3
    .param p1, "safe"    # Z

    .prologue
    .line 404
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager$4;

    invoke-direct {v0, p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager$4;-><init>(Lcom/qinggan/tsp/manager/ServiceManager;Z)V

    .line 423
    .local v0, "interceptor":Lokhttp3/Interceptor;
    return-object v0
.end method

.method private getHttpLoggingInterceptor(I)Lokhttp3/Interceptor;
    .registers 4
    .param p1, "tspType"    # I

    .prologue
    .line 392
    new-instance v0, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 394
    .local v0, "httpLoggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    const/4 v1, 0x2

    if-ne p1, v1, :cond_e

    .line 395
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 399
    :goto_d
    return-object v0

    .line 397
    :cond_e
    sget-object v1, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    goto :goto_d
.end method

.method private getHuToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 502
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/manager/TokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getCmsHutokenBeanCache()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->id:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 557
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->id:Ljava/lang/String;

    .line 560
    :goto_e
    return-object v0

    .line 559
    :cond_f
    invoke-static {}, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->getIdSignature()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->id:Ljava/lang/String;

    .line 560
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->id:Ljava/lang/String;

    goto :goto_e
.end method

.method private getOkHttpClient(I)Lokhttp3/OkHttpClient;
    .registers 9
    .param p1, "tspType"    # I

    .prologue
    .line 225
    :try_start_0
    new-instance v3, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v3}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 226
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    iget v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ReadTimeoutSecond:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 227
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    iget v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ConnectTimeoutSecond:I

    int-to-long v4, v4

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 228
    invoke-virtual {v3, v4, v5, v6}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;-><init>(Lcom/qinggan/tsp/manager/ServiceManager$1;)V

    .line 229
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    new-instance v4, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;-><init>(Lcom/qinggan/tsp/manager/ServiceManager$1;)V

    .line 230
    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    const/4 v4, 0x1

    .line 231
    invoke-direct {p0, v4}, Lcom/qinggan/tsp/manager/ServiceManager;->getHeaderInterceptor(Z)Lokhttp3/Interceptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v3

    .line 232
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getHttpLoggingInterceptor(I)Lokhttp3/Interceptor;

    move-result-object v4

    invoke-virtual {v3, v4}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 233
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;
    :try_end_47
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_49

    move-result-object v2

    .line 234
    .local v2, "okHttpClient":Lokhttp3/OkHttpClient;
    return-object v2

    .line 235
    .end local v0    # "builder":Lokhttp3/OkHttpClient$Builder;
    .end local v2    # "okHttpClient":Lokhttp3/OkHttpClient;
    :catch_49
    move-exception v1

    .line 236
    .local v1, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "getsafeOkHttpClient error!"

    invoke-static {v3, v4}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 238
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method private getSign()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sign:Ljava/lang/String;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sign:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_f

    .line 549
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sign:Ljava/lang/String;

    .line 552
    :goto_e
    return-object v0

    .line 551
    :cond_f
    invoke-static {}, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->getCertSerialNumber()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sign:Ljava/lang/String;

    .line 552
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->sign:Ljava/lang/String;

    goto :goto_e
.end method

.method public static getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "key"    # Ljava/lang/String;
    .param p1, "def"    # Ljava/lang/String;

    .prologue
    .line 577
    move-object v4, p1

    .line 579
    .local v4, "value":Ljava/lang/String;
    :try_start_1
    const-string v5, "android.os.SystemProperties"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 580
    .local v1, "c":Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 581
    .local v3, "m":Ljava/lang/reflect/Method;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-virtual {v3, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    move-object v4, v0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2b} :catch_2c

    .line 585
    .end local v1    # "c":Ljava/lang/Class;
    .end local v3    # "m":Ljava/lang/reflect/Method;
    :goto_2b
    return-object v4

    .line 582
    :catch_2c
    move-exception v2

    .line 583
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2b
.end method

.method private getToken()Ljava/lang/String;
    .registers 2

    .prologue
    .line 498
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/manager/TokenManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getToken()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTrustAllCerts()[Ljavax/net/ssl/TrustManager;
    .registers 4

    .prologue
    .line 364
    const/4 v1, 0x1

    new-array v0, v1, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lcom/qinggan/tsp/manager/ServiceManager$3;

    invoke-direct {v2, p0}, Lcom/qinggan/tsp/manager/ServiceManager$3;-><init>(Lcom/qinggan/tsp/manager/ServiceManager;)V

    aput-object v2, v0, v1

    .line 388
    .local v0, "trustAllCerts":[Ljavax/net/ssl/TrustManager;
    return-object v0
.end method

.method private getUnsafeOkHttpClient(I)Lokhttp3/OkHttpClient;
    .registers 10
    .param p1, "tspType"    # I

    .prologue
    .line 244
    new-instance v2, Lokhttp3/logging/HttpLoggingInterceptor;

    invoke-direct {v2}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>()V

    .line 245
    .local v2, "loggingInterceptor":Lokhttp3/logging/HttpLoggingInterceptor;
    sget-object v4, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    invoke-virtual {v2, v4}, Lokhttp3/logging/HttpLoggingInterceptor;->setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;

    .line 247
    :try_start_a
    new-instance v4, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v4}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    .line 248
    invoke-direct {p0}, Lcom/qinggan/tsp/manager/ServiceManager;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    iget v5, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ReadTimeoutSecond:I

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 249
    invoke-virtual {v4, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    iget v5, p0, Lcom/qinggan/tsp/manager/ServiceManager;->ConnectTimeoutSecond:I

    int-to-long v6, v5

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 250
    invoke-virtual {v4, v6, v7, v5}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    new-instance v5, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;-><init>(Lcom/qinggan/tsp/manager/ServiceManager$1;)V

    .line 251
    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    new-instance v5, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/qinggan/tsp/manager/ServiceManager$NetworkInterceptor;-><init>(Lcom/qinggan/tsp/manager/ServiceManager$1;)V

    .line 252
    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    const/4 v5, 0x0

    .line 253
    invoke-direct {p0, v5}, Lcom/qinggan/tsp/manager/ServiceManager;->getHeaderInterceptor(Z)Lokhttp3/Interceptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 254
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getHttpLoggingInterceptor(I)Lokhttp3/Interceptor;

    move-result-object v5

    invoke-virtual {v4, v5}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v4

    .line 255
    invoke-virtual {v4, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 256
    .local v0, "builder":Lokhttp3/OkHttpClient$Builder;
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;
    :try_end_55
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_55} :catch_57

    move-result-object v3

    .line 257
    .local v3, "okHttpClient":Lokhttp3/OkHttpClient;
    return-object v3

    .line 258
    .end local v0    # "builder":Lokhttp3/OkHttpClient$Builder;
    .end local v3    # "okHttpClient":Lokhttp3/OkHttpClient;
    :catch_57
    move-exception v1

    .line 259
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "getUnsafeOkHttpClient error!"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 260
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 261
    new-instance v4, Ljava/lang/RuntimeException;

    invoke-direct {v4, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v4
.end method

.method private getVinCode()Ljava/lang/String;
    .registers 7

    .prologue
    const/4 v4, 0x0

    .line 527
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->vin:Ljava/lang/String;

    if-eqz v3, :cond_8

    .line 528
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->vin:Ljava/lang/String;

    .line 544
    :goto_7
    return-object v3

    .line 531
    :cond_8
    :try_start_8
    const-string v3, "com.qinggan.os.SystemProperties"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 532
    .local v0, "c":Ljava/lang/Class;
    const-string v3, "getVinCode"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 533
    .local v2, "m":Ljava/lang/reflect/Method;
    const/4 v3, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iput-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->vin:Ljava/lang/String;

    .line 534
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->vin:Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/NoSuchMethodException; {:try_start_8 .. :try_end_25} :catch_26
    .catch Ljava/lang/IllegalAccessException; {:try_start_8 .. :try_end_25} :catch_2c
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_8 .. :try_end_25} :catch_31
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_25} :catch_36

    goto :goto_7

    .line 535
    .end local v0    # "c":Ljava/lang/Class;
    .end local v2    # "m":Ljava/lang/reflect/Method;
    :catch_26
    move-exception v1

    .line 536
    .local v1, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v1}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/NoSuchMethodException;
    :goto_2a
    move-object v3, v4

    .line 544
    goto :goto_7

    .line 537
    :catch_2c
    move-exception v1

    .line 538
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2a

    .line 539
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_31
    move-exception v1

    .line 540
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_2a

    .line 541
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_36
    move-exception v1

    .line 542
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method private isHostUrlSafe(Ljava/lang/String;)Z
    .registers 4
    .param p1, "hostUrl"    # Ljava/lang/String;

    .prologue
    .line 323
    const-string v0, "-uats"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "-pros"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 324
    :cond_10
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "isHostUrlSafe = true"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    const/4 v0, 0x1

    .line 328
    :goto_18
    return v0

    .line 327
    :cond_19
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "isHostUrlSafe = false"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    const/4 v0, 0x0

    goto :goto_18
.end method

.method private isResponseFailed(Lokhttp3/Response;)Z
    .registers 3
    .param p1, "response"    # Lokhttp3/Response;

    .prologue
    const/4 v0, 0x1

    .line 609
    if-nez p1, :cond_3

    .line 612
    :cond_3
    return v0
.end method

.method private needAddCmsToken(Ljava/lang/String;)Z
    .registers 8
    .param p1, "realUrl"    # Ljava/lang/String;

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    .local v0, "isNeed":Z
    sget-object v3, Lcom/qinggan/tsp/manager/Constants;->cmsHutokenUrl:[Ljava/lang/String;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_5
    if-ge v2, v4, :cond_10

    aget-object v1, v3, v2

    .line 464
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 465
    const/4 v0, 0x1

    .line 467
    .end local v0    # "isNeed":Z
    .end local v1    # "url":Ljava/lang/String;
    :cond_10
    return v0

    .line 463
    .restart local v0    # "isNeed":Z
    .restart local v1    # "url":Ljava/lang/String;
    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method private needAddToken(Ljava/lang/String;)Z
    .registers 9
    .param p1, "realUrl"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 447
    const/4 v0, 0x1

    .line 448
    .local v0, "isNeed":Z
    sget-object v4, Lcom/qinggan/tsp/manager/Constants;->excludeTokenUrl:[Ljava/lang/String;

    array-length v5, v4

    move v3, v2

    :goto_6
    if-ge v3, v5, :cond_11

    aget-object v1, v4, v3

    .line 449
    .local v1, "url":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_12

    move v0, v2

    .line 452
    .end local v0    # "isNeed":Z
    .end local v1    # "url":Ljava/lang/String;
    :cond_11
    return v0

    .line 448
    .restart local v0    # "isNeed":Z
    .restart local v1    # "url":Ljava/lang/String;
    :cond_12
    add-int/lit8 v3, v3, 0x1

    goto :goto_6
.end method


# virtual methods
.method protected createRetrofit(I)Lretrofit2/Retrofit;
    .registers 9
    .param p1, "tspType"    # I

    .prologue
    const/4 v3, 0x0

    .line 171
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/config/TspConfigBean;

    .line 172
    .local v1, "configBean":Lcom/qinggan/tsp/config/TspConfigBean;
    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    .line 173
    :cond_15
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "createRetrofit error, not init"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 192
    :goto_1c
    return-object v3

    .line 178
    :cond_1d
    :try_start_1d
    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-uats"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_35

    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-pros"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5c

    .line 179
    :cond_35
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "createRetrofit -uats or -pros"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getOkHttpClient(I)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 185
    .local v0, "client":Lokhttp3/OkHttpClient;
    :goto_40
    new-instance v4, Lretrofit2/Retrofit$Builder;

    invoke-direct {v4}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 186
    invoke-virtual {v4, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/tsp/manager/ServiceManager;->converterFactory:Lretrofit2/Converter$Factory;

    .line 187
    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    .line 188
    invoke-virtual {v4}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    goto :goto_1c

    .line 182
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    :cond_5c
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "createRetrofit unsafe"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getUnsafeOkHttpClient(I)Lokhttp3/OkHttpClient;
    :try_end_66
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_66} :catch_68

    move-result-object v0

    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    goto :goto_40

    .line 189
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    :catch_68
    move-exception v2

    .line 190
    .local v2, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c
.end method

.method public createRetrofitBuilder()Lretrofit2/Retrofit$Builder;
    .registers 2

    .prologue
    .line 100
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createRetrofitBuilder(I)Lretrofit2/Retrofit$Builder;

    move-result-object v0

    return-object v0
.end method

.method protected createRetrofitBuilder(I)Lretrofit2/Retrofit$Builder;
    .registers 9
    .param p1, "tspType"    # I

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/config/TspConfigBean;

    .line 105
    .local v1, "configBean":Lcom/qinggan/tsp/config/TspConfigBean;
    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_70

    .line 108
    :try_start_15
    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-uats"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v4

    const-string v5, "-pros"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4a

    .line 109
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "createRetrofit unsafe"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getUnsafeOkHttpClient(I)Lokhttp3/OkHttpClient;

    move-result-object v0

    .line 116
    .local v0, "client":Lokhttp3/OkHttpClient;
    :goto_38
    new-instance v4, Lretrofit2/Retrofit$Builder;

    invoke-direct {v4}, Lretrofit2/Retrofit$Builder;-><init>()V

    invoke-virtual {v1}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Lretrofit2/Retrofit$Builder;->client(Lokhttp3/OkHttpClient;)Lretrofit2/Retrofit$Builder;

    move-result-object v3

    .line 123
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    :goto_49
    return-object v3

    .line 112
    :cond_4a
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "createRetrofit -uats or -pros"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/manager/ServiceManager;->getOkHttpClient(I)Lokhttp3/OkHttpClient;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_54} :catch_56

    move-result-object v0

    .restart local v0    # "client":Lokhttp3/OkHttpClient;
    goto :goto_38

    .line 117
    .end local v0    # "client":Lokhttp3/OkHttpClient;
    :catch_56
    move-exception v2

    .line 118
    .local v2, "var4":Ljava/lang/Exception;
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49

    .line 122
    .end local v2    # "var4":Ljava/lang/Exception;
    :cond_70
    iget-object v4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v5, "createRetrofit error, not init"

    invoke-static {v4, v5}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_49
.end method

.method public createService(Ljava/lang/Class;I)Ljava/lang/Object;
    .registers 7
    .param p2, "tspType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;I)TT;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->cacheService:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 159
    .local v0, "service":Ljava/lang/Object;
    if-eqz v0, :cond_b

    move-object v1, v0

    .end local v0    # "service":Ljava/lang/Object;
    .local v1, "service":Ljava/lang/Object;
    move-object v2, v0

    .line 164
    .end local v1    # "service":Ljava/lang/Object;
    .local v2, "service":Ljava/lang/Object;
    :goto_a
    return-object v2

    .line 162
    .end local v2    # "service":Ljava/lang/Object;
    .restart local v0    # "service":Ljava/lang/Object;
    :cond_b
    invoke-virtual {p0, p2}, Lcom/qinggan/tsp/manager/ServiceManager;->createRetrofit(I)Lretrofit2/Retrofit;

    move-result-object v3

    invoke-virtual {v3, p1}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 163
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->cacheService:Ljava/util/Map;

    invoke-interface {v3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .end local v0    # "service":Ljava/lang/Object;
    .restart local v1    # "service":Ljava/lang/Object;
    move-object v2, v0

    .line 164
    .end local v1    # "service":Ljava/lang/Object;
    .restart local v2    # "service":Ljava/lang/Object;
    goto :goto_a
.end method

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
    .line 146
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createService(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

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
    .line 150
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createService(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

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
    .line 138
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createService(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getService(Ljava/lang/Class;)Ljava/lang/Object;
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
    .line 134
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createService(Ljava/lang/Class;I)Ljava/lang/Object;

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
    .line 142
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createService(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
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
    .line 154
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/tsp/manager/ServiceManager;->createService(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getTspConfig(I)Lcom/qinggan/tsp/config/TspConfigBean;
    .registers 6
    .param p1, "tspType"    # I

    .prologue
    .line 196
    iget-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->configBeans:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/config/TspConfigBean;

    .line 197
    .local v0, "configBean":Lcom/qinggan/tsp/config/TspConfigBean;
    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/qinggan/tsp/config/TspConfigBean;->getHostUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 198
    :cond_14
    iget-object v2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v3, "getUnsafeConfig error, not init"

    invoke-static {v2, v3}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const/4 v1, 0x0

    .line 202
    :goto_1c
    return-object v1

    .line 201
    :cond_1d
    invoke-virtual {v0}, Lcom/qinggan/tsp/config/TspConfigBean;->clone()Lcom/qinggan/tsp/config/TspConfigBean;

    move-result-object v1

    .line 202
    .local v1, "reslut":Lcom/qinggan/tsp/config/TspConfigBean;
    goto :goto_1c
.end method

.method public setCerts([B[B[B[B)V
    .registers 7
    .param p1, "ca"    # [B
    .param p2, "client"    # [B
    .param p3, "client_bks"    # [B
    .param p4, "certSn"    # [B

    .prologue
    .line 206
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "ServiceManager setCerts."

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CA_CERT:[B

    .line 208
    iput-object p2, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CLIENT_CERT:[B

    .line 209
    iput-object p3, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CLIENT_BKS:[B

    .line 210
    iput-object p4, p0, Lcom/qinggan/tsp/manager/ServiceManager;->CERT_SN:[B

    .line 211
    return-void
.end method

.method public setTSPAPI(Lcom/pateo/tsp/TSPAPI;)V
    .registers 4
    .param p1, "pTspApi"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 214
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "ServiceManager setTSPAPI."

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    .line 216
    return-void
.end method

.method public setTSPENV(Ljava/lang/String;)V
    .registers 4
    .param p1, "tspEnv"    # Ljava/lang/String;

    .prologue
    .line 219
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v1, "ServiceManager setTSPENV."

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager;->TSP_ENV:Ljava/lang/String;

    .line 221
    return-void
.end method
