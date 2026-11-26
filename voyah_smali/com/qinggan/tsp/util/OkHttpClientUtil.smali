.class public Lcom/qinggan/tsp/util/OkHttpClientUtil;
.super Ljava/lang/Object;
.source "OkHttpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getKeyStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;
    .registers 5
    .param p0, "caInputStream"    # Ljava/io/InputStream;
    .param p1, "cAalias"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;,
            Ljava/io/IOException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .prologue
    .line 131
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    .line 133
    .local v0, "certificateFactory":Ljava/security/cert/CertificateFactory;
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 134
    .local v1, "keyStore":Ljava/security/KeyStore;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/security/KeyStore;->load(Ljava/security/KeyStore$LoadStoreParameter;)V

    .line 135
    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/security/KeyStore;->setCertificateEntry(Ljava/lang/String;Ljava/security/cert/Certificate;)V

    .line 136
    return-object v1
.end method

.method public static httpsHelper(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;Ljava/lang/String;)Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;
    .registers 16
    .param p0, "caInputStream"    # Ljava/io/InputStream;
    .param p1, "clientInputStream"    # Ljava/io/InputStream;
    .param p2, "cAalias"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;,
            Ljava/io/IOException;,
            Ljava/security/KeyManagementException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v11, 0x0

    .line 81
    new-instance v6, Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;

    invoke-direct {v6}, Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;-><init>()V

    .line 83
    .local v6, "sslParams":Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;
    invoke-static {p0, p2}, Lcom/qinggan/tsp/util/OkHttpClientUtil;->getKeyStore(Ljava/io/InputStream;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 84
    .local v4, "keyStore":Ljava/security/KeyStore;
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v7

    .line 85
    .local v7, "trustManagerFactory":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v7, v4}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 86
    invoke-virtual {v7}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v8

    .line 87
    .local v8, "trustManagers":[Ljavax/net/ssl/TrustManager;
    const/4 v3, 0x0

    .line 89
    .local v3, "keyManagers":[Ljavax/net/ssl/KeyManager;
    if-nez p1, :cond_1e

    const/4 v3, 0x0

    .line 92
    :cond_1e
    :try_start_1e
    const-string v9, "BKS"

    invoke-static {v9}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 93
    .local v0, "clientKeyStore":Ljava/security/KeyStore;
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v0, p1, v9}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 94
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v2

    .line 95
    .local v2, "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    invoke-virtual {p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v9

    invoke-virtual {v2, v0, v9}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 96
    invoke-virtual {v2}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;
    :try_end_3d
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1e .. :try_end_3d} :catch_64

    move-result-object v3

    .line 102
    .end local v0    # "clientKeyStore":Ljava/security/KeyStore;
    .end local v2    # "keyManagerFactory":Ljavax/net/ssl/KeyManagerFactory;
    :goto_3e
    array-length v9, v8

    if-ne v9, v10, :cond_47

    aget-object v9, v8, v11

    instance-of v9, v9, Ljavax/net/ssl/X509TrustManager;

    if-nez v9, :cond_69

    .line 103
    :cond_47
    new-instance v9, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unexpected default trust managers:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {v8}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 98
    :catch_64
    move-exception v1

    .line 99
    .local v1, "e":Ljava/security/UnrecoverableKeyException;
    invoke-virtual {v1}, Ljava/security/UnrecoverableKeyException;->printStackTrace()V

    goto :goto_3e

    .line 105
    .end local v1    # "e":Ljava/security/UnrecoverableKeyException;
    :cond_69
    aget-object v9, v8, v11

    check-cast v9, Ljavax/net/ssl/X509TrustManager;

    iput-object v9, v6, Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;->trustManagerVerifyCa:Ljavax/net/ssl/X509TrustManager;

    .line 107
    const-string v9, "TLS"

    invoke-static {v9}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v5

    .line 108
    .local v5, "sslContext":Ljavax/net/ssl/SSLContext;
    new-array v9, v10, [Ljavax/net/ssl/TrustManager;

    iget-object v10, v6, Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;->trustManagerVerifyCa:Ljavax/net/ssl/X509TrustManager;

    aput-object v10, v9, v11

    new-instance v10, Ljava/security/SecureRandom;

    invoke-direct {v10}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v5, v3, v9, v10}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 109
    invoke-virtual {v5}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v9

    iput-object v9, v6, Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;->sslSocketFactoryVerifyCa:Ljavax/net/ssl/SSLSocketFactory;

    .line 110
    return-object v6
.end method

.method public static pfxToBks(Ljava/io/InputStream;Ljava/io/InputStream;Ljava/io/InputStream;Ljava/lang/String;)Ljava/io/InputStream;
    .registers 21
    .param p0, "caStream"    # Ljava/io/InputStream;
    .param p1, "subcaStream"    # Ljava/io/InputStream;
    .param p2, "pkcs12Stream"    # Ljava/io/InputStream;
    .param p3, "pkcs12Password"    # Ljava/lang/String;

    .prologue
    .line 140
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v12

    .line 142
    .local v12, "password":[C
    :try_start_4
    const-string v15, "PKCS12"

    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v13

    .line 143
    .local v13, "pkcs12":Ljava/security/KeyStore;
    move-object/from16 v0, p2

    invoke-virtual {v13, v0, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 144
    invoke-virtual {v13}, Ljava/security/KeyStore;->aliases()Ljava/util/Enumeration;

    move-result-object v2

    .line 146
    .local v2, "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v15

    if-eqz v15, :cond_68

    .line 147
    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 151
    .local v1, "alias":Ljava/lang/String;
    invoke-virtual {v13, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v6

    .line 152
    .local v6, "certificate":Ljava/security/cert/Certificate;
    invoke-virtual {v13, v1, v12}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v10

    .line 153
    .local v10, "key":Ljava/security/Key;
    invoke-virtual {v13, v1}, Ljava/security/KeyStore;->getCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;

    move-result-object v5

    .line 154
    .local v5, "cert":Ljava/security/cert/Certificate;
    const-string v15, "BKS"

    invoke-static {v15}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v3

    .line 155
    .local v3, "bks":Ljava/security/KeyStore;
    const/4 v15, 0x0

    invoke-virtual {v3, v15, v12}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 157
    const-string v15, "X.509"

    invoke-static {v15}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v7

    .line 158
    .local v7, "certificateFactory":Ljava/security/cert/CertificateFactory;
    move-object/from16 v0, p0

    invoke-virtual {v7, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    .line 159
    .local v4, "ca":Ljava/security/cert/Certificate;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v14

    .line 160
    .local v14, "subca":Ljava/security/cert/Certificate;
    const/4 v15, 0x3

    new-array v8, v15, [Ljava/security/cert/Certificate;

    const/4 v15, 0x0

    aput-object v6, v8, v15

    const/4 v15, 0x1

    aput-object v4, v8, v15

    const/4 v15, 0x2

    aput-object v14, v8, v15

    .line 161
    .local v8, "chain":[Ljava/security/cert/Certificate;
    invoke-virtual {v3, v1, v10, v12, v8}, Ljava/security/KeyStore;->setKeyEntry(Ljava/lang/String;Ljava/security/Key;[C[Ljava/security/cert/Certificate;)V

    .line 162
    new-instance v11, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v11}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 163
    .local v11, "out":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {v3, v11, v12}, Ljava/security/KeyStore;->store(Ljava/io/OutputStream;[C)V

    .line 165
    new-instance v15, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v11}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v16

    invoke-direct/range {v15 .. v16}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 170
    .end local v1    # "alias":Ljava/lang/String;
    .end local v2    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v3    # "bks":Ljava/security/KeyStore;
    .end local v4    # "ca":Ljava/security/cert/Certificate;
    .end local v5    # "cert":Ljava/security/cert/Certificate;
    .end local v6    # "certificate":Ljava/security/cert/Certificate;
    .end local v7    # "certificateFactory":Ljava/security/cert/CertificateFactory;
    .end local v8    # "chain":[Ljava/security/cert/Certificate;
    .end local v10    # "key":Ljava/security/Key;
    .end local v11    # "out":Ljava/io/ByteArrayOutputStream;
    .end local v13    # "pkcs12":Ljava/security/KeyStore;
    .end local v14    # "subca":Ljava/security/cert/Certificate;
    :goto_67
    return-object v15

    .line 149
    .restart local v2    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .restart local v13    # "pkcs12":Ljava/security/KeyStore;
    :cond_68
    new-instance v15, Ljava/lang/Exception;

    const-string v16, "pkcs12 file not contain a alias"

    invoke-direct/range {v15 .. v16}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v15
    :try_end_70
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_70} :catch_70

    .line 166
    .end local v2    # "aliases":Ljava/util/Enumeration;, "Ljava/util/Enumeration<Ljava/lang/String;>;"
    .end local v13    # "pkcs12":Ljava/security/KeyStore;
    :catch_70
    move-exception v9

    .line 167
    .local v9, "e":Ljava/lang/Exception;
    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const/4 v15, 0x0

    goto :goto_67
.end method
