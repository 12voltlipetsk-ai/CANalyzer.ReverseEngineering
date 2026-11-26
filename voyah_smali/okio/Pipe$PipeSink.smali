.class final Lokio/Pipe$PipeSink;
.super Ljava/lang/Object;
.source "Pipe.java"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lokio/Pipe;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "PipeSink"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 3
    .param p1, "this$0"    # Lokio/Pipe;

    .prologue
    .line 59
    iput-object p1, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Lokio/Timeout;

    invoke-direct {v0}, Lokio/Timeout;-><init>()V

    iput-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 96
    :try_start_5
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sinkClosed:Z

    if-eqz v0, :cond_d

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_5 .. :try_end_c} :catchall_1e

    .line 104
    :goto_c
    return-void

    .line 98
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Lokio/Pipe$PipeSink;->flush()V
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_21

    .line 100
    :try_start_10
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lokio/Pipe;->sinkClosed:Z

    .line 101
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 103
    monitor-exit v1

    goto :goto_c

    :catchall_1e
    move-exception v0

    monitor-exit v1
    :try_end_20
    .catchall {:try_start_10 .. :try_end_20} :catchall_1e

    throw v0

    .line 100
    :catchall_21
    move-exception v0

    :try_start_22
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lokio/Pipe;->sinkClosed:Z

    .line 101
    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    throw v0
    :try_end_2f
    .catchall {:try_start_22 .. :try_end_2f} :catchall_1e
.end method

.method public flush()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 84
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v1, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v1

    .line 85
    :try_start_5
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sinkClosed:Z

    if-eqz v0, :cond_1f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "closed"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :catchall_13
    move-exception v0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_5 .. :try_end_15} :catchall_13

    throw v0

    .line 89
    :cond_16
    :try_start_16
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v2, v2, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 87
    :cond_1f
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v0, v0, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v0}, Lokio/Buffer;->size()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_3b

    .line 88
    iget-object v0, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v0, v0, Lokio/Pipe;->sourceClosed:Z

    if-eqz v0, :cond_16

    new-instance v0, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_16 .. :try_end_3c} :catchall_13

    .line 92
    return-void
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 16
    .param p1, "source"    # Lokio/Buffer;
    .param p2, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v10, 0x0

    .line 63
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v5, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    monitor-enter v5

    .line 64
    :try_start_7
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v4, v4, Lokio/Pipe;->sinkClosed:Z

    if-eqz v4, :cond_33

    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v6, "closed"

    invoke-direct {v4, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 80
    :catchall_15
    move-exception v4

    monitor-exit v5
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_15

    throw v4

    .line 69
    :cond_18
    :try_start_18
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-wide v6, v4, Lokio/Pipe;->maxBufferSize:J

    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v4, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Lokio/Buffer;->size()J

    move-result-wide v8

    sub-long v0, v6, v8

    .line 70
    .local v0, "bufferSpaceAvailable":J
    cmp-long v4, v0, v10

    if-nez v4, :cond_45

    .line 71
    iget-object v4, p0, Lokio/Pipe$PipeSink;->timeout:Lokio/Timeout;

    iget-object v6, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v6, v6, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4, v6}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    .line 66
    .end local v0    # "bufferSpaceAvailable":J
    :cond_33
    :goto_33
    cmp-long v4, p2, v10

    if-lez v4, :cond_59

    .line 67
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-boolean v4, v4, Lokio/Pipe;->sourceClosed:Z

    if-eqz v4, :cond_18

    new-instance v4, Ljava/io/IOException;

    const-string v6, "source is closed"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 75
    .restart local v0    # "bufferSpaceAvailable":J
    :cond_45
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 76
    .local v2, "bytesToWrite":J
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v4, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4, p1, v2, v3}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    .line 77
    sub-long/2addr p2, v2

    .line 78
    iget-object v4, p0, Lokio/Pipe$PipeSink;->this$0:Lokio/Pipe;

    iget-object v4, v4, Lokio/Pipe;->buffer:Lokio/Buffer;

    invoke-virtual {v4}, Ljava/lang/Object;->notifyAll()V

    goto :goto_33

    .line 80
    .end local v0    # "bufferSpaceAvailable":J
    .end local v2    # "bytesToWrite":J
    :cond_59
    monitor-exit v5
    :try_end_5a
    .catchall {:try_start_18 .. :try_end_5a} :catchall_15

    .line 81
    return-void
.end method
