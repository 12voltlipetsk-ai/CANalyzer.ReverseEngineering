.class public Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;
.super Ljava/lang/Object;
.source "TspSupplierSignCertConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final filePath:Ljava/lang/String; = "/keyinfo/sign.config"

.field private static supplierSignCert:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    .line 36
    const-class v2, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->TAG:Ljava/lang/String;

    .line 43
    new-instance v1, Ljava/io/File;

    const-string v2, "/keyinfo/sign.config"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 44
    .local v1, "saveFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 45
    sget-object v2, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->TAG:Ljava/lang/String;

    const-string v3, "suppliersigncertconfig don\'t exist!"

    invoke-static {v2, v3}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_1c
    :try_start_1c
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    new-instance v3, Ljava/io/FileReader;

    const-string v4, "/keyinfo/sign.config"

    invoke-direct {v3, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const-class v4, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;

    .line 50
    invoke-virtual {v2, v3, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;

    sput-object v2, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->supplierSignCert:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;
    :try_end_32
    .catch Ljava/io/FileNotFoundException; {:try_start_1c .. :try_end_32} :catch_33

    .line 55
    :goto_32
    return-void

    .line 51
    :catch_33
    move-exception v0

    .line 52
    .local v0, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_32
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    return-void
.end method

.method public static getCertSerialNumber()Ljava/lang/String;
    .registers 1

    .prologue
    .line 68
    sget-object v0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->supplierSignCert:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;

    if-eqz v0, :cond_b

    .line 69
    sget-object v0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->supplierSignCert:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;

    invoke-virtual {v0}, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->getCertSerialNumber()Ljava/lang/String;

    move-result-object v0

    .line 71
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method

.method public static getIdSignature()Ljava/lang/String;
    .registers 1

    .prologue
    .line 59
    sget-object v0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->supplierSignCert:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;

    if-eqz v0, :cond_b

    .line 60
    sget-object v0, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig;->supplierSignCert:Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;

    invoke-virtual {v0}, Lcom/qinggan/tsp/config/TspSupplierSignCertConfig$SupplierSignCertBean;->getIdSignature()Ljava/lang/String;

    move-result-object v0

    .line 62
    :goto_a
    return-object v0

    :cond_b
    const-string v0, ""

    goto :goto_a
.end method
