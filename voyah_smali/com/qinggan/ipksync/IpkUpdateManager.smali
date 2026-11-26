.class public Lcom/qinggan/ipksync/IpkUpdateManager;
.super Ljava/lang/Object;
.source "IpkUpdateManager.java"


# static fields
.field public static final EXTRACT_CLUSTER_LOG_STATE_BUSY:I = 0x22

.field public static final EXTRACT_CLUSTER_LOG_STATE_CANCELED:I = 0x1f

.field public static final EXTRACT_CLUSTER_LOG_STATE_FAILED:I = 0x20

.field public static final EXTRACT_CLUSTER_LOG_STATE_PROCESSING:I = 0x1e

.field public static final EXTRACT_CLUSTER_LOG_STATE_SUCCESS:I = 0x21

.field public static final FTP_CONNECT:I = 0x0

.field public static final FTP_DISCONNECT:I = -0x1

.field public static final FTP_UPLOAD_FAIL:I = -0x1

.field public static final FTP_UPLOAD_LOADING:I = 0x1

.field public static final FTP_UPLOAD_NO_PATH:I = -0x2

.field public static final FTP_UPLOAD_SUCCESS:I = 0x0

.field public static final IPK_UPGRADE_COMPLETE_FAIL:I = 0x15

.field public static final IPK_UPGRADE_COMPLETE_SUCCESS:I = 0x14

.field private static final QG_IPKUPDATE_ACTION:Ljava/lang/String; = "com.qinggan.ipkupdateservice.IpkUpdateService"

.field private static final QG_IPKUPDATE_PKG:Ljava/lang/String; = "com.qinggan.ipkupdateservice"

.field public static final SPI_UPGRADE_FAIL:I = 0xe

.field public static final SPI_UPGRADE_SUCCESS:I = 0xd

.field public static final SPI_UPGRADE_UPGRADEING:I = 0xf

.field private static final TAG:Ljava/lang/String; = "IpkUpdateManager"

.field public static final UPGRADE_FAIL:I = 0x12

.field public static final UPGRADE_SUCCESS:I = 0x10

.field public static final UPGRADE_UPGRADEING:I = 0x11

.field public static final UPLOAD_CRC_ERROR:I = 0x8

.field public static final UPLOAD_DISCONNECT:I = 0x0

.field public static final UPLOAD_FAIL:I = 0xc

.field public static final UPLOAD_GIP_ERROR:I = 0x3

.field public static final UPLOAD_INVALIDPATCH_ERROR:I = 0x7

.field public static final UPLOAD_LOADING:I = 0xb

.field public static final UPLOAD_MD5_ERROR:I = 0x2

.field public static final UPLOAD_NOSPACE_ERROR:I = 0x6

.field public static final UPLOAD_NO_PATH:I = 0x1

.field public static final UPLOAD_READY:I = 0x13

.field public static final UPLOAD_STORAGE_ERROR:I = 0x5

.field public static final UPLOAD_SUCCESS:I = 0xa

.field public static final UPLOAD_UNZIP_ERROR:I = 0x9

.field public static final UPLOAD_VIP_ERROR:I = 0x4

.field private static instanceLock:Ljava/lang/Object;

.field private static sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;


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

.field private mService:Lcom/qinggan/ipksync/IIpkUpdateService;

.field private mServiceConnection:Landroid/content/ServiceConnection;

.field private serviceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 20
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/ipksync/IpkUpdateManager;->instanceLock:Ljava/lang/Object;

    .line 72
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/ipksync/IpkUpdateManager;->sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "linstener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->serviceLock:Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    .line 73
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mInitListenerLists:Ljava/util/HashMap;

    .line 104
    new-instance v0, Lcom/qinggan/ipksync/IpkUpdateManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IpkUpdateManager$2;-><init>(Lcom/qinggan/ipksync/IpkUpdateManager;)V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 99
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;

    .line 100
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mInitListenerLists:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->connectService()V

    .line 102
    return-void
.end method

.method static synthetic access$000()Lcom/qinggan/ipksync/IpkUpdateManager;
    .registers 1

    .prologue
    .line 15
    sget-object v0, Lcom/qinggan/ipksync/IpkUpdateManager;->sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qinggan/ipksync/IpkUpdateManager;Lcom/qinggan/ipksync/IIpkUpdateService;)Lcom/qinggan/ipksync/IIpkUpdateService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkUpdateManager;
    .param p1, "x1"    # Lcom/qinggan/ipksync/IIpkUpdateService;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qinggan/ipksync/IpkUpdateManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkUpdateManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/ipksync/IpkUpdateManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkUpdateManager;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mInitListenerLists:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/ipksync/IpkUpdateManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "linstener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 76
    sget-object v1, Lcom/qinggan/ipksync/IpkUpdateManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 77
    :try_start_3
    sget-object v0, Lcom/qinggan/ipksync/IpkUpdateManager;->sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    if-nez v0, :cond_12

    .line 78
    new-instance v0, Lcom/qinggan/ipksync/IpkUpdateManager;

    invoke-direct {v0, p0, p1}, Lcom/qinggan/ipksync/IpkUpdateManager;-><init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V

    sput-object v0, Lcom/qinggan/ipksync/IpkUpdateManager;->sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    .line 94
    :goto_e
    sget-object v0, Lcom/qinggan/ipksync/IpkUpdateManager;->sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;

    monitor-exit v1

    return-object v0

    .line 80
    :cond_12
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/qinggan/ipksync/IpkUpdateManager$1;

    invoke-direct {v2, p1}, Lcom/qinggan/ipksync/IpkUpdateManager$1;-><init>(Lcom/qinggan/common/OnInitListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 92
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e

    .line 95
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
    .line 127
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 128
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    .line 129
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->connectService()V

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
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
    .line 195
    iget-object v2, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 196
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 197
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.qinggan.ipkupdateservice.IpkUpdateService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "com.qinggan.ipkupdateservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 199
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 200
    monitor-exit v2

    .line 201
    return-void

    .line 200
    .end local v0    # "serviceIntent":Landroid/content/Intent;
    :catchall_1c
    move-exception v1

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_1c

    throw v1
.end method

.method public disconnectService()V
    .registers 4

    .prologue
    .line 204
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 205
    :try_start_3
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 206
    monitor-exit v1

    .line 207
    return-void

    .line 206
    :catchall_c
    move-exception v0

    monitor-exit v1
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_c

    throw v0
.end method

.method public isInitUpdate()Z
    .registers 5

    .prologue
    .line 179
    const-string v1, "IpkUpdateManager"

    const-string v2, "-----isInitUpdate----"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    if-eqz v1, :cond_34

    .line 182
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkUpdateService;->isInitUpdate()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    .line 191
    :goto_11
    return v1

    .line 183
    :catch_12
    move-exception v0

    .line 184
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkUpdateService died,stopUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->restartService()V

    .line 191
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    const/4 v1, 0x0

    goto :goto_11

    .line 188
    :cond_34
    const-string v1, "IpkUpdateManager"

    const-string v2, "IIpkUpdateService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->connectService()V

    goto :goto_32
.end method

.method public setCallbackListener(Lcom/qinggan/ipksync/IpkUpdataCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/qinggan/ipksync/IpkUpdataCallback;

    .prologue
    .line 164
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    if-eqz v1, :cond_2b

    .line 166
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkUpdateService;->setCallbackListener(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 175
    :goto_9
    return-void

    .line 167
    :catch_a
    move-exception v0

    .line 168
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkUpdateService died,stopUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->restartService()V

    goto :goto_9

    .line 172
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const-string v1, "IpkUpdateManager"

    const-string v2, "setProgressListener not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->connectService()V

    goto :goto_9
.end method

.method public startUpload()V
    .registers 5

    .prologue
    .line 134
    const-string v1, "IpkUpdateManager"

    const-string v2, "-----startUpload----"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    if-eqz v1, :cond_32

    .line 137
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkUpdateService;->startUpload()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 146
    :goto_10
    return-void

    .line 138
    :catch_11
    move-exception v0

    .line 139
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkUpdateService died,startUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->restartService()V

    goto :goto_10

    .line 143
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    const-string v1, "IpkUpdateManager"

    const-string v2, "startUpload not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->connectService()V

    goto :goto_10
.end method

.method public stopUpload()V
    .registers 5

    .prologue
    .line 149
    const-string v1, "IpkUpdateManager"

    const-string v2, "-----stopUpload----"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    if-eqz v1, :cond_32

    .line 152
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkUpdateService;->stopUpload()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 161
    :goto_10
    return-void

    .line 153
    :catch_11
    move-exception v0

    .line 154
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkUpdateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IIpkUpdateService died,stopUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->restartService()V

    goto :goto_10

    .line 158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    const-string v1, "IpkUpdateManager"

    const-string v2, "IIpkUpdateService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkUpdateManager;->connectService()V

    goto :goto_10
.end method
