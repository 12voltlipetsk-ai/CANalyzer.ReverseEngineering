.class public final Lokhttp3/logging/HttpLoggingInterceptor;
.super Ljava/lang/Object;
.source "HttpLoggingInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/logging/HttpLoggingInterceptor$Logger;,
        Lokhttp3/logging/HttpLoggingInterceptor$Level;
    }
.end annotation


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private volatile level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

.field private final logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 110
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->DEFAULT:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    invoke-direct {p0, v0}, Lokhttp3/logging/HttpLoggingInterceptor;-><init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V

    .line 111
    return-void
.end method

.method public constructor <init>(Lokhttp3/logging/HttpLoggingInterceptor$Logger;)V
    .registers 3
    .param p1, "logger"    # Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .prologue
    .line 113
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 119
    sget-object v0, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    iput-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 114
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    .line 115
    return-void
.end method

.method private bodyEncoded(Lokhttp3/Headers;)Z
    .registers 4
    .param p1, "headers"    # Lokhttp3/Headers;

    .prologue
    .line 295
    const-string v1, "Content-Encoding"

    invoke-virtual {p1, v1}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 296
    .local v0, "contentEncoding":Ljava/lang/String;
    if-eqz v0, :cond_12

    const-string v1, "identity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x1

    :goto_11
    return v1

    :cond_12
    const/4 v1, 0x0

    goto :goto_11
.end method

.method static isPlaintext(Lokio/Buffer;)Z
    .registers 11
    .param p0, "buffer"    # Lokio/Buffer;

    .prologue
    const-wide/16 v4, 0x40

    const/4 v9, 0x0

    .line 276
    :try_start_3
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 277
    .local v1, "prefix":Lokio/Buffer;
    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v2

    cmp-long v0, v2, v4

    if-gez v0, :cond_14

    invoke-virtual {p0}, Lokio/Buffer;->size()J

    move-result-wide v4

    .line 278
    .local v4, "byteCount":J
    :cond_14
    const-wide/16 v2, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Lokio/Buffer;JJ)Lokio/Buffer;

    .line 279
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1b
    const/16 v0, 0x10

    if-ge v8, v0, :cond_25

    .line 280
    invoke-virtual {v1}, Lokio/Buffer;->exhausted()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 288
    :cond_25
    const/4 v0, 0x1

    .line 290
    .end local v1    # "prefix":Lokio/Buffer;
    .end local v4    # "byteCount":J
    .end local v8    # "i":I
    :goto_26
    return v0

    .line 283
    .restart local v1    # "prefix":Lokio/Buffer;
    .restart local v4    # "byteCount":J
    .restart local v8    # "i":I
    :cond_27
    invoke-virtual {v1}, Lokio/Buffer;->readUtf8CodePoint()I

    move-result v6

    .line 284
    .local v6, "codePoint":I
    invoke-static {v6}, Ljava/lang/Character;->isISOControl(I)Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-static {v6}, Ljava/lang/Character;->isWhitespace(I)Z
    :try_end_34
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_34} :catch_3c

    move-result v0

    if-nez v0, :cond_39

    move v0, v9

    .line 285
    goto :goto_26

    .line 279
    :cond_39
    add-int/lit8 v8, v8, 0x1

    goto :goto_1b

    .line 289
    .end local v1    # "prefix":Lokio/Buffer;
    .end local v4    # "byteCount":J
    .end local v6    # "codePoint":I
    .end local v8    # "i":I
    :catch_3c
    move-exception v7

    .local v7, "e":Ljava/io/EOFException;
    move v0, v9

    .line 290
    goto :goto_26
.end method


# virtual methods
.method public getLevel()Lokhttp3/logging/HttpLoggingInterceptor$Level;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    return-object v0
.end method

.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 38
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v16, v0

    .line 135
    .local v16, "level":Lokhttp3/logging/HttpLoggingInterceptor$Level;
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v20

    .line 136
    .local v20, "request":Lokhttp3/Request;
    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor$Level;->NONE:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_1b

    .line 137
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v23

    .line 267
    :cond_1a
    :goto_1a
    return-object v23

    .line 139
    :cond_1b
    const/16 v23, 0x0

    .line 141
    .local v23, "response":Lokhttp3/Response;
    :try_start_1d
    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor$Level;->BODY:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_194

    const/16 v17, 0x1

    .line 142
    .local v17, "logBody":Z
    :goto_27
    if-nez v17, :cond_31

    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor$Level;->HEADERS:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    move-object/from16 v0, v16

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_198

    :cond_31
    const/16 v18, 0x1

    .line 144
    .local v18, "logHeaders":Z
    :goto_33
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v21

    .line 145
    .local v21, "requestBody":Lokhttp3/RequestBody;
    if-eqz v21, :cond_19c

    const/4 v13, 0x1

    .line 147
    .local v13, "hasRequestBody":Z
    :goto_3a
    invoke-interface/range {p1 .. p1}, Lokhttp3/Interceptor$Chain;->connection()Lokhttp3/Connection;

    move-result-object v7

    .line 148
    .local v7, "connection":Lokhttp3/Connection;
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v32, "--> "

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 149
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v32, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 150
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    if-eqz v7, :cond_19f

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, " "

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 151
    invoke-interface {v7}, Lokhttp3/Connection;->protocol()Lokhttp3/Protocol;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_90
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 152
    .local v22, "requestStartMessage":Ljava/lang/String;
    if-nez v18, :cond_d1

    if-eqz v13, :cond_d1

    .line 153
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v32, " ("

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v32

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v32, "-byte body)"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    .line 155
    :cond_d1
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 157
    if-eqz v18, :cond_1cb

    .line 158
    if-eqz v13, :cond_13e

    .line 161
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v29

    if-eqz v29, :cond_10c

    .line 162
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Content-Type: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 164
    :cond_10c
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v32

    const-wide/16 v34, -0x1

    cmp-long v29, v32, v34

    if-eqz v29, :cond_13e

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "Content-Length: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 169
    :cond_13e
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v14

    .line 170
    .local v14, "headers":Lokhttp3/Headers;
    const/4 v15, 0x0

    .local v15, "i":I
    invoke-virtual {v14}, Lokhttp3/Headers;->size()I

    move-result v11

    .local v11, "count":I
    :goto_147
    if-ge v15, v11, :cond_1a3

    .line 171
    invoke-virtual {v14, v15}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v19

    .line 173
    .local v19, "name":Ljava/lang/String;
    const-string v29, "Content-Type"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_191

    const-string v29, "Content-Length"

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v29

    if-nez v29, :cond_191

    .line 174
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v32

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14, v15}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 170
    :cond_191
    add-int/lit8 v15, v15, 0x1

    goto :goto_147

    .line 141
    .end local v7    # "connection":Lokhttp3/Connection;
    .end local v11    # "count":I
    .end local v13    # "hasRequestBody":Z
    .end local v14    # "headers":Lokhttp3/Headers;
    .end local v15    # "i":I
    .end local v17    # "logBody":Z
    .end local v18    # "logHeaders":Z
    .end local v19    # "name":Ljava/lang/String;
    .end local v21    # "requestBody":Lokhttp3/RequestBody;
    .end local v22    # "requestStartMessage":Ljava/lang/String;
    :cond_194
    const/16 v17, 0x0

    goto/16 :goto_27

    .line 142
    .restart local v17    # "logBody":Z
    :cond_198
    const/16 v18, 0x0

    goto/16 :goto_33

    .line 145
    .restart local v18    # "logHeaders":Z
    .restart local v21    # "requestBody":Lokhttp3/RequestBody;
    :cond_19c
    const/4 v13, 0x0

    goto/16 :goto_3a

    .line 151
    .restart local v7    # "connection":Lokhttp3/Connection;
    .restart local v13    # "hasRequestBody":Z
    :cond_19f
    const-string v29, ""

    goto/16 :goto_90

    .line 178
    .restart local v11    # "count":I
    .restart local v14    # "headers":Lokhttp3/Headers;
    .restart local v15    # "i":I
    .restart local v22    # "requestStartMessage":Ljava/lang/String;
    :cond_1a3
    if-eqz v17, :cond_1a7

    if-nez v13, :cond_2f3

    .line 179
    :cond_1a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 205
    .end local v11    # "count":I
    .end local v14    # "headers":Lokhttp3/Headers;
    .end local v15    # "i":I
    :cond_1cb
    :goto_1cb
    invoke-static {}, Ljava/lang/System;->nanoTime()J
    :try_end_1ce
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1ce} :catch_32d

    move-result-wide v26

    .line 208
    .local v26, "startNs":J
    :try_start_1cf
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;
    :try_end_1d6
    .catch Ljava/lang/Exception; {:try_start_1cf .. :try_end_1d6} :catch_403

    move-result-object v23

    .line 213
    :try_start_1d7
    sget-object v29, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v32

    sub-long v32, v32, v26

    move-object/from16 v0, v29

    move-wide/from16 v1, v32

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v30

    .line 215
    .local v30, "tookMs":J
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v24

    .line 216
    .local v24, "responseBody":Lokhttp3/ResponseBody;
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v8

    .line 217
    .local v8, "contentLength":J
    const-wide/16 v32, -0x1

    cmp-long v29, v8, v32

    if-eqz v29, :cond_427

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v29

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v32, "-byte"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 218
    .local v4, "bodySize":Ljava/lang/String;
    :goto_20e
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v32, v0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<-- "

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 219
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->code()I

    move-result v33

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v33

    .line 220
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/String;->isEmpty()Z

    move-result v29

    if-eqz v29, :cond_42b

    const-string v29, ""

    :goto_23b
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v33, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    .line 221
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v33

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v33, " ("

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v31}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v33, "ms"

    move-object/from16 v0, v29

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    if-nez v18, :cond_44c

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v34, ", "

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v34, " body"

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    :goto_29a
    move-object/from16 v0, v33

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const/16 v33, 0x29

    move-object/from16 v0, v29

    move/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    .line 218
    move-object/from16 v0, v32

    move-object/from16 v1, v29

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 224
    if-eqz v18, :cond_1a

    .line 225
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v14

    .line 226
    .restart local v14    # "headers":Lokhttp3/Headers;
    const/4 v15, 0x0

    .restart local v15    # "i":I
    invoke-virtual {v14}, Lokhttp3/Headers;->size()I

    move-result v11

    .restart local v11    # "count":I
    :goto_2c2
    if-ge v15, v11, :cond_450

    .line 227
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v15}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, ": "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v14, v15}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v15, v15, 0x1

    goto :goto_2c2

    .line 180
    .end local v4    # "bodySize":Ljava/lang/String;
    .end local v8    # "contentLength":J
    .end local v24    # "responseBody":Lokhttp3/ResponseBody;
    .end local v26    # "startNs":J
    .end local v30    # "tookMs":J
    :cond_2f3
    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v29

    if-eqz v29, :cond_347

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " (encoded body omitted)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V
    :try_end_32b
    .catch Ljava/lang/Exception; {:try_start_1d7 .. :try_end_32b} :catch_32d

    goto/16 :goto_1cb

    .line 263
    .end local v7    # "connection":Lokhttp3/Connection;
    .end local v11    # "count":I
    .end local v13    # "hasRequestBody":Z
    .end local v14    # "headers":Lokhttp3/Headers;
    .end local v15    # "i":I
    .end local v17    # "logBody":Z
    .end local v18    # "logHeaders":Z
    .end local v21    # "requestBody":Lokhttp3/RequestBody;
    .end local v22    # "requestStartMessage":Ljava/lang/String;
    :catch_32d
    move-exception v12

    .line 264
    .local v12, "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v32, "okhttp3.Response error"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 265
    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-interface {v0, v1}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v23

    goto/16 :goto_1a

    .line 184
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v7    # "connection":Lokhttp3/Connection;
    .restart local v11    # "count":I
    .restart local v13    # "hasRequestBody":Z
    .restart local v14    # "headers":Lokhttp3/Headers;
    .restart local v15    # "i":I
    .restart local v17    # "logBody":Z
    .restart local v18    # "logHeaders":Z
    .restart local v21    # "requestBody":Lokhttp3/RequestBody;
    .restart local v22    # "requestStartMessage":Ljava/lang/String;
    :cond_347
    :try_start_347
    new-instance v5, Lokio/Buffer;

    invoke-direct {v5}, Lokio/Buffer;-><init>()V

    .line 185
    .local v5, "buffer":Lokio/Buffer;
    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    .line 187
    sget-object v6, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 188
    .local v6, "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    .line 189
    .local v10, "contentType":Lokhttp3/MediaType;
    if-eqz v10, :cond_361

    .line 190
    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 193
    :cond_361
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 194
    invoke-static {v5}, Lokhttp3/logging/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v29

    if-eqz v29, :cond_3c5

    .line 195
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    invoke-virtual {v5, v6}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 196
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 197
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-byte body)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 196
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1cb

    .line 199
    :cond_3c5
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "--> END "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v20 .. v20}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, " (binary "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    .line 200
    invoke-virtual/range {v21 .. v21}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-byte body omitted)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    .line 199
    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1cb

    .line 209
    .end local v5    # "buffer":Lokio/Buffer;
    .end local v6    # "charset":Ljava/nio/charset/Charset;
    .end local v10    # "contentType":Lokhttp3/MediaType;
    .end local v11    # "count":I
    .end local v14    # "headers":Lokhttp3/Headers;
    .end local v15    # "i":I
    .restart local v26    # "startNs":J
    :catch_403
    move-exception v12

    .line 210
    .restart local v12    # "e":Ljava/lang/Exception;
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<-- HTTP FAILED: "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 211
    throw v12

    .line 217
    .end local v12    # "e":Ljava/lang/Exception;
    .restart local v8    # "contentLength":J
    .restart local v24    # "responseBody":Lokhttp3/ResponseBody;
    .restart local v30    # "tookMs":J
    :cond_427
    const-string v4, "unknown-length"

    goto/16 :goto_20e

    .line 220
    .restart local v4    # "bodySize":Ljava/lang/String;
    :cond_42b
    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v34, 0x20

    move-object/from16 v0, v29

    move/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v34

    move-object/from16 v0, v29

    move-object/from16 v1, v34

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    goto/16 :goto_23b

    .line 221
    :cond_44c
    const-string v29, ""

    goto/16 :goto_29a

    .line 230
    .restart local v11    # "count":I
    .restart local v14    # "headers":Lokhttp3/Headers;
    .restart local v15    # "i":I
    :cond_450
    if-eqz v17, :cond_458

    invoke-static/range {v23 .. v23}, Lokhttp3/internal/http/HttpHeaders;->hasBody(Lokhttp3/Response;)Z

    move-result v29

    if-nez v29, :cond_469

    .line 231
    :cond_458
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v32, "<-- END HTTP"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 232
    :cond_469
    invoke-virtual/range {v23 .. v23}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor;->bodyEncoded(Lokhttp3/Headers;)Z

    move-result v29

    if-eqz v29, :cond_488

    .line 233
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v32, "<-- END HTTP (encoded body omitted)"

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 235
    :cond_488
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v25

    .line 236
    .local v25, "source":Lokio/BufferedSource;
    const-wide v32, 0x7fffffffffffffffL

    move-object/from16 v0, v25

    move-wide/from16 v1, v32

    invoke-interface {v0, v1, v2}, Lokio/BufferedSource;->request(J)Z

    .line 237
    invoke-interface/range {v25 .. v25}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v5

    .line 239
    .restart local v5    # "buffer":Lokio/Buffer;
    sget-object v6, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    .line 240
    .restart local v6    # "charset":Ljava/nio/charset/Charset;
    invoke-virtual/range {v24 .. v24}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    .line 241
    .restart local v10    # "contentType":Lokhttp3/MediaType;
    if-eqz v10, :cond_4ac

    .line 242
    sget-object v29, Lokhttp3/logging/HttpLoggingInterceptor;->UTF8:Ljava/nio/charset/Charset;

    move-object/from16 v0, v29

    invoke-virtual {v10, v0}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v6

    .line 245
    :cond_4ac
    invoke-static {v5}, Lokhttp3/logging/HttpLoggingInterceptor;->isPlaintext(Lokio/Buffer;)Z

    move-result v29

    if-nez v29, :cond_4f1

    .line 246
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 247
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<-- END HTTP (binary "

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-byte body omitted)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 251
    :cond_4f1
    const-wide/16 v32, 0x0

    cmp-long v29, v8, v32

    if-eqz v29, :cond_557

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    const-string v32, ""

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 253
    new-instance v29, Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Lokio/Buffer;->clone()Lokio/Buffer;

    move-result-object v32

    move-object/from16 v0, v32

    invoke-virtual {v0, v6}, Lokio/Buffer;->readString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v28

    .line 254
    .local v28, "tmp":Ljava/lang/String;
    invoke-virtual/range {v28 .. v28}, Ljava/lang/String;->length()I

    move-result v29

    const/16 v32, 0x50

    move/from16 v0, v29

    move/from16 v1, v32

    if-lt v0, v1, :cond_587

    .line 255
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v33, 0x0

    const/16 v34, 0x50

    move-object/from16 v0, v28

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v33

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "..."

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    .line 260
    .end local v28    # "tmp":Ljava/lang/String;
    :cond_557
    :goto_557
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    new-instance v32, Ljava/lang/StringBuilder;

    invoke-direct/range {v32 .. v32}, Ljava/lang/StringBuilder;-><init>()V

    const-string v33, "<-- END HTTP ("

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v34

    move-object/from16 v0, v32

    move-wide/from16 v1, v34

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v32

    const-string v33, "-byte body)"

    invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v32

    invoke-virtual/range {v32 .. v32}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v32

    move-object/from16 v0, v29

    move-object/from16 v1, v32

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V

    goto/16 :goto_1a

    .line 257
    .restart local v28    # "tmp":Ljava/lang/String;
    :cond_587
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/logging/HttpLoggingInterceptor;->logger:Lokhttp3/logging/HttpLoggingInterceptor$Logger;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v28

    invoke-interface {v0, v1}, Lokhttp3/logging/HttpLoggingInterceptor$Logger;->log(Ljava/lang/String;)V
    :try_end_594
    .catch Ljava/lang/Exception; {:try_start_347 .. :try_end_594} :catch_32d

    goto :goto_557
.end method

.method public setLevel(Lokhttp3/logging/HttpLoggingInterceptor$Level;)Lokhttp3/logging/HttpLoggingInterceptor;
    .registers 4
    .param p1, "level"    # Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .prologue
    .line 123
    if-nez p1, :cond_a

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "level == null. Use Level.NONE instead."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_a
    iput-object p1, p0, Lokhttp3/logging/HttpLoggingInterceptor;->level:Lokhttp3/logging/HttpLoggingInterceptor$Level;

    .line 125
    return-object p0
.end method
