.class final Lcom/squareup/okhttp/Cache$CacheRequestImpl;
.super Ljava/net/CacheRequest;
.source "Cache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/Cache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CacheRequestImpl"
.end annotation


# instance fields
.field private body:Ljava/io/OutputStream;

.field private cacheOut:Ljava/io/OutputStream;

.field private done:Z

.field private final editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

.field final synthetic this$0:Lcom/squareup/okhttp/Cache;


# direct methods
.method public constructor <init>(Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V
    .registers 5
    .param p2, "editor"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 326
    iput-object p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    invoke-direct {p0}, Ljava/net/CacheRequest;-><init>()V

    .line 327
    iput-object p2, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .line 328
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    .line 329
    new-instance v0, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;

    iget-object v1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/squareup/okhttp/Cache$CacheRequestImpl$1;-><init>(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Ljava/io/OutputStream;Lcom/squareup/okhttp/Cache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)V

    iput-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    .line 348
    return-void
.end method

.method static synthetic access$600(Lcom/squareup/okhttp/Cache$CacheRequestImpl;)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache$CacheRequestImpl;

    .prologue
    .line 320
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    return v0
.end method

.method static synthetic access$602(Lcom/squareup/okhttp/Cache$CacheRequestImpl;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/Cache$CacheRequestImpl;
    .param p1, "x1"    # Z

    .prologue
    .line 320
    iput-boolean p1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3

    .prologue
    .line 351
    iget-object v1, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    monitor-enter v1

    .line 352
    :try_start_3
    iget-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    if-eqz v0, :cond_9

    .line 353
    monitor-exit v1

    .line 363
    :goto_8
    return-void

    .line 355
    :cond_9
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->done:Z

    .line 356
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->this$0:Lcom/squareup/okhttp/Cache;

    # operator++ for: Lcom/squareup/okhttp/Cache;->writeAbortCount:I
    invoke-static {v0}, Lcom/squareup/okhttp/Cache;->access$808(Lcom/squareup/okhttp/Cache;)I

    .line 357
    monitor-exit v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_1f

    .line 358
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->cacheOut:Ljava/io/OutputStream;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/Util;->closeQuietly(Ljava/io/Closeable;)V

    .line 360
    :try_start_17
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->editor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_1c} :catch_1d

    goto :goto_8

    .line 361
    :catch_1d
    move-exception v0

    goto :goto_8

    .line 357
    :catchall_1f
    move-exception v0

    :try_start_20
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    throw v0
.end method

.method public getBody()Ljava/io/OutputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    iget-object v0, p0, Lcom/squareup/okhttp/Cache$CacheRequestImpl;->body:Ljava/io/OutputStream;

    return-object v0
.end method
