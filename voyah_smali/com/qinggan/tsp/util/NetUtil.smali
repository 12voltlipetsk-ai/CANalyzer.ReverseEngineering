.class public Lcom/qinggan/tsp/util/NetUtil;
.super Ljava/lang/Object;
.source "NetUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static connManager:Landroid/net/ConnectivityManager;

.field private static lock:Ljava/lang/Object;

.field private static mInstance:Lcom/qinggan/tsp/util/NetUtil;

.field private static mLastNetConnected:Z


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 16
    const-class v0, Lcom/qinggan/tsp/util/NetUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;

    .line 20
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qinggan/tsp/util/NetUtil;->mLastNetConnected:Z

    .line 22
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    .line 24
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/util/NetUtil;->lock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinggan/tsp/util/NetUtil;->mCallbacks:Ljava/util/List;

    .line 37
    new-instance v0, Lcom/qinggan/tsp/util/NetUtil$1;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/util/NetUtil$1;-><init>(Lcom/qinggan/tsp/util/NetUtil;)V

    iput-object v0, p0, Lcom/qinggan/tsp/util/NetUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    iget-object v0, p0, Lcom/qinggan/tsp/util/NetUtil;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/qinggan/tsp/util/NetUtil;->networkChangeFilter()Landroid/content/IntentFilter;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 70
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .prologue
    .line 14
    sget-object v0, Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Z
    .registers 1

    .prologue
    .line 14
    sget-boolean v0, Lcom/qinggan/tsp/util/NetUtil;->mLastNetConnected:Z

    return v0
.end method

.method static synthetic access$200(Lcom/qinggan/tsp/util/NetUtil;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/util/NetUtil;
    .param p1, "x1"    # Z

    .prologue
    .line 14
    invoke-direct {p0, p1}, Lcom/qinggan/tsp/util/NetUtil;->notifyNetworkState(Z)V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/qinggan/tsp/util/NetUtil;
    .registers 3
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 81
    sget-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    if-eqz v0, :cond_7

    .line 82
    sget-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    .line 89
    :goto_6
    return-object v0

    .line 83
    :cond_7
    sget-object v1, Lcom/qinggan/tsp/util/NetUtil;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 85
    :try_start_a
    sget-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    if-eqz v0, :cond_15

    .line 86
    sget-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    monitor-exit v1

    goto :goto_6

    .line 88
    :catchall_12
    move-exception v0

    monitor-exit v1
    :try_end_14
    .catchall {:try_start_a .. :try_end_14} :catchall_12

    throw v0

    .line 87
    :cond_15
    :try_start_15
    new-instance v0, Lcom/qinggan/tsp/util/NetUtil;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/util/NetUtil;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    .line 88
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_15 .. :try_end_1d} :catchall_12

    .line 89
    sget-object v0, Lcom/qinggan/tsp/util/NetUtil;->mInstance:Lcom/qinggan/tsp/util/NetUtil;

    goto :goto_6
.end method

.method public static isNetworkConnected(Landroid/content/Context;)Z
    .registers 13
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 94
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->connManager:Landroid/net/ConnectivityManager;

    if-nez v7, :cond_10

    .line 98
    :try_start_6
    const-string v7, "connectivity"

    .line 99
    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/ConnectivityManager;

    sput-object v7, Lcom/qinggan/tsp/util/NetUtil;->connManager:Landroid/net/ConnectivityManager;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_10} :catch_be

    .line 108
    :cond_10
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->connManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    .line 109
    .local v2, "info":Landroid/net/NetworkInfo;
    if-eqz v2, :cond_42

    .line 111
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 112
    .local v5, "name":Ljava/lang/String;
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "network info:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",connected:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 113
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 112
    invoke-static {v7, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    .end local v5    # "name":Ljava/lang/String;
    :cond_42
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->connManager:Landroid/net/ConnectivityManager;

    .line 117
    invoke-virtual {v7, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v6

    .line 118
    .local v6, "wifiInfo":Landroid/net/NetworkInfo;
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->connManager:Landroid/net/ConnectivityManager;

    .line 119
    invoke-virtual {v7, v8}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v4

    .line 120
    .local v4, "mobileInfo":Landroid/net/NetworkInfo;
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->connManager:Landroid/net/ConnectivityManager;

    const/16 v10, 0x9

    invoke-virtual {v7, v10}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 123
    .local v1, "ethernetInfo":Landroid/net/NetworkInfo;
    const/4 v3, 0x0

    .line 125
    .local v3, "isNetConnected":Z
    :try_start_57
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifiState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 126
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",ethernetState:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 127
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 125
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "wifiAvailable:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 129
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ",ethernetAvailable:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 130
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 128
    invoke-static {v7, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    if-nez v4, :cond_de

    .line 134
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_b9

    .line 135
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_b6
    .catch Ljava/lang/Exception; {:try_start_57 .. :try_end_b6} :catch_ee

    move-result v7

    if-eqz v7, :cond_dc

    :cond_b9
    move v3, v9

    .line 146
    :goto_ba
    sput-boolean v3, Lcom/qinggan/tsp/util/NetUtil;->mLastNetConnected:Z

    move v8, v3

    .line 147
    .end local v1    # "ethernetInfo":Landroid/net/NetworkInfo;
    .end local v2    # "info":Landroid/net/NetworkInfo;
    .end local v3    # "isNetConnected":Z
    .end local v4    # "mobileInfo":Landroid/net/NetworkInfo;
    .end local v6    # "wifiInfo":Landroid/net/NetworkInfo;
    :goto_bd
    return v8

    .line 101
    :catch_be
    move-exception v0

    .line 103
    .local v0, "e":Ljava/lang/Exception;
    sget-object v7, Lcom/qinggan/tsp/util/NetUtil;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getSystemService CONNECTIVITY_SERVICE exception:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_bd

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "ethernetInfo":Landroid/net/NetworkInfo;
    .restart local v2    # "info":Landroid/net/NetworkInfo;
    .restart local v3    # "isNetConnected":Z
    .restart local v4    # "mobileInfo":Landroid/net/NetworkInfo;
    .restart local v6    # "wifiInfo":Landroid/net/NetworkInfo;
    :cond_dc
    move v3, v8

    .line 135
    goto :goto_ba

    .line 137
    :cond_de
    :try_start_de
    invoke-virtual {v6}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v7

    if-nez v7, :cond_ea

    .line 138
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e7} :catch_ee

    move-result v7

    if-eqz v7, :cond_ec

    :cond_ea
    move v3, v9

    :goto_eb
    goto :goto_ba

    :cond_ec
    move v3, v8

    goto :goto_eb

    .line 140
    :catch_ee
    move-exception v0

    .line 142
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_ba
.end method

.method private networkChangeFilter()Landroid/content/IntentFilter;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 75
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    return-object v0
.end method

.method private notifyNetworkState(Z)V
    .registers 5
    .param p1, "mConnected"    # Z

    .prologue
    .line 61
    iget-object v1, p0, Lcom/qinggan/tsp/util/NetUtil;->mCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;

    .line 63
    .local v0, "callback":Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;
    invoke-interface {v0, p1}, Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;->netWorkChange(Z)V

    goto :goto_6

    .line 65
    .end local v0    # "callback":Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;
    :cond_16
    return-void
.end method


# virtual methods
.method public registerNetworkCallback(Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;)V
    .registers 3
    .param p1, "callback"    # Lcom/qinggan/tsp/util/NetUtil$NetworkChangeCallback;

    .prologue
    .line 157
    if-eqz p1, :cond_7

    .line 159
    iget-object v0, p0, Lcom/qinggan/tsp/util/NetUtil;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    :cond_7
    return-void
.end method
