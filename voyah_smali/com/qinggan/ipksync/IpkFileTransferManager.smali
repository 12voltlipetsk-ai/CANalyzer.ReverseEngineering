.class public Lcom/qinggan/ipksync/IpkFileTransferManager;
.super Ljava/lang/Object;
.source "IpkFileTransferManager.java"


# static fields
.field public static final FTP_CONNECT:I = 0x0

.field public static final FTP_DISCONNECT:I = -0x1

.field public static final FTP_UPLOAD_FAIL:I = -0x1

.field public static final FTP_UPLOAD_LOADING:I = 0x1

.field public static final FTP_UPLOAD_NO_PATH:I = -0x2

.field public static final FTP_UPLOAD_SUCCESS:I = 0x0

.field public static final IPK_UPGRADE_COMPLETE_FAIL:I = 0x15

.field public static final IPK_UPGRADE_COMPLETE_SUCCESS:I = 0x14

.field private static final QG_FILE_TRANSFER_ACTION:Ljava/lang/String; = "com.qinggan.ipkupdateservice.FileTransferService"

.field private static final QG_FILE_TRANSFER_PKG:Ljava/lang/String; = "com.qinggan.ipkupdateservice"

.field public static final SPI_UPGRADE_FAIL:I = 0xe

.field public static final SPI_UPGRADE_SUCCESS:I = 0xd

.field public static final SPI_UPGRADE_UPGRADEING:I = 0xf

.field private static final TAG:Ljava/lang/String; = "IpkFileTransferManager"

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

.field private static final instanceLock:Ljava/lang/Object;

.field private static sUploadManager:Lcom/qinggan/ipksync/IpkFileTransferManager;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "StaticFieldLeak"
        }
    .end annotation
.end field


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInitListenerLists:Ljava/util/HashMap;
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

.field private mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

.field private final mServiceConnection:Landroid/content/ServiceConnection;

.field private final serviceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 22
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/ipksync/IpkFileTransferManager;->instanceLock:Ljava/lang/Object;

    .line 68
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/ipksync/IpkFileTransferManager;->sUploadManager:Lcom/qinggan/ipksync/IpkFileTransferManager;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->serviceLock:Ljava/lang/Object;

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mInitListenerLists:Ljava/util/HashMap;

    .line 100
    new-instance v0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IpkFileTransferManager$2;-><init>(Lcom/qinggan/ipksync/IpkFileTransferManager;)V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mServiceConnection:Landroid/content/ServiceConnection;

    .line 95
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;

    .line 96
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mInitListenerLists:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->connectService()V

    .line 98
    return-void
.end method

.method static synthetic access$000()Lcom/qinggan/ipksync/IpkFileTransferManager;
    .registers 1

    .prologue
    .line 17
    sget-object v0, Lcom/qinggan/ipksync/IpkFileTransferManager;->sUploadManager:Lcom/qinggan/ipksync/IpkFileTransferManager;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qinggan/ipksync/IpkFileTransferManager;Lcom/qinggan/ipksync/IIpkFileTransferService;)Lcom/qinggan/ipksync/IIpkFileTransferService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkFileTransferManager;
    .param p1, "x1"    # Lcom/qinggan/ipksync/IIpkFileTransferService;

    .prologue
    .line 17
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qinggan/ipksync/IpkFileTransferManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkFileTransferManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/ipksync/IpkFileTransferManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/ipksync/IpkFileTransferManager;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mInitListenerLists:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/ipksync/IpkFileTransferManager;
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 72
    sget-object v1, Lcom/qinggan/ipksync/IpkFileTransferManager;->instanceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 73
    :try_start_3
    sget-object v0, Lcom/qinggan/ipksync/IpkFileTransferManager;->sUploadManager:Lcom/qinggan/ipksync/IpkFileTransferManager;

    if-nez v0, :cond_12

    .line 74
    new-instance v0, Lcom/qinggan/ipksync/IpkFileTransferManager;

    invoke-direct {v0, p0, p1}, Lcom/qinggan/ipksync/IpkFileTransferManager;-><init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V

    sput-object v0, Lcom/qinggan/ipksync/IpkFileTransferManager;->sUploadManager:Lcom/qinggan/ipksync/IpkFileTransferManager;

    .line 90
    :goto_e
    sget-object v0, Lcom/qinggan/ipksync/IpkFileTransferManager;->sUploadManager:Lcom/qinggan/ipksync/IpkFileTransferManager;

    monitor-exit v1

    return-object v0

    .line 76
    :cond_12
    new-instance v0, Ljava/lang/Thread;

    new-instance v2, Lcom/qinggan/ipksync/IpkFileTransferManager$1;

    invoke-direct {v2, p1}, Lcom/qinggan/ipksync/IpkFileTransferManager$1;-><init>(Lcom/qinggan/common/OnInitListener;)V

    invoke-direct {v0, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 88
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_e

    .line 91
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
    .line 123
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 124
    const/4 v0, 0x0

    :try_start_4
    iput-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    .line 125
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->connectService()V

    .line 126
    monitor-exit v1

    .line 127
    return-void

    .line 126
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
    .line 192
    iget-object v2, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v2

    .line 193
    :try_start_3
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 194
    .local v0, "serviceIntent":Landroid/content/Intent;
    const-string v1, "com.qinggan.ipkupdateservice.FileTransferService"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 195
    const-string v1, "com.qinggan.ipkupdateservice"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 196
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mServiceConnection:Landroid/content/ServiceConnection;

    const/4 v4, 0x1

    invoke-virtual {v1, v0, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 197
    monitor-exit v2

    .line 198
    return-void

    .line 197
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
    .line 201
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->serviceLock:Ljava/lang/Object;

    monitor-enter v1

    .line 202
    :try_start_3
    iget-object v0, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 203
    monitor-exit v1

    .line 204
    return-void

    .line 203
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
    .line 176
    const-string v1, "IpkFileTransferManager"

    const-string v2, "-----isInitUpdate----"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    if-eqz v1, :cond_34

    .line 179
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkFileTransferService;->isInitUpdate()Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12

    move-result v1

    .line 188
    :goto_11
    return v1

    .line 180
    :catch_12
    move-exception v0

    .line 181
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkFileTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkUploadService died,stopUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->restartService()V

    .line 188
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_32
    const/4 v1, 0x0

    goto :goto_11

    .line 185
    :cond_34
    const-string v1, "IpkFileTransferManager"

    const-string v2, "IpkUploadService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->connectService()V

    goto :goto_32
.end method

.method public setCallbackListener(Lcom/qinggan/ipksync/IpkUpdataCallback;)V
    .registers 6
    .param p1, "callback"    # Lcom/qinggan/ipksync/IpkUpdataCallback;

    .prologue
    .line 161
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    if-eqz v1, :cond_2b

    .line 163
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkFileTransferService;->setCallbackListener(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a

    .line 172
    :goto_9
    return-void

    .line 164
    :catch_a
    move-exception v0

    .line 165
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkFileTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkUploadService died,stopUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->restartService()V

    goto :goto_9

    .line 169
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const-string v1, "IpkFileTransferManager"

    const-string v2, "setProgressListener not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->connectService()V

    goto :goto_9
.end method

.method public startUpload(Ljava/lang/String;)V
    .registers 6
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 131
    const-string v1, "IpkFileTransferManager"

    const-string v2, "-----startUpload----File"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    if-eqz v1, :cond_32

    .line 134
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkFileTransferService;->startUpload(Ljava/lang/String;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 143
    :goto_10
    return-void

    .line 135
    :catch_11
    move-exception v0

    .line 136
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkFileTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkUploadService died,startUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->restartService()V

    goto :goto_10

    .line 140
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    const-string v1, "IpkFileTransferManager"

    const-string v2, "startUpload not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->connectService()V

    goto :goto_10
.end method

.method public stopUpload()V
    .registers 5

    .prologue
    .line 146
    const-string v1, "IpkFileTransferManager"

    const-string v2, "-----stopUpload----"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    if-eqz v1, :cond_32

    .line 149
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkFileTransferService;->stopUpload()V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    .line 158
    :goto_10
    return-void

    .line 150
    :catch_11
    move-exception v0

    .line 151
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkFileTransferManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkUploadService died,stopUpdate error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->restartService()V

    goto :goto_10

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_32
    const-string v1, "IpkFileTransferManager"

    const-string v2, "IpkUploadService not connect"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IpkFileTransferManager;->connectService()V

    goto :goto_10
.end method
