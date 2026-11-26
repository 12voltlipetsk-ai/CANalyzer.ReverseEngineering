.class public Lcom/qinggan/ipksync/IpkSyncManager;
.super Lcom/qinggan/common/QGManagerBase;
.source "IpkSyncManager.java"


# static fields
.field public static final ACK:I = 0x1

.field public static final ACK_FOR_ICM_REQ:I = 0x2

.field public static final ACK_FOR_ICM_STATUS:I = 0x1

.field public static final ACK_FOR_ICM_UPDATE_SETTING:I = 0x3

.field public static final AREA_A:I = 0x1

.field public static final AREA_B:I = 0x2

.field public static final AREA_C:I = 0x3

.field public static final EHU_AUDIO_NOT_READY:I = 0x0

.field public static final EHU_AUDIO_READY:I = 0x1

.field public static final EHU_BT_CLOSE:I = 0x2

.field public static final EHU_BT_CONNECTED:I = 0x1

.field public static final EHU_BT_CONTACTS_GOT_RECORD:I = 0x2

.field public static final EHU_BT_CONTACTS_NO_RECORD:I = 0x0

.field public static final EHU_BT_CONTACTS_SYING_RECORD:I = 0x1

.field public static final EHU_BT_DISCONNECTED:I = 0x0

.field public static final EHU_BT_OPEN:I = 0x3

.field public static final EHU_FOCUS_MEDIA:I = 0x1

.field public static final EHU_FOCUS_RADIO:I = 0x2

.field public static final EHU_MEDIA_NOT_READY:I = 0x0

.field public static final EHU_MEDIA_READY:I = 0x1

.field public static final EHU_MEDIA_TO_RADIO:I = 0x2

.field public static final EHU_MODULE_MUSIC:I = 0x0

.field public static final EHU_MODULE_NAVI:I = 0x2

.field public static final EHU_MODULE_RADIO:I = 0x1

.field public static final EHU_NAVI_NOT_READY:I = 0x0

.field public static final EHU_NAVI_READY:I = 0x1

.field public static final EHU_NOT_SYNCING_VIDEO:I = 0x0

.field public static final EHU_PHONE_STATUS_DAILING:I = 0x1

.field public static final EHU_PHONE_STATUS_HANGUP:I = 0x8

.field public static final EHU_PHONE_STATUS_HOLDING:I = 0x4

.field public static final EHU_PHONE_STATUS_INCOMING:I = 0x2

.field public static final EHU_PHONE_STATUS_SWITCH:I = 0x10

.field public static final EHU_RADIO_TO_MEDIA:I = 0x1

.field public static final EHU_REST_NOT_READY:I = 0x0

.field public static final EHU_REST_READY:I = 0x1

.field public static final EHU_SYNCING_VIDEO:I = 0x1

.field public static final EHU_TRANSFER_UPDATE_STATUS_OVER:I = 0x4

.field public static final EHU_TRANSFER_UPDATE_STATUS_REQUEST:I = 0x1

.field public static final EHU_TRANSFER_UPDATE_STATUS_TRANSFERING:I = 0x2

.field public static final FIRST_FRAME_HIDE:I = 0x0

.field public static final FIRST_FRAME_SHOW:I = 0x1

.field public static final ICM_CONTROL_MEDIA_BT_MUSIC:I = 0x1

.field public static final ICM_CONTROL_MEDIA_LOCAL_MUSIC:I = 0x3

.field public static final ICM_CONTROL_MEDIA_NEXT:I = 0x2

.field public static final ICM_CONTROL_MEDIA_ONLINE_MUSIC:I = 0x4

.field public static final ICM_CONTROL_MEDIA_PRE:I = 0x1

.field public static final ICM_CONTROL_MEDIA_START:I = 0x3

.field public static final ICM_CONTROL_MEDIA_STOP:I = 0x4

.field public static final ICM_CONTROL_MEDIA_USB_MUSIC:I = 0x2

.field public static final ICM_CONTROL_Ph_Co_CONFORM:I = 0x3

.field public static final ICM_CONTROL_Ph_Co_DOWN:I = 0x2

.field public static final ICM_CONTROL_Ph_Co_UP:I = 0x1

.field public static final ICM_CONTROL_RADIO_AM:I = 0x3

.field public static final ICM_CONTROL_RADIO_FAVORITES:I = 0x1

.field public static final ICM_CONTROL_RADIO_FM:I = 0x2

.field public static final ICM_CONTROL_RADIO_ONLINE:I = 0x4

.field public static final INFO_PAGE_0:I = 0x0

.field public static final INFO_PAGE_1:I = 0x1

.field public static final INFO_PAGE_2:I = 0x2

.field public static final INFO_PAGE_CHARGE:I = 0x6

.field public static final INFO_PAGE_MEDIA:I = 0x3

.field public static final INFO_PAGE_NAVI:I = 0x4

.field public static final INFO_PAGE_PHONE:I = 0x5

.field public static final IPK_MUSIC_CLOSE:I = 0x0

.field public static final IPK_MUSIC_OPEN:I = 0x1

.field public static final IPK_NOT_READY_RECEIVE_UPDATE:I = 0x0

.field public static final IPK_NOT_RECEIVE_PKG:I = 0x0

.field public static final IPK_READY_RECEIVE_UPDATE:I = 0x1

.field public static final IPK_RECEIVE_PKG:I = 0x1

.field public static final IPK_STATE_NORMAL:I = 0x1

.field public static final IPK_STATE_PROTECTED:I = 0x3

.field public static final IPK_STATE_UNORMAL:I = 0x2

.field public static final IPK_TIME_FORMAT_12:I = 0x0

.field public static final IPK_TIME_FORMAT_24:I = 0x1

.field public static final LANGUAGE_RESP_NG:I = 0x2

.field public static final LANGUAGE_RESP_OK:I = 0x1

.field public static final LANGUAGE_TYPE_DEFAULT:I = 0x2

.field public static final LANGUAGE_TYPE_LIST:I = 0x1

.field public static final LANGUAGE_TYPE_SWITCH:I = 0x3

.field public static final MANAGER_SERVICE_ACTION:Ljava/lang/String; = "com.qinggan.canbus.CanBusService"

.field public static final MANAGER_SERVICE_PACKAGE:Ljava/lang/String; = "com.qinggan.canbus.service"

.field public static final MODULE_NOT_READY:I = 0x0

.field public static final MODULE_READY:I = 0x1

.field public static final MU_BUFFER_FINISH:I = 0x0

.field public static final MU_BUFFER_READING:I = 0x1

.field public static final NO_ACK:I = 0x0

.field public static final SERVICE_NAME:Ljava/lang/String; = "qg.canbus"

.field public static final SYNC_ICM_STATE_THEME_SKIN:I = 0x1

.field private static final TAG:Ljava/lang/String; = "IpkSyncManager"

.field public static final WINDOW_STATE_AR:I = 0x3

.field public static final WINDOW_STATE_FAVORATE:I = 0x5

.field public static final WINDOW_STATE_LARGE:I = 0x1

.field public static final WINDOW_STATE_NONE:I = 0x2

.field public static final WINDOW_STATE_NVS:I = 0x4

.field public static final WINDOW_STATE_PHONE:I = 0x2

.field public static final WINDOW_STATE_SMALL:I = 0x0

.field public static final WINDOW_STATE_WARNING_LARGE:I = 0x4

.field public static final WINDOW_STATE_WARNING_SMALL:I = 0x3

.field private static mInstance:Lcom/qinggan/ipksync/IpkSyncManager;


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

.field private final serviceLock:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/ipksync/IpkSyncManager;->mInstance:Lcom/qinggan/ipksync/IpkSyncManager;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/common/OnInitListener;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "serviceManagerName"    # Ljava/lang/String;
    .param p3, "serviceName"    # Ljava/lang/String;
    .param p4, "servicePackage"    # Ljava/lang/String;
    .param p5, "listener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 269
    invoke-direct/range {p0 .. p5}, Lcom/qinggan/common/QGManagerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/common/OnInitListener;)V

    .line 21
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkSyncManager;->serviceLock:Ljava/lang/Object;

    .line 29
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mInitListenerLists:Ljava/util/HashMap;

    .line 270
    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/ipksync/IpkSyncManager;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 273
    const-class v6, Lcom/qinggan/ipksync/IpkSyncManager;

    monitor-enter v6

    :try_start_3
    const-string v0, "IpkSyncManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Context: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", listener = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    sget-object v0, Lcom/qinggan/ipksync/IpkSyncManager;->mInstance:Lcom/qinggan/ipksync/IpkSyncManager;

    if-nez v0, :cond_3c

    .line 275
    new-instance v0, Lcom/qinggan/ipksync/IpkSyncManager;

    const-string v2, "qg.canbus"

    const-string v3, "com.qinggan.canbus.CanBusService"

    const-string v4, "com.qinggan.canbus.service"

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/qinggan/ipksync/IpkSyncManager;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/qinggan/common/OnInitListener;)V

    sput-object v0, Lcom/qinggan/ipksync/IpkSyncManager;->mInstance:Lcom/qinggan/ipksync/IpkSyncManager;

    .line 279
    :goto_38
    sget-object v0, Lcom/qinggan/ipksync/IpkSyncManager;->mInstance:Lcom/qinggan/ipksync/IpkSyncManager;
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_42

    monitor-exit v6

    return-object v0

    .line 277
    :cond_3c
    :try_start_3c
    sget-object v0, Lcom/qinggan/ipksync/IpkSyncManager;->mInstance:Lcom/qinggan/ipksync/IpkSyncManager;

    invoke-virtual {v0, p1}, Lcom/qinggan/ipksync/IpkSyncManager;->addCallBackMsg(Lcom/qinggan/common/OnInitListener;)V
    :try_end_41
    .catchall {:try_start_3c .. :try_end_41} :catchall_42

    goto :goto_38

    .line 273
    :catchall_42
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;
    .registers 5

    .prologue
    .line 288
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_33

    .line 290
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    check-cast v1, Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1}, Lcom/qinggan/canbus/ICanBusService;->getIpkSyncSvr()Lcom/qinggan/ipksync/IIpkSyncService;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_b} :catch_d

    move-result-object v1

    .line 298
    :goto_c
    return-object v1

    .line 291
    :catch_d
    move-exception v0

    .line 292
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,getIpkSyncService error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 294
    const-string v1, "IpkSyncManager"

    const-string v2, "getIpkSyncService(): null!!!"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 298
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_31
    const/4 v1, 0x0

    goto :goto_c

    .line 296
    :cond_33
    const-string v1, "IpkSyncManager"

    const-string v2, "getIpkSyncService(): Can not connect CanBusService!!!"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_31
.end method


# virtual methods
.method public customThreeAreas(III)V
    .registers 8
    .param p1, "areaA"    # I
    .param p2, "areaB"    # I
    .param p3, "areaC"    # I

    .prologue
    .line 739
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 741
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/ipksync/IIpkSyncService;->customThreeAreas(III)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 746
    :cond_11
    :goto_11
    return-void

    .line 742
    :catch_12
    move-exception v0

    .line 743
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,customThreeAreas error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public factoryUpgrade()V
    .registers 5

    .prologue
    .line 1016
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1018
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->factoryUpgrade()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 1023
    :cond_11
    :goto_11
    return-void

    .line 1019
    :catch_12
    move-exception v0

    .line 1020
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,factoryUpgrade error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public getAreaIndex(I)I
    .registers 6
    .param p1, "area"    # I

    .prologue
    .line 755
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 757
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->getAreaIndex(I)I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v1

    .line 762
    :goto_12
    return v1

    .line 758
    :catch_13
    move-exception v0

    .line 759
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,getAreaIndex error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 762
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public getMUStateformICM()I
    .registers 5

    .prologue
    .line 945
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 947
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->getMUStateformICM()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v1

    .line 952
    :goto_12
    return v1

    .line 948
    :catch_13
    move-exception v0

    .line 949
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,viewType error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 952
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v1, -0x1

    goto :goto_12
.end method

.method protected getService(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 3
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 284
    invoke-static {p1}, Lcom/qinggan/canbus/ICanBusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusService;

    move-result-object v0

    return-object v0
.end method

.method public getWindowState()I
    .registers 5

    .prologue
    .line 769
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_30

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_30

    .line 771
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->getWindowState()I
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_13

    move-result v1

    .line 776
    :goto_12
    return v1

    .line 772
    :catch_13
    move-exception v0

    .line 773
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,getWindowState error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_30
    const/4 v1, -0x1

    goto :goto_12
.end method

.method public mediaRadioFocusChange(II)V
    .registers 7
    .param p1, "currentFocus"    # I
    .param p2, "subType"    # I

    .prologue
    .line 807
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 809
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->mediaRadioFocusChange(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 814
    :cond_11
    :goto_11
    return-void

    .line 810
    :catch_12
    move-exception v0

    .line 811
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,mediaRadioFocusChange error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public registerIpkUpdateCallback(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V
    .registers 6
    .param p1, "callbacks"    # Lcom/qinggan/ipksync/IIpkUpdataCallback;

    .prologue
    .line 880
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 882
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->registerIpkUpdateCallback(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 887
    :cond_11
    :goto_11
    return-void

    .line 883
    :catch_12
    move-exception v0

    .line 884
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,registerIpkUpdateCallback error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public restoreFactory()V
    .registers 5

    .prologue
    .line 1003
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1005
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->restoreFactory()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 1010
    :cond_11
    :goto_11
    return-void

    .line 1006
    :catch_12
    move-exception v0

    .line 1007
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,restoreFactory error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public sendLanguageState(Ljava/lang/String;I)V
    .registers 7
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 977
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 979
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->sendLanguageState(Ljava/lang/String;I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 984
    :cond_11
    :goto_11
    return-void

    .line 980
    :catch_12
    move-exception v0

    .line 981
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,startUpload type error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public setIpkCallback(Lcom/qinggan/ipksync/IpkSyncCallbacks;)V
    .registers 6
    .param p1, "callbacks"    # Lcom/qinggan/ipksync/IpkSyncCallbacks;

    .prologue
    .line 307
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 309
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->attachIpkSyncCallbacks(Lcom/qinggan/ipksync/IIpkSyncCallbacks;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 314
    :cond_11
    :goto_11
    return-void

    .line 310
    :catch_12
    move-exception v0

    .line 311
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,setIpkCallback error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public setLogState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 900
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 902
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->setLogState(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 907
    :cond_11
    :goto_11
    return-void

    .line 903
    :catch_12
    move-exception v0

    .line 904
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,setLogState error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public startFileTransfer(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 967
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 969
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->startFileTransfer(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 974
    :cond_11
    :goto_11
    return-void

    .line 970
    :catch_12
    move-exception v0

    .line 971
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,startUpload type error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public startLogReceive()V
    .registers 5

    .prologue
    .line 890
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 892
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->startLogReceive()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 897
    :cond_11
    :goto_11
    return-void

    .line 893
    :catch_12
    move-exception v0

    .line 894
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,startLogReceive error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public startUpload()V
    .registers 5

    .prologue
    .line 854
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 856
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->startUpload()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 861
    :cond_11
    :goto_11
    return-void

    .line 857
    :catch_12
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,startUpload error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public startUploadtype(I)V
    .registers 6
    .param p1, "type"    # I

    .prologue
    .line 956
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 958
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->startUploadtype(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 964
    :cond_11
    :goto_11
    return-void

    .line 959
    :catch_12
    move-exception v0

    .line 960
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,startUpload type error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public switchToRecoveryMode()V
    .registers 5

    .prologue
    .line 990
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 992
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->switchToRecoveryMode()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 997
    :cond_11
    :goto_11
    return-void

    .line 993
    :catch_12
    move-exception v0

    .line 994
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,switchToRecoveryMode error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhu2IcmACK(II)V
    .registers 7
    .param p1, "ack"    # I
    .param p2, "forWhat"    # I

    .prologue
    .line 641
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 643
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhu2IcmACK(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 648
    :cond_11
    :goto_11
    return-void

    .line 644
    :catch_12
    move-exception v0

    .line 645
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhu2IcmACK error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuFirstIsOK(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "viewtype"    # I

    .prologue
    .line 935
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 937
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuFirstIsOK(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 942
    :cond_11
    :goto_11
    return-void

    .line 938
    :catch_12
    move-exception v0

    .line 939
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,viewType error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuMUState(II)V
    .registers 7
    .param p1, "state"    # I
    .param p2, "viewtype"    # I

    .prologue
    .line 915
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 917
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuMUState(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 922
    :cond_11
    :goto_11
    return-void

    .line 918
    :catch_12
    move-exception v0

    .line 919
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuMUState error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuNaviDirection(I)V
    .registers 6
    .param p1, "direction"    # I

    .prologue
    .line 827
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 829
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuNaviDirection(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 834
    :cond_11
    :goto_11
    return-void

    .line 830
    :catch_12
    move-exception v0

    .line 831
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuNaviDirection error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuPhone2IcmSyncCallTime(I)V
    .registers 6
    .param p1, "time"    # I

    .prologue
    .line 611
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 613
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuPhone2IcmSyncCallTime(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 618
    :cond_11
    :goto_11
    return-void

    .line 614
    :catch_12
    move-exception v0

    .line 615
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuPhone2IcmSyncCallTime error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuPhone2IcmSyncCallTimed(IZ)V
    .registers 7
    .param p1, "time"    # I
    .param p2, "isThirdCall"    # Z

    .prologue
    .line 627
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 629
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuPhone2IcmSyncCallTimed(IZ)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 634
    :cond_11
    :goto_11
    return-void

    .line 630
    :catch_12
    move-exception v0

    .line 631
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuPhone2IcmSyncCallTime error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuPhone2IcmSyncName(Ljava/lang/String;Z)V
    .registers 7
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "isThirdCall"    # Z

    .prologue
    .line 596
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 598
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuPhone2IcmSyncName(Ljava/lang/String;Z)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 603
    :cond_11
    :goto_11
    return-void

    .line 599
    :catch_12
    move-exception v0

    .line 600
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuPhone2IcmSyncName error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuReqMediaRadioChange(I)V
    .registers 6
    .param p1, "toFocus"    # I

    .prologue
    .line 841
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 843
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuReqMediaRadioChange(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 848
    :cond_11
    :goto_11
    return-void

    .line 844
    :catch_12
    move-exception v0

    .line 845
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuReqMediaRadioChange error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuSetIPKMusic(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 668
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 670
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuSetIPKMusic(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 675
    :cond_11
    :goto_11
    return-void

    .line 671
    :catch_12
    move-exception v0

    .line 672
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuSetIPKMusic error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuSetTheme(I)V
    .registers 6
    .param p1, "themeId"    # I

    .prologue
    .line 654
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 656
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuSetTheme(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 661
    :cond_11
    :goto_11
    return-void

    .line 657
    :catch_12
    move-exception v0

    .line 658
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuSetTheme error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuSetTimeFormat(I)V
    .registers 6
    .param p1, "format"    # I

    .prologue
    .line 682
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 684
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuSetTimeFormat(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 689
    :cond_11
    :goto_11
    return-void

    .line 685
    :catch_12
    move-exception v0

    .line 686
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuSetTimeFormat error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStatus2IcmPushCampByNavi(I)V
    .registers 6
    .param p1, "eventType"    # I

    .prologue
    .line 475
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 477
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStatus2IcmPushCampByNavi(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 482
    :cond_11
    :goto_11
    return-void

    .line 478
    :catch_12
    move-exception v0

    .line 479
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStatus2IcmPushRestByNavi error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStatus2IcmPushRestByNavi(I)V
    .registers 6
    .param p1, "eventType"    # I

    .prologue
    .line 462
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 464
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStatus2IcmPushRestByNavi(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 469
    :cond_11
    :goto_11
    return-void

    .line 465
    :catch_12
    move-exception v0

    .line 466
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStatus2IcmPushRestByNavi error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmAudioReady(I)V
    .registers 6
    .param p1, "audioReady"    # I

    .prologue
    .line 323
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 325
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmAudioReady(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 330
    :cond_11
    :goto_11
    return-void

    .line 326
    :catch_12
    move-exception v0

    .line 327
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmAudioReady error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmBTContactsRecordStatus(I)V
    .registers 6
    .param p1, "recordState"    # I

    .prologue
    .line 729
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 731
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmBTContactsRecordStatus(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 736
    :cond_11
    :goto_11
    return-void

    .line 732
    :catch_12
    move-exception v0

    .line 733
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmBTContactsRecordStatus error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmBTStatus(I)V
    .registers 6
    .param p1, "btState"    # I

    .prologue
    .line 698
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 700
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmBTStatus(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 705
    :cond_11
    :goto_11
    return-void

    .line 701
    :catch_12
    move-exception v0

    .line 702
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmBTStatus error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmMediaEvent()V
    .registers 5

    .prologue
    .line 412
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 414
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmMediaEvent()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 419
    :cond_11
    :goto_11
    return-void

    .line 415
    :catch_12
    move-exception v0

    .line 416
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmMediaEvent error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmMediaReady(I)V
    .registers 6
    .param p1, "mediaReady"    # I

    .prologue
    .line 383
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 385
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmMediaReady(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 390
    :cond_11
    :goto_11
    return-void

    .line 386
    :catch_12
    move-exception v0

    .line 387
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmMediaReady error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmMediaTypeReady(II)V
    .registers 7
    .param p1, "mediaReady"    # I
    .param p2, "mediaType"    # I

    .prologue
    .line 399
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 401
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmMediaTypeReady(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 406
    :cond_11
    :goto_11
    return-void

    .line 402
    :catch_12
    move-exception v0

    .line 403
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmMediaReady error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmNaviGuiding()V
    .registers 5

    .prologue
    .line 353
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 355
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmStartNaviEvent()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 360
    :cond_11
    :goto_11
    return-void

    .line 356
    :catch_12
    move-exception v0

    .line 357
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmStartNaviEvent error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmNaviReady(I)V
    .registers 6
    .param p1, "naviReady"    # I

    .prologue
    .line 339
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 341
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmNaviReady(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 346
    :cond_11
    :goto_11
    return-void

    .line 342
    :catch_12
    move-exception v0

    .line 343
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmNaviReady error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmNaviTBTEvents()V
    .registers 5

    .prologue
    .line 367
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 369
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmNaviEvents()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 374
    :cond_11
    :goto_11
    return-void

    .line 370
    :catch_12
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmNaviEvents error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmPhoneStatus(I)V
    .registers 6
    .param p1, "phoneState"    # I

    .prologue
    .line 563
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 565
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmPhoneStatus(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 570
    :cond_11
    :goto_11
    return-void

    .line 566
    :catch_12
    move-exception v0

    .line 567
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmPhoneStatus error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmPushNaviByDirection(I)V
    .registers 3
    .param p1, "direction"    # I

    .prologue
    .line 439
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qinggan/ipksync/IpkSyncManager;->syncEhuStaus2IcmPushNaviByDirection(II)V

    .line 440
    return-void
.end method

.method public syncEhuStaus2IcmPushNaviByDirection(II)V
    .registers 7
    .param p1, "direction"    # I
    .param p2, "triggerSource"    # I

    .prologue
    .line 449
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 451
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmPushNaviByDirection(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 456
    :cond_11
    :goto_11
    return-void

    .line 452
    :catch_12
    move-exception v0

    .line 453
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmPushNaviByDirection error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmPushNaviVideoEvent()V
    .registers 5

    .prologue
    .line 425
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 427
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmPushNaviVideoEvent()V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 432
    :cond_11
    :goto_11
    return-void

    .line 428
    :catch_12
    move-exception v0

    .line 429
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmPushNaviVideoEvent error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmSyncingVideo(I)V
    .registers 6
    .param p1, "syncing"    # I

    .prologue
    .line 506
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 508
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmSyncingVideo(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 513
    :cond_11
    :goto_11
    return-void

    .line 509
    :catch_12
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmSyncingVideo error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmSyncingVideoType(II)V
    .registers 7
    .param p1, "syncing"    # I
    .param p2, "type"    # I

    .prologue
    .line 523
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 525
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmSyncingVideoType(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 530
    :cond_11
    :goto_11
    return-void

    .line 526
    :catch_12
    move-exception v0

    .line 527
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmSyncingVideoType error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmSyncingVideoTypeArea(III)V
    .registers 8
    .param p1, "syncing"    # I
    .param p2, "type"    # I
    .param p3, "area"    # I

    .prologue
    .line 544
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 546
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmSyncingVideoTypeArea(III)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 551
    :cond_11
    :goto_11
    return-void

    .line 547
    :catch_12
    move-exception v0

    .line 548
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmSyncingVideoTypeArea error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncEhuStaus2IcmUpdatePkgTransferStatus(I)V
    .registers 6
    .param p1, "transferState"    # I

    .prologue
    .line 580
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 582
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncEhuStaus2IcmUpdatePkgTransferStatus(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 587
    :cond_11
    :goto_11
    return-void

    .line 583
    :catch_12
    move-exception v0

    .line 584
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncEhuStaus2IcmUpdatePkgTransferStatus error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncICMShowModeType(II)V
    .registers 7
    .param p1, "mode"    # I
    .param p2, "style"    # I

    .prologue
    .line 784
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 786
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/qinggan/ipksync/IIpkSyncService;->syncICMShowModeType(II)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 791
    :cond_11
    :goto_11
    return-void

    .line 787
    :catch_12
    move-exception v0

    .line 788
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncICMShowModeType error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncICMVehicleState(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 490
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 492
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncICMVehicleState(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 497
    :cond_11
    :goto_11
    return-void

    .line 493
    :catch_12
    move-exception v0

    .line 494
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncICMVehicleState error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncMenuCardInfo(Ljava/util/Map;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/qinggan/ipksync/CardInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1032
    .local p1, "cardInfo":Ljava/util/Map;, "Ljava/util/Map<Lcom/qinggan/ipksync/CardInfo;Ljava/lang/Integer;>;"
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 1034
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncMenuCardInfo(Ljava/util/Map;)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 1039
    :cond_11
    :goto_11
    return-void

    .line 1035
    :catch_12
    move-exception v0

    .line 1036
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncMenuCardInfo error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncNaviStatus(I)V
    .registers 6
    .param p1, "naviStatus"    # I

    .prologue
    .line 714
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 716
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/qinggan/ipksync/IIpkSyncService;->syncNaviStatus(I)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 721
    :cond_11
    :goto_11
    return-void

    .line 717
    :catch_12
    move-exception v0

    .line 718
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncNaviStatus error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method

.method public syncUploadFile(IIII)V
    .registers 9
    .param p1, "iscomplete"    # I
    .param p2, "index"    # I
    .param p3, "total"    # I
    .param p4, "lastsize"    # I

    .prologue
    .line 867
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkSyncManager;->mService:Landroid/os/IInterface;

    if-eqz v1, :cond_11

    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 869
    :try_start_a
    invoke-direct {p0}, Lcom/qinggan/ipksync/IpkSyncManager;->getIpkSyncService()Lcom/qinggan/ipksync/IIpkSyncService;

    move-result-object v1

    invoke-interface {v1, p1, p2, p3, p4}, Lcom/qinggan/ipksync/IIpkSyncService;->syncUploadFile(IIII)V
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_11} :catch_12

    .line 874
    :cond_11
    :goto_11
    return-void

    .line 870
    :catch_12
    move-exception v0

    .line 871
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "IpkSyncManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "IpkSyncService died,syncUploadFile error:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11
.end method
