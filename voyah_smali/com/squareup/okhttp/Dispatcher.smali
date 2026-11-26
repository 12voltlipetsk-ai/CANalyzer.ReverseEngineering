.class public final Lcom/squareup/okhttp/Dispatcher;
.super Ljava/lang/Object;
.source "Dispatcher.java"


# instance fields
.field private executorService:Ljava/util/concurrent/ExecutorService;

.field private maxRequests:I

.field private maxRequestsPerHost:I

.field private final readyCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/squareup/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field

.field private final runningCalls:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque",
            "<",
            "Lcom/squareup/okhttp/Call$AsyncCall;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 54
    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ExecutorService;)V
    .registers 3
    .param p1, "executorService"    # Ljava/util/concurrent/ExecutorService;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/16 v0, 0x40

    iput v0, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I

    .line 38
    const/4 v0, 0x5

    iput v0, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 44
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    .line 47
    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    .line 50
    iput-object p1, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 51
    return-void
.end method

.method private promoteCalls()V
    .registers 5

    .prologue
    .line 135
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_b

    .line 149
    :cond_a
    :goto_a
    return-void

    .line 136
    :cond_b
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_a

    .line 138
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :cond_19
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 139
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Call$AsyncCall;

    .line 141
    .local v0, "call":Lcom/squareup/okhttp/Call$AsyncCall;
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/Dispatcher;->runningCallsForHost(Lcom/squareup/okhttp/Call$AsyncCall;)I

    move-result v2

    iget v3, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v2, v3, :cond_3c

    .line 142
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 143
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2, v0}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 144
    invoke-virtual {p0}, Lcom/squareup/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 147
    :cond_3c
    iget-object v2, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v2}, Ljava/util/Deque;->size()I

    move-result v2

    iget v3, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I

    if-lt v2, v3, :cond_19

    goto :goto_a
.end method

.method private runningCallsForHost(Lcom/squareup/okhttp/Call$AsyncCall;)I
    .registers 7
    .param p1, "call"    # Lcom/squareup/okhttp/Call$AsyncCall;

    .prologue
    .line 153
    const/4 v2, 0x0

    .line 154
    .local v2, "result":I
    iget-object v3, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v3}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_7
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Call$AsyncCall;

    .line 155
    .local v0, "c":Lcom/squareup/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/squareup/okhttp/Call$AsyncCall;->host()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 157
    .end local v0    # "c":Lcom/squareup/okhttp/Call$AsyncCall;
    :cond_24
    return v2
.end method


# virtual methods
.method public declared-synchronized cancel(Ljava/lang/Object;)V
    .registers 8
    .param p1, "tag"    # Ljava/lang/Object;

    .prologue
    .line 115
    monitor-enter p0

    :try_start_1
    iget-object v4, p0, Lcom/squareup/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :cond_7
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_24

    .line 116
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/squareup/okhttp/Call$AsyncCall;

    invoke-virtual {v4}, Lcom/squareup/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_20
    .catchall {:try_start_1 .. :try_end_20} :catchall_21

    goto :goto_7

    .line 115
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :catchall_21
    move-exception v4

    monitor-exit p0

    throw v4

    .line 119
    .restart local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/squareup/okhttp/Call$AsyncCall;>;"
    :cond_24
    :try_start_24
    iget-object v4, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :cond_2a
    :goto_2a
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_53

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Call$AsyncCall;

    .line 120
    .local v0, "call":Lcom/squareup/okhttp/Call$AsyncCall;
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call$AsyncCall;->tag()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p1, v4}, Lcom/squareup/okhttp/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2a

    .line 121
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call$AsyncCall;->get()Lcom/squareup/okhttp/Call;

    move-result-object v4

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/squareup/okhttp/Call;->canceled:Z

    .line 122
    invoke-virtual {v0}, Lcom/squareup/okhttp/Call$AsyncCall;->get()Lcom/squareup/okhttp/Call;

    move-result-object v4

    iget-object v1, v4, Lcom/squareup/okhttp/Call;->engine:Lcom/squareup/okhttp/internal/http/HttpEngine;

    .line 123
    .local v1, "engine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/squareup/okhttp/internal/http/HttpEngine;->disconnect()V
    :try_end_52
    .catchall {:try_start_24 .. :try_end_52} :catchall_21

    goto :goto_2a

    .line 126
    .end local v0    # "call":Lcom/squareup/okhttp/Call$AsyncCall;
    .end local v1    # "engine":Lcom/squareup/okhttp/internal/http/HttpEngine;
    :cond_53
    monitor-exit p0

    return-void
.end method

.method declared-synchronized enqueue(Lcom/squareup/okhttp/Call$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lcom/squareup/okhttp/Call$AsyncCall;

    .prologue
    .line 105
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    iget v1, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I

    if-ge v0, v1, :cond_21

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/Dispatcher;->runningCallsForHost(Lcom/squareup/okhttp/Call$AsyncCall;)I

    move-result v0

    iget v1, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequestsPerHost:I

    if-ge v0, v1, :cond_21

    .line 106
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-virtual {p0}, Lcom/squareup/okhttp/Dispatcher;->getExecutorService()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_1f
    .catchall {:try_start_1 .. :try_end_1f} :catchall_27

    .line 111
    :goto_1f
    monitor-exit p0

    return-void

    .line 109
    :cond_21
    :try_start_21
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->readyCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_27

    goto :goto_1f

    .line 105
    :catchall_27
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method declared-synchronized finished(Lcom/squareup/okhttp/Call$AsyncCall;)V
    .registers 4
    .param p1, "call"    # Lcom/squareup/okhttp/Call$AsyncCall;

    .prologue
    .line 130
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->runningCalls:Ljava/util/Deque;

    invoke-interface {v0, p1}, Ljava/util/Deque;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "AsyncCall wasn\'t running!"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_11

    :catchall_11
    move-exception v0

    monitor-exit p0

    throw v0

    .line 131
    :cond_14
    :try_start_14
    invoke-direct {p0}, Lcom/squareup/okhttp/Dispatcher;->promoteCalls()V
    :try_end_17
    .catchall {:try_start_14 .. :try_end_17} :catchall_11

    .line 132
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized getExecutorService()Ljava/util/concurrent/ExecutorService;
    .registers 10

    .prologue
    .line 57
    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_20

    .line 58
    new-instance v1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v2, 0x0

    const v3, 0x7fffffff

    const-wide/16 v4, 0x3c

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const-string v0, "OkHttp Dispatcher"

    const/4 v8, 0x0

    invoke-static {v0, v8}, Lcom/squareup/okhttp/internal/Util;->threadFactory(Ljava/lang/String;Z)Ljava/util/concurrent/ThreadFactory;

    move-result-object v8

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v1, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 61
    :cond_20
    iget-object v0, p0, Lcom/squareup/okhttp/Dispatcher;->executorService:Ljava/util/concurrent/ExecutorService;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v0

    .line 57
    :catchall_24
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequests()I
    .registers 2

    .prologue
    .line 80
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getMaxRequestsPerHost()I
    .registers 2

    .prologue
    .line 101
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequestsPerHost:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setMaxRequests(I)V
    .registers 5
    .param p1, "maxRequests"    # I

    .prologue
    .line 72
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_20

    .line 73
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1d

    .line 72
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 75
    :cond_20
    :try_start_20
    iput p1, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequests:I

    .line 76
    invoke-direct {p0}, Lcom/squareup/okhttp/Dispatcher;->promoteCalls()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 77
    monitor-exit p0

    return-void
.end method

.method public declared-synchronized setMaxRequestsPerHost(I)V
    .registers 5
    .param p1, "maxRequestsPerHost"    # I

    .prologue
    .line 93
    monitor-enter p0

    const/4 v0, 0x1

    if-ge p1, v0, :cond_20

    .line 94
    :try_start_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "max < 1: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1d
    .catchall {:try_start_4 .. :try_end_1d} :catchall_1d

    .line 93
    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0

    .line 96
    :cond_20
    :try_start_20
    iput p1, p0, Lcom/squareup/okhttp/Dispatcher;->maxRequestsPerHost:I

    .line 97
    invoke-direct {p0}, Lcom/squareup/okhttp/Dispatcher;->promoteCalls()V
    :try_end_25
    .catchall {:try_start_20 .. :try_end_25} :catchall_1d

    .line 98
    monitor-exit p0

    return-void
.end method
