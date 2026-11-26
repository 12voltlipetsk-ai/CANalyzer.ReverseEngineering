.class public Lcom/qinggan/tsp/util/PayUtil;
.super Ljava/lang/Object;
.source "PayUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/util/PayUtil$PayKeyUtil;,
        Lcom/qinggan/tsp/util/PayUtil$GoodsTypeUtil;,
        Lcom/qinggan/tsp/util/PayUtil$OrderChannelUtil;,
        Lcom/qinggan/tsp/util/PayUtil$OrderBizTypeUtil;,
        Lcom/qinggan/tsp/util/PayUtil$TradeTypeUtil;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static lock:Ljava/lang/Object;

.field private static sPayUtil:Lcom/qinggan/tsp/util/PayUtil;


# instance fields
.field private mPdsn:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const-class v0, Lcom/qinggan/tsp/util/PayUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/util/PayUtil;->TAG:Ljava/lang/String;

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/util/PayUtil;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static getInstance()Lcom/qinggan/tsp/util/PayUtil;
    .registers 2

    .prologue
    .line 34
    sget-object v0, Lcom/qinggan/tsp/util/PayUtil;->sPayUtil:Lcom/qinggan/tsp/util/PayUtil;

    if-eqz v0, :cond_7

    .line 35
    sget-object v0, Lcom/qinggan/tsp/util/PayUtil;->sPayUtil:Lcom/qinggan/tsp/util/PayUtil;

    .line 41
    :goto_6
    return-object v0

    .line 36
    :cond_7
    sget-object v1, Lcom/qinggan/tsp/util/PayUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 37
    :try_start_a
    sget-object v0, Lcom/qinggan/tsp/util/PayUtil;->sPayUtil:Lcom/qinggan/tsp/util/PayUtil;

    if-eqz v0, :cond_15

    .line 38
    sget-object v0, Lcom/qinggan/tsp/util/PayUtil;->sPayUtil:Lcom/qinggan/tsp/util/PayUtil;

    monitor-exit v1

    goto :goto_6

    .line 40
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 39
    :cond_15
    :try_start_15
    new-instance v0, Lcom/qinggan/tsp/util/PayUtil;

    invoke-direct {v0}, Lcom/qinggan/tsp/util/PayUtil;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/util/PayUtil;->sPayUtil:Lcom/qinggan/tsp/util/PayUtil;

    .line 40
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 41
    sget-object v0, Lcom/qinggan/tsp/util/PayUtil;->sPayUtil:Lcom/qinggan/tsp/util/PayUtil;

    goto :goto_6
.end method

.method private md5(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 106
    const-string v5, ""

    .line 128
    :cond_8
    :goto_8
    return-object v5

    .line 108
    :cond_9
    const/4 v4, 0x0

    .line 110
    .local v4, "md5":Ljava/security/MessageDigest;
    :try_start_a
    new-instance v1, Ljava/lang/String;

    const-string v7, "utf-8"

    invoke-virtual {p1, v7}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v7

    const/4 v8, 0x2

    invoke-static {v7, v8}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v7

    const-string v8, "utf-8"

    invoke-direct {v1, v7, v8}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 111
    .local v1, "base64Result":Ljava/lang/String;
    sget-object v7, Lcom/qinggan/tsp/util/PayUtil;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "base64Result = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 113
    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v2

    .line 114
    .local v2, "bytes":[B
    const-string v5, ""

    .line 115
    .local v5, "result":Ljava/lang/String;
    array-length v8, v2

    const/4 v7, 0x0

    :goto_46
    if-ge v7, v8, :cond_8

    aget-byte v0, v2, v7

    .line 116
    .local v0, "b":B
    and-int/lit16 v9, v0, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 117
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6a

    .line 118
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 120
    :cond_6a
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_a .. :try_end_7a} :catch_7e
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_a .. :try_end_7a} :catch_85

    move-result-object v5

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_46

    .line 123
    .end local v0    # "b":B
    .end local v1    # "base64Result":Ljava/lang/String;
    .end local v2    # "bytes":[B
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_7e
    move-exception v3

    .line 124
    .local v3, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v3}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 128
    .end local v3    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_82
    const-string v5, ""

    goto :goto_8

    .line 125
    :catch_85
    move-exception v3

    .line 126
    .local v3, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v3}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_82
.end method


# virtual methods
.method public createRequestBody(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .registers 6
    .param p1, "requestBody"    # Ljava/lang/Object;

    .prologue
    .line 65
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 66
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 67
    .local v2, "jsonString":Ljava/lang/String;
    const-string v3, "application/json; charset=utf-8"

    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 68
    .local v0, "body":Lokhttp3/RequestBody;
    return-object v0
.end method

.method public createRequestBody1(Ljava/lang/String;)Lokhttp3/RequestBody;
    .registers 4
    .param p1, "jsonString"    # Ljava/lang/String;

    .prologue
    .line 72
    const-string v1, "application/json; charset=utf-8"

    invoke-static {v1}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    invoke-static {v1, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    .line 73
    .local v0, "body":Lokhttp3/RequestBody;
    return-object v0
.end method

.method public formatPrice(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "price"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p1, :cond_5

    .line 56
    const-string v2, ""

    .line 60
    :goto_4
    return-object v2

    .line 58
    :cond_5
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, p1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 59
    .local v0, "decimal":Ljava/math/BigDecimal;
    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    .line 60
    .local v1, "setScale":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_4
.end method

.method public getSign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "orderNo"    # Ljava/lang/String;
    .param p2, "orderBizType"    # Ljava/lang/String;
    .param p3, "tradePrice"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    iget-object v1, p0, Lcom/qinggan/tsp/util/PayUtil;->mPdsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {p0}, Lcom/qinggan/tsp/util/PayUtil;->getSyncTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/util/PayUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSignWallet(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10
    .param p1, "orderNo"    # Ljava/lang/String;
    .param p2, "orderBizType"    # Ljava/lang/String;
    .param p3, "tradePrice"    # Ljava/lang/String;
    .param p4, "key"    # Ljava/lang/String;
    .param p5, "uid"    # Ljava/lang/String;

    .prologue
    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .local v0, "stringBuilder":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v1, p0, Lcom/qinggan/tsp/util/PayUtil;->mPdsn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Lcom/qinggan/tsp/util/PayUtil;->getSyncTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 97
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/tsp/util/PayUtil;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSyncTime()J
    .registers 5

    .prologue
    .line 101
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public setPdsn(Ljava/lang/String;)V
    .registers 2
    .param p1, "pdsn"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/qinggan/tsp/util/PayUtil;->mPdsn:Ljava/lang/String;

    .line 51
    return-void
.end method
