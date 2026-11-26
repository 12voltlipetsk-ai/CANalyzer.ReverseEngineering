.class public Lcom/qinggan/ipksync/IpkLogManager;
.super Ljava/lang/Object;
.source "IpkLogManager.java"


# static fields
.field private static final QG_IPKLOG_ACTION:Ljava/lang/String; = "com.qinggan.ipkupdateservice.IpkLogService"

.field private static final QG_IPKUPDATE_PKG:Ljava/lang/String; = "com.qinggan.ipkupdateservice"

.field private static final TAG:Ljava/lang/String; = "IpkLogManager"

.field private static instanceLock:Ljava/lang/Object;

.field private static sInstance:Lcom/qinggan/ipksync/IpkLogManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInitListenerLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/content/Context;",
            "Lcom/qinggan/common/OnInitListener;",
            ">;"
        }
    .end annotation
.end field

.field private mService:Lcom/qinggan/ipksync/IIpkLogService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private serviceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/ipksync/IpkLogManager;->instanceLock:Ljava/lang/Object;

    .line 25
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/ipksync/IpkLogManager;->sInstance:Lcom/qinggan/ipksync/IpkLogManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linstener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->serviceLock:Ljava/lang/Object;

    .line 26
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mInitListenerLists:Ljava/util/HashMap;

    .line 28
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    .line 59
    new-instance v0, Lcom/qinggan/ipksync/IpkLogManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IpkLogManager$2;-><init>(Lcom/qinggan/ipksync/IpkLogManager;)V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 54
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mContext:Landroid/content/Context;

    .line 55
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mInitListenerLists:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkLogManager;->connectService()V

    .line 57
    return-void
.end method

.method static synthetic access$000()Lcom/qinggan/ipksync/IpkLogManager;
    .registers 1

    .prologue
    .line 16
    sget-object v0, Lcom/qinggan/ipksync/IpkLogManager;->sInstance:Lcom/qinggan/ipksync/IpkLogManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qinggan/ipksync/IpkLogManager;Lcom/qinggan/ipksync/IIpkLogService;)Lcom/qinggan/ipksync/IIpkLogService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkLogManager;
    .param p1, "x1"    # Lcom/qinggan/ipksync/IIpkLogService;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qinggan/ipksync/IpkLogManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkLogManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/ipksync/IpkLogManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkLogManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mInitListenerLists:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/ipksync/IpkLogManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linstener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 31
    sget-object v1, Lcom/qinggan/ipksync/IpkLogManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 32
    :try_start_3
    sget-object v0, Lcom/qinggan/ipksync/IpkLogManager;->sInstance:Lcom/qinggan/ipksync/IpkLogManager;

    if-nez v0, :cond_12

    .line 33
    new-instance v0, Lcom/qinggan/ipksync/IpkLogManager;

    invoke-direct {v0, p0, p1}, Lcom/qinggan/ipksync/IpkLogManager;-><init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V

    sput-object v0, Lcom/qinggan/ipksync/IpkLogManager;->sInstance:Lcom/qinggan/ipksync/IpkLogManager;

    .line 49
    :goto_e
    sget-object v0, Lcom/qinggan/ipksync/IpkLogManager;->sInstance:Lcom/qinggan/ipksync/IpkLogManager;

    monitor-exit v1

    return-object v0

    .line 35
    :cond_12
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/qinggan/ipksync/IpkLogManager$1;

    invoke-direct {v2, p1}, Lcom/qinggan/ipksync/IpkLogManager$1;-><init>(Lcom/qinggan/common/OnInitListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 47
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e

    .line 50
    :catchall_20
    move-exception v0

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_20

    throw v0
.end method

.method private restartService()V
    .registers 3

    .prologue
    .line 91
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 92
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    .line 93
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkLogManager;->connectService()V

    .line 94
    monitor-exit v1

    .line 95
    return-void

    .line 94
    :catchall_b
    move-exception v0

    monitor-exit v1
    :try_end_d
    .catchall {:try_start_4 .. :try_end_d} :catchall_b

    throw v0
.end method


# virtual methods
.method public connectService()V
    .registers 6

    .prologue
    .line 82
    iget-object v2, p0, Lcom/qinggan/ipksync/IpkLogManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 83
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 84
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.qinggan.ipkupdateservice.IpkLogService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const-string v1, "com.qinggan.ipkupdateservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 86
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qinggan/ipksync/IpkLogManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 87
    monitor-exit v2

    .line 88
    return-void

    .line 87
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public exitExtractIpkLog()V
    .registers 5

    .prologue
    .line 112
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    if-eqz v1, :cond_2b

    .line 114
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkLogService;->exitExtractIpkLog()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 123
    :goto_9
    return-void

    .line 115
    :catch_a
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkLogService exitExtractIpkLog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkLogManager;->restartService()V

    goto :goto_9

    .line 120
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const-string v1, "IpkLogManager"

    const-string v2, "IIpkLogService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkLogManager;->connectService()V

    goto :goto_9
.end method

.method public setIpkLogCallback(Lcom/qinggan/ipksync/IpkLogCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/qinggan/ipksync/IpkLogCallback;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    if-eqz v1, :cond_2b

    .line 128
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkLogService;->setIpkLogCallback(Lcom/qinggan/ipksync/IIpkLogCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 137
    :goto_9
    return-void

    .line 129
    :catch_a
    move-exception v0

    .line 130
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkLogService setIpkLogCallback error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkLogManager;->restartService()V

    goto :goto_9

    .line 134
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const-string v1, "IpkLogManager"

    const-string v2, "IIpkLogService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkLogManager;->connectService()V

    goto :goto_9
.end method

.method public startExtractIpkLog()V
    .registers 5

    .prologue
    .line 98
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    if-eqz v1, :cond_2b

    .line 100
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkLogService;->startExtractIpkLog()V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 109
    :goto_9
    return-void

    .line 101
    :catch_a
    move-exception v0

    .line 102
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkLogManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkLogService startExtractIpkLog error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkLogManager;->restartService()V

    goto :goto_9

    .line 106
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const-string v1, "IpkLogManager"

    const-string v2, "IIpkLogService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkLogManager;->connectService()V

    goto :goto_9
.end method
