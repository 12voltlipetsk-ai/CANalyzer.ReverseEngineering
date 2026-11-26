.class public Lcom/qinggan/tsp/util/GzipUtil;
.super Ljava/lang/Object;
.source "GzipUtil.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static gzip(Ljava/lang/String;)[B
    .registers 9
    .param p0, "data"    # Ljava/lang/String;

    .prologue
    .line 9
    const/4 v0, 0x0

    .line 10
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v4, 0x0

    .line 11
    .local v4, "gzip":Ljava/util/zip/GZIPOutputStream;
    const/4 v6, 0x0

    .line 13
    .local v6, "result":[B
    :try_start_3
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_8} :catch_2f
    .catchall {:try_start_3 .. :try_end_8} :catchall_41

    .line 14
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_8
    new-instance v5, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v5, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_d} :catch_57
    .catchall {:try_start_8 .. :try_end_d} :catchall_50

    .line 15
    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .local v5, "gzip":Ljava/util/zip/GZIPOutputStream;
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/util/zip/GZIPOutputStream;->write([B)V

    .line 16
    if-eqz v5, :cond_19

    .line 17
    invoke-virtual {v5}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 19
    :cond_19
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_1c} :catch_5a
    .catchall {:try_start_d .. :try_end_1c} :catchall_53

    move-result-object v6

    .line 24
    if-eqz v1, :cond_25

    .line 25
    :try_start_1f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 26
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_25} :catch_28

    :cond_25
    move-object v4, v5

    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 32
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    :cond_27
    :goto_27
    return-object v6

    .line 28
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_28
    move-exception v3

    .line 29
    .local v3, "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    move-object v4, v5

    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .line 31
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_27

    .line 20
    .end local v3    # "e2":Ljava/lang/Exception;
    :catch_2f
    move-exception v2

    .line 21
    .local v2, "e":Ljava/lang/Exception;
    :goto_30
    :try_start_30
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_41

    .line 24
    if-eqz v0, :cond_27

    .line 25
    :try_start_35
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_35 .. :try_end_3b} :catch_3c

    goto :goto_27

    .line 28
    :catch_3c
    move-exception v3

    .line 29
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_27

    .line 23
    .end local v2    # "e":Ljava/lang/Exception;
    .end local v3    # "e2":Ljava/lang/Exception;
    :catchall_41
    move-exception v7

    .line 24
    :goto_42
    if-eqz v0, :cond_4a

    .line 25
    :try_start_44
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 26
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_4a} :catch_4b

    .line 31
    :cond_4a
    :goto_4a
    throw v7

    .line 28
    :catch_4b
    move-exception v3

    .line 29
    .restart local v3    # "e2":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4a

    .line 23
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v3    # "e2":Ljava/lang/Exception;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catchall_50
    move-exception v7

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_42

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catchall_53
    move-exception v7

    move-object v4, v5

    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_42

    .line 20
    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    :catch_57
    move-exception v2

    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_30

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    :catch_5a
    move-exception v2

    move-object v4, v5

    .end local v5    # "gzip":Ljava/util/zip/GZIPOutputStream;
    .restart local v4    # "gzip":Ljava/util/zip/GZIPOutputStream;
    move-object v0, v1

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    goto :goto_30
.end method
