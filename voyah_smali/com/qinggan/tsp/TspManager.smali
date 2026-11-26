.class public Lcom/qinggan/tsp/TspManager;
.super Ljava/lang/Object;
.source "TspManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;,
        Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;,
        Lcom/qinggan/tsp/TspManager$PushMessageListener;,
        Lcom/qinggan/tsp/TspManager$SubscribeListener;,
        Lcom/qinggan/tsp/TspManager$OnInitDetailListener;
    }
.end annotation


# static fields
.field public static final RESPONSEERROR:Ljava/lang/String; = "com.qinggan.tsp.response.error"

.field public static TAG:Ljava/lang/String;

.field private static instance:Lcom/qinggan/tsp/TspManager;

.field private static lock:Ljava/lang/Object;

.field public static mContext:Landroid/content/Context;


# instance fields
.field private final JSON_TYPE:Lokhttp3/MediaType;

.field private clientOsType:Ljava/lang/String;

.field private deviceTypeForXmly:Ljava/lang/String;

.field private gson:Lcom/google/gson/Gson;

.field private gwmId:Ljava/lang/String;

.field private gwmPdsn:Ljava/lang/String;

.field private gwmSign:Ljava/lang/String;

.field private gwmSn:Ljava/lang/String;

.field private gwmVin:Ljava/lang/String;

.field initManager:Lcom/qinggan/tsp/InitManager;

.field private mPdsn:Ljava/lang/String;

.field private packIdForXmly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 135
    const-class v0, Lcom/qinggan/tsp/TspManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    .line 136
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/TspManager;->lock:Ljava/lang/Object;

    .line 137
    sput-object v1, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    .line 138
    sput-object v1, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 331
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 140
    const-string v0, "DT00000001"

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    .line 141
    const-string v0, "com.ximalaya.ting.android.botaichezai"

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    .line 142
    const-string v0, "2"

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    .line 2520
    const-string v0, "application/json; charset=utf-8"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->JSON_TYPE:Lokhttp3/MediaType;

    .line 4939
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->gwmSign:Ljava/lang/String;

    .line 4940
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->gwmId:Ljava/lang/String;

    .line 4941
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->gwmSn:Ljava/lang/String;

    .line 4942
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->gwmPdsn:Ljava/lang/String;

    .line 4943
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->gwmVin:Ljava/lang/String;

    .line 332
    sput-object p1, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    .line 333
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    .line 334
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    .line 335
    return-void
.end method

.method private encodeUtf8(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 2899
    :try_start_0
    const-string v1, "UTF-8"

    invoke-static {p1, v1}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object p1

    .line 2902
    .end local p1    # "str":Ljava/lang/String;
    :goto_6
    return-object p1

    .line 2900
    .restart local p1    # "str":Ljava/lang/String;
    :catch_7
    move-exception v0

    .line 2901
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_6
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/TspManager;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1124
    sget-object v0, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    if-eqz v0, :cond_7

    .line 1125
    sget-object v0, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    .line 1131
    :goto_6
    return-object v0

    .line 1126
    :cond_7
    sget-object v1, Lcom/qinggan/tsp/TspManager;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 1127
    :try_start_a
    sget-object v0, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    if-eqz v0, :cond_15

    .line 1128
    sget-object v0, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    monitor-exit v1

    goto :goto_6

    .line 1130
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 1129
    :cond_15
    :try_start_15
    new-instance v0, Lcom/qinggan/tsp/TspManager;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/TspManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    .line 1130
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 1131
    sget-object v0, Lcom/qinggan/tsp/TspManager;->instance:Lcom/qinggan/tsp/TspManager;

    goto :goto_6
.end method

.method public static getLTGwmimeStamp()Ljava/lang/String;
    .registers 4

    .prologue
    .line 4982
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 4983
    .local v0, "date":Ljava/util/Date;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyyMMddHHmmssSSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 4984
    .local v2, "smft":Ljava/text/SimpleDateFormat;
    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 4985
    .local v1, "nowString":Ljava/lang/String;
    return-object v1
.end method

.method public static getLTimeStamp()J
    .registers 4

    .prologue
    .line 2416
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2417
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    return-wide v2
.end method

.method private getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;
    .registers 3

    .prologue
    .line 164
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGCPSPService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGCPSPService;

    return-object v0
.end method

.method private getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;
    .registers 3

    .prologue
    .line 169
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    return-object v0
.end method

.method private getQGPayV2Service()Lcom/qinggan/tsp/service/QGPayV2Service;
    .registers 3

    .prologue
    .line 181
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGPayV2Service;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGPayV2Service;

    return-object v0
.end method

.method private declared-synchronized getQgLoginService()Lcom/qinggan/tsp/service/QGLoginService;
    .registers 3

    .prologue
    .line 313
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGLoginService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGLoginService;
    :try_end_b
    .catchall {:try_start_1 .. :try_end_b} :catchall_d

    monitor-exit p0

    return-object v0

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getQgPayService()Lcom/qinggan/tsp/service/QGPayService;
    .registers 3

    .prologue
    .line 177
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGPayService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGPayService;

    return-object v0
.end method

.method private getQgSkinService()Lcom/qinggan/tsp/service/QGSkinService;
    .registers 3

    .prologue
    .line 173
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGSkinService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGSkinService;

    return-object v0
.end method

.method public static getTimeStamp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 2412
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTimeStamp()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private hasEmptyString(Ljava/lang/String;)Z
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1604
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_16

    const-string v0, "null"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1605
    :cond_14
    const/4 v0, 0x1

    .line 1606
    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public static sha(Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .param p0, "string"    # Ljava/lang/String;

    .prologue
    .line 2388
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9

    .line 2389
    const-string v4, ""

    .line 2408
    :cond_8
    :goto_8
    return-object v4

    .line 2391
    :cond_9
    const/4 v3, 0x0

    .line 2393
    .local v3, "md5":Ljava/security/MessageDigest;
    :try_start_a
    const-string v6, "sha-256"

    invoke-static {v6}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 2394
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 2395
    .local v1, "bytes":[B
    const-string v4, ""

    .line 2396
    .local v4, "result":Ljava/lang/String;
    array-length v7, v1

    const/4 v6, 0x0

    :goto_1c
    if-ge v6, v7, :cond_8

    aget-byte v0, v1, v6

    .line 2397
    .local v0, "b":B
    and-int/lit16 v8, v0, 0xff

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    .line 2398
    .local v5, "temp":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_40

    .line 2399
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "0"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2401
    :cond_40
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_50
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_50} :catch_54

    move-result-object v4

    .line 2396
    add-int/lit8 v6, v6, 0x1

    goto :goto_1c

    .line 2405
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    .end local v4    # "result":Ljava/lang/String;
    .end local v5    # "temp":Ljava/lang/String;
    :catch_54
    move-exception v2

    .line 2406
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 2408
    const-string v4, ""

    goto :goto_8
.end method

.method public static standTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 2427
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2428
    :cond_8
    const-string v0, ""

    .line 2434
    :cond_a
    :goto_a
    return-object v0

    .line 2429
    :cond_b
    const-string v0, ""

    .line 2430
    .local v0, "tmpTime":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_29

    .line 2431
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

    .line 2432
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_a

    .line 2433
    move-object v0, p0

    goto :goto_a
.end method


# virtual methods
.method public addUserDeviceSettingPreference(Ljava/lang/String;ILjava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2067
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    return-void
.end method

.method public addUserFavorite(Lcom/qinggan/tsp/models/userfavorite/AddFavoriteRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "addFavoriteRequest"    # Lcom/qinggan/tsp/models/userfavorite/AddFavoriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/userfavorite/AddFavoriteRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/UserFavoriteRespStandard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1954
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/UserFavoriteRespStandard;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1955
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;->addUserFavorite(Lcom/qinggan/tsp/models/userfavorite/AddFavoriteRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1963
    :goto_11
    return-void

    .line 1957
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->addUserFavorite(Lcom/qinggan/tsp/models/userfavorite/AddFavoriteRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 1959
    :catch_1e
    move-exception v0

    .line 1960
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public addUserHistory(Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "addHistoryRequest"    # Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequestRespStandard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1533
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequestRespStandard;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserHistoryService()Lcom/qinggan/tsp/service/QGUserHistoryWordService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGUserHistoryWordService;->addUserHistory(Lcom/qinggan/tsp/models/userfavorite/AddHistoryRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1537
    :goto_b
    return-void

    .line 1534
    :catch_c
    move-exception v0

    .line 1535
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public addUserSettingPreference(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "deviceType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2079
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/setting/UserSettingRequest;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/setting/UserSettingRequest;-><init>()V

    .line 2080
    .local v1, "userSettingRequest":Lcom/qinggan/tsp/models/setting/UserSettingRequest;
    invoke-virtual {v1, p3}, Lcom/qinggan/tsp/models/setting/UserSettingRequest;->setContent(Ljava/lang/String;)V

    .line 2081
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/setting/UserSettingRequest;->setDeviceType(Ljava/lang/String;)V

    .line 2082
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/setting/UserSettingRequest;->setType(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserSettingService()Lcom/qinggan/tsp/service/QGUserSettingService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/qinggan/tsp/service/QGUserSettingService;->addSettingRequest(Lcom/qinggan/tsp/models/setting/UserSettingRequest;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 2087
    .end local v1    # "userSettingRequest":Lcom/qinggan/tsp/models/setting/UserSettingRequest;
    :goto_19
    return-void

    .line 2084
    :catch_1a
    move-exception v0

    .line 2085
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public adsList(Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "adsListRequest"    # Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AdsListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3299
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AdsListResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->adsList(Lcom/qinggan/tsp/models/appStore/request/AdsListRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3303
    :goto_b
    return-void

    .line 3300
    :catch_c
    move-exception v0

    .line 3301
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public allType()Lcom/qinggan/tsp/models/skin/TypeBean;
    .registers 3

    .prologue
    .line 2641
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgSkinService()Lcom/qinggan/tsp/service/QGSkinService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGSkinService;->allType()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/skin/TypeBean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2645
    :goto_e
    return-object v1

    .line 2642
    :catch_f
    move-exception v0

    .line 2643
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2645
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public appDetail(Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appDetailRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppDetailResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3307
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppDetailResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->appDetail(Lcom/qinggan/tsp/models/appStore/request/AppDetailRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3311
    :goto_b
    return-void

    .line 3308
    :catch_c
    move-exception v0

    .line 3309
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public appListByCategory(Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appListByCategoryRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppListByCategoryResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3315
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppListByCategoryResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->appListByCategory(Lcom/qinggan/tsp/models/appStore/request/AppListByCategoryRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3319
    :goto_b
    return-void

    .line 3316
    :catch_c
    move-exception v0

    .line 3317
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public appStartup(Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appStartupRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppStartupResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3336
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppStartupResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->appStartup(Lcom/qinggan/tsp/models/appStore/request/AppStartupRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3340
    :goto_b
    return-void

    .line 3337
    :catch_c
    move-exception v0

    .line 3338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public appointmentVehicleMaintenance(Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "info"    # Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3654
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->appointmentVehicleMaintenance(Lcom/qinggan/tsp/models/maintenance/AppointmentInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3658
    :goto_b
    return-void

    .line 3655
    :catch_c
    move-exception v0

    .line 3656
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

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
    .line 321
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<TT;>;"
    return-void
.end method

.method public asyncRefreshToken(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2120
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qinggan/tsp/service/QGAuthService;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 2124
    :goto_1e
    return-void

    .line 2121
    :catch_1f
    move-exception v0

    .line 2122
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public asyncRefreshTokenStartUp(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2128
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgLoginService()Lcom/qinggan/tsp/service/QGLoginService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bearer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qinggan/tsp/service/QGLoginService;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 2132
    :goto_1e
    return-void

    .line 2129
    :catch_1f
    move-exception v0

    .line 2130
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public batchDeleteVoiceNote(Ljava/util/List;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3153
    .local p1, "idList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 3154
    .local v3, "sb":Ljava/lang/StringBuffer;
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_24

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3155
    .local v4, "str":Ljava/lang/String;
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    goto :goto_9

    .line 3163
    .end local v3    # "sb":Ljava/lang/StringBuffer;
    .end local v4    # "str":Ljava/lang/String;
    :catch_1f
    move-exception v1

    .line 3164
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 3166
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_23
    return-void

    .line 3157
    .restart local v3    # "sb":Ljava/lang/StringBuffer;
    :cond_24
    :try_start_24
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "lastIndexOf: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3158
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3159
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v5, "ids"

    const/4 v6, 0x0

    const-string v7, ","

    invoke-virtual {v3, v7}, Ljava/lang/StringBuffer;->lastIndexOf(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuffer;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3161
    const-string v5, "application/json; charset=utf-8"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3162
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;

    move-result-object v5

    invoke-interface {v5, v0}, Lcom/qinggan/tsp/service/QGVoiceNoteService;->batchDeleteVoiceNote(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_70} :catch_1f

    goto :goto_23
.end method

.method public batchUpdatePerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "status"    # Ljava/lang/String;
    .param p3, "inforIds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/information/ResultBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3260
    .local p4, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/information/ResultBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGInformationService;->batchUpdatePerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3264
    :goto_b
    return-void

    .line 3261
    :catch_c
    move-exception v0

    .line 3262
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public bindCarPark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .param p2, "licence"    # Ljava/lang/String;
    .param p3, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindCarOauthResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3824
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindCarOauthResponse;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3825
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->bindcarpark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3832
    :goto_11
    return-void

    .line 3827
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGAccountService;->bindcarpark(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3829
    :catch_1e
    move-exception v0

    .line 3830
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public binging(Lcom/qinggan/tsp/models/device/BindingInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "bindingInfo"    # Lcom/qinggan/tsp/models/device/BindingInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/device/BindingInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1447
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->binging(Lcom/qinggan/tsp/models/device/BindingInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1451
    :goto_b
    return-void

    .line 1448
    :catch_c
    move-exception v0

    .line 1449
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public buyFlow(Lcom/qinggan/tsp/models/wallet/BuyFlowRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/BuyFlowRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/BuyFlowRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/BuyFlowResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3552
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/BuyFlowResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->buyFlow(Lcom/qinggan/tsp/models/wallet/BuyFlowRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3556
    :goto_b
    return-void

    .line 3553
    :catch_c
    move-exception v0

    .line 3554
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public cancelContract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "tradeType"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "signId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/SuNingInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 893
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/SuNingInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGAccountService;->cancelContract(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 897
    :goto_b
    return-void

    .line 894
    :catch_c
    move-exception v0

    .line 895
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public cancelOrderByUser(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "orderNo"    # Ljava/lang/String;
    .param p2, "activityType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3761
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGMaintenanceService;->cancelOrderByUser(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3765
    :goto_b
    return-void

    .line 3762
    :catch_c
    move-exception v0

    .line 3763
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public cancelUserFavorite(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/CancelFavoriteResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1991
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/CancelFavoriteResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1992
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;->cancelUserFavorite(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2000
    :goto_11
    return-void

    .line 1994
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->cancelUserFavorite(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 1997
    :catch_1e
    move-exception v0

    .line 1998
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public categoryList(Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appSetupRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppCategoryListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3291
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppCategoryListResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->categoryList(Lcom/qinggan/tsp/models/appStore/request/AppCategoryListRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3295
    :goto_b
    return-void

    .line 3292
    :catch_c
    move-exception v0

    .line 3293
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public chargeBindQueryVin(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/chargestation/ChargeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5550
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/chargestation/ChargeBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGChargeStationService()Lcom/qinggan/tsp/service/QGChargeStationService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGChargeStationService;->queryBind(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 5554
    :goto_b
    return-void

    .line 5551
    :catch_c
    move-exception v0

    .line 5552
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public chargePromptPush(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5558
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGChargeStationService()Lcom/qinggan/tsp/service/QGChargeStationService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGChargeStationService;->chargePromptPush(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 5562
    :goto_b
    return-void

    .line 5559
    :catch_c
    move-exception v0

    .line 5560
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public checkActive(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/CheckActiveResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1403
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/CheckActiveResult;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->checkActive(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1407
    :goto_b
    return-void

    .line 1404
    :catch_c
    move-exception v0

    .line 1405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public checkActiveStartUp(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/CheckActiveResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1439
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/CheckActiveResult;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgLoginService()Lcom/qinggan/tsp/service/QGLoginService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGLoginService;->checkActive(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1443
    :goto_b
    return-void

    .line 1440
    :catch_c
    move-exception v0

    .line 1441
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public checkDeviceDiff(Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "checkDeviceDiffInfo"    # Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/CheckDeviceDiffResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1475
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/CheckDeviceDiffResult;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->checkDeviceDiff(Lcom/qinggan/tsp/models/device/CheckDeviceDiffInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1479
    :goto_b
    return-void

    .line 1476
    :catch_c
    move-exception v0

    .line 1477
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public checkPassword(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "passWord"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 617
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v0, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;

    invoke-direct {v0}, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;-><init>()V

    .line 618
    .local v0, "checkpwdInputBean":Lcom/qinggan/tsp/models/account/CheckpwdInputBean;
    iput-object p1, v0, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;->password:Ljava/lang/String;

    .line 619
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGAccountService;->checkPassword(Lcom/qinggan/tsp/models/account/CheckpwdInputBean;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_12} :catch_13

    .line 623
    .end local v0    # "checkpwdInputBean":Lcom/qinggan/tsp/models/account/CheckpwdInputBean;
    :goto_12
    return-void

    .line 620
    :catch_13
    move-exception v1

    .line 621
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_12
.end method

.method public checkPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "passWord"    # Ljava/lang/String;
    .param p2, "loginId"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 635
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v0, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;

    invoke-direct {v0}, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;-><init>()V

    .line 636
    .local v0, "checkpwdInputBean":Lcom/qinggan/tsp/models/account/CheckpwdInputBean;
    iput-object p1, v0, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;->password:Ljava/lang/String;

    .line 637
    iput-object p2, v0, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;->loginId:Ljava/lang/String;

    .line 638
    iput-object p3, v0, Lcom/qinggan/tsp/models/account/CheckpwdInputBean;->loginType:Ljava/lang/String;

    .line 639
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGAccountService;->checkPassword(Lcom/qinggan/tsp/models/account/CheckpwdInputBean;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 643
    .end local v0    # "checkpwdInputBean":Lcom/qinggan/tsp/models/account/CheckpwdInputBean;
    :goto_16
    return-void

    .line 640
    :catch_17
    move-exception v1

    .line 641
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public checkRefreshToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/RefreshTokenStatusBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5448
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/RefreshTokenStatusBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5450
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5451
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5452
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5453
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5454
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-static {p3}, Lcom/qinggan/tsp/manager/TokenManager;->formatToken(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v0}, Lcom/qinggan/tsp/service/QGTencentService;->getTencentTokenStatus(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_33} :catch_34

    .line 5458
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_33
    return-void

    .line 5455
    :catch_34
    move-exception v1

    .line 5456
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public checkSecurityCode(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 12
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/CheckSecurityCodeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5302
    .local p3, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/CheckSecurityCodeResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.CHECK_SECURITY_PASSWORD"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v2

    .line 5303
    .local v2, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v0, Lcom/qinggan/tsp/models/gwm/CheckSecurityCodeRequest;

    invoke-direct {v0, p1, p2}, Lcom/qinggan/tsp/models/gwm/CheckSecurityCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5304
    .local v0, "checkSecurityCodeRequest":Lcom/qinggan/tsp/models/gwm/CheckSecurityCodeRequest;
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v2, v0}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5305
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5306
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkSecurityCode, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5307
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->checkSecurityCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5311
    .end local v0    # "checkSecurityCodeRequest":Lcom/qinggan/tsp/models/gwm/CheckSecurityCodeRequest;
    .end local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_39
    return-void

    .line 5308
    :catch_3a
    move-exception v1

    .line 5309
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public confirmPay(Lcom/qinggan/tsp/models/pay/ConfirmPayBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "confirmPayBean"    # Lcom/qinggan/tsp/models/pay/ConfirmPayBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/pay/ConfirmPayBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/pay/ConfirmPayResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3807
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/pay/ConfirmPayResponse;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgPayService()Lcom/qinggan/tsp/service/QGPayService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGPayService;->confirmPayAsync(Lcom/qinggan/tsp/models/pay/ConfirmPayBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3812
    :goto_b
    return-void

    .line 3808
    :catch_c
    move-exception v0

    .line 3809
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public createContacts(Lcom/qinggan/tsp/models/account/ContactsBaseResBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "contactsBaseResBean"    # Lcom/qinggan/tsp/models/account/ContactsBaseResBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/ContactsBaseResBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ContactsCreateResBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1837
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ContactsCreateResBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->createContacts(Lcom/qinggan/tsp/models/account/ContactsBaseResBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1841
    :goto_b
    return-void

    .line 1838
    :catch_c
    move-exception v0

    .line 1839
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public createOrderInfo(Ljava/lang/Object;)Lretrofit2/Call;
    .registers 5
    .param p1, "requestBody"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/payv2/OrderCreatedInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4921
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGPayV2Service()Lcom/qinggan/tsp/service/QGPayV2Service;

    move-result-object v1

    invoke-static {}, Lcom/qinggan/tsp/util/PayUtil;->getInstance()Lcom/qinggan/tsp/util/PayUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qinggan/tsp/util/PayUtil;->createRequestBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qinggan/tsp/service/QGPayV2Service;->createOrder(Lokhttp3/RequestBody;)Lretrofit2/Call;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 4925
    :goto_10
    return-object v1

    .line 4922
    :catch_11
    move-exception v0

    .line 4923
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4925
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public createPayInfo(Ljava/lang/Object;)Lretrofit2/Call;
    .registers 5
    .param p1, "requestBody"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/payv2/PayCodeInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4930
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGPayV2Service()Lcom/qinggan/tsp/service/QGPayV2Service;

    move-result-object v1

    invoke-static {}, Lcom/qinggan/tsp/util/PayUtil;->getInstance()Lcom/qinggan/tsp/util/PayUtil;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qinggan/tsp/util/PayUtil;->createRequestBody(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/qinggan/tsp/service/QGPayV2Service;->createPayCode(Lokhttp3/RequestBody;)Lretrofit2/Call;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 4934
    :goto_10
    return-object v1

    .line 4931
    :catch_11
    move-exception v0

    .line 4932
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4934
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public createPeccancyOrder(Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "requestBody"    # Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/CreateOrderResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4076
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/CreateOrderResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->createOrder(Lcom/qinggan/tsp/models/walletNew/CreateOrderReq;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4080
    :goto_b
    return-void

    .line 4077
    :catch_c
    move-exception v0

    .line 4078
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public createRemoteDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 23
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "ipda"    # Ljava/lang/String;
    .param p5, "vin"    # Ljava/lang/String;
    .param p6, "questionType"    # Ljava/lang/String;
    .param p7, "logType"    # Ljava/lang/String;
    .param p8, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/RemoteDebugBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2867
    .local p9, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/RemoteDebugBean;>;"
    if-nez p8, :cond_a

    .line 2868
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v2, "createVoiceNote file is null..."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2894
    :goto_9
    return-void

    .line 2881
    :cond_a
    :try_start_a
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 2882
    .local v11, "extension":Ljava/lang/String;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v2, "createRemoteDebug file:%s, extension:%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object v11, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2884
    const-string v1, "multipart/form-data"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v12

    .line 2885
    .local v12, "requestFile":Lokhttp3/RequestBody;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRemoteDebug requestFile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2886
    const-string v1, "file"

    .line 2887
    invoke-virtual/range {p8 .. p8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qinggan/tsp/TspManager;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v12}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v9

    .line 2888
    .local v9, "body":Lokhttp3/MultipartBody$Part;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v9}, Lcom/qinggan/tsp/service/QGRemoteDebug;->createRemoteDebug(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {p0, v1, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_7d
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_7d} :catch_7e

    goto :goto_9

    .line 2890
    .end local v9    # "body":Lokhttp3/MultipartBody$Part;
    .end local v11    # "extension":Ljava/lang/String;
    .end local v12    # "requestFile":Lokhttp3/RequestBody;
    :catch_7e
    move-exception v10

    .line 2891
    .local v10, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "createRemoteDebug requestFile: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2892
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public createVoiceNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 21
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "voiceTitle"    # Ljava/lang/String;
    .param p3, "duration"    # Ljava/lang/String;
    .param p4, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/voiceNote/VoiceNoteBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2834
    .local p5, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/voiceNote/VoiceNoteBean;>;"
    if-nez p4, :cond_a

    .line 2835
    sget-object v10, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v11, "createVoiceNote file is null..."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    :goto_9
    return-void

    .line 2839
    :cond_a
    const-wide/32 v6, 0x400000

    .line 2840
    .local v6, "limitLength":J
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->length()J

    move-result-wide v10

    cmp-long v10, v10, v6

    if-lez v10, :cond_25

    .line 2841
    new-instance v9, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-direct {v9}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 2842
    .local v9, "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    const-string v10, "file length can not > 4M"

    invoke-virtual {v9, v10}, Lcom/qinggan/tsp/restmiddle/RestError;->setMessage(Ljava/lang/String;)V

    .line 2843
    move-object/from16 v0, p5

    invoke-virtual {v0, v9}, Lcom/qinggan/tsp/restmiddle/RestCallback;->failure(Lcom/qinggan/tsp/restmiddle/RestError;)V

    goto :goto_9

    .line 2847
    .end local v9    # "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    :cond_25
    :try_start_25
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-direct {p0, v10}, Lcom/qinggan/tsp/TspManager;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Landroid/webkit/MimeTypeMap;->getFileExtensionFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 2848
    .local v4, "extension":Ljava/lang/String;
    invoke-static {}, Landroid/webkit/MimeTypeMap;->getSingleton()Landroid/webkit/MimeTypeMap;

    move-result-object v10

    invoke-virtual {v10, v4}, Landroid/webkit/MimeTypeMap;->getMimeTypeFromExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 2849
    .local v5, "mimeType":Ljava/lang/String;
    sget-object v10, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v11, "createVoiceNote file:%s, extension:%s, mimeType:%s"

    const/4 v12, 0x3

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    aput-object v4, v12, v13

    const/4 v13, 0x2

    aput-object v5, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2853
    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v10

    move-object/from16 v0, p4

    invoke-static {v10, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v8

    .line 2854
    .local v8, "requestFile":Lokhttp3/RequestBody;
    sget-object v10, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "createVoiceNote requestFile: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2855
    const-string v10, "message"

    .line 2856
    invoke-virtual/range {p4 .. p4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11}, Lcom/qinggan/tsp/TspManager;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, v8}, Lokhttp3/MultipartBody$Part;->createFormData(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Part;

    move-result-object v2

    .line 2857
    .local v2, "body":Lokhttp3/MultipartBody$Part;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;

    move-result-object v10

    move-object/from16 v0, p2

    invoke-direct {p0, v0}, Lcom/qinggan/tsp/TspManager;->encodeUtf8(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-interface {v10, v0, v11, v1, v2}, Lcom/qinggan/tsp/service/QGVoiceNoteService;->createVoiceNote(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/MultipartBody$Part;)Lretrofit2/Call;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-virtual {p0, v10, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_9f
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_9f} :catch_a1

    goto/16 :goto_9

    .line 2859
    .end local v2    # "body":Lokhttp3/MultipartBody$Part;
    .end local v4    # "extension":Ljava/lang/String;
    .end local v5    # "mimeType":Ljava/lang/String;
    .end local v8    # "requestFile":Lokhttp3/RequestBody;
    :catch_a1
    move-exception v3

    .line 2860
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_9
.end method

.method public deleteCalendarAccount(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 765
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->deleteCalendarAccount(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 770
    :goto_b
    return-void

    .line 766
    :catch_c
    move-exception v0

    .line 767
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public deleteContacts(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1848
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->deleteContacts(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1852
    :goto_b
    return-void

    .line 1849
    :catch_c
    move-exception v0

    .line 1850
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public deleteFamilyGroup(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseFamilyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 988
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseFamilyGroup;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->deleteFamilyGroup(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 992
    :goto_b
    return-void

    .line 989
    :catch_c
    move-exception v0

    .line 990
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public deleteOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "orderChannel"    # Ljava/lang/String;
    .param p2, "orderBizType"    # Ljava/lang/String;
    .param p3, "orderNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/DeleteOrderResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4068
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/DeleteOrderResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGWalletNewService;->deleteOrder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4072
    :goto_b
    return-void

    .line 4069
    :catch_c
    move-exception v0

    .line 4070
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public deleteTencetnEigenvalueAccountFaceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "faceId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1771
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1773
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1774
    const-string v3, "loginType"

    const-string v4, "18"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1775
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1776
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1777
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1778
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1779
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->deleteTencetnEigenvalueAccount(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 1783
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_3b
    return-void

    .line 1780
    :catch_3c
    move-exception v1

    .line 1781
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public deleteTencetnEigenvalueAccountVoiceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "voiceId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1752
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1754
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1755
    const-string v3, "loginType"

    const-string v4, "11"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1756
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1757
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1758
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1759
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1760
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->deleteTencetnEigenvalueAccount(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 1764
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_3b
    return-void

    .line 1761
    :catch_3c
    move-exception v1

    .line 1762
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public deleteVoiceNoteByUser(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3139
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGVoiceNoteService;->deleteVoiceNoteByUser(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3143
    :goto_b
    return-void

    .line 3140
    :catch_c
    move-exception v0

    .line 3141
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public deviceStatus(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/DeviceStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1389
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/DeviceStatus;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGDeviceService;->deviceStatus(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1393
    :goto_b
    return-void

    .line 1390
    :catch_c
    move-exception v0

    .line 1391
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public downloadHistory(Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "downloadHistoryRequest"    # Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/DownloadHistoryResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3344
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/DownloadHistoryResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->downloadHistory(Lcom/qinggan/tsp/models/appStore/request/DownloadHistoryRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3348
    :goto_b
    return-void

    .line 3345
    :catch_c
    move-exception v0

    .line 3346
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public eigenvalueLoginWithTencentFaceId(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "faceId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/TencentLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1808
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/TencentLoginResult;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1810
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1811
    const-string v3, "loginType"

    const-string v4, "18"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1812
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1813
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1814
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1815
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->eigenvalueLoginWithTencent(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    .line 1819
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_36
    return-void

    .line 1816
    :catch_37
    move-exception v1

    .line 1817
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public eigenvalueLoginWithTencentVoiceId(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "voiceId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/TencentLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1790
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/TencentLoginResult;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1792
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1793
    const-string v3, "loginType"

    const-string v4, "11"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1794
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1795
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1796
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1797
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->eigenvalueLoginWithTencent(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_36} :catch_37

    .line 1801
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_36
    return-void

    .line 1798
    :catch_37
    move-exception v1

    .line 1799
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_36
.end method

.method public etcpActivePayment(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "payType"    # Ljava/lang/String;
    .param p2, "synId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/ParkingActivePaymentResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3923
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/ParkingActivePaymentResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletService;->parkingActivePayment(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3928
    :goto_b
    return-void

    .line 3924
    :catch_c
    move-exception v0

    .line 3925
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3926
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public etcpParkingFeeSearch(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "plateNumber"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/ParkingFeeSearchResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3939
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/ParkingFeeSearchResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletService;->parkingFeeSearch(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3943
    :goto_b
    return-void

    .line 3940
    :catch_c
    move-exception v0

    .line 3941
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public etcpQueryParkingGetdebtUrl(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/ParkingGetdebtUrlResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3910
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/ParkingGetdebtUrlResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGWalletService;->parkingGetdebtUrl()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3914
    :goto_b
    return-void

    .line 3911
    :catch_c
    move-exception v0

    .line 3912
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public etcpSimulation(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "plateNumber"    # Ljava/lang/String;
    .param p2, "appId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/EtcpSimulationResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4051
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/EtcpSimulationResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletNewService;->etcpSimulation(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4055
    :goto_b
    return-void

    .line 4052
    :catch_c
    move-exception v0

    .line 4053
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public etcpWitholdSign(Lcom/qinggan/tsp/models/wallet/WitholdSignRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/WitholdSignRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/WitholdSignRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/WitholdSignResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3953
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/WitholdSignResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->witholdSign(Lcom/qinggan/tsp/models/wallet/WitholdSignRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3957
    :goto_b
    return-void

    .line 3954
    :catch_c
    move-exception v0

    .line 3955
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public findActivityByDealerNo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "dealerNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentAct;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3696
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/AppointmentAct;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->findActivityByDealerNo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3700
    :goto_b
    return-void

    .line 3697
    :catch_c
    move-exception v0

    .line 3698
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findActivityDetail(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "dealerNo"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentInfoActInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3712
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/AppointmentInfoActInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGMaintenanceService;->findActivityDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3716
    :goto_b
    return-void

    .line 3713
    :catch_c
    move-exception v0

    .line 3714
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "dealerNo"    # Ljava/lang/String;
    .param p2, "activityType"    # Ljava/lang/String;
    .param p3, "orderTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentActivityInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3744
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/AppointmentActivityInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGMaintenanceService;->findActivityInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3748
    :goto_b
    return-void

    .line 3745
    :catch_c
    move-exception v0

    .line 3746
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findAllBindUserList(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindUserBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1920
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindUserBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->findAllBindUserList(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1924
    :goto_b
    return-void

    .line 1921
    :catch_c
    move-exception v0

    .line 1922
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findBindDeviceListByOwner(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindDeviceListByOwner;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1874
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindDeviceListByOwner;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->findBindDeviceListByOwner(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1878
    :goto_b
    return-void

    .line 1875
    :catch_c
    move-exception v0

    .line 1876
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findBindUserList(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindUserBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1889
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindUserBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->findBindUserList(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1893
    :goto_b
    return-void

    .line 1890
    :catch_c
    move-exception v0

    .line 1891
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findDealerByCode(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "dealerNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/DealerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3727
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/DealerInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->findDealerByCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3731
    :goto_b
    return-void

    .line 3728
    :catch_c
    move-exception v0

    .line 3729
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findH97BindUserList(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindUserBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1905
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindUserBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->findH97BindUserList(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1909
    :goto_b
    return-void

    .line 1906
    :catch_c
    move-exception v0

    .line 1907
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public findManualDirectoryTree(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/ehandbook/ManualDirectoryTreeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5568
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/ehandbook/ManualDirectoryTreeBean;>;"
    :try_start_0
    new-instance v2, Lcom/qinggan/tsp/models/ehandbook/TreeRequestBean;

    invoke-direct {v2}, Lcom/qinggan/tsp/models/ehandbook/TreeRequestBean;-><init>()V

    .line 5569
    .local v2, "treeRequestBean":Lcom/qinggan/tsp/models/ehandbook/TreeRequestBean;
    invoke-virtual {v2, p1}, Lcom/qinggan/tsp/models/ehandbook/TreeRequestBean;->setTagName(Ljava/lang/String;)V

    .line 5570
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 5571
    .local v1, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGEHandBookService()Lcom/qinggan/tsp/service/QGEHandBookService;

    move-result-object v3

    invoke-interface {v3, v1}, Lcom/qinggan/tsp/service/QGEHandBookService;->findManualDirectoryTree(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    .line 5575
    .end local v1    # "requestBody":Lokhttp3/RequestBody;
    .end local v2    # "treeRequestBean":Lcom/qinggan/tsp/models/ehandbook/TreeRequestBean;
    :goto_23
    return-void

    .line 5572
    :catch_24
    move-exception v0

    .line 5573
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method

.method public findMaterialManualDirectory(Ljava/lang/Long;Ljava/lang/String;II)Lcom/qinggan/tsp/models/ehandbook/DirectoryMaterialBean;
    .registers 12
    .param p1, "directoryId"    # Ljava/lang/Long;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I

    .prologue
    .line 5600
    const/4 v1, 0x0

    .line 5602
    .local v1, "directoryMaterialBean":Lcom/qinggan/tsp/models/ehandbook/DirectoryMaterialBean;
    :try_start_1
    new-instance v3, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;

    invoke-direct {v3}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;-><init>()V

    .line 5603
    .local v3, "materialRequestBean":Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;
    invoke-virtual {v3, p1}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setDirectoryId(Ljava/lang/Long;)V

    .line 5604
    invoke-virtual {v3, p2}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setTagName(Ljava/lang/String;)V

    .line 5605
    invoke-virtual {v3, p3}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setPage(I)V

    .line 5606
    invoke-virtual {v3, p4}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setPageSize(I)V

    .line 5607
    const-string v5, "application/json;charset=UTF-8"

    invoke-static {v5}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    iget-object v6, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v4

    .line 5608
    .local v4, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGEHandBookService()Lcom/qinggan/tsp/service/QGEHandBookService;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/QGEHandBookService;->findMaterialManualDirectoryJoin(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/qinggan/tsp/models/ehandbook/DirectoryMaterialBean;

    move-object v1, v0
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_32} :catch_33

    .line 5612
    .end local v3    # "materialRequestBean":Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;
    .end local v4    # "requestBody":Lokhttp3/RequestBody;
    :goto_32
    return-object v1

    .line 5609
    :catch_33
    move-exception v2

    .line 5610
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public findMaterialManualDirectoryJoin(Ljava/lang/Long;Ljava/lang/String;IILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "directoryId"    # Ljava/lang/Long;
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "II",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/ehandbook/DirectoryMaterialBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5587
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/ehandbook/DirectoryMaterialBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;-><init>()V

    .line 5588
    .local v1, "materialRequestBean":Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setDirectoryId(Ljava/lang/Long;)V

    .line 5589
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setTagName(Ljava/lang/String;)V

    .line 5590
    invoke-virtual {v1, p3}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setPage(I)V

    .line 5591
    invoke-virtual {v1, p4}, Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;->setPageSize(I)V

    .line 5592
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 5593
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGEHandBookService()Lcom/qinggan/tsp/service/QGEHandBookService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGEHandBookService;->findMaterialManualDirectoryJoin(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2c} :catch_2d

    .line 5597
    .end local v1    # "materialRequestBean":Lcom/qinggan/tsp/models/ehandbook/MaterialRequestBean;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_2c
    return-void

    .line 5594
    :catch_2d
    move-exception v0

    .line 5595
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2c
.end method

.method public findOwnerByDeviceId(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/OwnerInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1460
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/OwnerInfo;>;"
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qinggan/tsp/service/QGAccountService;->findOwnerByDeviceId(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1461
    return-void
.end method

.method public findTagRecommend(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/ehandbook/TagRecommendBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5579
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/ehandbook/TagRecommendBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGEHandBookService()Lcom/qinggan/tsp/service/QGEHandBookService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGEHandBookService;->findTagRecommend()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 5583
    :goto_b
    return-void

    .line 5580
    :catch_c
    move-exception v0

    .line 5581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public get24HourWeather(DD)Lcom/qinggan/tsp/models/cpsp/Weather24HourBean;
    .registers 10
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 2714
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2716
    .local v0, "deviceType":Ljava/lang/String;
    :try_start_6
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_23

    .line 2717
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    .line 2718
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 2717
    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->get24HourWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/cpsp/Weather24HourBean;

    .line 2727
    :goto_22
    return-object v2

    .line 2720
    :cond_23
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    .line 2721
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 2720
    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->get24HourWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/cpsp/Weather24HourBean;
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_39} :catch_3a

    goto :goto_22

    .line 2724
    :catch_3a
    move-exception v1

    .line 2725
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2727
    const/4 v2, 0x0

    goto :goto_22
.end method

.method public get24HourWeather(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/Weather24HourBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2733
    .local p5, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/Weather24HourBean;>;"
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2735
    .local v0, "deviceType":Ljava/lang/String;
    :try_start_6
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "get24HourWeather longitude:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2736
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 2737
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->get24HourWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2744
    :goto_37
    return-void

    .line 2739
    :cond_38
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->get24HourWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_4b} :catch_4c

    goto :goto_37

    .line 2741
    :catch_4c
    move-exception v1

    .line 2742
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_37
.end method

.method public get4SStore(Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "info"    # Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3626
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->getVehicle4SStoreInfo(Lcom/qinggan/tsp/models/maintenance/Vehicle4SStoreRequestInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3630
    :goto_b
    return-void

    .line 3627
    :catch_c
    move-exception v0

    .line 3628
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public get53Flow(Lcom/qinggan/tsp/models/wallet/QueryFlow53Request;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/QueryFlow53Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/QueryFlow53Request;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryFlow53Resp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3477
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryFlow53Resp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->get53Flow(Lcom/qinggan/tsp/models/wallet/QueryFlow53Request;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3481
    :goto_b
    return-void

    .line 3478
    :catch_c
    move-exception v0

    .line 3479
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public get53FlowList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "projectId"    # Ljava/lang/String;
    .param p2, "deviceType"    # Ljava/lang/String;
    .param p3, "vehicle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/FlowProductList53Resp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3575
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/FlowProductList53Resp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGWalletService;->get53FlowList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3579
    :goto_b
    return-void

    .line 3576
    :catch_c
    move-exception v0

    .line 3577
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getAccountInfo(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/AccountBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 570
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/AccountBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGAccountService;->queryAccountInfo()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 574
    :goto_b
    return-void

    .line 571
    :catch_c
    move-exception v0

    .line 572
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getAccountService()Lcom/qinggan/tsp/service/QGAccountService;
    .registers 3

    .prologue
    .line 260
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGAccountService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGAccountService;

    return-object v0
.end method

.method public getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;
    .registers 3

    .prologue
    .line 269
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    return-object v0
.end method

.method public getActivationDays(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/ActivationDays;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2222
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/ActivationDays;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->getActivationDays(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2226
    :goto_b
    return-void

    .line 2223
    :catch_c
    move-exception v0

    .line 2224
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getAdcodeBaseLat(DD)Lcom/qinggan/tsp/models/cpsp/RegeoCodeBean;
    .registers 10
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    .line 1157
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1158
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    .line 1159
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->regeoCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 1158
    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/cpsp/RegeoCodeBean;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 1163
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_1c
    return-object v2

    .line 1160
    :catch_1d
    move-exception v1

    .line 1161
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1163
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public getAdcodeBaseLat(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/RegeoCodeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1145
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/RegeoCodeBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1147
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    .line 1148
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->regeoCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    .line 1147
    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 1153
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_19
    return-void

    .line 1149
    :catch_1a
    move-exception v1

    .line 1150
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public getAdviseMsgList(Ljava/lang/String;IILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/advise/AdviseMsgBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5700
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/advise/AdviseMsgBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAdviseService()Lcom/qinggan/tsp/service/QGAdviseService;

    move-result-object v1

    const-string v2, "1"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, p1, v2, v3, v4}, Lcom/qinggan/tsp/service/QGAdviseService;->getAdviseMsgList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 5705
    :goto_15
    return-void

    .line 5702
    :catch_16
    move-exception v0

    .line 5703
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public getAlbumBySubcribe(IILjava/lang/String;)Lretrofit2/Call;
    .registers 13
    .param p1, "updated_at"    # I
    .param p2, "offset"    # I
    .param p3, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumBySubcribe;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4494
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4495
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4500
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4501
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, p3

    .line 4495
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getAlbumBySubcribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4516
    :goto_1f
    return-object v0

    .line 4504
    :cond_20
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4509
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4510
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, p3

    .line 4504
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumBySubcribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_1f

    .line 4513
    :catch_3a
    move-exception v8

    .line 4514
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4516
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getAlbumBySubcribeV1(IILjava/lang/String;)Lretrofit2/Call;
    .registers 12
    .param p1, "updated_at"    # I
    .param p2, "offset"    # I
    .param p3, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAlbumBySubcribeV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4521
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4524
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4525
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4521
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAlbumBySubcribe(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 4530
    :goto_18
    return-object v0

    .line 4527
    :catch_19
    move-exception v7

    .line 4528
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4530
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getAlbumHasBought(Ljava/lang/String;)Lretrofit2/Call;
    .registers 9
    .param p1, "contains_bought_track_ids"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumByPaid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4563
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumHasBought(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 4572
    :goto_11
    return-object v0

    .line 4569
    :catch_12
    move-exception v6

    .line 4570
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4572
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getAlbumHasBoughtV1()Lretrofit2/Call;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAlbumByPaidV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4577
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAlbumHasBought(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_11

    move-result-object v1

    .line 4583
    :goto_10
    return-object v1

    .line 4580
    :catch_11
    move-exception v0

    .line 4581
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4583
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getAlbumNeedPaid(II)Lretrofit2/Call;
    .registers 11
    .param p1, "page"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumNeedPaid;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4595
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4600
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4601
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4595
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumNeedPaid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 4605
    :goto_18
    return-object v0

    .line 4602
    :catch_19
    move-exception v7

    .line 4603
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4605
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getAlbumNeedPaidV1(II)Lretrofit2/Call;
    .registers 11
    .param p1, "page"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAlbumNeedPaidV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4610
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4613
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4614
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4610
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAlbumNeedPaid(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 4618
    :goto_18
    return-object v0

    .line 4615
    :catch_19
    move-exception v7

    .line 4616
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4618
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getAlbumSearched(Ljava/lang/String;II)Lretrofit2/Call;
    .registers 13
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumSearched;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4306
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4311
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    .line 4306
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 4315
    :goto_19
    return-object v0

    .line 4312
    :catch_1a
    move-exception v8

    .line 4313
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4315
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getAlbumSearchedV1(Ljava/lang/String;Ljava/lang/String;III)Lretrofit2/Call;
    .registers 17
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "sort"    # Ljava/lang/String;
    .param p3, "catId"    # I
    .param p4, "page"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "III)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAlbumSearchedV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4321
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4324
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    move-object v6, p2

    .line 4321
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAlbumSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1f

    move-result-object v0

    .line 4328
    :goto_1e
    return-object v0

    .line 4325
    :catch_1f
    move-exception v10

    .line 4326
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4328
    const/4 v0, 0x0

    goto :goto_1e
.end method

.method public getAlbumSubAndBought(II)Lretrofit2/Call;
    .registers 11
    .param p1, "pagesize"    # I
    .param p2, "pagenum"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumSubAndBought;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4542
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4547
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4548
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4542
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumSubAndBought(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 4552
    :goto_18
    return-object v0

    .line 4549
    :catch_19
    move-exception v7

    .line 4550
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4552
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getAlbumsByCategoryV1(ILjava/lang/String;Ljava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .registers 19
    .param p1, "categoryId"    # I
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "count"    # I
    .param p6, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAlbumByCategoryV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4176
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4178
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4179
    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, p3

    move-object v7, p2

    move-object/from16 v10, p6

    .line 4176
    invoke-interface/range {v0 .. v10}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAlbumsByCategory(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 4183
    :goto_20
    return-object v0

    .line 4180
    :catch_21
    move-exception v11

    .line 4181
    .local v11, "e":Ljava/lang/Exception;
    invoke-virtual {v11}, Ljava/lang/Exception;->printStackTrace()V

    .line 4183
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getAlbumsByCategoty(ILjava/lang/String;III)Lretrofit2/Call;
    .registers 17
    .param p1, "categoryId"    # I
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "calcDimension"    # I
    .param p4, "page"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumByCategory;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4161
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4163
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4164
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 4165
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v6, p2

    .line 4161
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumsByCategoty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    .line 4169
    :goto_21
    return-object v0

    .line 4166
    :catch_22
    move-exception v10

    .line 4167
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4169
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getAlbumsGuessLike(I)Lretrofit2/Call;
    .registers 9
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumGuessLike;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4409
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 4410
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4414
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4410
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getAlbumsGuessLike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4425
    :goto_1a
    return-object v0

    .line 4416
    :cond_1b
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4420
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4416
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getAlbumsGuessLike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2e} :catch_30

    move-result-object v0

    goto :goto_1a

    .line 4422
    :catch_30
    move-exception v6

    .line 4423
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4425
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getAlbumsGuessLikeV1(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 17
    .param p1, "page"    # I
    .param p2, "count"    # I
    .param p3, "machineType"    # Ljava/lang/String;
    .param p4, "kind"    # Ljava/lang/String;
    .param p5, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAlbumGuessLikeV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4431
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4434
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, p3

    move-object v8, p4

    move-object/from16 v9, p5

    .line 4431
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAlbumsGuessLike(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 4438
    :goto_1c
    return-object v0

    .line 4435
    :catch_1d
    move-exception v10

    .line 4436
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4438
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getAllCate(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/information/AllCateBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3178
    .local p1, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/information/AllCateBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGInformationService;->getAllCate()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3182
    :goto_b
    return-void

    .line 3179
    :catch_c
    move-exception v0

    .line 3180
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getAllCategorysForXmly()Lcom/qinggan/tsp/models/xmly/XmlyCategory;
    .registers 7

    .prologue
    .line 2559
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getAllCategorys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/xmly/XmlyCategory;
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_16} :catch_17

    .line 2563
    :goto_16
    return-object v1

    .line 2560
    :catch_17
    move-exception v0

    .line 2561
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2563
    const/4 v1, 0x0

    goto :goto_16
.end method

.method public getAllCategorysForXmly(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyCategory;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2568
    .local p1, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/xmly/XmlyCategory;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getAllCategorys(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 2572
    :goto_13
    return-void

    .line 2569
    :catch_14
    move-exception v0

    .line 2570
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getAllCities(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/CityBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1199
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/CityBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1200
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGCPSPService;->getAllCities(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1204
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_11
    return-void

    .line 1201
    :catch_12
    move-exception v1

    .line 1202
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getAllListenMusic(IILjava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "count"    # I
    .param p2, "data"    # I
    .param p3, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/MusicListenHistoryResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2051
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/MusicListenHistoryResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_38

    .line 2052
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;->getAllListenMusic(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2059
    :goto_37
    return-void

    .line 2054
    :cond_38
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->getAllListenMusic(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_69
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_69} :catch_6a

    goto :goto_37

    .line 2056
    :catch_6a
    move-exception v0

    .line 2057
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_37
.end method

.method public getAllOauth(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/OauthServiceBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 539
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/OauthServiceBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 540
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->queryAllOauth()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 548
    :goto_11
    return-void

    .line 542
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGAccountService;->queryAllOauth()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 544
    :catch_1e
    move-exception v0

    .line 545
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getAllSearched(IILjava/lang/String;)Lretrofit2/Call;
    .registers 13
    .param p1, "count"    # I
    .param p2, "page"    # I
    .param p3, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAllSearched;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4378
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4382
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, p3

    .line 4378
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyService;->getAllSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_18} :catch_1a

    move-result-object v0

    .line 4386
    :goto_19
    return-object v0

    .line 4383
    :catch_1a
    move-exception v8

    .line 4384
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4386
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public getAllSearchedV1(Ljava/lang/String;)Lretrofit2/Call;
    .registers 9
    .param p1, "keyword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyAllSearchedV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4391
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getAllSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 4397
    :goto_11
    return-object v0

    .line 4394
    :catch_12
    move-exception v6

    .line 4395
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4397
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getAppointment(Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "info"    # Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/AppointmentInfoList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3640
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/AppointmentInfoList;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->getAppointment(Lcom/qinggan/tsp/models/maintenance/AppointmentRequestInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3644
    :goto_b
    return-void

    .line 3641
    :catch_c
    move-exception v0

    .line 3642
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getAqiForecastInfo(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/AqiForcastBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2796
    .local p5, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/AqiForcastBean;>;"
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2798
    .local v0, "deviceType":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    .line 2799
    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 2798
    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->getAqiForecastInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    .line 2803
    :goto_19
    return-void

    .line 2800
    :catch_1a
    move-exception v1

    .line 2801
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public getAqiForecastInfo(ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "cityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/AqiForcastBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2813
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/AqiForcastBean;>;"
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2815
    .local v0, "deviceType":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/QGCPSPService;->getAqiForecastInfo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    .line 2820
    :goto_15
    return-void

    .line 2817
    :catch_16
    move-exception v1

    .line 2818
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public getAqiInfo(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/AqiBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2757
    .local p5, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/AqiBean;>;"
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2759
    .local v0, "deviceType":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->getAqiInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_19} :catch_1a

    .line 2768
    :goto_19
    return-void

    .line 2765
    :catch_1a
    move-exception v1

    .line 2766
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public getAqiInfo(ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "cityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/AqiBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2778
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/AqiBean;>;"
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2780
    .local v0, "deviceType":Ljava/lang/String;
    :try_start_6
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/QGCPSPService;->getAqiInfo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_15} :catch_16

    .line 2784
    :goto_15
    return-void

    .line 2781
    :catch_16
    move-exception v1

    .line 2782
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public getBarcode(Lcom/qinggan/tsp/models/wallet/GenerateBarcodeRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/GenerateBarcodeRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/GenerateBarcodeRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/GenerateBarcodeResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3388
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/GenerateBarcodeResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getPayBarcode(Lcom/qinggan/tsp/models/wallet/GenerateBarcodeRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3392
    :goto_b
    return-void

    .line 3389
    :catch_c
    move-exception v0

    .line 3390
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getBindingNewOauth(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindingNewOauthBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 521
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindingNewOauthBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 522
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->queryBindingNewOauth()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 530
    :goto_11
    return-void

    .line 524
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGAccountService;->queryBindingNewOauth()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 526
    :catch_1e
    move-exception v0

    .line 527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getBindingOauth(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/BindingOauthBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 454
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/BindingOauthBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 455
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->queryBindingOauth()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 462
    :goto_11
    return-void

    .line 457
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGAccountService;->queryBindingOauth()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 459
    :catch_1e
    move-exception v0

    .line 460
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getByUserAccountId(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .param p1, "userAccountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/UserAccountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1470
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/UserAccountInfo;>;"
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getByUserAccountId(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1471
    return-void
.end method

.method public getCalendarAccountInfo(Ljava/lang/String;ZLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "isShowPwd"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/CalendarBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 751
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/CalendarBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    const-string v2, "true"

    invoke-interface {v1, p1, v2}, Lcom/qinggan/tsp/service/QGAccountService;->getCalendarAccountInfo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 756
    :goto_d
    return-void

    .line 752
    :catch_e
    move-exception v0

    .line 753
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public getChickenSoup(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/msuserstatus/ChickenSoupBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1303
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/msuserstatus/ChickenSoupBean;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGCPSPService;->getChickenSoup(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1307
    :goto_b
    return-void

    .line 1304
    :catch_c
    move-exception v0

    .line 1305
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
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
    .line 156
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getCpOrderNoByTspOrderNo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "tspOrderNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/XimalayaCheckOrderNoResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3441
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/XimalayaCheckOrderNoResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getCpOrderNoByTspOrderNo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3446
    :goto_b
    return-void

    .line 3442
    :catch_c
    move-exception v0

    .line 3443
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getDetailInfor(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "inforId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/information/DetailInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3191
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/information/DetailInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGInformationService;->getDetailInfor(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3195
    :goto_b
    return-void

    .line 3192
    :catch_c
    move-exception v0

    .line 3193
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getDeviceTypeForCp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceVehicle(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1504
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->getDeviceVehicle(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1508
    :goto_b
    return-void

    .line 1505
    :catch_c
    move-exception v0

    .line 1506
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getECautoBarcode(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .param p1, "provideName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/BindEZBarcodeResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3487
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/BindEZBarcodeResp;>;"
    const-string v0, ""

    invoke-virtual {p0, p1, v0, p2}, Lcom/qinggan/tsp/TspManager;->getECautoBarcode(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3488
    return-void
.end method

.method public getECautoBarcode(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "provideName"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/BindEZBarcodeResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3495
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/BindEZBarcodeResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3496
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->getECautoBarcode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3503
    :goto_11
    return-void

    .line 3498
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletService;->getECautoBarcode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3500
    :catch_1e
    move-exception v0

    .line 3501
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getETCPBarcode(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/RequestETCPResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3399
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/RequestETCPResponse;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3400
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->buyETCP(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3407
    :goto_11
    return-void

    .line 3402
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->buyETCP(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3404
    :catch_1e
    move-exception v0

    .line 3405
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getEcoDriver(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/ecodriver/EcoDriverInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3608
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/ecodriver/EcoDriverInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGECOService()Lcom/qinggan/tsp/service/QGECOService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGECOService;->getEcoDriver(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3612
    :goto_b
    return-void

    .line 3609
    :catch_c
    move-exception v0

    .line 3610
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getExpiredTime()J
    .registers 3

    .prologue
    .line 343
    sget-object v0, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v1, "getExpiredTime:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getFamilyGroupAskList(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseFamilyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 977
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseFamilyGroup;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getFamilyGroupAskList(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 981
    :goto_b
    return-void

    .line 978
    :catch_c
    move-exception v0

    .line 979
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getFamilyGroupList(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseFamilyGroup;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 966
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseFamilyGroup;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getFamilyGroupList(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 970
    :goto_b
    return-void

    .line 967
    :catch_c
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getFlow(Lcom/qinggan/tsp/models/wallet/QueryFlowRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/QueryFlowRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/QueryFlowRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryFlowResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3466
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryFlowResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getFlow(Lcom/qinggan/tsp/models/wallet/QueryFlowRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3470
    :goto_b
    return-void

    .line 3467
    :catch_c
    move-exception v0

    .line 3468
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getFlowList(Lcom/qinggan/tsp/models/wallet/FlowProductListRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/FlowProductListRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/FlowProductListRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/FlowProductListResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3563
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/FlowProductListResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getFlowList(Lcom/qinggan/tsp/models/wallet/FlowProductListRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3567
    :goto_b
    return-void

    .line 3564
    :catch_c
    move-exception v0

    .line 3565
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getGreetMessage(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "version"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/greetMessage/GreetMessage;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1290
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/greetMessage/GreetMessage;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGCPSPService;->getGreetMessage(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1294
    :goto_b
    return-void

    .line 1291
    :catch_c
    move-exception v0

    .line 1292
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getGreetVersion(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/greetMessage/GreetVersion;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1277
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/greetMessage/GreetVersion;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGCPSPService;->getGreetVersion()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1281
    :goto_b
    return-void

    .line 1278
    :catch_c
    move-exception v0

    .line 1279
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
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
    .line 160
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->getGwmService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;
    .registers 4
    .param p1, "fn"    # Ljava/lang/String;

    .prologue
    .line 4968
    new-instance v0, Lcom/qinggan/tsp/models/gwm/Header;

    invoke-direct {v0}, Lcom/qinggan/tsp/models/gwm/Header;-><init>()V

    .line 4969
    .local v0, "header":Lcom/qinggan/tsp/models/gwm/Header;
    const-string v1, "0203"

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setFv(Ljava/lang/String;)V

    .line 4970
    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/models/gwm/Header;->setFn(Ljava/lang/String;)V

    .line 4971
    const-string v1, "3"

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setRs(Ljava/lang/String;)V

    .line 4972
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getLTGwmimeStamp()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setTs(Ljava/lang/String;)V

    .line 4973
    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->gwmSn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setSn(Ljava/lang/String;)V

    .line 4974
    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->gwmVin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setVin(Ljava/lang/String;)V

    .line 4975
    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->gwmPdsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setPdsn(Ljava/lang/String;)V

    .line 4976
    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->gwmId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setId(Ljava/lang/String;)V

    .line 4977
    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->gwmSign:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/models/gwm/Header;->setSign(Ljava/lang/String;)V

    .line 4978
    return-object v0
.end method

.method public getHistoryDress(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "userAccountId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/HistoryDress;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2244
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/soulmate/HistoryDress;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGSoulMateService()Lcom/qinggan/tsp/service/QGSoulMateService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGSoulMateService;->getHistoryDress(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2248
    :goto_b
    return-void

    .line 2245
    :catch_c
    move-exception v0

    .line 2246
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getHistoryDriving(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "userid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/HistoryDriving;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2255
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/soulmate/HistoryDriving;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGSoulMateService()Lcom/qinggan/tsp/service/QGSoulMateService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGSoulMateService;->getHistoryDriving(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2259
    :goto_b
    return-void

    .line 2256
    :catch_c
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getHotTracks(ILjava/lang/String;II)Lretrofit2/Call;
    .registers 15
    .param p1, "categoryId"    # I
    .param p2, "tagName"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyTracksByHot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4452
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4457
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4459
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 4460
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, p2

    .line 4452
    invoke-interface/range {v0 .. v8}, Lcom/qinggan/tsp/service/QGXmlyService;->getHotTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1e

    move-result-object v0

    .line 4464
    :goto_1d
    return-object v0

    .line 4461
    :catch_1e
    move-exception v9

    .line 4462
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 4464
    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getHotelInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "hotelCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/HotelInfoResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3583
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/HotelInfoResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getHotelInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3587
    :goto_b
    return-void

    .line 3584
    :catch_c
    move-exception v0

    .line 3585
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getIdentifyCodeV2(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseSmsCodeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1016
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseSmsCodeBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getIdentifyCodeV2(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1021
    :goto_b
    return-void

    .line 1017
    :catch_c
    move-exception v0

    .line 1018
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getIviAdminUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1116
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/InitManager;->getIviAdminUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLiveWeather(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/WeatherLiveBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2159
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/WeatherLiveBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2160
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    .line 2161
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    .line 2160
    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->getLiveWeather(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1a

    .line 2172
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_19
    return-void

    .line 2169
    :catch_1a
    move-exception v1

    .line 2170
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_19
.end method

.method public getLiveWeather(ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "cityCode"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/WeatherLiveBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2183
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/WeatherLiveBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2185
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 2186
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->getLiveWeather(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2193
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_1b
    return-void

    .line 2188
    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_1c
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/QGCPSPService;->getLiveWeather(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_1b

    .line 2190
    .end local v0    # "deviceType":Ljava/lang/String;
    :catch_2c
    move-exception v1

    .line 2191
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1b
.end method

.method public getMaxAmountInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "tradeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/SuNingMaxAmountInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 923
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/SuNingMaxAmountInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getMaxAmountInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 927
    :goto_b
    return-void

    .line 924
    :catch_c
    move-exception v0

    .line 925
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getNewContract(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "tradeType"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/qinggan/tsp/models/account/RequestNewContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/RequestNewContract;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseXibokeNewContractStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3513
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseXibokeNewContractStatus;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletNewService;->getContractUrl(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3517
    :goto_b
    return-void

    .line 3514
    :catch_c
    move-exception v0

    .line 3515
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getNewOrder(Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/NewQueryOrderResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4060
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/NewQueryOrderResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->getNewOrder(Lcom/qinggan/tsp/models/walletNew/NewQueryOrderRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4064
    :goto_b
    return-void

    .line 4061
    :catch_c
    move-exception v0

    .line 4062
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getNewUserSettingPreference(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/setting/TspNewDataCenterBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2112
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/setting/TspNewDataCenterBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserSettingService()Lcom/qinggan/tsp/service/QGUserSettingService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGUserSettingService;->getＮewUserSettingByType(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2116
    :goto_b
    return-void

    .line 2113
    :catch_c
    move-exception v0

    .line 2114
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getNewsCategories(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/NewsCategoriesBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2267
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/NewsCategoriesBean;>;"
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v3, "getNewsCategories "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    :try_start_7
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2270
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_21

    .line 2271
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    const-string v3, "zh_CN"

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->newsCategories(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2280
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_20
    return-void

    .line 2274
    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_21
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    const-string v3, "zh_CN"

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/QGCPSPService;->newsCategories(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2e} :catch_2f

    goto :goto_20

    .line 2277
    .end local v0    # "deviceType":Ljava/lang/String;
    :catch_2f
    move-exception v1

    .line 2278
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public getNewsDetail(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "newsId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/NewsDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2318
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/NewsDetailBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2320
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 2321
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->newsContent(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2331
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_17
    return-void

    .line 2324
    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_18
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/qinggan/tsp/service/QGCPSPService;->newsContent(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    goto :goto_17

    .line 2327
    .end local v0    # "deviceType":Ljava/lang/String;
    :catch_24
    move-exception v1

    .line 2328
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public getNewsDetailSpecial(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "newsId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/NewsDetailBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2340
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/NewsDetailBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2342
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/qinggan/tsp/service/QGCPSPService;->newsContentSpecial(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 2348
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_11
    return-void

    .line 2344
    :catch_12
    move-exception v1

    .line 2345
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getNewsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "language"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/NewsListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2294
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/NewsListBean;>;"
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v3, "getNewsList "

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2296
    :try_start_7
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2298
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 2299
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    invoke-interface {v2, v0, p1, p2, p3}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->newsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2309
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_1e
    return-void

    .line 2302
    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_1f
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0, p1, p2, p3}, Lcom/qinggan/tsp/service/QGCPSPService;->newsList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_2a} :catch_2b

    goto :goto_1e

    .line 2305
    .end local v0    # "deviceType":Ljava/lang/String;
    :catch_2b
    move-exception v1

    .line 2306
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public getOauthAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .param p2, "deviceCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ThirdOauthInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 721
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ThirdOauthInfoBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 722
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    const-string v2, "device_token"

    invoke-interface {v1, p1, p2, v2}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 729
    :goto_13
    return-void

    .line 724
    :cond_14
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    const-string v2, "device_token"

    invoke-interface {v1, p1, p2, v2}, Lcom/qinggan/tsp/service/QGAccountService;->getAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    goto :goto_13

    .line 726
    :catch_22
    move-exception v0

    .line 727
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_13
.end method

.method public getOperatingActivities(IIILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "type"    # I
    .param p2, "page"    # I
    .param p3, "pageSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/voyahmessage/OperatingActivityBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5712
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/voyahmessage/OperatingActivityBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/voyahmessage/OperatingActivityReq;

    invoke-direct {v1, p1, p2, p3}, Lcom/qinggan/tsp/models/voyahmessage/OperatingActivityReq;-><init>(III)V

    .line 5713
    .local v1, "req":Lcom/qinggan/tsp/models/voyahmessage/OperatingActivityReq;
    const-string v3, "application/json;charset=UTF-8"

    .line 5714
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 5715
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGTencentService;->searchOperatingActivities(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_21

    .line 5720
    .end local v1    # "req":Lcom/qinggan/tsp/models/voyahmessage/OperatingActivityReq;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_20
    return-void

    .line 5717
    :catch_21
    move-exception v0

    .line 5718
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_20
.end method

.method public getOrder(Lcom/qinggan/tsp/models/wallet/QueryOrderRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/QueryOrderRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/QueryOrderRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryOrderResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3414
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryOrderResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3415
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->getOrder(Lcom/qinggan/tsp/models/wallet/QueryOrderRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3422
    :goto_11
    return-void

    .line 3417
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getOrder(Lcom/qinggan/tsp/models/wallet/QueryOrderRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3419
    :catch_1e
    move-exception v0

    .line 3420
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public getOrderHistory(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/HotelCheckBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3978
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/HotelCheckBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3979
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->getOrderHistory()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3986
    :goto_11
    return-void

    .line 3981
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGWalletService;->getOrderHistory()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3983
    :catch_1e
    move-exception v0

    .line 3984
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getOrderListPage(Lcom/qinggan/tsp/models/wallet/FlowCheck37Request;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/FlowCheck37Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/FlowCheck37Request;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/FlowCheck37RespBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4006
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/FlowCheck37RespBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getOrderListPage(Lcom/qinggan/tsp/models/wallet/FlowCheck37Request;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4010
    :goto_b
    return-void

    .line 4007
    :catch_c
    move-exception v0

    .line 4008
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getPaidAlbumTracks(ILjava/lang/String;II)Lretrofit2/Call;
    .registers 15
    .param p1, "albumId"    # I
    .param p2, "sort"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyPaidAlbumTracks;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4632
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 4633
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4638
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4640
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 4641
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, p2

    .line 4633
    invoke-interface/range {v0 .. v8}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getPaidAlbumTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4656
    :goto_23
    return-object v0

    .line 4643
    :cond_24
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4648
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4650
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 4651
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, p2

    .line 4643
    invoke-interface/range {v0 .. v8}, Lcom/qinggan/tsp/service/QGXmlyService;->getPaidAlbumTracks(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_40} :catch_42

    move-result-object v0

    goto :goto_23

    .line 4653
    :catch_42
    move-exception v9

    .line 4654
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 4656
    const/4 v0, 0x0

    goto :goto_23
.end method

.method public getPayPlayInfo(Ljava/lang/String;)Lretrofit2/Call;
    .registers 7
    .param p1, "trackId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyPayPlayInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4752
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 4753
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getPayPlayInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 4770
    :goto_14
    return-object v1

    .line 4760
    :cond_15
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    invoke-interface {v1, v2, v3, p1, v4}, Lcom/qinggan/tsp/service/QGXmlyService;->getPayPlayInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_24

    move-result-object v1

    goto :goto_14

    .line 4767
    :catch_24
    move-exception v0

    .line 4768
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4770
    const/4 v1, 0x0

    goto :goto_14
.end method

.method public getPayPlayInfoV1(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 11
    .param p1, "trackId"    # Ljava/lang/String;
    .param p2, "machineType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyPayPlayInfoV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4775
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    move-object v6, p2

    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getPayPlayInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_13

    move-result-object v0

    .line 4782
    :goto_12
    return-object v0

    .line 4779
    :catch_13
    move-exception v7

    .line 4780
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4782
    const/4 v0, 0x0

    goto :goto_12
.end method

.method public getPayUrl(Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/PayUrlResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4027
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/PayUrlResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->getPayUrl(Lcom/qinggan/tsp/models/walletNew/PayUrlRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4031
    :goto_b
    return-void

    .line 4028
    :catch_c
    move-exception v0

    .line 4029
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getPeccancy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 14
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "engine"    # Ljava/lang/String;
    .param p4, "plate"    # Ljava/lang/String;
    .param p5, "devicetype"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryPeccancyResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3429
    .local p6, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryPeccancyResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 3430
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->getPeccancy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3437
    :goto_16
    return-void

    .line 3432
    :cond_17
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGWalletService;->getPeccancy(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_16

    .line 3434
    :catch_28
    move-exception v6

    .line 3435
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public getPerInfoPageList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "page"    # Ljava/lang/String;
    .param p3, "size"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/information/PerInfoPageBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3204
    .local p4, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/information/PerInfoPageBean;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3205
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "page"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3206
    const-string v3, "size"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3207
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3208
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;

    move-result-object v3

    invoke-interface {v3, p1, v0}, Lcom/qinggan/tsp/service/QGInformationService;->getPerInfoPageList(Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 3212
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_28
    return-void

    .line 3209
    :catch_29
    move-exception v1

    .line 3210
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public getProgramSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;
    .registers 17
    .param p1, "categoryId"    # Ljava/lang/String;
    .param p2, "keyword"    # Ljava/lang/String;
    .param p3, "calcDimension"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyProgramSearched;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4342
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4347
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 4342
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyService;->getProgramSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 4351
    :goto_1b
    return-object v0

    .line 4348
    :catch_1c
    move-exception v10

    .line 4349
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4351
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getProgramSearchedV1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lretrofit2/Call;
    .registers 17
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "categoryId"    # Ljava/lang/String;
    .param p3, "sort"    # Ljava/lang/String;
    .param p4, "page"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyProgramSearchedV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4357
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4360
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 4357
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getProgramSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v0

    .line 4364
    :goto_1b
    return-object v0

    .line 4361
    :catch_1c
    move-exception v10

    .line 4362
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4364
    const/4 v0, 0x0

    goto :goto_1b
.end method

.method public getProgramsByRadioId(II)Lretrofit2/Call;
    .registers 11
    .param p1, "radioId"    # I
    .param p2, "weekday"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyProgramsByRadioId;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4271
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4275
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4271
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyService;->getProgramsByRadioId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 4279
    :goto_18
    return-object v0

    .line 4276
    :catch_19
    move-exception v7

    .line 4277
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4279
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getProgramsByRadioIdV1(ILjava/lang/String;)Lretrofit2/Call;
    .registers 11
    .param p1, "radioId"    # I
    .param p2, "weekday"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyProgramsByRadioIdV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4285
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4288
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    move-object v6, p2

    .line 4285
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getProgramsByRadioId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_16

    move-result-object v0

    .line 4292
    :goto_15
    return-object v0

    .line 4289
    :catch_16
    move-exception v7

    .line 4290
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4292
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public getPushService()Lcom/qinggan/tsp/service/QGPushService;
    .registers 3

    .prologue
    .line 483
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGPushService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGPushService;

    return-object v0
.end method

.method public getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;
    .registers 3

    .prologue
    .line 291
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getGwmService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    return-object v0
.end method

.method public getQGAdviseService()Lcom/qinggan/tsp/service/QGAdviseService;
    .registers 3

    .prologue
    .line 301
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGAdviseService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGAdviseService;

    return-object v0
.end method

.method public getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;
    .registers 3

    .prologue
    .line 256
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGAppStoreService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGAppStoreService;

    return-object v0
.end method

.method public getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;
    .registers 3

    .prologue
    .line 210
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGAuthService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGAuthService;

    return-object v0
.end method

.method public getQGChargeStationService()Lcom/qinggan/tsp/service/QGChargeStationService;
    .registers 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGChargeStationService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGChargeStationService;

    return-object v0
.end method

.method public getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;
    .registers 3

    .prologue
    .line 226
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGDeviceService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGDeviceService;

    return-object v0
.end method

.method public getQGECOService()Lcom/qinggan/tsp/service/QGECOService;
    .registers 3

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGECOService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGECOService;

    return-object v0
.end method

.method public getQGEHandBookService()Lcom/qinggan/tsp/service/QGEHandBookService;
    .registers 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGEHandBookService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGEHandBookService;

    return-object v0
.end method

.method public getQGFotaUpdateService()Lcom/qinggan/tsp/service/QGFotaUpgradeService;
    .registers 3

    .prologue
    .line 218
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGFotaUpgradeService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGFotaUpgradeService;

    return-object v0
.end method

.method public getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;
    .registers 3

    .prologue
    .line 252
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGInformationService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGInformationService;

    return-object v0
.end method

.method public getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;
    .registers 3

    .prologue
    .line 3615
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGMaintenanceService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGMaintenanceService;

    return-object v0
.end method

.method public getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;
    .registers 3

    .prologue
    .line 205
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGRemoteDebug;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGRemoteDebug;

    return-object v0
.end method

.method public getQGScenceService()Lcom/qinggan/tsp/service/QGScenceService;
    .registers 3

    .prologue
    .line 231
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGScenceService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGScenceService;

    return-object v0
.end method

.method public getQGSoulMateService()Lcom/qinggan/tsp/service/QGSoulMateService;
    .registers 3

    .prologue
    .line 235
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGSoulMateService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGSoulMateService;

    return-object v0
.end method

.method public getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;
    .registers 3

    .prologue
    .line 5360
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGTencentService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGTencentService;

    return-object v0
.end method

.method public getQGTestDriveService()Lcom/qinggan/tsp/service/QGTestDriveService;
    .registers 3

    .prologue
    .line 305
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGTestDriveService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGTestDriveService;

    return-object v0
.end method

.method public getQGTrackingService()Lcom/qinggan/tsp/service/QGTrackingService;
    .registers 3

    .prologue
    .line 222
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGTrackingService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getTrackingService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGTrackingService;

    return-object v0
.end method

.method public getQGUSIService()Lcom/qinggan/tsp/service/QGUSIService;
    .registers 3

    .prologue
    .line 248
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGUSIService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGUSIService;

    return-object v0
.end method

.method public getQGUpdateService()Lcom/qinggan/tsp/service/QGUpdateService;
    .registers 3

    .prologue
    .line 214
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGUpdateService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGUpdateService;

    return-object v0
.end method

.method public getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;
    .registers 3

    .prologue
    .line 273
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGUserFavoriteService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGUserFavoriteService;

    return-object v0
.end method

.method public getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;
    .registers 3

    .prologue
    .line 278
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    return-object v0
.end method

.method public getQGUserHistoryService()Lcom/qinggan/tsp/service/QGUserHistoryWordService;
    .registers 3

    .prologue
    .line 1526
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGUserHistoryWordService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGUserHistoryWordService;

    return-object v0
.end method

.method public getQGUserSettingService()Lcom/qinggan/tsp/service/QGUserSettingService;
    .registers 3

    .prologue
    .line 282
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGUserSettingService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGUserSettingService;

    return-object v0
.end method

.method public getQGVCMService()Lcom/qinggan/tsp/service/QGVCMService;
    .registers 3

    .prologue
    .line 239
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGVCMService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGVCMService;

    return-object v0
.end method

.method public getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;
    .registers 3

    .prologue
    .line 197
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGVoiceNoteService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGVoiceNoteService;

    return-object v0
.end method

.method public getQGVoiceOrFacePrint()Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;
    .registers 3

    .prologue
    .line 201
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;

    return-object v0
.end method

.method public getQGVoicePrint()Lcom/qinggan/tsp/service/QGVoicePrint;
    .registers 3

    .prologue
    .line 243
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGVoicePrint;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGVoicePrint;

    return-object v0
.end method

.method public getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;
    .registers 3

    .prologue
    .line 4131
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGWalletNewService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGWalletNewService;

    return-object v0
.end method

.method public getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;
    .registers 3

    .prologue
    .line 3590
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGWalletService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGWalletService;

    return-object v0
.end method

.method public getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;
    .registers 3

    .prologue
    .line 3594
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    return-object v0
.end method

.method public getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;
    .registers 3

    .prologue
    .line 185
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGXmlyService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGXmlyService;

    return-object v0
.end method

.method public getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;
    .registers 3

    .prologue
    .line 193
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getCmsService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    return-object v0
.end method

.method public getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;
    .registers 3

    .prologue
    .line 189
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGXmlyV1Service;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGXmlyV1Service;

    return-object v0
.end method

.method public getQRLoginCode(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/QRLoginCodeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5082
    .local p1, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/QRLoginCodeResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.GET_QRCODE_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5083
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/QRLoginCodeRequest;

    invoke-direct {v4}, Lcom/qinggan/tsp/models/gwm/QRLoginCodeRequest;-><init>()V

    .line 5084
    .local v4, "qrLoginCodeRequest":Lcom/qinggan/tsp/models/gwm/QRLoginCodeRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5085
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5086
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getQRLoginCode, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5087
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->getQrLoginCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5091
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "qrLoginCodeRequest":Lcom/qinggan/tsp/models/gwm/QRLoginCodeRequest;
    :goto_39
    return-void

    .line 5088
    :catch_3a
    move-exception v0

    .line 5089
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public getQRRandomCode(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "pdsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/RandomQRCodeResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1619
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/RandomQRCodeResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVCMService()Lcom/qinggan/tsp/service/QGVCMService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGVCMService;->getQRRandomCode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1623
    :goto_b
    return-void

    .line 1620
    :catch_c
    move-exception v0

    .line 1621
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getQingAiAppId(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/QingAiAppIdBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 504
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/soulmate/QingAiAppIdBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->getQingAiAppId(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 508
    :goto_b
    return-void

    .line 505
    :catch_c
    move-exception v0

    .line 506
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getQrLoginResult(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "qrCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/QrLoginResultResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5101
    .local p2, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/QrLoginResultResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.QRCODE_LOGIN_RESULT_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5102
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/QRLoginResultRequest;

    invoke-direct {v4, p1}, Lcom/qinggan/tsp/models/gwm/QRLoginResultRequest;-><init>(Ljava/lang/String;)V

    .line 5103
    .local v4, "qrLoginResultRequest":Lcom/qinggan/tsp/models/gwm/QRLoginResultRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5104
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5105
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getQrLoginResult, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5106
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->getQRLoginResult(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5110
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "qrLoginResultRequest":Lcom/qinggan/tsp/models/gwm/QRLoginResultRequest;
    :goto_39
    return-void

    .line 5107
    :catch_3a
    move-exception v0

    .line 5108
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public getRadiosByProvince(IIII)Lretrofit2/Call;
    .registers 15
    .param p1, "radioType"    # I
    .param p2, "provinceCode"    # I
    .param p3, "page"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyRadiosByProvince;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4237
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4241
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4242
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 4237
    invoke-interface/range {v0 .. v8}, Lcom/qinggan/tsp/service/QGXmlyService;->getRadiosByProvince(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 4246
    :goto_20
    return-object v0

    .line 4243
    :catch_21
    move-exception v9

    .line 4244
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 4246
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getRadiosByProvinceV1(III)Lretrofit2/Call;
    .registers 13
    .param p1, "areaCode"    # I
    .param p2, "page"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyRadiosByProvinceV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4252
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4254
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 4252
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getRadiosByProvince(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1d

    move-result-object v0

    .line 4258
    :goto_1c
    return-object v0

    .line 4255
    :catch_1d
    move-exception v8

    .line 4256
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4258
    const/4 v0, 0x0

    goto :goto_1c
.end method

.method public getRanksIndexList(I)Lcom/qinggan/tsp/models/xmly/XmlyAlbumByRanksIndexList;
    .registers 9
    .param p1, "radioType"    # I

    .prologue
    .line 2605
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 2609
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2605
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getRanksIndexList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/models/xmly/XmlyAlbumByRanksIndexList;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1b

    .line 2613
    :goto_1a
    return-object v0

    .line 2610
    :catch_1b
    move-exception v6

    .line 2611
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 2613
    const/4 v0, 0x0

    goto :goto_1a
.end method

.method public getRanksIndexList(ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "radioType"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyAlbumByRanksIndexList;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2621
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/xmly/XmlyAlbumByRanksIndexList;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 2626
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 2621
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getRanksIndexList(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_18

    .line 2630
    :goto_17
    return-void

    .line 2627
    :catch_18
    move-exception v6

    .line 2628
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_17
.end method

.method public getRefreshTokenStatus(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .param p1, "refreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/RefreshTokenStatusBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1064
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/RefreshTokenStatusBean;>;"
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/qinggan/tsp/service/QGAuthService;->getTokenStatus(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1065
    return-void
.end method

.method public getResource(Ljava/lang/String;)Lcom/qinggan/tsp/models/skin/ResourceBean;
    .registers 4
    .param p1, "sid"    # Ljava/lang/String;

    .prologue
    .line 2656
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgSkinService()Lcom/qinggan/tsp/service/QGSkinService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGSkinService;->getResource(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/skin/ResourceBean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2660
    :goto_e
    return-object v1

    .line 2657
    :catch_f
    move-exception v0

    .line 2658
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2660
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public getScanQrCodeResult(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/TencentLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5385
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/TencentLoginResult;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5387
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "vin"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5388
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5389
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5390
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->getScanQrCodeResult(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_28} :catch_29

    .line 5394
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_28
    return-void

    .line 5391
    :catch_29
    move-exception v1

    .line 5392
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public getScenceData(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/scence/ScenceResultBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1416
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/scence/ScenceResultBean;>;"
    :try_start_0
    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v3}, Lcom/qinggan/tsp/InitManager;->getRetrofitBuilder()Lretrofit2/Retrofit$Builder;

    move-result-object v0

    .line 1417
    .local v0, "builder":Lretrofit2/Retrofit$Builder;
    invoke-static {}, Lretrofit2/converter/gson/GsonConverterFactory;->create()Lretrofit2/converter/gson/GsonConverterFactory;

    move-result-object v3

    invoke-virtual {v0, v3}, Lretrofit2/Retrofit$Builder;->addConverterFactory(Lretrofit2/Converter$Factory;)Lretrofit2/Retrofit$Builder;

    .line 1418
    const-string v2, "http://qingai-voice-gw.uat.pateo.com.cn"

    .line 1419
    .local v2, "url":Ljava/lang/String;
    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    iget-object v3, v3, Lcom/qinggan/tsp/InitManager;->baseUrl:Ljava/lang/String;

    const-string v4, "-pro"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 1420
    const-string v2, "http://qingaivoicegw-pro.pateo.com.cn"

    .line 1422
    :cond_1d
    invoke-virtual {v0, v2}, Lretrofit2/Retrofit$Builder;->baseUrl(Ljava/lang/String;)Lretrofit2/Retrofit$Builder;

    .line 1423
    invoke-virtual {v0}, Lretrofit2/Retrofit$Builder;->build()Lretrofit2/Retrofit;

    move-result-object v3

    const-class v4, Lcom/qinggan/tsp/service/QGScenceService;

    invoke-virtual {v3, v4}, Lretrofit2/Retrofit;->create(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/tsp/service/QGScenceService;

    invoke-interface {v3}, Lcom/qinggan/tsp/service/QGScenceService;->getScenceData()Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 1427
    .end local v0    # "builder":Lretrofit2/Retrofit$Builder;
    .end local v2    # "url":Ljava/lang/String;
    :goto_33
    return-void

    .line 1424
    :catch_34
    move-exception v1

    .line 1425
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public getSearchSuggest(Ljava/lang/String;)Lcom/qinggan/tsp/models/skin/SuggestBean;
    .registers 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 2672
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgSkinService()Lcom/qinggan/tsp/service/QGSkinService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGSkinService;->getSearchSuggest(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/skin/SuggestBean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 2676
    :goto_e
    return-object v1

    .line 2673
    :catch_f
    move-exception v0

    .line 2674
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 2676
    const/4 v1, 0x0

    goto :goto_e
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
    .line 152
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getShutDownDays(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/ActivationDays;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2233
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/ActivationDays;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->getShutDownDays(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2237
    :goto_b
    return-void

    .line 2234
    :catch_c
    move-exception v0

    .line 2235
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getSimProfileByVin(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/SimProfile;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3967
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/SimProfile;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->getSimProfileByVin(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3971
    :goto_b
    return-void

    .line 3968
    :catch_c
    move-exception v0

    .line 3969
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getSmsCode(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 15
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "type"    # I
    .param p3, "securityPassword"    # Ljava/lang/String;
    .param p4, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/GetSmsCodeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5019
    .local p5, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/GetSmsCodeResponse;>;"
    :try_start_0
    const-string v6, "GW.HU.SSO_SMSCODE_GET"

    invoke-virtual {p0, v6}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v2

    .line 5021
    .local v2, "header":Lcom/qinggan/tsp/models/gwm/Header;
    const/4 v6, 0x2

    if-eq p2, v6, :cond_3d

    .line 5022
    new-instance v1, Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;

    invoke-direct {v1, p1, p2}, Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;-><init>(Ljava/lang/String;I)V

    .line 5027
    .local v1, "getSmsCodeRequest":Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;
    :goto_e
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v2, v1}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5028
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v6, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v6, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5029
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v6, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getSmsCode, paramsString = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5030
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v6

    invoke-interface {v6, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->getSmsCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v6

    invoke-virtual {p0, v6, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 5034
    .end local v1    # "getSmsCodeRequest":Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;
    .end local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_3c
    return-void

    .line 5024
    .restart local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    :cond_3d
    invoke-static {p3}, Lcom/qinggan/tsp/util/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 5025
    .local v5, "securityPasswordMd5":Ljava/lang/String;
    new-instance v1, Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;

    invoke-direct {v1, p1, p2, v5, p4}, Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47

    .restart local v1    # "getSmsCodeRequest":Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;
    goto :goto_e

    .line 5031
    .end local v1    # "getSmsCodeRequest":Lcom/qinggan/tsp/models/gwm/GetSmsCodeRequest;
    .end local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v5    # "securityPasswordMd5":Ljava/lang/String;
    :catch_47
    move-exception v0

    .line 5032
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3c
.end method

.method public getSoulMateCloudService()Lcom/qinggan/tsp/service/SoulMateCloudService;
    .registers 3

    .prologue
    .line 511
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/SoulMateCloudService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getSoulMateCloudService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/SoulMateCloudService;

    return-object v0
.end method

.method public getSoulMateSceneList(Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "getSceneListReq"    # Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/soulmate/ListUserDisplay;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 488
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/soulmate/ListUserDisplay;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getSoulMateCloudService()Lcom/qinggan/tsp/service/SoulMateCloudService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/SoulMateCloudService;->getListUserDisplay(Lcom/qinggan/tsp/models/soulmate/GetSceneListReq;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 492
    :goto_b
    return-void

    .line 489
    :catch_c
    move-exception v0

    .line 490
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getSuNingContractUrl(Lcom/qinggan/tsp/models/account/ReqSuNingContractBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "reqSuNingContractBean"    # Lcom/qinggan/tsp/models/account/ReqSuNingContractBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/ReqSuNingContractBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/SuNingInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 879
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/SuNingInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getSuNingContractUrl(Lcom/qinggan/tsp/models/account/ReqSuNingContractBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 883
    :goto_b
    return-void

    .line 880
    :catch_c
    move-exception v0

    .line 881
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getSuNingNewQrInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/SuNingNewInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 813
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/SuNingNewInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getSuNingNewQrInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 817
    :goto_b
    return-void

    .line 814
    :catch_c
    move-exception v0

    .line 815
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getSuNingQrInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/SuNingInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 799
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/SuNingInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getSuNingQrInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 803
    :goto_b
    return-void

    .line 800
    :catch_c
    move-exception v0

    .line 801
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getSupportCity(ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "level"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/CityBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2142
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/CityBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2143
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Lcom/qinggan/tsp/service/QGCPSPService;->getSupportCity(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 2147
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_15
    return-void

    .line 2144
    :catch_16
    move-exception v1

    .line 2145
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public getTencentLoginQrCode(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/TencentQRCodeResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5371
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/TencentQRCodeResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGTencentService;->getTencentLoginQrCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 5375
    :goto_b
    return-void

    .line 5372
    :catch_c
    move-exception v0

    .line 5373
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getThirdOauthInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ThirdOauthInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 670
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ThirdOauthInfoBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 671
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->oauthInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 678
    :goto_11
    return-void

    .line 673
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->oauthInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 675
    :catch_1e
    move-exception v0

    .line 676
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getThirdQrInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/QRInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 652
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/QRInfoBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 653
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->getDeviceCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 660
    :goto_11
    return-void

    .line 655
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->getDeviceCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 657
    :catch_1e
    move-exception v0

    .line 658
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getTinkerService()Lcom/qinggan/tsp/service/QGTinkerService;
    .registers 3

    .prologue
    .line 286
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    const-class v1, Lcom/qinggan/tsp/service/QGTinkerService;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/InitManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/service/QGTinkerService;

    return-object v0
.end method

.method public getTinkerStatus(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/tinker/TinkerStateRsp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4138
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/tinker/TinkerStateRsp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getTinkerService()Lcom/qinggan/tsp/service/QGTinkerService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGTinkerService;->getTinkerStatus()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4142
    :goto_b
    return-void

    .line 4139
    :catch_c
    move-exception v0

    .line 4140
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getToken()Lcom/qinggan/tsp/models/TokenBean;
    .registers 3

    .prologue
    .line 1050
    sget-object v1, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/qinggan/tsp/manager/TokenManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/manager/TokenManager;

    move-result-object v0

    .line 1051
    .local v0, "tokenManager":Lcom/qinggan/tsp/manager/TokenManager;
    if-nez v0, :cond_a

    .line 1052
    const/4 v1, 0x0

    .line 1054
    :goto_9
    return-object v1

    :cond_a
    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->getTokenBeanCache()Lcom/qinggan/tsp/models/TokenBean;

    move-result-object v1

    goto :goto_9
.end method

.method public getTokenUserInfo()Lcom/qinggan/tsp/models/TokenUserInfo;
    .registers 2

    .prologue
    .line 1073
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/tsp/InitManager;->getTokenUserInfo()Lcom/qinggan/tsp/models/TokenUserInfo;

    move-result-object v0

    return-object v0
.end method

.method public getTracksByAlbum(IIII)Lretrofit2/Call;
    .registers 15
    .param p1, "albumId"    # I
    .param p2, "calcDimension"    # I
    .param p3, "page"    # I
    .param p4, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyTracksByAlbum;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4199
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4201
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4202
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 4199
    invoke-interface/range {v0 .. v8}, Lcom/qinggan/tsp/service/QGXmlyService;->getTracksByAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_21

    move-result-object v0

    .line 4206
    :goto_20
    return-object v0

    .line 4203
    :catch_21
    move-exception v9

    .line 4204
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 4206
    const/4 v0, 0x0

    goto :goto_20
.end method

.method public getTracksByAlbumV1(ILjava/lang/String;IILjava/lang/String;)Lretrofit2/Call;
    .registers 17
    .param p1, "albumId"    # I
    .param p2, "sort"    # Ljava/lang/String;
    .param p3, "page"    # I
    .param p4, "count"    # I
    .param p5, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyTracksByAlbumV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4213
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4215
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4216
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    move-object v6, p2

    move-object/from16 v9, p5

    .line 4213
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getTracksByAlbum(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_20

    move-result-object v0

    .line 4220
    :goto_1f
    return-object v0

    .line 4217
    :catch_20
    move-exception v10

    .line 4218
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4220
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getTracksSearched(Ljava/lang/String;II)Lcom/qinggan/tsp/models/xmly/XmlyTracksSearched;
    .registers 13
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "count"    # I

    .prologue
    .line 2577
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 2581
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    .line 2577
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyService;->getTrackSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/models/xmly/XmlyTracksSearched;
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1f} :catch_20

    .line 2585
    :goto_1f
    return-object v0

    .line 2582
    :catch_20
    move-exception v8

    .line 2583
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 2585
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public getTracksSearched(Ljava/lang/String;IILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 14
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyTracksSearched;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2592
    .local p4, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/xmly/XmlyTracksSearched;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 2596
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, p1

    .line 2592
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyService;->getTrackSearched(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2600
    :goto_1c
    return-void

    .line 2597
    :catch_1d
    move-exception v8

    .line 2598
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1c
.end method

.method public getTracksSearchedByCat(ILjava/lang/String;III)Lretrofit2/Call;
    .registers 17
    .param p1, "categoryId"    # I
    .param p2, "keyWord"    # Ljava/lang/String;
    .param p3, "calcDimension"    # I
    .param p4, "page"    # I
    .param p5, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "III)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyTracksSearched;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4469
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4474
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4475
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    .line 4476
    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    .line 4477
    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    move-object v5, p2

    .line 4469
    invoke-interface/range {v0 .. v9}, Lcom/qinggan/tsp/service/QGXmlyService;->getTrackSearchedByCat(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_22

    move-result-object v0

    .line 4481
    :goto_21
    return-object v0

    .line 4478
    :catch_22
    move-exception v10

    .line 4479
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 4481
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public getTspConfig(I)Lcom/qinggan/tsp/config/TspConfigBean;
    .registers 3
    .param p1, "tspType"    # I

    .prologue
    .line 148
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->getTspConfig(I)Lcom/qinggan/tsp/config/TspConfigBean;

    move-result-object v0

    return-object v0
.end method

.method public getUserFavoriteByType(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "deviceType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/UserFavoriteRespStandard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2011
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/UserFavoriteRespStandard;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2012
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;->getUserFavoriteByType(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2019
    :goto_11
    return-void

    .line 2014
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->getUserFavoriteByType(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 2016
    :catch_1e
    move-exception v0

    .line 2017
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getUserFavoriteBydeviceType(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "deviceType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/UserFavoriteResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2029
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/UserFavoriteResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 2030
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;->getUserFavoriteBydeviceType(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2037
    :goto_11
    return-void

    .line 2032
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->getUserFavoriteBydeviceType(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 2034
    :catch_1e
    move-exception v0

    .line 2035
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getUserHistory(Ljava/lang/String;ILjava/lang/Boolean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "searchType"    # Ljava/lang/String;
    .param p2, "count"    # I
    .param p3, "distinct"    # Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/Boolean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/UserHistoryRespStandard;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1543
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/UserHistoryRespStandard;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserHistoryService()Lcom/qinggan/tsp/service/QGUserHistoryWordService;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, p1, v2, v3}, Lcom/qinggan/tsp/service/QGUserHistoryWordService;->getUserHistoryByType(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14

    .line 1547
    :goto_13
    return-void

    .line 1544
    :catch_14
    move-exception v0

    .line 1545
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method

.method public getUserIdSso(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/GetUserIdSsoResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5201
    .local p2, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/GetUserIdSsoResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.SSO_GET_USERID"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v2

    .line 5202
    .local v2, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v1, Lcom/qinggan/tsp/models/gwm/GetUserIdSsoRequest;

    invoke-direct {v1, p1}, Lcom/qinggan/tsp/models/gwm/GetUserIdSsoRequest;-><init>(Ljava/lang/String;)V

    .line 5203
    .local v1, "getUserIdSsoRequest":Lcom/qinggan/tsp/models/gwm/GetUserIdSsoRequest;
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v2, v1}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5204
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5205
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getUserIdSso, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5206
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->getUserIdSso(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5210
    .end local v1    # "getUserIdSsoRequest":Lcom/qinggan/tsp/models/gwm/GetUserIdSsoRequest;
    .end local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_39
    return-void

    .line 5207
    :catch_3a
    move-exception v0

    .line 5208
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public getUserMusicHistory(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/MusicHistoryResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2042
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/MusicHistoryResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->getUserMusicHistory()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2046
    :goto_b
    return-void

    .line 2043
    :catch_c
    move-exception v0

    .line 2044
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public getUserSettingPreference(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceType"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/setting/UserSettingResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2098
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/setting/UserSettingResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserSettingService()Lcom/qinggan/tsp/service/QGUserSettingService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGUserSettingService;->getUserSettingByType(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 2102
    :goto_b
    return-void

    .line 2099
    :catch_c
    move-exception v0

    .line 2100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getUtcTimeOnService()Ljava/lang/String;
    .registers 6

    .prologue
    .line 2375
    const-string v3, ""

    .line 2377
    .local v3, "time":Ljava/lang/String;
    :try_start_2
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v4

    invoke-interface {v4}, Lcom/qinggan/tsp/service/QGAuthService;->utcTime()Lretrofit2/Call;

    move-result-object v1

    .line 2378
    .local v1, "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/lang/String;

    move-object v3, v0

    .line 2379
    invoke-static {v3}, Lcom/qinggan/tsp/TspManager;->standTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_15} :catch_17

    move-result-object v3

    .line 2383
    .end local v1    # "call":Lretrofit2/Call;, "Lretrofit2/Call<Ljava/lang/String;>;"
    :goto_16
    return-object v3

    .line 2380
    :catch_17
    move-exception v2

    .line 2381
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public getVehicleInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/device/VehicleInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1490
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/device/VehicleInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGDeviceService;->getVehicleInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1494
    :goto_b
    return-void

    .line 1491
    :catch_c
    move-exception v0

    .line 1492
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getViolateAllCities(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 14
    .param p1, "plate"    # Ljava/lang/String;
    .param p2, "carType"    # Ljava/lang/String;
    .param p3, "vin"    # Ljava/lang/String;
    .param p4, "engine"    # Ljava/lang/String;
    .param p5, "mobile"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/ViolateBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2364
    .local p6, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/ViolateBean;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGCPSPService;->violate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 2369
    :goto_10
    return-void

    .line 2366
    :catch_11
    move-exception v6

    .line 2367
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public getVoiceNote(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "sid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/voiceNote/VoiceNoteBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3124
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/voiceNote/VoiceNoteBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGVoiceNoteService;->getVoiceNote(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3129
    :goto_b
    return-void

    .line 3125
    :catch_c
    move-exception v0

    .line 3126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getWapContractInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "tradeType"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .param p3, "signUid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResPonseSuNingSignInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 909
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResPonseSuNingSignInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGAccountService;->getWapContractInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 913
    :goto_b
    return-void

    .line 910
    :catch_c
    move-exception v0

    .line 911
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getWeatherIndex(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/WeatherIndexBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2205
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/WeatherIndexBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 2207
    .local v0, "deviceType":Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v2

    if-eqz v2, :cond_20

    .line 2208
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->getWeatherIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 2215
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_1f
    return-void

    .line 2210
    .restart local v0    # "deviceType":Ljava/lang/String;
    :cond_20
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->getWeatherIndex(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    goto :goto_1f

    .line 2212
    .end local v0    # "deviceType":Ljava/lang/String;
    :catch_34
    move-exception v1

    .line 2213
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1f
.end method

.method public getXiaoMiNewQrInfo(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .param p2, "successUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/SuNingNewInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 865
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/SuNingNewInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->getXiaoMiNewQrInfo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 869
    :goto_b
    return-void

    .line 866
    :catch_c
    move-exception v0

    .line 867
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public getXmlyHotWords(Ljava/lang/String;)Lretrofit2/Call;
    .registers 9
    .param p1, "topLength"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyHotWords;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4825
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 4826
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getXmlyHotWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4843
    :goto_17
    return-object v0

    .line 4833
    :cond_18
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getXmlyHotWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_2a

    move-result-object v0

    goto :goto_17

    .line 4840
    :catch_2a
    move-exception v6

    .line 4841
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4843
    const/4 v0, 0x0

    goto :goto_17
.end method

.method public getXmlyHotWordsV1(II)Lretrofit2/Call;
    .registers 11
    .param p1, "page"    # I
    .param p2, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyHotWordsV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4848
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4851
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 4848
    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getXmlyHotWords(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_17} :catch_19

    move-result-object v0

    .line 4855
    :goto_18
    return-object v0

    .line 4852
    :catch_19
    move-exception v7

    .line 4853
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4855
    const/4 v0, 0x0

    goto :goto_18
.end method

.method public getXmlyOrderNo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 10
    .param p1, "priceType"    # Ljava/lang/String;
    .param p2, "payContent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyOrderNo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4668
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 4669
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getXmlyOrderNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4688
    :goto_16
    return-object v0

    .line 4677
    :cond_17
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getXmlyOrderNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_28

    move-result-object v0

    goto :goto_16

    .line 4685
    :catch_28
    move-exception v6

    .line 4686
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4688
    const/4 v0, 0x0

    goto :goto_16
.end method

.method public getXmlyProfileUserInfo(Ljava/lang/String;)Lretrofit2/Call;
    .registers 9
    .param p1, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlyProfileUserInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4793
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyService;->getXmlyProfileUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 4802
    :goto_11
    return-object v0

    .line 4799
    :catch_12
    move-exception v6

    .line 4800
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4802
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getXmlyProfileUserInfoV1(Ljava/lang/String;)Lretrofit2/Call;
    .registers 9
    .param p1, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlyProfileUserInfoV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4807
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->getXmlyProfileUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 4814
    :goto_11
    return-object v0

    .line 4811
    :catch_12
    move-exception v6

    .line 4812
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4814
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getZFBQrCode(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 6
    .param p1, "xima_order_no"    # Ljava/lang/String;
    .param p2, "methodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/ZFBQrCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4725
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 4726
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->getZFBQrCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    .line 4741
    :goto_10
    return-object v1

    .line 4732
    :cond_11
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    invoke-interface {v1, v2, p1, p2}, Lcom/qinggan/tsp/service/QGXmlyService;->getZFBQrCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1a} :catch_1c

    move-result-object v1

    goto :goto_10

    .line 4738
    :catch_1c
    move-exception v0

    .line 4739
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 4741
    const/4 v1, 0x0

    goto :goto_10
.end method

.method public getZFBQrCodeV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    .registers 12
    .param p1, "priceType"    # Ljava/lang/String;
    .param p2, "payContent"    # Ljava/lang/String;
    .param p3, "methodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/ZFBQrCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4702
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v6, p3

    invoke-interface/range {v0 .. v6}, Lcom/qinggan/tsp/service/QGXmlyService;->getZFBQrCodeV2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_12

    move-result-object v0

    .line 4713
    :goto_11
    return-object v0

    .line 4710
    :catch_12
    move-exception v7

    .line 4711
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 4713
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public getcityfromlongitude(DDLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/GPSInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1168
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/GPSInfoBean;>;"
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v3, "getcityfromlongitude, enter...."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1169
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getcityfromlongitude, enter...longitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", latitude="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1172
    :try_start_29
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1173
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v0, v3, v4}, Lcom/qinggan/tsp/service/QGCPSPService;->getcityfromlongitude(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_42
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_42} :catch_43

    .line 1177
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_42
    return-void

    .line 1174
    :catch_43
    move-exception v1

    .line 1175
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_42
.end method

.method public guestLogin(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/GuestLoginResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5064
    .local p1, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/GuestLoginResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.GUEST_LOGIN_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v2

    .line 5065
    .local v2, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v1, Lcom/qinggan/tsp/models/gwm/GuestLoginRequest;

    const-string v5, "guest"

    invoke-direct {v1, v5}, Lcom/qinggan/tsp/models/gwm/GuestLoginRequest;-><init>(Ljava/lang/String;)V

    .line 5066
    .local v1, "guestLoginRequest":Lcom/qinggan/tsp/models/gwm/GuestLoginRequest;
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v2, v1}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5067
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5068
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "guestLogin, paramsString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5069
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->guestLogin(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 5073
    .end local v1    # "guestLoginRequest":Lcom/qinggan/tsp/models/gwm/GuestLoginRequest;
    .end local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_3b
    return-void

    .line 5070
    :catch_3c
    move-exception v0

    .line 5071
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public init(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$OnInitDetailListener;)V
    .registers 7
    .param p1, "pdsn"    # Ljava/lang/String;
    .param p2, "initListener"    # Lcom/qinggan/tsp/TspManager$OnInitDetailListener;

    .prologue
    .line 1030
    iput-object p1, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 1031
    if-eqz p2, :cond_11

    .line 1032
    const/4 v0, 0x0

    new-instance v1, Lcom/qinggan/tsp/InitError;

    sget-object v2, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->OVER_SEAN_NOT_SUPPROT:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v3, "oversean not support https"

    invoke-direct {v1, v2, v3}, Lcom/qinggan/tsp/InitError;-><init>(Lcom/qinggan/tsp/restmiddle/RestError$Kind;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/qinggan/tsp/TspManager$OnInitDetailListener;->onResult(ZLcom/qinggan/tsp/InitError;)V

    .line 1034
    :cond_11
    return-void
.end method

.method public initGwmParams(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "sn"    # Ljava/lang/String;
    .param p2, "pdsn"    # Ljava/lang/String;
    .param p3, "vin"    # Ljava/lang/String;
    .param p4, "sign"    # Ljava/lang/String;
    .param p5, "id"    # Ljava/lang/String;

    .prologue
    .line 4946
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 4947
    iput-object p4, p0, Lcom/qinggan/tsp/TspManager;->gwmSign:Ljava/lang/String;

    .line 4950
    :cond_8
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 4951
    iput-object p5, p0, Lcom/qinggan/tsp/TspManager;->gwmId:Ljava/lang/String;

    .line 4954
    :cond_10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 4955
    iput-object p2, p0, Lcom/qinggan/tsp/TspManager;->gwmPdsn:Ljava/lang/String;

    .line 4958
    :cond_18
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 4959
    iput-object p1, p0, Lcom/qinggan/tsp/TspManager;->gwmSn:Ljava/lang/String;

    .line 4962
    :cond_20
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_28

    .line 4963
    iput-object p3, p0, Lcom/qinggan/tsp/TspManager;->gwmVin:Ljava/lang/String;

    .line 4965
    :cond_28
    return-void
.end method

.method public isExpired()Z
    .registers 2

    .prologue
    .line 339
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    iget-object v0, v0, Lcom/qinggan/tsp/InitManager;->tokenManager:Lcom/qinggan/tsp/manager/TokenManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/manager/TokenManager;->isExpired()Z

    move-result v0

    return v0
.end method

.method public isLimitPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 14
    .param p1, "plateNumber"    # Ljava/lang/String;
    .param p2, "longitude"    # Ljava/lang/String;
    .param p3, "latitude"    # Ljava/lang/String;
    .param p4, "ruleFlag"    # Ljava/lang/String;
    .param p5, "ruleTypeFlag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/LimitPropmt;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1259
    .local p6, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/LimitPropmt;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 1260
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->isLimitPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1270
    :goto_16
    return-void

    .line 1263
    :cond_17
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGCPSPService;->isLimitPrompt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_27} :catch_28

    goto :goto_16

    .line 1266
    :catch_28
    move-exception v6

    .line 1267
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_16
.end method

.method public limitByCarNo(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "cityName"    # Ljava/lang/String;
    .param p2, "carNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/LimitByCarNoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1216
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/LimitByCarNoBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1217
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0, p1, p2}, Lcom/qinggan/tsp/service/QGCPSPService;->limitByCarNo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1222
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_11
    return-void

    .line 1218
    :catch_12
    move-exception v1

    .line 1219
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public limitNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "longitude"    # Ljava/lang/String;
    .param p2, "latitude"    # Ljava/lang/String;
    .param p3, "cityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/LimitNumberBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1234
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/LimitNumberBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1235
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0, p1, p2, p3}, Lcom/qinggan/tsp/service/QGCPSPService;->limitNumber(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1240
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_11
    return-void

    .line 1236
    :catch_12
    move-exception v1

    .line 1237
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public logUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 15
    .param p1, "pushMsgId"    # Ljava/lang/String;
    .param p2, "projectId"    # Ljava/lang/String;
    .param p3, "phone"    # Ljava/lang/String;
    .param p4, "urlType"    # Ljava/lang/String;
    .param p5, "pdsn"    # Ljava/lang/String;
    .param p6, "logUrl"    # Ljava/lang/String;
    .param p7, "fileSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3032
    .local p8, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;-><init>()V

    .line 3033
    .local v1, "requestBean":Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setPushMsgId(Ljava/lang/String;)V

    .line 3034
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setProjectId(Ljava/lang/String;)V

    .line 3035
    invoke-virtual {v1, p4}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setUrlType(Ljava/lang/String;)V

    .line 3036
    invoke-virtual {v1, p5}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setPdsn(Ljava/lang/String;)V

    .line 3037
    invoke-virtual {v1, p6}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setUrl(Ljava/lang/String;)V

    .line 3038
    invoke-virtual {v1, p7}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setFileSize(I)V

    .line 3039
    invoke-virtual {v1, p3}, Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;->setPhone(Ljava/lang/String;)V

    .line 3040
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 3041
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGRemoteDebug;->logUp(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p8}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_35} :catch_36

    .line 3046
    .end local v1    # "requestBean":Lcom/qinggan/tsp/models/remoteDebug/LogUpBean;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_35
    return-void

    .line 3042
    :catch_36
    move-exception v0

    .line 3043
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "questionFeedback requestFail: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3044
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_35
.end method

.method public logWrite(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "pushMsgId"    # Ljava/lang/String;
    .param p2, "logUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/OnlineBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3054
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/OnlineBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGRemoteDebug;->logWrite(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3059
    :goto_b
    return-void

    .line 3055
    :catch_c
    move-exception v0

    .line 3056
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "questionFeedback requestFail: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3057
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public logout(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 557
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Ljava/lang/String;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGAuthService;->logout()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 561
    :goto_b
    return-void

    .line 558
    :catch_c
    move-exception v0

    .line 559
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public logout(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 11
    .param p1, "userId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/LogoutResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5182
    .local p2, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/LogoutResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.LOGOUT_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5183
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/LogoutRequest;

    invoke-direct {v2, p1}, Lcom/qinggan/tsp/models/gwm/LogoutRequest;-><init>(Ljava/lang/String;)V

    .line 5184
    .local v2, "logoutRequest":Lcom/qinggan/tsp/models/gwm/LogoutRequest;
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v1, v2}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5185
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5186
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "logout, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5187
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->logout(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5191
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "logoutRequest":Lcom/qinggan/tsp/models/gwm/LogoutRequest;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_39
    return-void

    .line 5188
    :catch_3a
    move-exception v0

    .line 5189
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public logoutAboutTencent(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5468
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5470
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5471
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5472
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5473
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5474
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->tencentLoginOut(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2f} :catch_30

    .line 5478
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_2f
    return-void

    .line 5475
    :catch_30
    move-exception v1

    .line 5476
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public logoutGlobalToken()V
    .registers 2

    .prologue
    .line 1069
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/qinggan/tsp/InitManager;->logoutGlobalToken()V

    .line 1070
    return-void
.end method

.method public memberBookUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .param p1, "serveId"    # Ljava/lang/String;
    .param p2, "bookTime"    # Ljava/lang/String;
    .param p3, "bookPeriod"    # Ljava/lang/String;
    .param p4, "providerName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/park/ParkingLotBook;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1312
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/park/ParkingLotBook;>;"
    :try_start_0
    iget-object v0, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v0}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v1

    .line 1313
    .local v1, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGCPSPService;->memberBookUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    .line 1319
    .end local v1    # "deviceType":Ljava/lang/String;
    :goto_15
    return-void

    .line 1315
    :catch_16
    move-exception v6

    .line 1316
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_15
.end method

.method public memberstatus(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "licence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/MemberStatusResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4124
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/MemberStatusResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->memberstatus(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4128
    :goto_b
    return-void

    .line 4125
    :catch_c
    move-exception v0

    .line 4126
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public online(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "pdsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/OnlineBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3020
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/OnlineBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGRemoteDebug;->online(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3025
    :goto_b
    return-void

    .line 3021
    :catch_c
    move-exception v0

    .line 3022
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "questionFeedback requestFail: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public online(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "pdsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/OnlineBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3003
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/OnlineBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/remoteDebug/OnlineRequestBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/remoteDebug/OnlineRequestBean;-><init>()V

    .line 3004
    .local v1, "requestBean":Lcom/qinggan/tsp/models/remoteDebug/OnlineRequestBean;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/remoteDebug/OnlineRequestBean;->setVin(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/remoteDebug/OnlineRequestBean;->setPdsn(Ljava/lang/String;)V

    .line 3006
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 3007
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGRemoteDebug;->online(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 3012
    .end local v1    # "requestBean":Lcom/qinggan/tsp/models/remoteDebug/OnlineRequestBean;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_26
    return-void

    .line 3008
    :catch_27
    move-exception v0

    .line 3009
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "questionFeedback requestFail: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3010
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public parkhubAutoSignApply(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignApplyResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4092
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignApplyResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->parkhubAutoSignApply(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4096
    :goto_b
    return-void

    .line 4093
    :catch_c
    move-exception v0

    .line 4094
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public parkhubAutoSignApplyV1a(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "licence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignApplyResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4108
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignApplyResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->parkhubAutoSignApplyV1a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4112
    :goto_b
    return-void

    .line 4109
    :catch_c
    move-exception v0

    .line 4110
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public parkhubAutoSignDelete(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignDeleteResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4100
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignDeleteResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGWalletNewService;->parkhubAutoSignDelete()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4104
    :goto_b
    return-void

    .line 4101
    :catch_c
    move-exception v0

    .line 4102
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public parkhubAutoSignDeleteV1a(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "licence"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignDeleteResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4116
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/ParkhubAutoSignDeleteResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->parkhubAutoSignDeleteV1a(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4120
    :goto_b
    return-void

    .line 4117
    :catch_c
    move-exception v0

    .line 4118
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public passwordLogin(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 12
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/LoginGwmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4997
    .local p3, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/LoginGwmResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.SSO_ACCOUNT_LOGIN_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 4998
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/LoginGwmPasswordRequest;

    invoke-direct {v2, p1, p2}, Lcom/qinggan/tsp/models/gwm/LoginGwmPasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4999
    .local v2, "loginGwmPasswordRequest":Lcom/qinggan/tsp/models/gwm/LoginGwmPasswordRequest;
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v1, v2}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5000
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5001
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "passwordLogin, paramsString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5002
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->passwordLogin(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5006
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "loginGwmPasswordRequest":Lcom/qinggan/tsp/models/gwm/LoginGwmPasswordRequest;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_39
    return-void

    .line 5003
    :catch_3a
    move-exception v0

    .line 5004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public payFLowCheck(Lcom/qinggan/tsp/models/wallet/PayFlowCheck37Request;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/PayFlowCheck37Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/PayFlowCheck37Request;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/PayFlowCheck37RespBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4019
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/PayFlowCheck37RespBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->payFLowCheck(Lcom/qinggan/tsp/models/wallet/PayFlowCheck37Request;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4023
    :goto_b
    return-void

    .line 4020
    :catch_c
    move-exception v0

    .line 4021
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public plateBind(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "plateBelongs"    # Ljava/lang/String;
    .param p2, "plateNumber"    # Ljava/lang/String;
    .param p3, "vin"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5525
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    new-instance v2, Lcom/qinggan/tsp/models/account/PlateBindReqBean;

    invoke-direct {v2, p1, p2, p3}, Lcom/qinggan/tsp/models/account/PlateBindReqBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Lcom/qinggan/tsp/service/QGAccountService;->plateBind(Lcom/qinggan/tsp/models/account/PlateBindReqBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11

    .line 5529
    :goto_10
    return-void

    .line 5526
    :catch_11
    move-exception v0

    .line 5527
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_10
.end method

.method public plateUnBind(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "plateBelongs"    # Ljava/lang/String;
    .param p2, "plateNumber"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5539
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->plateUnBind(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 5543
    :goto_b
    return-void

    .line 5540
    :catch_c
    move-exception v0

    .line 5541
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public postGzipTrackingData(Ljava/lang/String;)Z
    .registers 9
    .param p1, "jsonMessage"    # Ljava/lang/String;

    .prologue
    .line 2540
    :try_start_0
    invoke-static {p1}, Lcom/qinggan/tsp/util/GzipUtil;->gzip(Ljava/lang/String;)[B

    move-result-object v2

    .line 2541
    .local v2, "sendMessage":[B
    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->JSON_TYPE:Lokhttp3/MediaType;

    invoke-static {v4, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2542
    .local v0, "body":Lokhttp3/RequestBody;
    sget-object v4, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postGzipTrackingData sendMessage:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2543
    sget-object v4, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postGzipTrackingData sendMessage body:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTrackingService()Lcom/qinggan/tsp/service/QGTrackingService;

    move-result-object v4

    invoke-interface {v4, v0}, Lcom/qinggan/tsp/service/QGTrackingService;->postGzipTrackingData(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;

    .line 2545
    .local v3, "trackingResponseBean":Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;
    sget-object v4, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "postGzipTrackingData trackingResponseBean: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2546
    invoke-virtual {v3}, Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;->getRtn_code()Ljava/lang/String;

    move-result-object v4

    const-string v5, "200"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_6a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6a} :catch_6f

    move-result v4

    if-eqz v4, :cond_73

    .line 2547
    const/4 v4, 0x1

    .line 2552
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "sendMessage":[B
    .end local v3    # "trackingResponseBean":Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;
    :goto_6e
    return v4

    .line 2549
    :catch_6f
    move-exception v1

    .line 2550
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2552
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_73
    const/4 v4, 0x0

    goto :goto_6e
.end method

.method public postTestDriveEnd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "testDriveId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5737
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5738
    .local v1, "req":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "testDriveId"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5739
    const-string v3, "vin"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5740
    const-string v3, "endTime"

    invoke-interface {v1, v3, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5741
    const-string v3, "application/json;charset=UTF-8"

    .line 5742
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 5743
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTestDriveService()Lcom/qinggan/tsp/service/QGTestDriveService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGTestDriveService;->testDriveEnd(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_30

    .line 5747
    .end local v1    # "req":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_2f
    return-void

    .line 5744
    :catch_30
    move-exception v0

    .line 5745
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2f
.end method

.method public postTestDriveStart(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "startTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/drive/TestDriveStartBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5724
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/drive/TestDriveStartBean;>;"
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 5725
    .local v1, "req":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v3, "vin"

    invoke-interface {v1, v3, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5726
    const-string v3, "startTime"

    invoke-interface {v1, v3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5727
    const-string v3, "application/json;charset=UTF-8"

    .line 5728
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 5729
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTestDriveService()Lcom/qinggan/tsp/service/QGTestDriveService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGTestDriveService;->testDriveStart(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b

    .line 5733
    .end local v1    # "req":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_2a
    return-void

    .line 5730
    :catch_2b
    move-exception v0

    .line 5731
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public postTrackingData(Ljava/lang/String;)Z
    .registers 8
    .param p1, "jsonMessage"    # Ljava/lang/String;

    .prologue
    .line 2524
    :try_start_0
    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->JSON_TYPE:Lokhttp3/MediaType;

    invoke-static {v3, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2525
    .local v0, "body":Lokhttp3/RequestBody;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postTrackingData jsonMessage:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2526
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTrackingService()Lcom/qinggan/tsp/service/QGTrackingService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTrackingService;->postTrackingData(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;

    .line 2527
    .local v2, "trackingResponseBean":Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "postTrackingData trackingResponseBean: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2528
    invoke-virtual {v2}, Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;->getRtn_code()Ljava/lang/String;

    move-result-object v3

    const-string v4, "200"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_52

    move-result v3

    if-eqz v3, :cond_56

    .line 2529
    const/4 v3, 0x1

    .line 2534
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "trackingResponseBean":Lcom/qinggan/tsp/models/tracking/TrackingResponseBean;
    :goto_51
    return v3

    .line 2531
    :catch_52
    move-exception v1

    .line 2532
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2534
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_56
    const/4 v3, 0x0

    goto :goto_51
.end method

.method public pushMqttMessage(Lcom/qinggan/tsp/push/PushMessageContent;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "pushMessageContent"    # Lcom/qinggan/tsp/push/PushMessageContent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/push/PushMessageContent;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 473
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    .line 474
    .local v2, "gson":Lcom/google/gson/Gson;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 475
    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 474
    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 476
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getPushService()Lcom/qinggan/tsp/service/QGPushService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGPushService;->push(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 480
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "gson":Lcom/google/gson/Gson;
    :goto_1e
    return-void

    .line 477
    :catch_1f
    move-exception v1

    .line 478
    .local v1, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "error: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1e
.end method

.method public query97Balance(Lcom/qinggan/tsp/models/wallet/BalanceRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/BalanceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/BalanceRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/Balance97Resp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1932
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/Balance97Resp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    const-string v2, "dfh97"

    invoke-interface {v1, v2, p1}, Lcom/qinggan/tsp/service/QGAccountService;->query97Balance(Ljava/lang/String;Lcom/qinggan/tsp/models/wallet/BalanceRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    .line 1936
    :goto_d
    return-void

    .line 1933
    :catch_e
    move-exception v0

    .line 1934
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method

.method public query97BalanceDF(Lcom/qinggan/tsp/models/wallet/BalanceRequest97;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/BalanceRequest97;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/BalanceRequest97;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/Balance97Resp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1940
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/Balance97Resp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->query97BalanceDF(Lcom/qinggan/tsp/models/wallet/BalanceRequest97;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1944
    :goto_b
    return-void

    .line 1941
    :catch_c
    move-exception v0

    .line 1942
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryBalance(Lcom/qinggan/tsp/models/wallet/BalanceRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "request"    # Lcom/qinggan/tsp/models/wallet/BalanceRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/wallet/BalanceRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/BalanceResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3993
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/BalanceResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->queryBalance(Lcom/qinggan/tsp/models/wallet/BalanceRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3997
    :goto_b
    return-void

    .line 3994
    :catch_c
    move-exception v0

    .line 3995
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryBalance(Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "requestBody"    # Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/QueryBalanceResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4084
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/QueryBalanceResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletNewService;->queryBalance(Lcom/qinggan/tsp/models/walletNew/QueryBalanceReq;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4088
    :goto_b
    return-void

    .line 4085
    :catch_c
    move-exception v0

    .line 4086
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryBindETCPAccount(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "payType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryBindEtcpAccountResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3878
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryBindEtcpAccountResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3879
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->queryBindETCPAccount(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3886
    :goto_11
    return-void

    .line 3881
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGWalletService;->queryBindETCPAccount(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3883
    :catch_1e
    move-exception v0

    .line 3884
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public queryBindtECautoAccount(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "providerName"    # Ljava/lang/String;
    .param p2, "uid"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryBindEcautoAccountResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3860
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryBindEcautoAccountResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3861
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->queryBindtECautoAccount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3868
    :goto_11
    return-void

    .line 3863
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletService;->queryBindtECautoAccount(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3865
    :catch_1e
    move-exception v0

    .line 3866
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public queryCateInfo(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "id"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/poi/CateInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1373
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/poi/CateInfo;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGCPSPService;->queryCateInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1378
    :goto_b
    return-void

    .line 1374
    :catch_c
    move-exception v0

    .line 1375
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryCates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "keyword"    # Ljava/lang/String;
    .param p2, "city"    # Ljava/lang/String;
    .param p3, "offset"    # Ljava/lang/String;
    .param p4, "limit"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/poi/Cate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1357
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/poi/Cate;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/qinggan/tsp/service/QGCPSPService;->queryCates(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1362
    :goto_b
    return-void

    .line 1358
    :catch_c
    move-exception v0

    .line 1359
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryHistoryParkingRecord(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "page"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/QueryHistoryParkingRecordResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3897
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/QueryHistoryParkingRecordResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletService;->queryHistoryParkingRecord(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3901
    :goto_b
    return-void

    .line 3898
    :catch_c
    move-exception v0

    .line 3899
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public queryMaintenanceByVin(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vinId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/MaintenanceRecords;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3668
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/MaintenanceRecords;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->queryMaintenanceByVin(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3672
    :goto_b
    return-void

    .line 3669
    :catch_c
    move-exception v0

    .line 3670
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryNewEtcpContractStatus(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "tradeType"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/qinggan/tsp/models/account/RequestNewContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/RequestNewContract;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseEtcpNewContractStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3528
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseEtcpNewContractStatus;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletNewService;->queryETCPContractStatus(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3532
    :goto_b
    return-void

    .line 3529
    :catch_c
    move-exception v0

    .line 3530
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryNewXibokeContractStatus(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "tradeType"    # Ljava/lang/String;
    .param p2, "request"    # Lcom/qinggan/tsp/models/account/RequestNewContract;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/RequestNewContract;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseXibokeNewContractStatus;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3541
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseXibokeNewContractStatus;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletNewService;->queryXIBOKEContractStatus(Ljava/lang/String;Lcom/qinggan/tsp/models/account/RequestNewContract;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3545
    :goto_b
    return-void

    .line 3542
    :catch_c
    move-exception v0

    .line 3543
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryNextMaintenanceByVin(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "vinId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/maintenance/MaintenanceRecordNext;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3682
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/maintenance/MaintenanceRecordNext;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGMaintenanceService()Lcom/qinggan/tsp/service/QGMaintenanceService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGMaintenanceService;->queryNextMaintenanceByVin(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3686
    :goto_b
    return-void

    .line 3683
    :catch_c
    move-exception v0

    .line 3684
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public queryParkingLots(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "center"    # Ljava/lang/String;
    .param p2, "size"    # Ljava/lang/String;
    .param p3, "isWeatherCheck"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/park/ParkingLot;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1332
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/park/ParkingLot;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1333
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPServiceCms()Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/cms/QGCPSPServiceCms;->queryParkingLots(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1341
    :goto_11
    return-void

    .line 1335
    :cond_12
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGCPSPService;->queryParkingLots(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 1337
    :catch_1e
    move-exception v0

    .line 1338
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public questionFeedback(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 14
    .param p1, "textContent"    # Ljava/lang/String;
    .param p2, "softVersion"    # Ljava/lang/String;
    .param p3, "vin"    # Ljava/lang/String;
    .param p4, "pdsn"    # Ljava/lang/String;
    .param p5, "logUrl"    # Ljava/lang/String;
    .param p6, "fileSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2943
    .local p7, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;-><init>()V

    .line 2944
    .local v1, "requestBean":Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;->setTextContent(Ljava/lang/String;)V

    .line 2945
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;->setSoftVersion(Ljava/lang/String;)V

    .line 2946
    invoke-virtual {v1, p3}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;->setVin(Ljava/lang/String;)V

    .line 2947
    invoke-virtual {v1, p4}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;->setPdsn(Ljava/lang/String;)V

    .line 2948
    invoke-virtual {v1, p5}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;->setLogUrl(Ljava/lang/String;)V

    .line 2949
    invoke-virtual {v1, p6}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;->setFileSize(I)V

    .line 2950
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 2951
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGRemoteDebug;->questionFeedback(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p7}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 2956
    .end local v1    # "requestBean":Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestBean;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_32
    return-void

    .line 2952
    :catch_33
    move-exception v0

    .line 2953
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "questionFeedback requestFail: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public questionFeedbackNew(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 14
    .param p1, "softVersion"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "pdsn"    # Ljava/lang/String;
    .param p4, "logUrl"    # Ljava/lang/String;
    .param p5, "fileSize"    # I
    .param p6, "tboxPdsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2964
    .local p7, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;-><init>()V

    .line 2965
    .local v1, "requestBean":Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;->setSoftVersion(Ljava/lang/String;)V

    .line 2966
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;->setVin(Ljava/lang/String;)V

    .line 2967
    invoke-virtual {v1, p3}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;->setPdsn(Ljava/lang/String;)V

    .line 2968
    invoke-virtual {v1, p4}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;->setLogUrl(Ljava/lang/String;)V

    .line 2969
    invoke-virtual {v1, p5}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;->setFileSize(I)V

    .line 2970
    invoke-virtual {v1, p6}, Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;->setTboxPdsn(Ljava/lang/String;)V

    .line 2971
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 2972
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGRemoteDebug;->questionFeedbackNew(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p7}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_32} :catch_33

    .line 2977
    .end local v1    # "requestBean":Lcom/qinggan/tsp/models/remoteDebug/FeedbackRequestNewBean;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_32
    return-void

    .line 2973
    :catch_33
    move-exception v0

    .line 2974
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "questionFeedback requestFail: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2975
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_32
.end method

.method public recordByIpda(Ljava/lang/String;JJLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "logStartTimestamp"    # J
    .param p4, "logEndTimestamp"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "JJ",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2985
    .local p6, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/QuestionFeedbackBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;-><init>()V

    .line 2986
    .local v1, "requestBean":Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;->setVin(Ljava/lang/String;)V

    .line 2987
    invoke-virtual {v1, p2, p3}, Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;->setLogStartTimestamp(J)V

    .line 2988
    invoke-virtual {v1, p4, p5}, Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;->setLogEndTimestamp(J)V

    .line 2989
    const-string v3, "application/json;charset=UTF-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 2990
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGRemoteDebug;->recordByIpda(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_29} :catch_2a

    .line 2995
    .end local v1    # "requestBean":Lcom/qinggan/tsp/models/remoteDebug/RecordByIpdaBean;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_29
    return-void

    .line 2991
    :catch_2a
    move-exception v0

    .line 2992
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "recordByIpda requestFail: e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2993
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_29
.end method

.method public refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 12
    .param p1, "pateoAccessToken"    # Ljava/lang/String;
    .param p2, "pateoRefreshToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/RefreshTokenResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5121
    .local p3, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/RefreshTokenResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.REFRESH_ACCESS_TOKEN_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5122
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;

    const-string v5, ""

    invoke-direct {v4, p1, p2, v5}, Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5123
    .local v4, "refreshTokenRequest":Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5124
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5125
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshAccessToken, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5126
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3b} :catch_3c

    .line 5130
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "refreshTokenRequest":Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;
    :goto_3b
    return-void

    .line 5127
    :catch_3c
    move-exception v0

    .line 5128
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public refreshAccessToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .param p1, "pateoAccessToken"    # Ljava/lang/String;
    .param p2, "pateoRefreshToken"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/RefreshTokenResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5141
    .local p4, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/RefreshTokenResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.REFRESH_ACCESS_TOKEN_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5142
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;

    invoke-direct {v4, p1, p2, p3}, Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5143
    .local v4, "refreshTokenRequest":Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5144
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5145
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "refreshAccessToken, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5146
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5150
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "refreshTokenRequest":Lcom/qinggan/tsp/models/gwm/RefreshTokenRequest;
    :goto_39
    return-void

    .line 5147
    :catch_3a
    move-exception v0

    .line 5148
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public registerGtgj12306(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "account12306"    # Ljava/lang/String;
    .param p2, "password12306"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 828
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->registerGtgj12306(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 832
    :goto_b
    return-void

    .line 829
    :catch_c
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public registerZsgj12306(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "accountNo"    # Ljava/lang/String;
    .param p2, "accountPwd"    # Ljava/lang/String;
    .param p3, "lastFourCertNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 839
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGAccountService;->registerZsgj12306(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 843
    :goto_b
    return-void

    .line 840
    :catch_c
    move-exception v0

    .line 841
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public requestAuthTokenByLoginID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 12
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getTimeStamp()Ljava/lang/String;

    move-result-object v4

    .line 403
    .local v4, "timeStamp":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    .line 405
    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getProjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/tsp/TspManager;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 403
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGAuthService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    invoke-virtual {p0, v0, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 410
    .end local v4    # "timeStamp":Ljava/lang/String;
    :goto_39
    return-void

    .line 406
    :catch_3a
    move-exception v6

    .line 407
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public requestAuthTokenByPdsn(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "pdsn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 381
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;>;"
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app self requestAuthTokenByPdsn authLogin pdsn:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getTimeStamp()Ljava/lang/String;

    move-result-object v1

    .line 384
    .local v1, "timeStamp":Ljava/lang/String;
    :try_start_1c
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v2

    const-string v3, "4"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "4"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    .line 385
    invoke-virtual {v5}, Lcom/qinggan/tsp/InitManager;->getProjectKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/qinggan/tsp/TspManager;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 384
    invoke-interface {v2, p1, v3, v1, v4}, Lcom/qinggan/tsp/service/QGAuthService;->login(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_4e} :catch_4f

    .line 390
    :goto_4e
    return-void

    .line 387
    :catch_4f
    move-exception v0

    .line 388
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4e
.end method

.method public requestSubscribeAddV1(I)Lretrofit2/Call;
    .registers 9
    .param p1, "album_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlySubscribeAddV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4895
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4898
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4895
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->requestSubscribeAdd(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 4903
    :goto_14
    return-object v0

    .line 4900
    :catch_15
    move-exception v6

    .line 4901
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4903
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public requestSubscribeCancelV1(I)Lretrofit2/Call;
    .registers 9
    .param p1, "album_id"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmlyv1/XmlySubscribeCancelV1;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4908
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyV1Service()Lcom/qinggan/tsp/service/QGXmlyV1Service;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4911
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4908
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/tsp/service/QGXmlyV1Service;->requestSubscribeCancel(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_15

    move-result-object v0

    .line 4916
    :goto_14
    return-object v0

    .line 4913
    :catch_15
    move-exception v6

    .line 4914
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 4916
    const/4 v0, 0x0

    goto :goto_14
.end method

.method public requestSubscribeOrNot(IILjava/lang/String;)Lretrofit2/Call;
    .registers 13
    .param p1, "operation_type"    # I
    .param p2, "album_id"    # I
    .param p3, "access_token"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/String;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/xmly/XmlySubscribeOrNot;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4868
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 4869
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyServiceCms()Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4874
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4875
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, p3

    .line 4869
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/cms/QGXmlyServiceCms;->requestSubscribeOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    .line 4890
    :goto_1f
    return-object v0

    .line 4878
    :cond_20
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGXmlyService()Lcom/qinggan/tsp/service/QGXmlyService;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/TspManager;->deviceTypeForXmly:Ljava/lang/String;

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->clientOsType:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/tsp/TspManager;->packIdForXmly:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->mPdsn:Ljava/lang/String;

    .line 4883
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    .line 4884
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    move-object v7, p3

    .line 4878
    invoke-interface/range {v0 .. v7}, Lcom/qinggan/tsp/service/QGXmlyService;->requestSubscribeOrNot(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_38} :catch_3a

    move-result-object v0

    goto :goto_1f

    .line 4887
    :catch_3a
    move-exception v8

    .line 4888
    .local v8, "e":Ljava/lang/Exception;
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    .line 4890
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public requestUserLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 19
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceType"    # Ljava/lang/String;
    .param p6, "verificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 424
    .local p7, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    .line 425
    .local v5, "ts":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getProjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/tsp/TspManager;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 426
    .local v8, "sign":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAuthService()Lcom/qinggan/tsp/service/QGAuthService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/qinggan/tsp/service/QGAuthService;->userLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {p0, v1, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4a} :catch_4b

    .line 430
    .end local v5    # "ts":Ljava/lang/String;
    .end local v8    # "sign":Ljava/lang/String;
    :goto_4a
    return-void

    .line 427
    :catch_4b
    move-exception v10

    .line 428
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a
.end method

.method public requestUserLoginStartUp(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 20
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "pwd"    # Ljava/lang/String;
    .param p3, "loginType"    # Ljava/lang/String;
    .param p4, "deviceId"    # Ljava/lang/String;
    .param p5, "deviceType"    # Ljava/lang/String;
    .param p6, "verificationCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 434
    .local p7, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/TspManager;->getTimeStamp()Ljava/lang/String;

    move-result-object v5

    .line 435
    .local v5, "ts":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p4

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getProjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/qinggan/tsp/TspManager;->sha(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 436
    .local v8, "sign":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgLoginService()Lcom/qinggan/tsp/service/QGLoginService;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v9, p6

    invoke-interface/range {v1 .. v9}, Lcom/qinggan/tsp/service/QGLoginService;->userLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    move-object/from16 v0, p7

    invoke-virtual {p0, v1, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 445
    .end local v5    # "ts":Ljava/lang/String;
    .end local v8    # "sign":Ljava/lang/String;
    :cond_4d
    :goto_4d
    return-void

    .line 437
    :catch_4e
    move-exception v10

    .line 438
    .local v10, "e":Ljava/lang/Exception;
    invoke-virtual {v10}, Ljava/lang/Exception;->printStackTrace()V

    .line 439
    if-eqz p7, :cond_4d

    .line 440
    new-instance v11, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-direct {v11}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 441
    .local v11, "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    const-string v1, "requestUserLoginStartUp internal error"

    invoke-virtual {v11, v1}, Lcom/qinggan/tsp/restmiddle/RestError;->setMessage(Ljava/lang/String;)V

    .line 442
    move-object/from16 v0, p7

    invoke-virtual {v0, v11}, Lcom/qinggan/tsp/restmiddle/RestCallback;->failure(Lcom/qinggan/tsp/restmiddle/RestError;)V

    goto :goto_4d
.end method

.method public saveFacePrint(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "facePrintId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1676
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1678
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1679
    const-string v3, "loginType"

    const-string v4, "18"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1680
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1681
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceOrFacePrint()Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;->saveEigenvalueAccount(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 1685
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_2a
    return-void

    .line 1682
    :catch_2b
    move-exception v1

    .line 1683
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public saveFacePrintTencent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "facePrintId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1695
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1697
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1698
    const-string v3, "loginType"

    const-string v4, "18"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1699
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1700
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1701
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1702
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1703
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->saveEigenvalueAccountWithTencent(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 1707
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_3b
    return-void

    .line 1704
    :catch_3c
    move-exception v1

    .line 1705
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public saveResult(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/SaveResultResponse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2461
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2462
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUpdateService()Lcom/qinggan/tsp/service/QGUpdateService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGUpdateService;->saveResult(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/SaveResultResponse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2466
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2463
    :catch_1d
    move-exception v1

    .line 2464
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2466
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public saveSoftLog(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/StatusResponse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2441
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2442
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUpdateService()Lcom/qinggan/tsp/service/QGUpdateService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGUpdateService;->saveSoftLog(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/StatusResponse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2446
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2443
    :catch_1d
    move-exception v1

    .line 2444
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2446
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public saveTencetnEigenvalueAccountFaceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "faceId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1733
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1735
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1736
    const-string v3, "loginType"

    const-string v4, "18"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1737
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1738
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1739
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1740
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1741
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->saveTencetnEigenvalueAccount(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 1745
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_3b
    return-void

    .line 1742
    :catch_3c
    move-exception v1

    .line 1743
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public saveTencetnEigenvalueAccountVoiceId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "voiceId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1714
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1716
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1717
    const-string v3, "loginType"

    const-string v4, "11"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1718
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1719
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1720
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1721
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1722
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->saveTencetnEigenvalueAccount(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 1726
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_3b
    return-void

    .line 1723
    :catch_3c
    move-exception v1

    .line 1724
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public saveVoicePrint(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "voicePrintId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1633
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1635
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1636
    const-string v3, "loginType"

    const-string v4, "11"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1637
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1638
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceOrFacePrint()Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGVoiceOrFacePrint;->saveEigenvalueAccount(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_2a} :catch_2b

    .line 1643
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_2a
    return-void

    .line 1639
    :catch_2b
    move-exception v1

    .line 1640
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2a
.end method

.method public saveVoicePrintTencent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "voicePrintId"    # Ljava/lang/String;
    .param p2, "vin"    # Ljava/lang/String;
    .param p3, "cookie"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1653
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 1655
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "eigenvalue"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1656
    const-string v3, "loginType"

    const-string v4, "11"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1657
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1658
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1659
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1660
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 1661
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->saveEigenvalueAccountWithTencent(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_3b} :catch_3c

    .line 1666
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_3b
    return-void

    .line 1662
    :catch_3c
    move-exception v1

    .line 1663
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3b
.end method

.method public score(Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appScoreRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppScoreResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3323
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppScoreResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->score(Lcom/qinggan/tsp/models/appStore/request/AppScoreRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3327
    :goto_b
    return-void

    .line 3324
    :catch_c
    move-exception v0

    .line 3325
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public search(Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appSearchRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppSearchResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3352
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppSearchResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->search(Lcom/qinggan/tsp/models/appStore/request/AppSearchRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3356
    :goto_b
    return-void

    .line 3353
    :catch_c
    move-exception v0

    .line 3354
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public searchBadBill(Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/EtcpOrderDetail;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4043
    .local p1, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/EtcpOrderDetail;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/tsp/service/QGWalletNewService;->searchBadBill()Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4047
    :goto_b
    return-void

    .line 4044
    :catch_c
    move-exception v0

    .line 4045
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public searchCity(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "cityName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/cpsp/CityBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1189
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/cpsp/CityBean;>;"
    :try_start_0
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->initManager:Lcom/qinggan/tsp/InitManager;

    invoke-virtual {v2}, Lcom/qinggan/tsp/InitManager;->getDeviceTypeForCp()Ljava/lang/String;

    move-result-object v0

    .line 1190
    .local v0, "deviceType":Ljava/lang/String;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQGCPSPService()Lcom/qinggan/tsp/service/QGCPSPService;

    move-result-object v2

    invoke-interface {v2, v0, p1}, Lcom/qinggan/tsp/service/QGCPSPService;->searchCity(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    .line 1195
    .end local v0    # "deviceType":Ljava/lang/String;
    :goto_11
    return-void

    .line 1191
    :catch_12
    move-exception v1

    .line 1192
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public searchEtcpOrderDetail(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "plateNumber"    # Ljava/lang/String;
    .param p2, "orderNo"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/walletNew/EtcpParkingFeeResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4035
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/walletNew/EtcpParkingFeeResp;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletNewService()Lcom/qinggan/tsp/service/QGWalletNewService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGWalletNewService;->searchEtcpOrderDetail(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 4039
    :goto_b
    return-void

    .line 4036
    :catch_c
    move-exception v0

    .line 4037
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public searchPay(Ljava/lang/String;Ljava/lang/String;)Lcom/qinggan/tsp/models/pay/SearchPayBean;
    .registers 5
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;

    .prologue
    .line 3777
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgPayService()Lcom/qinggan/tsp/service/QGPayService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGPayService;->searchPay(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/pay/SearchPayBean;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_f

    .line 3781
    :goto_e
    return-object v1

    .line 3778
    :catch_f
    move-exception v0

    .line 3779
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 3781
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public searchPay(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 8
    .param p1, "startTime"    # Ljava/lang/String;
    .param p2, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/pay/SearchPayBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3793
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/pay/SearchPayBean;>;"
    :try_start_0
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgPayService()Lcom/qinggan/tsp/service/QGPayService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGPayService;->searchPayAsync(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3797
    :goto_b
    return-void

    .line 3794
    :catch_c
    move-exception v0

    .line 3795
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public searchResource(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qinggan/tsp/models/skin/SearchBean;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "searchCreateTime"    # Ljava/lang/String;
    .param p3, "tagId"    # Ljava/lang/String;
    .param p4, "typeId"    # Ljava/lang/String;

    .prologue
    .line 2694
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 2695
    .local v2, "jsonObject":Lorg/json/JSONObject;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_10

    .line 2696
    const-string v3, "key"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2697
    :cond_10
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 2698
    const-string v3, "searchCreateTime"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2699
    :cond_1b
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_26

    .line 2700
    const-string v3, "tagId"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2701
    :cond_26
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_31

    .line 2702
    const-string v3, "typeId"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 2704
    :cond_31
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2705
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager;->getQgSkinService()Lcom/qinggan/tsp/service/QGSkinService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGSkinService;->searchResource(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/tsp/models/skin/SearchBean;
    :try_end_4d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4d} :catch_4e

    .line 2709
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_4d
    return-object v3

    .line 2706
    :catch_4e
    move-exception v1

    .line 2707
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2709
    const/4 v3, 0x0

    goto :goto_4d
.end method

.method public searchVoiceNote(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "page"    # I
    .param p3, "size"    # I
    .param p4, "voiceTitle"    # Ljava/lang/String;
    .param p5, "beginTime"    # Ljava/lang/String;
    .param p6, "endTime"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/voiceNote/VoiceNoteListBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3079
    .local p7, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/voiceNote/VoiceNoteListBean;>;"
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v4, "searchVoiceNote"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3081
    :try_start_7
    sget-object v3, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    const-string v4, "searchVoiceNote"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3083
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3084
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "userId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3085
    const-string v3, "page"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3086
    const-string v3, "size"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 3087
    const-string v3, "voiceTitle"

    invoke-virtual {v2, v3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3088
    const-string v3, "beginTime"

    invoke-virtual {v2, v3, p5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3089
    const-string v3, "endTime"

    invoke-virtual {v2, v3, p6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3090
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3091
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGVoiceNoteService;->searchVoiceNote(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p7}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_4a} :catch_4b

    .line 3095
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_4a
    return-void

    .line 3092
    :catch_4b
    move-exception v1

    .line 3093
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a
.end method

.method public selectRnauthWithPage(Lcom/qinggan/tsp/models/account/ContactsQueryReqBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "contactsQueryReqBean"    # Lcom/qinggan/tsp/models/account/ContactsQueryReqBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/ContactsQueryReqBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ContactsQueryResBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1826
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ContactsQueryResBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->selectRnauthWithPage(Lcom/qinggan/tsp/models/account/ContactsQueryReqBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1830
    :goto_b
    return-void

    .line 1827
    :catch_c
    move-exception v0

    .line 1828
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public setAdviseMsgStatus(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5677
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/advise/SetAdviseStatusReq;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/advise/SetAdviseStatusReq;-><init>()V

    .line 5678
    .local v1, "req":Lcom/qinggan/tsp/models/advise/SetAdviseStatusReq;
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/advise/SetAdviseStatusReq;->setVin(Ljava/lang/String;)V

    .line 5679
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/advise/SetAdviseStatusReq;->setSerialNumber(Ljava/lang/String;)V

    .line 5680
    const-string v3, "application/json;charset=UTF-8"

    .line 5681
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    iget-object v4, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 5682
    .local v2, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAdviseService()Lcom/qinggan/tsp/service/QGAdviseService;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/qinggan/tsp/service/QGAdviseService;->setAdviseMsgStatus(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 5687
    .end local v1    # "req":Lcom/qinggan/tsp/models/advise/SetAdviseStatusReq;
    .end local v2    # "requestBody":Lokhttp3/RequestBody;
    :goto_26
    return-void

    .line 5684
    :catch_27
    move-exception v0

    .line 5685
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public setCmsHuToken(Ljava/lang/String;)V
    .registers 3
    .param p1, "huToken"    # Ljava/lang/String;

    .prologue
    .line 1046
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->setCmsHuToken(Ljava/lang/String;)V

    .line 1047
    return-void
.end method

.method public setDeviceVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "vehicle"    # Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseCodeBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1519
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseCodeBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGDeviceService;->editDeviceVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/device/DeviceVehicleInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1523
    :goto_b
    return-void

    .line 1520
    :catch_c
    move-exception v0

    .line 1521
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public setGlobalToken(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V
    .registers 3
    .param p1, "authLoginResponseItem"    # Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;

    .prologue
    .line 1042
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->setGlobalToken(Lcom/qinggan/tsp/models/auth/AuthLoginResponseItem;)V

    .line 1043
    return-void
.end method

.method public setOtaPushMessageListener(Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;)V
    .registers 3
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    .prologue
    .line 1103
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->setOtaPushMessageListener(Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;)V

    .line 1104
    return-void
.end method

.method public setPoiPushMessageListener(Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;)V
    .registers 3
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;

    .prologue
    .line 1107
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->setPoiPushMessageListener(Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;)V

    .line 1108
    return-void
.end method

.method public setPushMessageListener(Lcom/qinggan/tsp/TspManager$PushMessageListener;)V
    .registers 3
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$PushMessageListener;

    .prologue
    .line 1094
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->setPushMessageListener(Lcom/qinggan/tsp/TspManager$PushMessageListener;)V

    .line 1095
    return-void
.end method

.method public setTokenListener(Lcom/qinggan/tsp/manager/TokenManager$TokenListener;)V
    .registers 3
    .param p1, "tokenListener"    # Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    .prologue
    .line 1037
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/qinggan/tsp/InitManager;->setTokenListener(Lcom/qinggan/tsp/manager/TokenManager$TokenListener;)V

    .line 1038
    return-void
.end method

.method public setup(Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appSetupRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppSetupResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3276
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppSetupResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->setup(Lcom/qinggan/tsp/models/appStore/request/AppSetupRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3280
    :goto_b
    return-void

    .line 3277
    :catch_c
    move-exception v0

    .line 3278
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public setupList(Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appSetupListRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppSetupListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3363
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppSetupListResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->setupList(Lcom/qinggan/tsp/models/appStore/request/AppSetupListRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3367
    :goto_b
    return-void

    .line 3364
    :catch_c
    move-exception v0

    .line 3365
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public smsCodeLogin(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 12
    .param p1, "account"    # Ljava/lang/String;
    .param p2, "smsCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/LoginGwmResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5045
    .local p3, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/LoginGwmResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.SSO_SMS_LOGIN_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5046
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/SmsCodeLoginRequest;

    invoke-direct {v4, p1, p2}, Lcom/qinggan/tsp/models/gwm/SmsCodeLoginRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5047
    .local v4, "smsCodeLoginRequest":Lcom/qinggan/tsp/models/gwm/SmsCodeLoginRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5048
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5049
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "smsCodeLogin, paramsString = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5050
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->smsCodeLogin(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5054
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "smsCodeLoginRequest":Lcom/qinggan/tsp/models/gwm/SmsCodeLoginRequest;
    :goto_39
    return-void

    .line 5051
    :catch_3a
    move-exception v0

    .line 5052
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public softwareUpgradeVersionSearch(Lorg/json/JSONObject;)Lretrofit2/Response;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lretrofit2/Response",
            "<",
            "Lcom/qinggan/tsp/models/usi/UpdateResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2511
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2512
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUSIService()Lcom/qinggan/tsp/service/QGUSIService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGUSIService;->softwareUpgradeVersionSearch(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-interface {v2}, Lretrofit2/Call;->execute()Lretrofit2/Response;
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_19} :catch_1b

    move-result-object v2

    .line 2516
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1a
    return-object v2

    .line 2513
    :catch_1b
    move-exception v1

    .line 2514
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2516
    const/4 v2, 0x0

    goto :goto_1a
.end method

.method public subscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
    .registers 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subscribeListener"    # Lcom/qinggan/tsp/TspManager$SubscribeListener;

    .prologue
    .line 358
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qinggan/tsp/InitManager;->subscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V

    .line 360
    return-void
.end method

.method public syncDevice(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .param p1, "softwareVersion"    # Ljava/lang/String;
    .param p2, "hardwareVersion"    # Ljava/lang/String;
    .param p3, "engineCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/SyncDeviceResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5163
    .local p4, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/SyncDeviceResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.SYNC_DEVICE_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5164
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/SyncDeviceRequest;

    invoke-direct {v4, p1, p2, p3}, Lcom/qinggan/tsp/models/gwm/SyncDeviceRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5165
    .local v4, "syncDeviceRequest":Lcom/qinggan/tsp/models/gwm/SyncDeviceRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5166
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5167
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "syncDevice, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5168
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->syncDevice(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5172
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "syncDeviceRequest":Lcom/qinggan/tsp/models/gwm/SyncDeviceRequest;
    :goto_39
    return-void

    .line 5169
    :catch_3a
    move-exception v0

    .line 5170
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
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
    .line 317
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    const/4 v0, 0x0

    return-object v0
.end method

.method public tencentPasswordLogin(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/TencentLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5405
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/TencentLoginResult;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5407
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5408
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5409
    const-string v3, "phone"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5410
    const-string v3, "password"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5411
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5412
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->pwdLoginWithTencent(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    .line 5416
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_34
    return-void

    .line 5413
    :catch_35
    move-exception v1

    .line 5414
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public tencentPasswordLoginEncrypt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "phone"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/vcm/TencentLoginResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5426
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/vcm/TencentLoginResult;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5428
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5429
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5430
    const-string v3, "phone"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5431
    const-string v3, "encryptPassword"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5432
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5433
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->pwdLoginWithTencent(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_34
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_34} :catch_35

    .line 5437
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_34
    return-void

    .line 5434
    :catch_35
    move-exception v1

    .line 5435
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_34
.end method

.method public tencentUpdateUserInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/models/account/UserUpdateBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "tencentCookie"    # Ljava/lang/String;
    .param p2, "appDeviceId"    # Ljava/lang/String;
    .param p3, "vin"    # Ljava/lang/String;
    .param p4, "userUpdateBean"    # Lcom/qinggan/tsp/models/account/UserUpdateBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/UserUpdateBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/AccountBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 598
    .local p5, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/AccountBean;>;"
    :try_start_0
    new-instance v1, Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;

    invoke-direct {v1, p4}, Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;-><init>(Lcom/qinggan/tsp/models/account/UserUpdateBean;)V

    .line 599
    .local v1, "tencentUserUpdateBean":Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;
    invoke-virtual {v1, p3}, Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;->setDeviceId(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v1, p1}, Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;->setCookie(Ljava/lang/String;)V

    .line 601
    const-string v2, "hu"

    invoke-virtual {v1, v2}, Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;->setDeviceType(Ljava/lang/String;)V

    .line 602
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;->setAppDeviceId(Ljava/lang/String;)V

    .line 603
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/qinggan/tsp/service/QGAccountService;->tencentUserUpdate(Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2, p5}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1e} :catch_1f

    .line 607
    .end local v1    # "tencentUserUpdateBean":Lcom/qinggan/tsp/models/account/TencentUserUpdateBean;
    :goto_1e
    return-void

    .line 604
    :catch_1f
    move-exception v0

    .line 605
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public thirdDelOauth(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 702
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 703
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->deleteBindOauth(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 710
    :goto_11
    return-void

    .line 705
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->deleteBindOauth(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 707
    :catch_1e
    move-exception v0

    .line 708
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public thirdOauthRefreshToken(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "oauthProviderId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ThirdOauthInfoBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 688
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ThirdOauthInfoBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->refreshToken(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 692
    :goto_b
    return-void

    .line 689
    :catch_c
    move-exception v0

    .line 690
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b
.end method

.method public toPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "devicetype"    # Ljava/lang/String;
    .param p2, "xima_order_no"    # Ljava/lang/String;
    .param p3, "methodId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/wallet/XimalayaPayResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3450
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/wallet/XimalayaPayResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3451
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletServiceCms()Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/cms/QGWalletServiceCms;->toPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3459
    :goto_11
    return-void

    .line 3453
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGWalletService()Lcom/qinggan/tsp/service/QGWalletService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGWalletService;->toPay(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3455
    :catch_1e
    move-exception v0

    .line 3456
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public tuhuRegister(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "mobile"    # Ljava/lang/String;
    .param p2, "nickName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5510
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->tuhuRegister(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 5514
    :goto_b
    return-void

    .line 5511
    :catch_c
    move-exception v0

    .line 5512
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public unBindCarPark(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "deviceType"    # Ljava/lang/String;
    .param p2, "plateNum"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/AccountBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3843
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/AccountBean;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 3844
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountServiceCms()Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/cms/QGAccountServiceCms;->unBindCar(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 3851
    :goto_11
    return-void

    .line 3846
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->unBindCar(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 3848
    :catch_1e
    move-exception v0

    .line 3849
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_11
.end method

.method public unReadCount(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "loginId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/information/UnReadCountBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3241
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/information/UnReadCountBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGInformationService;->unReadCount(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3245
    :goto_b
    return-void

    .line 3242
    :catch_c
    move-exception v0

    .line 3243
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public unSubscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V
    .registers 4
    .param p1, "topic"    # Ljava/lang/String;
    .param p2, "subscribeListener"    # Lcom/qinggan/tsp/TspManager$SubscribeListener;

    .prologue
    .line 369
    sget-object v0, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/qinggan/tsp/InitManager;->getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/InitManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/qinggan/tsp/InitManager;->unSubscribeTopic(Ljava/lang/String;Lcom/qinggan/tsp/TspManager$SubscribeListener;)V

    .line 370
    return-void
.end method

.method public unbindAll(Lcom/qinggan/tsp/models/account/ReqUnbindOwner;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "reqUnbindOwner"    # Lcom/qinggan/tsp/models/account/ReqUnbindOwner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/ReqUnbindOwner;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResponseUnbindAll;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1002
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResponseUnbindAll;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->unBindAll(Lcom/qinggan/tsp/models/account/ReqUnbindOwner;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1006
    :goto_b
    return-void

    .line 1003
    :catch_c
    move-exception v0

    .line 1004
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public unbindDevice(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "deviceId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/UnbindDeviceBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 738
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/UnbindDeviceBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->unbindDevice(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 742
    :goto_b
    return-void

    .line 739
    :catch_c
    move-exception v0

    .line 740
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateAccountInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 15
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "sex"    # Ljava/lang/String;
    .param p4, "nickName"    # Ljava/lang/String;
    .param p5, "birthday"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5245
    .local p6, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.SSO_ACCOUNT_INFO_UPDATE"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5246
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;

    invoke-direct {v4}, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;-><init>()V

    .line 5247
    .local v4, "updateAccountInfoRequest":Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;
    invoke-virtual {v4, p1}, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;->setUserId(Ljava/lang/String;)V

    .line 5248
    invoke-virtual {v4, p2}, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;->setAccessToken(Ljava/lang/String;)V

    .line 5249
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1a

    .line 5250
    invoke-virtual {v4, p3}, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;->setSex(Ljava/lang/String;)V

    .line 5253
    :cond_1a
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_23

    .line 5254
    invoke-virtual {v4, p4}, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;->setNickName(Ljava/lang/String;)V

    .line 5257
    :cond_23
    invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2c

    .line 5258
    invoke-virtual {v4, p5}, Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;->setBirthday(Ljava/lang/String;)V

    .line 5261
    :cond_2c
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5262
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5263
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateAccountInfo, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5264
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->updateAccountInfo(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p6}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_5a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5a} :catch_5b

    .line 5268
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "updateAccountInfoRequest":Lcom/qinggan/tsp/models/gwm/UpdateAccountInfoRequest;
    :goto_5a
    return-void

    .line 5265
    :catch_5b
    move-exception v0

    .line 5266
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5a
.end method

.method public updateCarNum(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 12
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "vname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/UpdateCarNumResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5221
    .local p3, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/UpdateCarNumResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.UPDATE_VNAME_PATEO"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v2

    .line 5222
    .local v2, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v1, Lcom/qinggan/tsp/models/gwm/UpdateCarNumRequest;

    invoke-direct {v1, p1, p2}, Lcom/qinggan/tsp/models/gwm/UpdateCarNumRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 5223
    .local v1, "editCarNumRequest":Lcom/qinggan/tsp/models/gwm/UpdateCarNumRequest;
    new-instance v3, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v3, v2, v1}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5224
    .local v3, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5225
    .local v4, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updateCarNum, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5226
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v4}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->updateCarNum(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5230
    .end local v1    # "editCarNumRequest":Lcom/qinggan/tsp/models/gwm/UpdateCarNumRequest;
    .end local v2    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v3    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v4    # "paramsString":Ljava/lang/String;
    :goto_39
    return-void

    .line 5227
    :catch_3a
    move-exception v0

    .line 5228
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public updateContacts(Lcom/qinggan/tsp/models/account/ContactsBaseResBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "contactsBaseResBean"    # Lcom/qinggan/tsp/models/account/ContactsBaseResBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/ContactsBaseResBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1859
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->updateContacts(Lcom/qinggan/tsp/models/account/ContactsBaseResBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1863
    :goto_b
    return-void

    .line 1860
    :catch_c
    move-exception v0

    .line 1861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateList(Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "appUpdateListRequest"    # Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/appStore/response/AppUpdateListResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3377
    .local p2, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/appStore/response/AppUpdateListResponse;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAppStoreService()Lcom/qinggan/tsp/service/QGAppStoreService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAppStoreService;->updateList(Lcom/qinggan/tsp/models/appStore/request/AppUpdateListRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3381
    :goto_b
    return-void

    .line 3378
    :catch_c
    move-exception v0

    .line 3379
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updatePWDPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "accessToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/UpdatePasswordResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5323
    .local p4, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/UpdatePasswordResponse;>;"
    :try_start_0
    const-string v5, "GW.HU.SSO_PWD_UPDATE"

    invoke-virtual {p0, v5}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5324
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/UpdatePasswordRequest;

    invoke-direct {v4, p1, p2, p3}, Lcom/qinggan/tsp/models/gwm/UpdatePasswordRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5325
    .local v4, "updatePasswordRequest":Lcom/qinggan/tsp/models/gwm/UpdatePasswordRequest;
    new-instance v2, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v2, v1, v4}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5326
    .local v2, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5327
    .local v3, "paramsString":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePWDPassword, params = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5328
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v5

    invoke-interface {v5, v3}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->updatePassword(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v5

    invoke-virtual {p0, v5, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_39} :catch_3a

    .line 5332
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v3    # "paramsString":Ljava/lang/String;
    .end local v4    # "updatePasswordRequest":Lcom/qinggan/tsp/models/gwm/UpdatePasswordRequest;
    :goto_39
    return-void

    .line 5329
    :catch_3a
    move-exception v0

    .line 5330
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_39
.end method

.method public updatePerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "loginId"    # Ljava/lang/String;
    .param p2, "inforId"    # Ljava/lang/String;
    .param p3, "status"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/information/ResultBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3227
    .local p4, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/information/ResultBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGInformationService()Lcom/qinggan/tsp/service/QGInformationService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/tsp/service/QGInformationService;->updatePerInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 3231
    :goto_b
    return-void

    .line 3228
    :catch_c
    move-exception v0

    .line 3229
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updatePhoneWithSecurity(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 18
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "accessToken"    # Ljava/lang/String;
    .param p3, "newPhone"    # Ljava/lang/String;
    .param p4, "smsCode"    # Ljava/lang/String;
    .param p5, "securityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/UpdatePhoneResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5346
    .local p6, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/UpdatePhoneResponse;>;"
    :try_start_0
    invoke-static/range {p5 .. p5}, Lcom/qinggan/tsp/util/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 5347
    .local v6, "securityPasswordMd5":Ljava/lang/String;
    const-string v2, "GW.HU.SSO_PHONE_UPDATE_WITH_SECURITY"

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v8

    .line 5348
    .local v8, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v1, Lcom/qinggan/tsp/models/gwm/UpdatePhoneRequest;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/qinggan/tsp/models/gwm/UpdatePhoneRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5349
    .local v1, "updatePhoneRequest":Lcom/qinggan/tsp/models/gwm/UpdatePhoneRequest;
    new-instance v9, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v9, v8, v1}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5350
    .local v9, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v2, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, v9}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 5351
    .local v10, "paramsString":Ljava/lang/String;
    sget-object v2, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneWithSecurity, params = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5352
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v2

    invoke-interface {v2, v10}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->updatePhone(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {p0, v2, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_43} :catch_44

    .line 5356
    .end local v1    # "updatePhoneRequest":Lcom/qinggan/tsp/models/gwm/UpdatePhoneRequest;
    .end local v6    # "securityPasswordMd5":Ljava/lang/String;
    .end local v8    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v9    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v10    # "paramsString":Ljava/lang/String;
    :goto_43
    return-void

    .line 5353
    :catch_44
    move-exception v7

    .line 5354
    .local v7, "e":Ljava/lang/Exception;
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_43
.end method

.method public updateSecurityCode(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 15
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "oldSecurityPassword"    # Ljava/lang/String;
    .param p3, "newSecurityPassword"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/gwm/UpdateSecurityCodeResponse;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5280
    .local p4, "call":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/gwm/UpdateSecurityCodeResponse;>;"
    :try_start_0
    invoke-static {p2}, Lcom/qinggan/tsp/util/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 5281
    .local v3, "oldSecurityPasswordMd5":Ljava/lang/String;
    invoke-static {p3}, Lcom/qinggan/tsp/util/MD5;->getMD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 5282
    .local v2, "newSecurityPasswordMd5":Ljava/lang/String;
    const-string v7, "GW.HU.UPDATE_SECURITY_PASSWORD"

    invoke-virtual {p0, v7}, Lcom/qinggan/tsp/TspManager;->getHeader(Ljava/lang/String;)Lcom/qinggan/tsp/models/gwm/Header;

    move-result-object v1

    .line 5283
    .local v1, "header":Lcom/qinggan/tsp/models/gwm/Header;
    new-instance v6, Lcom/qinggan/tsp/models/gwm/UpdateSecurityCodeRequest;

    invoke-direct {v6, p1, v3, v2}, Lcom/qinggan/tsp/models/gwm/UpdateSecurityCodeRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 5284
    .local v6, "updateSecurityCodeRequest":Lcom/qinggan/tsp/models/gwm/UpdateSecurityCodeRequest;
    new-instance v4, Lcom/qinggan/tsp/models/gwm/ReqParams;

    invoke-direct {v4, v1, v6}, Lcom/qinggan/tsp/models/gwm/ReqParams;-><init>(Lcom/qinggan/tsp/models/gwm/Header;Ljava/lang/Object;)V

    .line 5285
    .local v4, "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    iget-object v7, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v7, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 5286
    .local v5, "paramsString":Ljava/lang/String;
    sget-object v7, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateSecurityCode, params = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5287
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAccountServiceGwm()Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;

    move-result-object v7

    invoke-interface {v7, v5}, Lcom/qinggan/tsp/service/gwm/QGAccountServiceGwm;->updateSecurityCode(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v7

    invoke-virtual {p0, v7, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_41
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_41} :catch_42

    .line 5291
    .end local v1    # "header":Lcom/qinggan/tsp/models/gwm/Header;
    .end local v2    # "newSecurityPasswordMd5":Ljava/lang/String;
    .end local v3    # "oldSecurityPasswordMd5":Ljava/lang/String;
    .end local v4    # "params":Lcom/qinggan/tsp/models/gwm/ReqParams;
    .end local v5    # "paramsString":Ljava/lang/String;
    .end local v6    # "updateSecurityCodeRequest":Lcom/qinggan/tsp/models/gwm/UpdateSecurityCodeRequest;
    :goto_41
    return-void

    .line 5288
    :catch_42
    move-exception v0

    .line 5289
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_41
.end method

.method public updateSoftwareReference(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/StatusResponse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2451
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2452
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUpdateService()Lcom/qinggan/tsp/service/QGUpdateService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGUpdateService;->updateSoftwareReference(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/StatusResponse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2456
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2453
    :catch_1d
    move-exception v1

    .line 2454
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2456
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public updateSoulMateSceneList(Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "updateSceneListReq"    # Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 496
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getSoulMateCloudService()Lcom/qinggan/tsp/service/SoulMateCloudService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/SoulMateCloudService;->addOrRemoveUserDisplayRules(Lcom/qinggan/tsp/models/soulmate/UpdateSceneListReq;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 500
    :goto_b
    return-void

    .line 497
    :catch_c
    move-exception v0

    .line 498
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateUserFavorite(Lcom/qinggan/tsp/models/userfavorite/UpdateFavoriteRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 7
    .param p1, "updateFavoriteRequest"    # Lcom/qinggan/tsp/models/userfavorite/UpdateFavoriteRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/userfavorite/UpdateFavoriteRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/userfavorite/UserFavoriteResp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1973
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/userfavorite/UserFavoriteResp;>;"
    :try_start_0
    invoke-static {}, Lcom/qinggan/tsp/config/TspSourceConfig;->cmsEnable()Z

    move-result v1

    if-eqz v1, :cond_12

    .line 1974
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteServiceCms()Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/cms/QGUserFavoriteServiceCms;->updateUserFavorite(Lcom/qinggan/tsp/models/userfavorite/UpdateFavoriteRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V

    .line 1981
    :goto_11
    return-void

    .line 1976
    :cond_12
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGUserFavoriteService()Lcom/qinggan/tsp/service/QGUserFavoriteService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGUserFavoriteService;->updateUserFavorite(Lcom/qinggan/tsp/models/userfavorite/UpdateFavoriteRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e

    goto :goto_11

    .line 1978
    :catch_1e
    move-exception v0

    .line 1979
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public updateUserInfo(Lcom/qinggan/tsp/models/account/UserUpdateBean;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "userUpdateBean"    # Lcom/qinggan/tsp/models/account/UserUpdateBean;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/UserUpdateBean;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/AccountBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 584
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/AccountBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->userUpdate(Lcom/qinggan/tsp/models/account/UserUpdateBean;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 588
    :goto_b
    return-void

    .line 585
    :catch_c
    move-exception v0

    .line 586
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/account/ReqUpdateVehicle;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "updateVehicle"    # Lcom/qinggan/tsp/models/account/ReqUpdateVehicle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/account/ReqUpdateVehicle;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResPonseUpdateVehicle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 785
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResPonseUpdateVehicle;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->updateVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/account/ReqUpdateVehicle;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 789
    :goto_b
    return-void

    .line 786
    :catch_c
    move-exception v0

    .line 787
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public updateVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/device/VehicleInfo;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "vehicleInfo"    # Lcom/qinggan/tsp/models/device/VehicleInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/models/device/VehicleInfo;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1557
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_8

    if-nez p2, :cond_9

    .line 1595
    :cond_8
    :goto_8
    return-void

    .line 1560
    :cond_9
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getBrand()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 1561
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setBrand(Ljava/lang/String;)V

    .line 1563
    :cond_18
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getBrandId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_27

    .line 1564
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setBrandId(Ljava/lang/String;)V

    .line 1566
    :cond_27
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getColor()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_36

    .line 1567
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setColor(Ljava/lang/String;)V

    .line 1569
    :cond_36
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getEngineNo()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_45

    .line 1570
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setEngineNo(Ljava/lang/String;)V

    .line 1572
    :cond_45
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getInsuranceId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 1573
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setInsuranceId(Ljava/lang/String;)V

    .line 1575
    :cond_54
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getLanguage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_63

    .line 1576
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setLanguage(Ljava/lang/String;)V

    .line 1578
    :cond_63
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getLicense()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_72

    .line 1579
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setLicense(Ljava/lang/String;)V

    .line 1581
    :cond_72
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getRemark()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_81

    .line 1582
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setRemark(Ljava/lang/String;)V

    .line 1584
    :cond_81
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getSeries()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_90

    .line 1585
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setSeries(Ljava/lang/String;)V

    .line 1587
    :cond_90
    invoke-virtual {p2}, Lcom/qinggan/tsp/models/device/VehicleInfo;->getType()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/TspManager;->hasEmptyString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9f

    .line 1588
    const-string v1, ""

    invoke-virtual {p2, v1}, Lcom/qinggan/tsp/models/device/VehicleInfo;->setType(Ljava/lang/String;)V

    .line 1591
    :cond_9f
    :try_start_9f
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGDeviceService()Lcom/qinggan/tsp/service/QGDeviceService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGDeviceService;->updateVehicle(Ljava/lang/String;Lcom/qinggan/tsp/models/device/VehicleInfo;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_aa
    .catch Ljava/lang/Exception; {:try_start_9f .. :try_end_aa} :catch_ac

    goto/16 :goto_8

    .line 1592
    :catch_ac
    move-exception v0

    .line 1593
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_8
.end method

.method public updateVoiceNote(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 9
    .param p1, "sid"    # Ljava/lang/String;
    .param p2, "voiceTitle"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3106
    .local p3, "cb":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 3107
    .local v2, "jsonObject":Lorg/json/JSONObject;
    const-string v3, "sid"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3108
    const-string v3, "voiceTitle"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 3109
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 3110
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGVoiceNoteService()Lcom/qinggan/tsp/service/QGVoiceNoteService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGVoiceNoteService;->updateVoiceNote(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_28} :catch_29

    .line 3114
    .end local v0    # "body":Lokhttp3/RequestBody;
    .end local v2    # "jsonObject":Lorg/json/JSONObject;
    :goto_28
    return-void

    .line 3111
    :catch_29
    move-exception v1

    .line 3112
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_28
.end method

.method public updateWapContractInfo(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 6
    .param p1, "tradeType"    # Ljava/lang/String;
    .param p2, "maxAmount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/account/ResPonseSuNingSignInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 938
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/account/ResPonseSuNingSignInfo;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/tsp/service/QGAccountService;->updateWapContractInfo(Ljava/lang/String;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 942
    :goto_b
    return-void

    .line 939
    :catch_c
    move-exception v0

    .line 940
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public upgradeProcessReport(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2491
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2492
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGFotaUpdateService()Lcom/qinggan/tsp/service/QGFotaUpgradeService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGFotaUpgradeService;->upgradeProcessReport(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2496
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2493
    :catch_1d
    move-exception v1

    .line 2494
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2496
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public upgradeResultReport(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2501
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2502
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGFotaUpdateService()Lcom/qinggan/tsp/service/QGFotaUpgradeService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGFotaUpgradeService;->upgradeResultReport(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2506
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2503
    :catch_1d
    move-exception v1

    .line 2504
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2506
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public uploadAudioFileNew(Ljava/util/List;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/advise/UploadFileRsp;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5627
    .local p1, "filePaths":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/advise/UploadFileRsp;>;"
    :try_start_0
    new-instance v2, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v2}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 5628
    .local v2, "builder":Lokhttp3/MultipartBody$Builder;
    sget-object v6, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    invoke-virtual {v2, v6}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 5629
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_e
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6d

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 5630
    .local v4, "filePath":Ljava/lang/String;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5631
    .local v3, "file":Ljava/io/File;
    const-string v7, "files"

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    const-string v9, "multipart/form-data"

    invoke-static {v9}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v9

    invoke-static {v9, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v9

    invoke-virtual {v2, v7, v8, v9}, Lokhttp3/MultipartBody$Builder;->addFormDataPart(Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 5632
    sget-object v7, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "file.getName() = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/qinggan/tsp/util/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4e} :catch_4f

    goto :goto_e

    .line 5637
    .end local v2    # "builder":Lokhttp3/MultipartBody$Builder;
    .end local v3    # "file":Ljava/io/File;
    .end local v4    # "filePath":Ljava/lang/String;
    :catch_4f
    move-exception v5

    .line 5638
    .local v5, "var8":Ljava/lang/Exception;
    sget-object v6, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "uploadAudioFileNew exception "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5640
    .end local v5    # "var8":Ljava/lang/Exception;
    :goto_6c
    return-void

    .line 5634
    .restart local v2    # "builder":Lokhttp3/MultipartBody$Builder;
    :cond_6d
    :try_start_6d
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v1

    .line 5635
    .local v1, "body":Lokhttp3/MultipartBody;
    const-string v0, "voice"

    .line 5636
    .local v0, "bizType":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAdviseService()Lcom/qinggan/tsp/service/QGAdviseService;

    move-result-object v6

    invoke-interface {v6, v0, v1}, Lcom/qinggan/tsp/service/QGAdviseService;->uploadAudioFiles(Ljava/lang/String;Lokhttp3/MultipartBody;)Lretrofit2/Call;

    move-result-object v6

    invoke-virtual {p0, v6, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_6d .. :try_end_7e} :catch_4f

    goto :goto_6c
.end method

.method public uploadAudioInfo(Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "voiceUrl"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5652
    .local p3, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    new-instance v2, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;

    invoke-direct {v2}, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;-><init>()V

    .line 5653
    .local v2, "req":Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;
    new-instance v1, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq$AdviseMsgData;

    invoke-direct {v1}, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq$AdviseMsgData;-><init>()V

    .line 5654
    .local v1, "msgData":Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq$AdviseMsgData;
    invoke-virtual {v1, p2}, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq$AdviseMsgData;->setVoice(Ljava/lang/String;)V

    .line 5655
    invoke-virtual {v2, p1}, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;->setVin(Ljava/lang/String;)V

    .line 5656
    const-string v4, "1"

    invoke-virtual {v2, v4}, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;->setSource(Ljava/lang/String;)V

    .line 5657
    invoke-virtual {v2, v1}, Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;->setContent(Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq$AdviseMsgData;)V

    .line 5658
    const-string v4, "application/json;charset=UTF-8"

    .line 5659
    invoke-static {v4}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/tsp/TspManager;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v3

    .line 5660
    .local v3, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGAdviseService()Lcom/qinggan/tsp/service/QGAdviseService;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/qinggan/tsp/service/QGAdviseService;->uploadAudioInfo(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v4

    invoke-virtual {p0, v4, p3}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    .line 5665
    .end local v1    # "msgData":Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq$AdviseMsgData;
    .end local v2    # "req":Lcom/qinggan/tsp/models/advise/UploadAudioInfoReq;
    .end local v3    # "requestBody":Lokhttp3/RequestBody;
    :goto_33
    return-void

    .line 5662
    :catch_34
    move-exception v0

    .line 5663
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_33
.end method

.method public uploadGuideMessage(Lcom/qinggan/tsp/models/account/OneStepPoiRequest;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "oneStepPoiRequest"    # Lcom/qinggan/tsp/models/account/OneStepPoiRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qinggan/tsp/models/account/OneStepPoiRequest;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 952
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->uploadGuideMessage(Lcom/qinggan/tsp/models/account/OneStepPoiRequest;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 956
    :goto_b
    return-void

    .line 953
    :catch_c
    move-exception v0

    .line 954
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public uploadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ[BLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 20
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "pathPrefix"    # Ljava/lang/String;
    .param p4, "totalLength"    # J
    .param p6, "start"    # J
    .param p8, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ[B",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/UploadBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2913
    .local p9, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/UploadBean;>;"
    :try_start_0
    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v7

    .line 2914
    .local v7, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-interface/range {v1 .. v7}, Lcom/qinggan/tsp/service/QGRemoteDebug;->uploadLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-virtual {p0, v1, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    .line 2920
    .end local v7    # "requestBody":Lokhttp3/RequestBody;
    :goto_24
    return-void

    .line 2916
    :catch_25
    move-exception v8

    .line 2917
    .local v8, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadLog requestFile: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    invoke-virtual {v8}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method

.method public uploadLogWithPushId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLjava/lang/String;[BLcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 21
    .param p1, "filename"    # Ljava/lang/String;
    .param p2, "sha1"    # Ljava/lang/String;
    .param p3, "pathPrefix"    # Ljava/lang/String;
    .param p4, "totalLength"    # J
    .param p6, "start"    # J
    .param p8, "pushId"    # Ljava/lang/String;
    .param p9, "bytes"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "JJ",
            "Ljava/lang/String;",
            "[B",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/remoteDebug/UploadBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 2928
    .local p10, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/remoteDebug/UploadBean;>;"
    :try_start_0
    const-string v1, "application/octet-stream"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    move-object/from16 v0, p9

    invoke-static {v1, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v8

    .line 2929
    .local v8, "requestBody":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGRemoteDebug()Lcom/qinggan/tsp/service/QGRemoteDebug;

    move-result-object v1

    invoke-static {p4, p5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static/range {p6 .. p7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object/from16 v7, p8

    invoke-interface/range {v1 .. v8}, Lcom/qinggan/tsp/service/QGRemoteDebug;->uploadLogWithPushId(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v1

    move-object/from16 v0, p10

    invoke-virtual {p0, v1, v0}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_26} :catch_27

    .line 2935
    .end local v8    # "requestBody":Lokhttp3/RequestBody;
    :goto_26
    return-void

    .line 2931
    :catch_27
    move-exception v9

    .line 2932
    .local v9, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/qinggan/tsp/TspManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadLog requestFile: e="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2933
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26
.end method

.method public verifyReceiptCode12306(Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 5
    .param p1, "checkCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 850
    .local p2, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    :try_start_0
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getAccountService()Lcom/qinggan/tsp/service/QGAccountService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/tsp/service/QGAccountService;->verifyReceiptCode12306(Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v1

    invoke-virtual {p0, v1, p2}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 854
    :goto_b
    return-void

    .line 851
    :catch_c
    move-exception v0

    .line 852
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b
.end method

.method public verifyTencentPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "cookie"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/qinggan/tsp/restmiddle/RestCallback",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5488
    .local p4, "callback":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<Lcom/qinggan/tsp/models/BaseBean;>;"
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5490
    .local v2, "jsonObject":Lorg/json/JSONObject;
    :try_start_5
    const-string v3, "deviceType"

    const-string v4, "hu"

    invoke-virtual {v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5491
    const-string v3, "deviceId"

    invoke-virtual {v2, v3, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5492
    const-string v3, "cookie"

    invoke-virtual {v2, v3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5493
    const-string v3, "password"

    invoke-virtual {v2, v3, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5494
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 5495
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGTencentService()Lcom/qinggan/tsp/service/QGTencentService;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/qinggan/tsp/service/QGTencentService;->verifyTencentPassword(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v3

    invoke-virtual {p0, v3, p4}, Lcom/qinggan/tsp/TspManager;->asyncMethod(Lretrofit2/Call;Lcom/qinggan/tsp/restmiddle/RestCallback;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_34} :catch_35

    .line 5499
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_34
    return-void

    .line 5496
    :catch_35
    move-exception v1

    .line 5497
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_34
.end method

.method public versionCheck(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2481
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2482
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGFotaUpdateService()Lcom/qinggan/tsp/service/QGFotaUpgradeService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGFotaUpgradeService;->versionCheck(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2486
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2483
    :catch_1d
    move-exception v1

    .line 2484
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2486
    const/4 v2, 0x0

    goto :goto_1c
.end method

.method public versionReport(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    .registers 6
    .param p1, "jsonObject"    # Lorg/json/JSONObject;

    .prologue
    .line 2471
    :try_start_0
    const-string v2, "application/json; charset=utf-8"

    invoke-static {v2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 2472
    .local v0, "body":Lokhttp3/RequestBody;
    invoke-virtual {p0}, Lcom/qinggan/tsp/TspManager;->getQGFotaUpdateService()Lcom/qinggan/tsp/service/QGFotaUpgradeService;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/qinggan/tsp/service/QGFotaUpgradeService;->versionReport(Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/qinggan/tsp/TspManager;->syncMethod(Lretrofit2/Call;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1c} :catch_1d

    .line 2476
    .end local v0    # "body":Lokhttp3/RequestBody;
    :goto_1c
    return-object v2

    .line 2473
    :catch_1d
    move-exception v1

    .line 2474
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 2476
    const/4 v2, 0x0

    goto :goto_1c
.end method
