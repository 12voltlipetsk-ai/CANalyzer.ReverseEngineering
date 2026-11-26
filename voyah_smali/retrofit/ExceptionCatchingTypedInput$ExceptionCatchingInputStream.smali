.class Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;
.super Ljava/io/InputStream;
.source "ExceptionCatchingTypedInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lretrofit/ExceptionCatchingTypedInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ExceptionCatchingInputStream"
.end annotation


# instance fields
.field private final delegate:Ljava/io/InputStream;

.field private thrownException:Ljava/io/IOException;


# direct methods
.method constructor <init>(Ljava/io/InputStream;)V
    .registers 2
    .param p1, "delegate"    # Ljava/io/InputStream;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 41
    iput-object p1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;)Ljava/io/IOException;
    .registers 2
    .param p0, "x0"    # Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;

    .prologue
    .line 36
    iget-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    return-object v0
.end method


# virtual methods
.method public available()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 82
    :try_start_0
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 83
    :catch_7
    move-exception v0

    .line 84
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 85
    throw v0
.end method

.method public close()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 91
    :try_start_0
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_6

    .line 96
    return-void

    .line 92
    :catch_6
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 94
    throw v0
.end method

.method public declared-synchronized mark(I)V
    .registers 3
    .param p1, "readLimit"    # I

    .prologue
    .line 99
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0, p1}, Ljava/io/InputStream;->mark(I)V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_8

    .line 100
    monitor-exit p0

    return-void

    .line 99
    :catchall_8
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public markSupported()Z
    .registers 2

    .prologue
    .line 112
    iget-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    return v0
.end method

.method public read()I
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->read()I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 47
    :catch_7
    move-exception v0

    .line 48
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 49
    throw v0
.end method

.method public read([B)I
    .registers 4
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 55
    :try_start_0
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 56
    :catch_7
    move-exception v0

    .line 57
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 58
    throw v0
.end method

.method public read([BII)I
    .registers 6
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result v1

    return v1

    .line 65
    :catch_7
    move-exception v0

    .line 66
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 67
    throw v0
.end method

.method public declared-synchronized reset()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 104
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->reset()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_8
    .catchall {:try_start_1 .. :try_end_6} :catchall_c

    .line 109
    monitor-exit p0

    return-void

    .line 105
    :catch_8
    move-exception v0

    .line 106
    .local v0, "e":Ljava/io/IOException;
    :try_start_9
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 107
    throw v0
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_c

    .line 104
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_c
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public skip(J)J
    .registers 8
    .param p1, "byteCount"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 73
    :try_start_0
    iget-object v1, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->delegate:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-wide v2

    return-wide v2

    .line 74
    :catch_7
    move-exception v0

    .line 75
    .local v0, "e":Ljava/io/IOException;
    iput-object v0, p0, Lretrofit/ExceptionCatchingTypedInput$ExceptionCatchingInputStream;->thrownException:Ljava/io/IOException;

    .line 76
    throw v0
.end method
