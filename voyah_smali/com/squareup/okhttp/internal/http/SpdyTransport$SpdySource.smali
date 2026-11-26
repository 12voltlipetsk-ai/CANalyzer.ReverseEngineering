.class Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;
.super Ljava/lang/Object;
.source "SpdyTransport.java"

# interfaces
.implements Lokio/Source;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/http/SpdyTransport;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SpdySource"
.end annotation


# instance fields
.field private final cacheBody:Ljava/io/OutputStream;

.field private final cacheRequest:Ljava/net/CacheRequest;

.field private closed:Z

.field private inputExhausted:Z

.field private final source:Lokio/Source;

.field private final stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/spdy/SpdyStream;Ljava/net/CacheRequest;)V
    .registers 5
    .param p1, "stream"    # Lcom/squareup/okhttp/internal/spdy/SpdyStream;
    .param p2, "cacheRequest"    # Ljava/net/CacheRequest;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    .line 255
    invoke-virtual {p1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->getSource()Lokio/Source;

    move-result-object v1

    iput-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lokio/Source;

    .line 258
    if-eqz p2, :cond_19

    invoke-virtual {p2}, Ljava/net/CacheRequest;->getBody()Ljava/io/OutputStream;

    move-result-object v0

    .line 259
    .local v0, "cacheBody":Ljava/io/OutputStream;
    :goto_11
    if-nez v0, :cond_14

    .line 260
    const/4 p2, 0x0

    .line 263
    :cond_14
    iput-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    .line 264
    iput-object p2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    .line 265
    return-void

    .line 258
    .end local v0    # "cacheBody":Ljava/io/OutputStream;
    :cond_19
    const/4 v0, 0x0

    goto :goto_11
.end method

.method private discardStream()Z
    .registers 8

    .prologue
    .line 311
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v2

    .line 312
    .local v2, "oldTimeoutNanos":J
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v1

    const-wide/16 v4, 0x64

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, v6}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 314
    const/16 v1, 0x64

    :try_start_19
    invoke-static {p0, v1}, Lcom/squareup/okhttp/internal/Util;->skipAll(Lokio/Source;I)Z
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_29
    .catchall {:try_start_19 .. :try_end_1c} :catchall_37

    .line 315
    const/4 v1, 0x1

    .line 319
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    :goto_28
    return v1

    .line 316
    :catch_29
    move-exception v0

    .line 317
    .local v0, "e":Ljava/io/IOException;
    const/4 v1, 0x0

    .line 319
    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    goto :goto_28

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_37
    move-exception v1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->readTimeout()Lokio/Timeout;

    move-result-object v4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v4, v2, v3, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    throw v1
.end method


# virtual methods
.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 294
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    if-eqz v0, :cond_5

    .line 308
    :cond_4
    :goto_4
    return-void

    .line 296
    :cond_5
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_10

    .line 297
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->discardStream()Z

    .line 300
    :cond_10
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    .line 302
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-nez v0, :cond_4

    .line 303
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->stream:Lcom/squareup/okhttp/internal/spdy/SpdyStream;

    sget-object v1, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->CANCEL:Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/spdy/SpdyStream;->closeLater(Lcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    .line 304
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v0, :cond_4

    .line 305
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    invoke-virtual {v0}, Ljava/net/CacheRequest;->abort()V

    goto :goto_4
.end method

.method public read(Lokio/Buffer;J)J
    .registers 10
    .param p1, "sink"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, -0x1

    .line 269
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    if-gez v2, :cond_21

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "byteCount < 0: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 270
    :cond_21
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->closed:Z

    if-eqz v2, :cond_2d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "closed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 271
    :cond_2d
    iget-boolean v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    if-eqz v2, :cond_33

    move-wide v4, v0

    .line 286
    :cond_32
    :goto_32
    return-wide v4

    .line 273
    :cond_33
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lokio/Source;

    invoke-interface {v2, p1, p2, p3}, Lokio/Source;->read(Lokio/Buffer;J)J

    move-result-wide v4

    .line 274
    .local v4, "read":J
    cmp-long v2, v4, v0

    if-nez v2, :cond_4b

    .line 275
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->inputExhausted:Z

    .line 276
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheRequest:Ljava/net/CacheRequest;

    if-eqz v2, :cond_49

    .line 277
    iget-object v2, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    :cond_49
    move-wide v4, v0

    .line 279
    goto :goto_32

    .line 282
    :cond_4b
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    if-eqz v0, :cond_32

    .line 283
    iget-object v1, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->cacheBody:Ljava/io/OutputStream;

    invoke-virtual {p1}, Lokio/Buffer;->size()J

    move-result-wide v2

    sub-long/2addr v2, v4

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Lokio/Buffer;->copyTo(Ljava/io/OutputStream;JJ)Lokio/Buffer;

    goto :goto_32
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 290
    iget-object v0, p0, Lcom/squareup/okhttp/internal/http/SpdyTransport$SpdySource;->source:Lokio/Source;

    invoke-interface {v0}, Lokio/Source;->timeout()Lokio/Timeout;

    move-result-object v0

    return-object v0
.end method
