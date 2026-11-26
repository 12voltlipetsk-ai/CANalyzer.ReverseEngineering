.class public Lcom/qinggan/tsp/util/MD5;
.super Ljava/lang/Object;
.source "MD5.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getMD5(Ljava/lang/String;)Ljava/lang/String;
    .registers 8
    .param p0, "info"    # Ljava/lang/String;

    .prologue
    .line 17
    :try_start_0
    const-string v5, "MD5"

    invoke-static {v5}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 18
    .local v3, "md5":Ljava/security/MessageDigest;
    const-string v5, "UTF-8"

    invoke-virtual {p0, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/security/MessageDigest;->update([B)V

    .line 19
    invoke-virtual {v3}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    .line 21
    .local v1, "encryption":[B
    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    .line 22
    .local v4, "strBuf":Ljava/lang/StringBuffer;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    array-length v5, v1

    if-ge v2, v5, :cond_4f

    .line 24
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3f

    .line 26
    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    aget-byte v6, v1, v2

    and-int/lit16 v6, v6, 0xff

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 22
    :goto_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 30
    :cond_3f
    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_4a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_4a} :catch_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_4a} :catch_54

    goto :goto_3c

    .line 36
    .end local v1    # "encryption":[B
    .end local v2    # "i":I
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "strBuf":Ljava/lang/StringBuffer;
    :catch_4b
    move-exception v0

    .line 38
    .local v0, "e":Ljava/security/NoSuchAlgorithmException;
    const-string v5, ""

    .line 42
    .end local v0    # "e":Ljava/security/NoSuchAlgorithmException;
    :goto_4e
    return-object v5

    .line 34
    .restart local v1    # "encryption":[B
    .restart local v2    # "i":I
    .restart local v3    # "md5":Ljava/security/MessageDigest;
    .restart local v4    # "strBuf":Ljava/lang/StringBuffer;
    :cond_4f
    :try_start_4f
    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_52
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_4f .. :try_end_52} :catch_4b
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_4f .. :try_end_52} :catch_54

    move-result-object v5

    goto :goto_4e

    .line 40
    .end local v1    # "encryption":[B
    .end local v2    # "i":I
    .end local v3    # "md5":Ljava/security/MessageDigest;
    .end local v4    # "strBuf":Ljava/lang/StringBuffer;
    :catch_54
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    const-string v5, ""

    goto :goto_4e
.end method
