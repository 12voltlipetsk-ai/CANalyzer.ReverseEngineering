.class Lcom/qinggan/tsp/manager/ServiceManager$3;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/manager/ServiceManager;->getTrustAllCerts()[Ljavax/net/ssl/TrustManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/ServiceManager;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/ServiceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/ServiceManager;

    .prologue
    .line 364
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager$3;->this$0:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 3
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 367
    return-void
.end method

.method public checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .registers 9
    .param p1, "chain"    # [Ljava/security/cert/X509Certificate;
    .param p2, "authType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .prologue
    .line 372
    :try_start_0
    const-string v3, "X509"

    invoke-static {v3}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 373
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    const/4 v3, 0x0

    check-cast v3, Ljava/security/KeyStore;

    invoke-virtual {v1, v3}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 374
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v5, :cond_2e

    aget-object v2, v4, v3

    .line 375
    .local v2, "trustManager":Ljavax/net/ssl/TrustManager;
    check-cast v2, Ljavax/net/ssl/X509TrustManager;

    .end local v2    # "trustManager":Ljavax/net/ssl/TrustManager;
    invoke-interface {v2, p1, p2}, Ljavax/net/ssl/X509TrustManager;->checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1b} :catch_1e

    .line 374
    add-int/lit8 v3, v3, 0x1

    goto :goto_12

    .line 377
    .end local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :catch_1e
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    iget-object v3, p0, Lcom/qinggan/tsp/manager/ServiceManager$3;->this$0:Lcom/qinggan/tsp/manager/ServiceManager;

    iget-object v3, v3, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    const-string v4, "[checkServerTrusted] server is not trusted!"

    invoke-static {v3, v4}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    new-instance v3, Ljava/security/cert/CertificateException;

    invoke-direct {v3, v0}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 381
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    :cond_2e
    return-void
.end method

.method public getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .registers 2

    .prologue
    .line 385
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/security/cert/X509Certificate;

    return-object v0
.end method
