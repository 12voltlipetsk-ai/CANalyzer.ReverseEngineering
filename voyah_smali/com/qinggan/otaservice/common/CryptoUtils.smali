.class public Lcom/qinggan/otaservice/common/CryptoUtils;
.super Ljava/lang/Object;
.source "CryptoUtils.java"


# static fields
.field public static final FOTA_PKG_CHECKCODE_ALG_MD5:Ljava/lang/String; = "MD5"

.field public static final FOTA_PKG_CHECKCODE_ALG_SHA1:Ljava/lang/String; = "SHA-1"

.field public static final FOTA_PKG_ENC_ALG_AES:Ljava/lang/String; = "AES"

.field public static final FOTA_PKG_ENC_ALG_NONE:Ljava/lang/String; = "NONE"

.field public static final FOTA_PKG_RSA_ALG:Ljava/lang/String; = "RSA"

.field public static final FOTA_PKG_SIGNATURE_ALG:Ljava/lang/String; = "SHA512withRSA"

.field private static final FOTA_PUB_KEY:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGkN8o6lhtQ/XsOOMRxktz6Cvc\r\n            3EeyGoCE0/NBvbgI1AGk0puTg1VrOZCSCJYprNbhMO9aZPnm3MA8kOxGtJnI6wue\r\n            o2w4NNjH6kKUWRFLheZK8ttsmvkqpZERe1g39Q2/Ob0RwqnTH7HZkjLK7tH2mdYO\r\n            c9V9A4FKTV0pij8NoQIDAQAB"

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    const-class v0, Lcom/qinggan/otaservice/common/CryptoUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static calPackageCheckCode(Ljava/io/File;Ljava/lang/String;)Ljava/lang/String;
    .registers 15
    .param p0, "file"    # Ljava/io/File;
    .param p1, "alg"    # Ljava/lang/String;

    .prologue
    .line 122
    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v11

    if-eqz v11, :cond_11

    .line 123
    :cond_8
    sget-object v11, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    const-string v12, "checkCode alg is error,please check"

    invoke-static {v11, v12}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const/4 v11, 0x0

    .line 160
    :goto_10
    return-object v11

    .line 126
    :cond_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .local v1, "builder":Ljava/lang/StringBuilder;
    const/4 v6, 0x0

    .line 128
    .local v6, "fileInputStream":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    .line 130
    .local v3, "digestInputStream":Ljava/security/DigestInputStream;
    :try_start_18
    new-instance v7, Ljava/io/FileInputStream;

    invoke-direct {v7, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1d
    .catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_1d} :catch_6b
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_18 .. :try_end_1d} :catch_7f
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_1d} :catch_93
    .catchall {:try_start_18 .. :try_end_1d} :catchall_a7

    .line 131
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .local v7, "fileInputStream":Ljava/io/FileInputStream;
    :try_start_1d
    invoke-static {p1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v10

    .line 132
    .local v10, "messageDigest":Ljava/security/MessageDigest;
    new-instance v4, Ljava/security/DigestInputStream;

    invoke-direct {v4, v7, v10}, Ljava/security/DigestInputStream;-><init>(Ljava/io/InputStream;Ljava/security/MessageDigest;)V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_1d .. :try_end_26} :catch_cd
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1d .. :try_end_26} :catch_c6
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_26} :catch_bf
    .catchall {:try_start_1d .. :try_end_26} :catchall_b8

    .line 133
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .local v4, "digestInputStream":Ljava/security/DigestInputStream;
    const/high16 v11, 0x200000

    :try_start_28
    new-array v0, v11, [B

    .line 134
    .local v0, "buffer":[B
    :cond_2a
    invoke-virtual {v4, v0}, Ljava/security/DigestInputStream;->read([B)I

    move-result v11

    if-gtz v11, :cond_2a

    .line 135
    invoke-virtual {v10}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    .line 136
    .local v2, "digest":[B
    const-string v8, ""

    .line 137
    .local v8, "hexString":Ljava/lang/String;
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_37
    array-length v11, v2

    if-ge v9, v11, :cond_53

    .line 138
    aget-byte v11, v2, v9

    and-int/lit16 v11, v11, 0xff

    invoke-static {v11}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    .line 139
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v11

    const/4 v12, 0x2

    if-ge v11, v12, :cond_4d

    .line 140
    const/4 v11, 0x0

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 142
    :cond_4d
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_50
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_50} :catch_d0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_28 .. :try_end_50} :catch_c9
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_50} :catch_c2
    .catchall {:try_start_28 .. :try_end_50} :catchall_bb

    .line 137
    add-int/lit8 v9, v9, 0x1

    goto :goto_37

    .line 152
    :cond_53
    if-eqz v4, :cond_58

    .line 153
    :try_start_55
    invoke-virtual {v4}, Ljava/security/DigestInputStream;->close()V

    .line 154
    :cond_58
    if-eqz v7, :cond_5d

    .line 155
    invoke-virtual {v7}, Ljava/io/FileInputStream;->close()V
    :try_end_5d
    .catch Ljava/io/IOException; {:try_start_55 .. :try_end_5d} :catch_64

    :cond_5d
    move-object v3, v4

    .end local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v6, v7

    .line 160
    .end local v0    # "buffer":[B
    .end local v2    # "digest":[B
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v8    # "hexString":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    :cond_5f
    :goto_5f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto :goto_10

    .line 156
    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v0    # "buffer":[B
    .restart local v2    # "digest":[B
    .restart local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v8    # "hexString":Ljava/lang/String;
    .restart local v9    # "i":I
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catch_64
    move-exception v5

    .line 157
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    move-object v3, v4

    .end local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v6, v7

    .line 159
    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_5f

    .line 144
    .end local v0    # "buffer":[B
    .end local v2    # "digest":[B
    .end local v5    # "e":Ljava/io/IOException;
    .end local v8    # "hexString":Ljava/lang/String;
    .end local v9    # "i":I
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catch_6b
    move-exception v5

    .line 145
    .local v5, "e":Ljava/io/FileNotFoundException;
    :goto_6c
    :try_start_6c
    invoke-virtual {v5}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6f
    .catchall {:try_start_6c .. :try_end_6f} :catchall_a7

    .line 152
    if-eqz v3, :cond_74

    .line 153
    :try_start_71
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 154
    :cond_74
    if-eqz v6, :cond_5f

    .line 155
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_79
    .catch Ljava/io/IOException; {:try_start_71 .. :try_end_79} :catch_7a

    goto :goto_5f

    .line 156
    :catch_7a
    move-exception v5

    .line 157
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 146
    .end local v5    # "e":Ljava/io/IOException;
    :catch_7f
    move-exception v5

    .line 147
    .local v5, "e":Ljava/security/NoSuchAlgorithmException;
    :goto_80
    :try_start_80
    invoke-virtual {v5}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
    :try_end_83
    .catchall {:try_start_80 .. :try_end_83} :catchall_a7

    .line 152
    if-eqz v3, :cond_88

    .line 153
    :try_start_85
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 154
    :cond_88
    if-eqz v6, :cond_5f

    .line 155
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_8d
    .catch Ljava/io/IOException; {:try_start_85 .. :try_end_8d} :catch_8e

    goto :goto_5f

    .line 156
    :catch_8e
    move-exception v5

    .line 157
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 148
    .end local v5    # "e":Ljava/io/IOException;
    :catch_93
    move-exception v5

    .line 149
    .restart local v5    # "e":Ljava/io/IOException;
    :goto_94
    :try_start_94
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V
    :try_end_97
    .catchall {:try_start_94 .. :try_end_97} :catchall_a7

    .line 152
    if-eqz v3, :cond_9c

    .line 153
    :try_start_99
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 154
    :cond_9c
    if-eqz v6, :cond_5f

    .line 155
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_a1
    .catch Ljava/io/IOException; {:try_start_99 .. :try_end_a1} :catch_a2

    goto :goto_5f

    .line 156
    :catch_a2
    move-exception v5

    .line 157
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5f

    .line 151
    .end local v5    # "e":Ljava/io/IOException;
    :catchall_a7
    move-exception v11

    .line 152
    :goto_a8
    if-eqz v3, :cond_ad

    .line 153
    :try_start_aa
    invoke-virtual {v3}, Ljava/security/DigestInputStream;->close()V

    .line 154
    :cond_ad
    if-eqz v6, :cond_b2

    .line 155
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_b2
    .catch Ljava/io/IOException; {:try_start_aa .. :try_end_b2} :catch_b3

    .line 159
    :cond_b2
    :goto_b2
    throw v11

    .line 156
    :catch_b3
    move-exception v5

    .line 157
    .restart local v5    # "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b2

    .line 151
    .end local v5    # "e":Ljava/io/IOException;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    :catchall_b8
    move-exception v11

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_a8

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catchall_bb
    move-exception v11

    move-object v3, v4

    .end local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_a8

    .line 148
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_bf
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_94

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catch_c2
    move-exception v5

    move-object v3, v4

    .end local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_94

    .line 146
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_c6
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_80

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catch_c9
    move-exception v5

    move-object v3, v4

    .end local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_80

    .line 144
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .end local v10    # "messageDigest":Ljava/security/MessageDigest;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    :catch_cd
    move-exception v5

    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6c

    .end local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    .end local v6    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v10    # "messageDigest":Ljava/security/MessageDigest;
    :catch_d0
    move-exception v5

    move-object v3, v4

    .end local v4    # "digestInputStream":Ljava/security/DigestInputStream;
    .restart local v3    # "digestInputStream":Ljava/security/DigestInputStream;
    move-object v6, v7

    .end local v7    # "fileInputStream":Ljava/io/FileInputStream;
    .restart local v6    # "fileInputStream":Ljava/io/FileInputStream;
    goto :goto_6c
.end method

.method private static getPublicKey()Ljava/security/PublicKey;
    .registers 6

    .prologue
    .line 103
    :try_start_0
    const-string v4, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCGkN8o6lhtQ/XsOOMRxktz6Cvc\r\n            3EeyGoCE0/NBvbgI1AGk0puTg1VrOZCSCJYprNbhMO9aZPnm3MA8kOxGtJnI6wue\r\n            o2w4NNjH6kKUWRFLheZK8ttsmvkqpZERe1g39Q2/Ob0RwqnTH7HZkjLK7tH2mdYO\r\n            c9V9A4FKTV0pij8NoQIDAQAB"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    .line 104
    .local v0, "decoderByte":[B
    new-instance v3, Ljava/security/spec/X509EncodedKeySpec;

    invoke-direct {v3, v0}, Ljava/security/spec/X509EncodedKeySpec;-><init>([B)V

    .line 105
    .local v3, "spec":Ljava/security/spec/X509EncodedKeySpec;
    const-string v4, "RSA"

    invoke-static {v4}, Ljava/security/KeyFactory;->getInstance(Ljava/lang/String;)Ljava/security/KeyFactory;

    move-result-object v2

    .line 108
    .local v2, "keyFactory":Ljava/security/KeyFactory;
    invoke-virtual {v2, v3}, Ljava/security/KeyFactory;->generatePublic(Ljava/security/spec/KeySpec;)Ljava/security/PublicKey;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_17

    move-result-object v4

    .line 111
    .end local v2    # "keyFactory":Ljava/security/KeyFactory;
    .end local v3    # "spec":Ljava/security/spec/X509EncodedKeySpec;
    :goto_16
    return-object v4

    .line 109
    :catch_17
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    const-string v5, "Get PubKey Error!"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v4, 0x0

    goto :goto_16
.end method

.method public static verifySign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7
    .param p0, "signAlg"    # Ljava/lang/String;
    .param p1, "filePath"    # Ljava/lang/String;
    .param p2, "sign"    # Ljava/lang/String;

    .prologue
    .line 57
    sget-object v1, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    const-string v2, "verfiySign Info { "

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    sget-object v1, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            SignAlg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " FilePath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    sget-object v1, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "            SignInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    sget-object v1, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    const-string v1, "SHA512withRSA"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_62

    .line 62
    invoke-static {}, Lcom/qinggan/otaservice/common/CryptoUtils;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    .line 63
    .local v0, "key":Ljava/security/PublicKey;
    if-eqz v0, :cond_62

    .line 64
    sget-object v1, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    const-string v2, "Begin to verify sign....."

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {v0, p1, p2}, Lcom/qinggan/otaservice/common/CryptoUtils;->verifySign_SHA512WithRSA(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 68
    .end local v0    # "key":Ljava/security/PublicKey;
    :goto_61
    return v1

    :cond_62
    const/4 v1, 0x0

    goto :goto_61
.end method

.method private static verifySign_SHA512WithRSA(Ljava/security/PublicKey;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13
    .param p0, "publicKey"    # Ljava/security/PublicKey;
    .param p1, "inFilePath"    # Ljava/lang/String;
    .param p2, "signBase64"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 81
    invoke-static {p2, v7}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v4

    .line 82
    .local v4, "sign":[B
    :try_start_5
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_a} :catch_31
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_a} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_5 .. :try_end_a} :catch_52
    .catch Ljava/security/SignatureException; {:try_start_5 .. :try_end_a} :catch_59

    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v9, 0x0

    .line 84
    :try_start_b
    const-string v6, "SHA512withRSA"

    invoke-static {v6}, Ljava/security/Signature;->getInstance(Ljava/lang/String;)Ljava/security/Signature;

    move-result-object v5

    .line 86
    .local v5, "signature":Ljava/security/Signature;
    invoke-virtual {v5, p0}, Ljava/security/Signature;->initVerify(Ljava/security/PublicKey;)V

    .line 87
    const/16 v6, 0x400

    new-array v0, v6, [B

    .line 88
    .local v0, "buff":[B
    const/4 v3, -0x1

    .line 89
    .local v3, "len":I
    :goto_19
    invoke-virtual {v2, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v6, -0x1

    if-eq v3, v6, :cond_3b

    .line 90
    const/4 v6, 0x0

    invoke-virtual {v5, v0, v6, v3}, Ljava/security/Signature;->update([BII)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_24} :catch_25
    .catchall {:try_start_b .. :try_end_24} :catchall_5f

    goto :goto_19

    .line 82
    .end local v0    # "buff":[B
    .end local v3    # "len":I
    .end local v5    # "signature":Ljava/security/Signature;
    :catch_25
    move-exception v6

    :try_start_26
    throw v6
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_27

    .line 94
    :catchall_27
    move-exception v8

    move-object v9, v6

    :goto_29
    if-eqz v2, :cond_30

    if-eqz v9, :cond_5b

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_30} :catch_54
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2d .. :try_end_30} :catch_31
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_2d .. :try_end_30} :catch_52
    .catch Ljava/security/SignatureException; {:try_start_2d .. :try_end_30} :catch_59

    :cond_30
    :goto_30
    :try_start_30
    throw v8
    :try_end_31
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_30 .. :try_end_31} :catch_31
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_31} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_30 .. :try_end_31} :catch_52
    .catch Ljava/security/SignatureException; {:try_start_30 .. :try_end_31} :catch_59

    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_31
    move-exception v1

    .line 96
    .local v1, "e":Ljava/lang/Exception;
    :goto_32
    sget-object v6, Lcom/qinggan/otaservice/common/CryptoUtils;->TAG:Ljava/lang/String;

    const-string v8, "verifySign_SHA512WithRSA Error!"

    invoke-static {v6, v8}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    .line 97
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3a
    :goto_3a
    return v6

    .line 93
    .restart local v0    # "buff":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v5    # "signature":Ljava/security/Signature;
    :cond_3b
    :try_start_3b
    invoke-virtual {v5, v4}, Ljava/security/Signature;->verify([B)Z
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3e} :catch_25
    .catchall {:try_start_3b .. :try_end_3e} :catchall_5f

    move-result v6

    .line 94
    if-eqz v2, :cond_3a

    if-eqz v9, :cond_4e

    :try_start_43
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_46
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_46} :catch_47
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_43 .. :try_end_46} :catch_31
    .catch Ljava/io/IOException; {:try_start_43 .. :try_end_46} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_43 .. :try_end_46} :catch_52
    .catch Ljava/security/SignatureException; {:try_start_43 .. :try_end_46} :catch_59

    goto :goto_3a

    :catch_47
    move-exception v8

    :try_start_48
    invoke-virtual {v9, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3a

    .end local v0    # "buff":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v5    # "signature":Ljava/security/Signature;
    :catch_4c
    move-exception v1

    goto :goto_32

    .restart local v0    # "buff":[B
    .restart local v2    # "in":Ljava/io/FileInputStream;
    .restart local v3    # "len":I
    .restart local v5    # "signature":Ljava/security/Signature;
    :cond_4e
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    goto :goto_3a

    .end local v0    # "buff":[B
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v3    # "len":I
    .end local v5    # "signature":Ljava/security/Signature;
    :catch_52
    move-exception v1

    goto :goto_32

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :catch_54
    move-exception v6

    invoke-virtual {v9, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_30

    .end local v2    # "in":Ljava/io/FileInputStream;
    :catch_59
    move-exception v1

    goto :goto_32

    .restart local v2    # "in":Ljava/io/FileInputStream;
    :cond_5b
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_5e
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_48 .. :try_end_5e} :catch_31
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_5e} :catch_4c
    .catch Ljava/security/InvalidKeyException; {:try_start_48 .. :try_end_5e} :catch_52
    .catch Ljava/security/SignatureException; {:try_start_48 .. :try_end_5e} :catch_59

    goto :goto_30

    :catchall_5f
    move-exception v6

    move-object v8, v6

    goto :goto_29
.end method
