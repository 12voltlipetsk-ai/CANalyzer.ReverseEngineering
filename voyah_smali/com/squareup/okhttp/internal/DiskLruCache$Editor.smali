.class public final Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
.super Ljava/lang/Object;
.source "DiskLruCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/DiskLruCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Editor"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;
    }
.end annotation


# instance fields
.field private committed:Z

.field private final entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

.field private hasErrors:Z

.field final synthetic this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

.field private final written:[Z


# direct methods
.method private constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)V
    .registers 4
    .param p2, "entry"    # Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .prologue
    .line 733
    iput-object p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 734
    iput-object p2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    .line 735
    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {p2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->access$600(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    :goto_e
    iput-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->written:[Z

    .line 736
    return-void

    .line 735
    :cond_11
    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache;->valueCount:I
    invoke-static {p1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$1800(Lcom/squareup/okhttp/internal/DiskLruCache;)I

    move-result v0

    new-array v0, v0, [Z

    goto :goto_e
.end method

.method synthetic constructor <init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V
    .registers 4
    .param p1, "x0"    # Lcom/squareup/okhttp/internal/DiskLruCache;
    .param p2, "x1"    # Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
    .param p3, "x2"    # Lcom/squareup/okhttp/internal/DiskLruCache$1;

    .prologue
    .line 727
    invoke-direct {p0, p1, p2}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)Lcom/squareup/okhttp/internal/DiskLruCache$Entry;
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;)[Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    .prologue
    .line 727
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->written:[Z

    return-object v0
.end method

.method static synthetic access$2302(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    .param p1, "x1"    # Z

    .prologue
    .line 727
    iput-boolean p1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    return p1
.end method


# virtual methods
.method public abort()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 826
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->completeEdit(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$2200(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 827
    return-void
.end method

.method public abortUnlessCommitted()V
    .registers 2

    .prologue
    .line 830
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->committed:Z

    if-nez v0, :cond_7

    .line 832
    :try_start_4
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->abort()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_7} :catch_8

    .line 836
    :cond_7
    :goto_7
    return-void

    .line 833
    :catch_8
    move-exception v0

    goto :goto_7
.end method

.method public commit()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 812
    iget-boolean v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->hasErrors:Z

    if-eqz v0, :cond_19

    .line 813
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    const/4 v1, 0x0

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->completeEdit(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$2200(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    .line 814
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->key:Ljava/lang/String;
    invoke-static {v1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->access$1100(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/okhttp/internal/DiskLruCache;->remove(Ljava/lang/String;)Z

    .line 818
    :goto_16
    iput-boolean v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->committed:Z

    .line 819
    return-void

    .line 816
    :cond_19
    iget-object v0, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->completeEdit(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V
    invoke-static {v0, p0, v2}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$2200(Lcom/squareup/okhttp/internal/DiskLruCache;Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Z)V

    goto :goto_16
.end method

.method public getString(I)Ljava/lang/String;
    .registers 4
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 763
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newInputStream(I)Ljava/io/InputStream;

    move-result-object v0

    .line 764
    .local v0, "in":Ljava/io/InputStream;
    if-eqz v0, :cond_b

    # invokes: Lcom/squareup/okhttp/internal/DiskLruCache;->inputStreamToString(Ljava/io/InputStream;)Ljava/lang/String;
    invoke-static {v0}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$1700(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1

    :cond_b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public newInputStream(I)Ljava/io/InputStream;
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 743
    iget-object v3, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v3

    .line 744
    :try_start_4
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->access$700(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v2

    if-eq v2, p0, :cond_15

    .line 745
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1}, Ljava/lang/IllegalStateException;-><init>()V

    throw v1

    .line 755
    :catchall_12
    move-exception v1

    monitor-exit v3
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_12

    throw v1

    .line 747
    :cond_15
    :try_start_15
    iget-object v2, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v2}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->access$600(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 748
    monitor-exit v3
    :try_end_1e
    .catchall {:try_start_15 .. :try_end_1e} :catchall_12

    .line 753
    :goto_1e
    return-object v1

    .line 751
    :cond_1f
    :try_start_1f
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->getCleanFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_2a
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_2a} :catch_2d
    .catchall {:try_start_1f .. :try_end_2a} :catchall_12

    :try_start_2a
    monitor-exit v3

    move-object v1, v2

    goto :goto_1e

    .line 752
    :catch_2d
    move-exception v0

    .line 753
    .local v0, "e":Ljava/io/FileNotFoundException;
    monitor-exit v3
    :try_end_2f
    .catchall {:try_start_2a .. :try_end_2f} :catchall_12

    goto :goto_1e
.end method

.method public newOutputStream(I)Ljava/io/OutputStream;
    .registers 9
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 775
    iget-object v5, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    monitor-enter v5

    .line 776
    :try_start_3
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->currentEditor:Lcom/squareup/okhttp/internal/DiskLruCache$Editor;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->access$700(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Lcom/squareup/okhttp/internal/DiskLruCache$Editor;

    move-result-object v4

    if-eq v4, p0, :cond_14

    .line 777
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4}, Ljava/lang/IllegalStateException;-><init>()V

    throw v4

    .line 797
    :catchall_11
    move-exception v4

    monitor-exit v5
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_11

    throw v4

    .line 779
    :cond_14
    :try_start_14
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->readable:Z
    invoke-static {v4}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->access$600(Lcom/squareup/okhttp/internal/DiskLruCache$Entry;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 780
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->written:[Z

    const/4 v6, 0x1

    aput-boolean v6, v4, p1

    .line 782
    :cond_21
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->entry:Lcom/squareup/okhttp/internal/DiskLruCache$Entry;

    invoke-virtual {v4, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Entry;->getDirtyFile(I)Ljava/io/File;
    :try_end_26
    .catchall {:try_start_14 .. :try_end_26} :catchall_11

    move-result-object v0

    .line 785
    .local v0, "dirtyFile":Ljava/io/File;
    :try_start_27
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2c
    .catch Ljava/io/FileNotFoundException; {:try_start_27 .. :try_end_2c} :catch_34
    .catchall {:try_start_27 .. :try_end_2c} :catchall_11

    .line 796
    .local v3, "outputStream":Ljava/io/FileOutputStream;
    :goto_2c
    :try_start_2c
    new-instance v4, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;

    const/4 v6, 0x0

    invoke-direct {v4, p0, v3, v6}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor$FaultHidingOutputStream;-><init>(Lcom/squareup/okhttp/internal/DiskLruCache$Editor;Ljava/io/OutputStream;Lcom/squareup/okhttp/internal/DiskLruCache$1;)V

    monitor-exit v5

    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :goto_33
    return-object v4

    .line 786
    :catch_34
    move-exception v1

    .line 788
    .local v1, "e":Ljava/io/FileNotFoundException;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->this$0:Lcom/squareup/okhttp/internal/DiskLruCache;

    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache;->directory:Ljava/io/File;
    invoke-static {v4}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$1900(Lcom/squareup/okhttp/internal/DiskLruCache;)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z
    :try_end_3e
    .catchall {:try_start_2c .. :try_end_3e} :catchall_11

    .line 790
    :try_start_3e
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_43
    .catch Ljava/io/FileNotFoundException; {:try_start_3e .. :try_end_43} :catch_44
    .catchall {:try_start_3e .. :try_end_43} :catchall_11

    .restart local v3    # "outputStream":Ljava/io/FileOutputStream;
    goto :goto_2c

    .line 791
    .end local v3    # "outputStream":Ljava/io/FileOutputStream;
    :catch_44
    move-exception v2

    .line 793
    .local v2, "e2":Ljava/io/FileNotFoundException;
    :try_start_45
    # getter for: Lcom/squareup/okhttp/internal/DiskLruCache;->NULL_OUTPUT_STREAM:Ljava/io/OutputStream;
    invoke-static {}, Lcom/squareup/okhttp/internal/DiskLruCache;->access$2000()Ljava/io/OutputStream;

    move-result-object v4

    monitor-exit v5
    :try_end_4a
    .catchall {:try_start_45 .. :try_end_4a} :catchall_11

    goto :goto_33
.end method

.method public set(ILjava/lang/String;)V
    .registers 5
    .param p1, "index"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/squareup/okhttp/internal/DiskLruCache$Editor;->newOutputStream(I)Ljava/io/OutputStream;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->sink(Ljava/io/OutputStream;)Lokio/Sink;

    move-result-object v1

    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Sink;)Lokio/BufferedSink;

    move-result-object v0

    .line 803
    .local v0, "writer":Lokio/BufferedSink;
    invoke-interface {v0, p2}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    .line 804
    invoke-interface {v0}, Lokio/BufferedSink;->close()V

    .line 805
    return-void
.end method
