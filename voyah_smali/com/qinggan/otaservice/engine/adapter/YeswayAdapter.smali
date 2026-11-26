.class public Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"

# interfaces
.implements Lcom/qinggan/otaservice/engine/ServerAdapter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;,
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;,
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;
    }
.end annotation


# instance fields
.field private mAppKey:Ljava/lang/String;

.field private mAppScrect:Ljava/lang/String;

.field private mDateFormat:Ljava/text/SimpleDateFormat;

.field private mErrorCode:J

.field private mErrorMsg:Ljava/lang/String;

.field private mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

.field private mHttpAdapter:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;

.field private mTBoxManager:Lcom/qinggan/tbox/TBoxManager;

.field private mTransActionId:Ljava/lang/String;

.field private mTuid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    const-string v0, "70281839"

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTuid:Ljava/lang/String;

    .line 28
    const-string v0, "96045683-A921-4C59-B3F2-799C85546C71"

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mAppKey:Ljava/lang/String;

    .line 29
    const-string v0, "12784AFD-9E22-4516-A8BF-24492A5A3F03"

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mAppScrect:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mErrorMsg:Ljava/lang/String;

    .line 32
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mErrorCode:J

    .line 34
    iput-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 35
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMddHHmmssSSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    .line 41
    new-instance v0, Lcom/qinggan/tsp/manager/ServiceManager;

    const-string v1, "http://125.208.10.220"

    invoke-direct {v0, p1, v1}, Lcom/qinggan/tsp/manager/ServiceManager;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-class v1, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;

    .line 42
    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/manager/ServiceManager;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mHttpAdapter:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;

    .line 43
    invoke-static {p1, v2}, Lcom/qinggan/tbox/TBoxManager;->get(Landroid/content/Context;Lcom/qinggan/tbox/TBoxManager$OnInitListener;)Lcom/qinggan/tbox/TBoxManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTBoxManager:Lcom/qinggan/tbox/TBoxManager;

    .line 44
    return-void
.end method

.method private convertSize(Ljava/lang/String;)J
    .registers 10
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    const-wide/high16 v6, 0x4090000000000000L    # 1024.0

    .line 175
    const-wide/16 v2, 0x0

    .line 177
    .local v2, "size":J
    const/4 v1, 0x0

    .line 178
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {p1, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D
    :try_end_12
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_12} :catch_17

    move-result-wide v4

    mul-double/2addr v4, v6

    mul-double/2addr v4, v6

    double-to-long v2, v4

    .line 182
    :goto_16
    return-wide v2

    .line 179
    :catch_17
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_16
.end method

.method private convertVersion(I)Ljava/lang/String;
    .registers 7
    .param p1, "code"    # I

    .prologue
    const/16 v4, 0x2e

    const/4 v3, 0x5

    .line 186
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 187
    .local v0, "num":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_60

    .line 188
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x1

    .line 189
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_C51EBPBAP"

    .line 190
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x4

    .line 191
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 192
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 194
    :goto_5f
    return-object v1

    :cond_60
    const-string v1, ""

    goto :goto_5f
.end method

.method private doParsePackage(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)V
    .registers 6
    .param p1, "pkg"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 163
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 164
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->versionname:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1400(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->upgrade:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1500(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 165
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->upgrade:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1500(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "N"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_50

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1600(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    .line 166
    new-instance v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;

    invoke-direct {v0}, Lcom/qinggan/otaservice/common/FullUpgradePkg;-><init>()V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 167
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->url:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1600(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->version:I
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1700(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->convertVersion(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 169
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->filesize:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1800(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->convertSize(Ljava/lang/String;)J

    move-result-wide v2

    iput-wide v2, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    .line 170
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->introduction:Ljava/lang/String;
    invoke-static {p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->access$1900(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    .line 172
    :cond_50
    return-void
.end method

.method private getSignCode(Ljava/lang/String;)Ljava/lang/String;
    .registers 13
    .param p1, "transactionid"    # Ljava/lang/String;

    .prologue
    .line 124
    const/4 v4, 0x0

    .line 126
    .local v4, "md5":Ljava/security/MessageDigest;
    :try_start_1
    const-string v7, "MD5"

    invoke-static {v7}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v4

    .line 127
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTuid:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mAppKey:Ljava/lang/String;

    .line 128
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mAppScrect:Ljava/lang/String;

    .line 129
    invoke-virtual {v8}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "input":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 131
    .local v1, "bytes":[B
    const-string v5, ""

    .line 132
    .local v5, "result":Ljava/lang/String;
    array-length v8, v1

    const/4 v7, 0x0

    :goto_3a
    if-ge v7, v8, :cond_78

    aget-byte v0, v1, v7

    .line 133
    .local v0, "b":B
    and-int/lit16 v9, v0, 0xff

    invoke-static {v9}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    .line 134
    .local v6, "temp":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    if-ne v9, v10, :cond_5e

    .line 135
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 137
    :cond_5e
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_6e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_6e} :catch_72

    move-result-object v5

    .line 132
    add-int/lit8 v7, v7, 0x1

    goto :goto_3a

    .line 140
    .end local v0    # "b":B
    .end local v1    # "bytes":[B
    .end local v3    # "input":Ljava/lang/String;
    .end local v5    # "result":Ljava/lang/String;
    .end local v6    # "temp":Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 141
    .local v2, "e":Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v2}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    .line 143
    const-string v5, ""

    .end local v2    # "e":Ljava/security/NoSuchAlgorithmException;
    :cond_78
    return-object v5
.end method

.method private getTransactionid()Ljava/lang/String;
    .registers 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mDateFormat:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getVersionCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 8
    .param p1, "mpu"    # Ljava/lang/String;
    .param p2, "mcu"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0xd

    const/4 v3, 0x4

    .line 147
    const/4 v1, 0x0

    .line 148
    .local v1, "result":I
    if-eqz p1, :cond_5a

    if-eqz p2, :cond_5a

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_5a

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v4, :cond_5a

    .line 150
    :try_start_14
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    .line 151
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x4

    .line 152
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xa

    .line 153
    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0xd

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 154
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_59
    .catch Ljava/lang/NumberFormatException; {:try_start_14 .. :try_end_59} :catch_5b

    move-result v1

    .line 159
    :cond_5a
    :goto_5a
    return v1

    .line 155
    :catch_5b
    move-exception v0

    .line 156
    .local v0, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_5a
.end method


# virtual methods
.method public finishDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "newVersion"    # Ljava/lang/String;

    .prologue
    .line 100
    return-void
.end method

.method public getErrorCode()J
    .registers 3

    .prologue
    .line 117
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mErrorCode:J

    return-wide v0
.end method

.method public getErrorMsg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mErrorMsg:Ljava/lang/String;

    return-object v0
.end method

.method public getFullPkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;

    return-object v0
.end method

.method public getPatchPkgs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation

    .prologue
    .line 90
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSendTime()J
    .registers 3

    .prologue
    .line 95
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V
    .registers 2
    .param p1, "processInfo"    # Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .prologue
    .line 109
    return-void
.end method

.method public searchUpdate(I)Z
    .registers 9
    .param p1, "createType"    # I

    .prologue
    const/4 v3, 0x0

    .line 56
    const/4 v6, 0x0

    .line 58
    .local v6, "response":Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;
    invoke-direct {p0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->getTransactionid()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTransActionId:Ljava/lang/String;

    .line 59
    new-instance v1, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

    invoke-direct {v1, p0, v3}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;-><init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;)V

    .line 60
    .local v1, "request":Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;-><init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;)V

    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    invoke-static {v1, v0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$102(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    .line 61
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$100(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    move-result-object v0

    iget-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTuid:Ljava/lang/String;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->tuid:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->access$302(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$100(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    move-result-object v0

    iget-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTransActionId:Ljava/lang/String;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->transactionid:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->access$402(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$100(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    move-result-object v0

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 64
    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 63
    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->version:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->access$502(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;Ljava/lang/String;)Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, v3}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;-><init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;)V

    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->clientversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    invoke-static {v1, v0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$602(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    .line 66
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->clientversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$600(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    move-result-object v0

    iget-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mAppKey:Ljava/lang/String;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->appkey:Ljava/lang/String;
    invoke-static {v0, v2}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->access$802(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;Ljava/lang/String;)Ljava/lang/String;

    .line 67
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->clientversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->access$600(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    move-result-object v0

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-direct {p0, v2, v3}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->getVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    # setter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->version:I
    invoke-static {v0, v2}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->access$902(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;I)I

    .line 69
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mHttpAdapter:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;

    iget-object v2, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTuid:Ljava/lang/String;

    iget-object v3, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mAppKey:Ljava/lang/String;

    iget-object v4, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTransActionId:Ljava/lang/String;

    iget-object v5, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mTransActionId:Ljava/lang/String;

    .line 70
    invoke-direct {p0, v5}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->getSignCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 69
    invoke-interface/range {v0 .. v5}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;->searchUpdate(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;

    move-result-object v6

    .line 71
    if-eqz v6, :cond_97

    .line 72
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->access$1000(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

    move-result-object v0

    if-eqz v0, :cond_8a

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->access$1000(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

    move-result-object v0

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->errcode:I
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->access$1100(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;)I

    move-result v0

    if-eqz v0, :cond_8a

    .line 73
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->access$1000(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

    move-result-object v0

    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->errmsg:Ljava/lang/String;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->access$1200(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->mErrorMsg:Ljava/lang/String;

    .line 74
    const/4 v0, 0x0

    .line 80
    :goto_89
    return v0

    .line 76
    :cond_8a
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->lastversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->access$1300(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    move-result-object v0

    if-eqz v0, :cond_97

    .line 77
    # getter for: Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->lastversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;
    invoke-static {v6}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->access$1300(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;->doParsePackage(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)V

    .line 80
    :cond_97
    const/4 v0, 0x1

    goto :goto_89
.end method

.method public setListener(Lcom/qinggan/otaservice/engine/ServerAdapterListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    .prologue
    .line 52
    return-void
.end method

.method public updateLocalVersion(Z)Z
    .registers 3
    .param p1, "currentSys"    # Z

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public uploadResult(IJJ)V
    .registers 6
    .param p1, "code"    # I
    .param p2, "taskId"    # J
    .param p4, "taskItemId"    # J

    .prologue
    .line 104
    return-void
.end method
