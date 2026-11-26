.class public Lcom/qinggan/canbus/CanBusManager;
.super Ljava/lang/Object;
.source "CanBusManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/canbus/CanBusManager$GetInstanceHandler;
    }
.end annotation


# static fields
.field public static final BRAKE_FLUID_STATUS_UNKNOWN:I = -0x80000000

.field public static final BRAKE_PAD_STATUS_UNKNOWN:I = -0x80000000

.field public static final BRAKE_WIPER_STATUS_UNKNOWN:I = -0x80000000

.field public static final CANBUS_SERVICE:Ljava/lang/String; = "com.qinggan.canbus.CanBusService"

.field public static final CANBUS_SERVICE_PACKAGE:Ljava/lang/String; = "com.qinggan.canbus.service"

.field public static final CAN_STATE_UNKNOWN:I = -0x1

.field public static final CONNECT_ERROR:I = -0x1

.field public static final ENGINE_SPEED_UNKNOWN:I = -0x80000000

.field public static final ENGINE_STATUS_UNKNOWN:I = -0x80000000

.field public static final FUEL_CONSUMPTION_UNKNOWN:I = -0x80000000

.field public static final FUEL_CONSUMPTION_UNKNOWN_F:F = 1.4E-45f

.field public static final GEAR_UNKNOWN:I = -0x80000000

.field public static final HAVE_SET_AIR_CONDITION_STATE:I = 0x3

.field public static final HAVE_SET_VEHICLE_STATE:I = 0x3

.field public static final ILLUMINATION_UNKNOWN:I = -0x80000000

.field public static final INVALID_VALUE:I = -0x270f

.field public static final ODOMETER_UNKNOWN:J = -0x1f400000000L

.field public static final QG_CANBUS_SERVICE:Ljava/lang/String; = "qg.canbus"

.field public static final SET_AIR_CONDITION_FUNCTION_ERROR:I = 0x2

.field public static final SET_AIR_CONDITION_STATE_FAILED:I = 0x0

.field public static final SET_AIR_CONDITION_STATE_MAX:I = 0x4

.field public static final SET_AIR_CONDITION_STATE_MIN:I = 0x6

.field public static final SET_AIR_CONDITION_STATE_SUCCEED:I = 0x1

.field public static final SET_VEHICLE_FUNCTION_ERROR:I = 0x2

.field public static final SET_VEHICLE_STATE_FAILED:I = 0x0

.field public static final SET_VEHICLE_STATE_SUCCEED:I = 0x1

.field public static final STATE_UNKNOWN:I = -0x80000000

.field private static final TAG:Ljava/lang/String; = "CanBusManager"

.field public static final TEMPERATURE_UNKNOWN:I = -0x80000000

.field public static final VEHICLE_KEY_UNKNOWN:I = -0x80000000

.field public static final VEHICLE_SPEED_UNKNOWN:I = -0x80000000

.field public static final VEHICLE_STATE_ACTIVATE:I = 0x1

.field public static final VEHICLE_STATE_OFF:I = 0x0

.field public static final VEHICLE_STATE_ON:I = 0x1

.field private static isConnected:Z

.field private static final mGetIntanceList:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/qinggan/common/OnInitListener;",
            ">;"
        }
    .end annotation
.end field

.field private static mHandler:Landroid/os/Handler;

.field private static mHandlerThread:Landroid/os/HandlerThread;

.field private static volatile mInstance:Lcom/qinggan/canbus/CanBusManager;

.field private static mLock:Ljava/lang/Object;


# instance fields
.field deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mContext:Landroid/content/Context;

.field private mEmulator:Z

.field private mInitListenerList:Ljava/util/HashMap;
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

.field private mObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;

.field private mReObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;

.field private mService:Lcom/qinggan/canbus/ICanBusService;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 154
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    .line 156
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/CanBusManager;->mLock:Ljava/lang/Object;

    .line 160
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lcom/qinggan/canbus/CanBusManager;->mGetIntanceList:Ljava/util/Set;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    .line 158
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;

    .line 164
    new-instance v0, Lcom/qinggan/canbus/CanBusManager$1;

    invoke-direct {v0, p0}, Lcom/qinggan/canbus/CanBusManager$1;-><init>(Lcom/qinggan/canbus/CanBusManager;)V

    iput-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;

    .line 209
    new-instance v0, Lcom/qinggan/canbus/CanBusManager$2;

    invoke-direct {v0, p0}, Lcom/qinggan/canbus/CanBusManager$2;-><init>(Lcom/qinggan/canbus/CanBusManager;)V

    iput-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mReObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;

    .line 240
    new-instance v0, Lcom/qinggan/canbus/CanBusManager$3;

    invoke-direct {v0, p0}, Lcom/qinggan/canbus/CanBusManager$3;-><init>(Lcom/qinggan/canbus/CanBusManager;)V

    iput-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 253
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager;->mContext:Landroid/content/Context;

    .line 254
    iget-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "callbackcanbusinit"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/qinggan/canbus/CanBusManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 256
    sget-object v0, Lcom/qinggan/canbus/CanBusManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 257
    new-instance v0, Lcom/qinggan/canbus/CanBusManager$GetInstanceHandler;

    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qinggan/canbus/CanBusManager$GetInstanceHandler;-><init>(Lcom/qinggan/canbus/CanBusManager;Landroid/os/Looper;)V

    sput-object v0, Lcom/qinggan/canbus/CanBusManager;->mHandler:Landroid/os/Handler;

    .line 258
    invoke-direct {p0}, Lcom/qinggan/canbus/CanBusManager;->initCanBusService()Z

    .line 259
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .prologue
    .line 30
    sget-boolean v0, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .registers 1
    .param p0, "x0"    # Z

    .prologue
    .line 30
    sput-boolean p0, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    return p0
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/CanBusManager;Lcom/qinggan/canbus/ICanBusService;)Lcom/qinggan/canbus/ICanBusService;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CanBusManager;
    .param p1, "x1"    # Lcom/qinggan/canbus/ICanBusService;

    .prologue
    .line 30
    iput-object p1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qinggan/canbus/CanBusManager;)Ljava/util/HashMap;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CanBusManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/qinggan/canbus/CanBusManager;)Landroid/content/Context;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CanBusManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400()Ljava/util/Set;
    .registers 1

    .prologue
    .line 30
    sget-object v0, Lcom/qinggan/canbus/CanBusManager;->mGetIntanceList:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic access$500(Lcom/qinggan/canbus/CanBusManager;Z)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CanBusManager;
    .param p1, "x1"    # Z

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/qinggan/canbus/CanBusManager;->dispatchConnectStatus(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/qinggan/canbus/CanBusManager;)Ljava/lang/Runnable;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CanBusManager;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qinggan/canbus/CanBusManager;->mReObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized dispatchConnectStatus(Z)V
    .registers 5
    .param p1, "isConnected"    # Z

    .prologue
    .line 304
    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    if-lez v1, :cond_1a

    .line 305
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mInitListenerList:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/common/OnInitListener;

    invoke-interface {v1, p1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 308
    :cond_1a
    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mGetIntanceList:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_20
    :goto_20
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 309
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_20

    .line 310
    invoke-interface {v0, p1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V
    :try_end_31
    .catchall {:try_start_1 .. :try_end_31} :catchall_32

    goto :goto_20

    .line 304
    .end local v0    # "listener":Lcom/qinggan/common/OnInitListener;
    :catchall_32
    move-exception v1

    monitor-exit p0

    throw v1

    .line 312
    :cond_35
    monitor-exit p0

    return-void
.end method

.method public static getAirConditionMaxBlowerLevel()I
    .registers 3

    .prologue
    .line 2337
    const/4 v0, 0x1

    .line 2338
    .local v0, "ret":I
    invoke-static {}, Lcom/qinggan/util/VehicleHelper;->getVehicleTypeID()I

    move-result v1

    .line 2339
    .local v1, "vehicleId":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_c

    .line 2340
    const/16 v0, 0x8

    .line 2349
    :cond_b
    :goto_b
    return v0

    .line 2341
    :cond_c
    const/16 v2, 0x29

    if-ne v1, v2, :cond_13

    .line 2342
    const/16 v0, 0x8

    goto :goto_b

    .line 2343
    :cond_13
    const/16 v2, 0x28

    if-ne v1, v2, :cond_b

    .line 2344
    const/16 v0, 0x8

    goto :goto_b
.end method

.method public static getAirConditionMaxTemp()F
    .registers 3

    .prologue
    .line 2305
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2306
    .local v0, "ret":F
    invoke-static {}, Lcom/qinggan/util/VehicleHelper;->getVehicleTypeID()I

    move-result v1

    .line 2307
    .local v1, "vehicleId":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_d

    .line 2308
    const/high16 v0, 0x42000000    # 32.0f

    .line 2317
    :cond_c
    :goto_c
    return v0

    .line 2309
    :cond_d
    const/16 v2, 0x29

    if-ne v1, v2, :cond_14

    .line 2310
    const/high16 v0, 0x42040000    # 33.0f

    goto :goto_c

    .line 2311
    :cond_14
    const/16 v2, 0x28

    if-ne v1, v2, :cond_c

    .line 2312
    const/high16 v0, 0x42000000    # 32.0f

    goto :goto_c
.end method

.method public static getAirConditionMixBlowerLevel()I
    .registers 3

    .prologue
    .line 2353
    const/4 v0, 0x1

    .line 2354
    .local v0, "ret":I
    invoke-static {}, Lcom/qinggan/util/VehicleHelper;->getVehicleTypeID()I

    move-result v1

    .line 2355
    .local v1, "vehicleId":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_b

    .line 2356
    const/4 v0, 0x0

    .line 2365
    :cond_a
    :goto_a
    return v0

    .line 2357
    :cond_b
    const/16 v2, 0x29

    if-ne v1, v2, :cond_11

    .line 2358
    const/4 v0, 0x1

    goto :goto_a

    .line 2359
    :cond_11
    const/16 v2, 0x28

    if-ne v1, v2, :cond_a

    .line 2360
    const/4 v0, 0x1

    goto :goto_a
.end method

.method public static getAirConditionMixTemp()F
    .registers 3

    .prologue
    .line 2321
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2322
    .local v0, "ret":F
    invoke-static {}, Lcom/qinggan/util/VehicleHelper;->getVehicleTypeID()I

    move-result v1

    .line 2323
    .local v1, "vehicleId":I
    const/16 v2, 0x25

    if-ne v1, v2, :cond_d

    .line 2324
    const/high16 v0, 0x41800000    # 16.0f

    .line 2333
    :cond_c
    :goto_c
    return v0

    .line 2325
    :cond_d
    const/16 v2, 0x29

    if-ne v1, v2, :cond_14

    .line 2326
    const/high16 v0, 0x41880000    # 17.0f

    goto :goto_c

    .line 2327
    :cond_14
    const/16 v2, 0x28

    if-ne v1, v2, :cond_c

    .line 2328
    const/high16 v0, 0x41800000    # 16.0f

    goto :goto_c
.end method

.method public static getInstance()Lcom/qinggan/canbus/CanBusManager;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 322
    sget-boolean v0, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v0, :cond_7

    .line 323
    sget-object v0, Lcom/qinggan/canbus/CanBusManager;->mInstance:Lcom/qinggan/canbus/CanBusManager;

    return-object v0

    .line 325
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "please init in onCreate of  applicatiion,or server process is invaild,now it is resarting"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/canbus/CanBusManager;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "listener"    # Lcom/qinggan/common/OnInitListener;

    .prologue
    .line 337
    const-class v2, Lcom/qinggan/canbus/CanBusManager;

    monitor-enter v2

    :try_start_3
    sget-object v3, Lcom/qinggan/canbus/CanBusManager;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_25

    .line 338
    :try_start_6
    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mInstance:Lcom/qinggan/canbus/CanBusManager;

    if-nez v1, :cond_28

    .line 339
    if-eqz p0, :cond_1a

    if-eqz p1, :cond_1a

    .line 340
    new-instance v1, Lcom/qinggan/canbus/CanBusManager;

    invoke-direct {v1, p0, p1}, Lcom/qinggan/canbus/CanBusManager;-><init>(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)V

    sput-object v1, Lcom/qinggan/canbus/CanBusManager;->mInstance:Lcom/qinggan/canbus/CanBusManager;

    .line 341
    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mInstance:Lcom/qinggan/canbus/CanBusManager;

    monitor-exit v3
    :try_end_18
    .catchall {:try_start_6 .. :try_end_18} :catchall_22

    .line 354
    :goto_18
    monitor-exit v2

    return-object v1

    .line 343
    :cond_1a
    :try_start_1a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v4, "params illegal!"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 352
    :catchall_22
    move-exception v1

    monitor-exit v3
    :try_end_24
    .catchall {:try_start_1a .. :try_end_24} :catchall_22

    :try_start_24
    throw v1
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_25

    .line 337
    :catchall_25
    move-exception v1

    monitor-exit v2

    throw v1

    .line 346
    :cond_28
    if-eqz p1, :cond_39

    .line 347
    :try_start_2a
    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 348
    .local v0, "message":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 349
    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v0, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 352
    .end local v0    # "message":Landroid/os/Message;
    :cond_39
    monitor-exit v3
    :try_end_3a
    .catchall {:try_start_2a .. :try_end_3a} :catchall_22

    .line 354
    :try_start_3a
    sget-object v1, Lcom/qinggan/canbus/CanBusManager;->mInstance:Lcom/qinggan/canbus/CanBusManager;
    :try_end_3c
    .catchall {:try_start_3a .. :try_end_3c} :catchall_25

    goto :goto_18
.end method

.method private initCanBusService()Z
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 262
    const-string v5, "qg.canbus"

    invoke-static {v5}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 263
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_30

    .line 264
    const-string v4, "CanBusManager"

    const-string v5, "initCanBusService can not get service qg.canbus"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 266
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "com.qinggan.canbus.service"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 267
    const-string v4, "qg.canbus"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 268
    iget-object v4, p0, Lcom/qinggan/canbus/CanBusManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 269
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/qinggan/canbus/CanBusManager;->mObtainICanBusServiceBinderRunnable:Ljava/lang/Runnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 298
    .end local v2    # "intent":Landroid/content/Intent;
    :goto_2f
    return v3

    .line 273
    :cond_30
    invoke-static {v0}, Lcom/qinggan/canbus/ICanBusService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/canbus/ICanBusService;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    .line 274
    sput-boolean v4, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    .line 276
    new-instance v3, Ljava/lang/Thread;

    new-instance v5, Lcom/qinggan/canbus/CanBusManager$4;

    invoke-direct {v5, p0}, Lcom/qinggan/canbus/CanBusManager$4;-><init>(Lcom/qinggan/canbus/CanBusManager;)V

    invoke-direct {v3, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 291
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 294
    :try_start_45
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->deathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v0, v3, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_4b
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4b} :catch_4d

    :goto_4b
    move v3, v4

    .line 298
    goto :goto_2f

    .line 295
    :catch_4d
    move-exception v1

    .line 296
    .local v1, "e1":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_4b
.end method


# virtual methods
.method public destroy()Z
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 380
    const-string v0, "CanBusManager"

    const-string v1, "disConnect"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const/4 v0, 0x1

    return v0
.end method

.method public getAccStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1600
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1620
    :goto_7
    return v1

    .line 1604
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1605
    const/4 v1, -0x1

    goto :goto_7

    .line 1610
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getAccStatus()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1612
    :catch_15
    move-exception v0

    .line 1614
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1615
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1616
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAccStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getAirCondition()Lcom/qinggan/canbus/AirCondition;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1206
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1226
    :cond_6
    :goto_6
    return-object v1

    .line 1210
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1216
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getAirCondition()Lcom/qinggan/canbus/AirCondition;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1218
    :catch_12
    move-exception v0

    .line 1220
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1221
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1222
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirCondition exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getAirConditionState(Lcom/qinggan/canbus/AirConditionState;)I
    .registers 7
    .param p1, "airCondition"    # Lcom/qinggan/canbus/AirConditionState;

    .prologue
    const/4 v1, -0x1

    .line 1318
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1337
    :cond_6
    :goto_6
    return v1

    .line 1322
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1327
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->getAirConditionState(Lcom/qinggan/canbus/AirConditionState;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    .line 1328
    .local v1, "state":I
    goto :goto_6

    .line 1330
    .end local v1    # "state":I
    :catch_12
    move-exception v0

    .line 1332
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1334
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1335
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAirConditionState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1336
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getAlarmData()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1547
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1567
    :goto_7
    return v1

    .line 1551
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1552
    const/4 v1, -0x1

    goto :goto_7

    .line 1557
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getAlarmData()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1559
    :catch_15
    move-exception v0

    .line 1561
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1562
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1563
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAlarmData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1564
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getAmbientTemperatureValue()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 550
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 570
    :goto_7
    return v1

    .line 554
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 555
    const/4 v1, -0x1

    goto :goto_7

    .line 560
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getAmbientTemperature()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 562
    :catch_15
    move-exception v0

    .line 564
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 565
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 566
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAmbientTemperatureValue exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getBatteryRemainingCapacity()F
    .registers 6

    .prologue
    const/high16 v1, -0x40800000    # -1.0f

    .line 2211
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 2230
    :cond_7
    :goto_7
    return v1

    .line 2215
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_7

    .line 2220
    :try_start_c
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getBatteryRemainingCapacity()F
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_c .. :try_end_11} :catch_13
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_11} :catch_1c

    move-result v1

    .line 2221
    .local v1, "ret":F
    goto :goto_7

    .line 2223
    .end local v1    # "ret":F
    :catch_13
    move-exception v0

    .line 2225
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 2227
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1c
    move-exception v0

    .line 2228
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2229
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getBatteryState()Lcom/qinggan/canbus/BatteryState;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 904
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 923
    :cond_6
    :goto_6
    return-object v1

    .line 908
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 914
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getBatteryState()Lcom/qinggan/canbus/BatteryState;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 916
    :catch_12
    move-exception v0

    .line 918
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 919
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 920
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBatteryState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getBrakeFluidStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 737
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 757
    :goto_7
    return v1

    .line 741
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 742
    const/4 v1, -0x1

    goto :goto_7

    .line 747
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getBrakeFluidStatus()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 749
    :catch_15
    move-exception v0

    .line 751
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 752
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 753
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrakeFluidStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getBrakePadStatus()Lcom/qinggan/canbus/BrakePadStatus;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 712
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 732
    :cond_6
    :goto_6
    return-object v1

    .line 716
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 722
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getBrakePadStatus()Lcom/qinggan/canbus/BrakePadStatus;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 724
    :catch_12
    move-exception v0

    .line 726
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 727
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 728
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getBrakePadStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getCameraState()Lcom/qinggan/canbus/CameraState;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2504
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2524
    :cond_6
    :goto_6
    return-object v1

    .line 2508
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2514
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getCameraState()Lcom/qinggan/canbus/CameraState;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 2516
    :catch_12
    move-exception v0

    .line 2518
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2519
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2520
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCameraState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2521
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getCanBoxVersion()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 438
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 458
    :cond_6
    :goto_6
    return-object v1

    .line 442
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 448
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getCanBoxVersion()Ljava/lang/String;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 450
    :catch_12
    move-exception v0

    .line 452
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 453
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 454
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCanBoxVersion exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getCanRawData(I)[I
    .registers 7
    .param p1, "canId"    # I

    .prologue
    const/4 v0, 0x0

    .line 2478
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2497
    :cond_6
    :goto_6
    return-object v0

    .line 2482
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2487
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->getCanRawData(I)[I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v0

    .line 2488
    .local v0, "data":[I
    goto :goto_6

    .line 2490
    .end local v0    # "data":[I
    :catch_12
    move-exception v1

    .line 2492
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2494
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v1

    .line 2495
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCanRawData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2496
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getComprehensiveFuelConsumption()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 795
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 815
    :goto_7
    return v1

    .line 799
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 800
    const/4 v1, -0x1

    goto :goto_7

    .line 805
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getComprehensiveFuelConsumption()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 807
    :catch_15
    move-exception v0

    .line 809
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 810
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 811
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getComprehensiveFuelConsumption exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getComprehensiveFuelConsumptionEX()F
    .registers 6

    .prologue
    const/4 v1, 0x1

    .line 820
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 840
    :goto_6
    return v1

    .line 824
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 825
    const/high16 v1, -0x40800000    # -1.0f

    goto :goto_6

    .line 830
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getComprehensiveFuelConsumptionEX()F
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_6

    .line 832
    :catch_15
    move-exception v0

    .line 834
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 835
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 836
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getComprehensiveFuelConsumption exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getDVRState()Lcom/qinggan/canbus/DVRState;
    .registers 6

    .prologue
    const/4 v0, 0x0

    .line 2182
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2201
    :cond_6
    :goto_6
    return-object v0

    .line 2186
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2191
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getDVRState()Lcom/qinggan/canbus/DVRState;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v0

    .line 2192
    .local v0, "dvrState":Lcom/qinggan/canbus/DVRState;
    goto :goto_6

    .line 2194
    .end local v0    # "dvrState":Lcom/qinggan/canbus/DVRState;
    :catch_12
    move-exception v1

    .line 2196
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "getDVRState died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2198
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v1

    .line 2199
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDVRState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2200
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getDoorStatus()Lcom/qinggan/canbus/DoorStatus;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 467
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 487
    :cond_6
    :goto_6
    return-object v1

    .line 471
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 477
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getDoorStatus()Lcom/qinggan/canbus/DoorStatus;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 479
    :catch_12
    move-exception v0

    .line 481
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 482
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 483
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDoorStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getEnergyConsumptionInfo()Lcom/qinggan/canbus/EnergyConsumptionInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2559
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2576
    :cond_6
    :goto_6
    return-object v1

    .line 2563
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2568
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getEnergyConsumptionInfo()Lcom/qinggan/canbus/EnergyConsumptionInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 2569
    :catch_12
    move-exception v0

    .line 2570
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2571
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2572
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnergyConsumptionInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2573
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getEnergyConsumptionPercent()Lcom/qinggan/canbus/EnergyConsumptionPercent;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2533
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2550
    :cond_6
    :goto_6
    return-object v1

    .line 2537
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2542
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getEnergyConsumptionPercent()Lcom/qinggan/canbus/EnergyConsumptionPercent;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 2543
    :catch_12
    move-exception v0

    .line 2544
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2545
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2546
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEnergyConsumptionPercent exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2547
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getEngineFluidStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1520
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1538
    :goto_7
    return v1

    .line 1524
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1525
    const/4 v1, -0x1

    goto :goto_7

    .line 1528
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getEngineFluidStatus()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1530
    :catch_15
    move-exception v0

    .line 1532
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1533
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1534
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEngineFluidStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1535
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getEngineSpeed()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1177
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1197
    :goto_7
    return v1

    .line 1181
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1182
    const/4 v1, -0x1

    goto :goto_7

    .line 1187
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getEngineSpeed()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1189
    :catch_15
    move-exception v0

    .line 1191
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1192
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1193
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEngineSpeed exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getEngineStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 875
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 895
    :goto_7
    return v1

    .line 879
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 880
    const/4 v1, -0x1

    goto :goto_7

    .line 885
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getEngineStatus()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 887
    :catch_15
    move-exception v0

    .line 889
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 890
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 891
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEngineStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 892
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getEngineTemperature()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 687
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 707
    :goto_7
    return v1

    .line 691
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 692
    const/4 v1, -0x1

    goto :goto_7

    .line 697
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getEngineTemperature()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 699
    :catch_15
    move-exception v0

    .line 701
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 702
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 703
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getEngineTemperature exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getFrontRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1347
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1367
    :cond_6
    :goto_6
    return-object v1

    .line 1351
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1357
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getFrontRadarData()Lcom/qinggan/canbus/RadarData;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1359
    :catch_12
    move-exception v0

    .line 1361
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1362
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1363
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFrontRadarData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getFuelConsumption()I
    .registers 2

    .prologue
    .line 870
    invoke-virtual {p0}, Lcom/qinggan/canbus/CanBusManager;->getComprehensiveFuelConsumption()I

    move-result v0

    return v0
.end method

.method public getFuelLevelValue()Lcom/qinggan/canbus/FuelLevel;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 606
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 626
    :cond_6
    :goto_6
    return-object v1

    .line 610
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 616
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getFuelLevel()Lcom/qinggan/canbus/FuelLevel;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 618
    :catch_12
    move-exception v0

    .line 620
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 621
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 622
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFuelLevelValue exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getGearStatus()Lcom/qinggan/canbus/GearState;
    .registers 5

    .prologue
    .line 521
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_8

    .line 522
    sget-object v1, Lcom/qinggan/canbus/GearState;->Unknown:Lcom/qinggan/canbus/GearState;

    .line 541
    :goto_7
    return-object v1

    .line 525
    :cond_8
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v1, :cond_f

    .line 526
    sget-object v1, Lcom/qinggan/canbus/GearState;->Unknown:Lcom/qinggan/canbus/GearState;

    goto :goto_7

    .line 531
    :cond_f
    :try_start_f
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1}, Lcom/qinggan/canbus/ICanBusService;->getGearStatus()Lcom/qinggan/canbus/GearState;
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_14} :catch_16
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_14} :catch_21

    move-result-object v1

    goto :goto_7

    .line 533
    :catch_16
    move-exception v0

    .line 535
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_1e
    sget-object v1, Lcom/qinggan/canbus/GearState;->Unknown:Lcom/qinggan/canbus/GearState;

    goto :goto_7

    .line 536
    :catch_21
    move-exception v0

    .line 537
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getGearStatus exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1e
.end method

.method public getHandBrakeStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1491
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1511
    :goto_7
    return v1

    .line 1495
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1496
    const/4 v1, -0x1

    goto :goto_7

    .line 1501
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getHandBrakeStatus()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1503
    :catch_15
    move-exception v0

    .line 1505
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1506
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1507
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHandBrakeStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1508
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getHevSysMode()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 971
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 991
    :cond_6
    :goto_6
    return v1

    .line 975
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 981
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getHevSysMode()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    goto :goto_6

    .line 983
    :catch_12
    move-exception v0

    .line 985
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 986
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 987
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getHevSysMode exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 988
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getIlluminationValue()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1029
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1049
    :goto_7
    return v1

    .line 1033
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1034
    const/4 v1, -0x1

    goto :goto_7

    .line 1039
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getIllumination()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1041
    :catch_15
    move-exception v0

    .line 1043
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1044
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1045
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIlluminationValue exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1046
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getInstantFuelConsumption()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 845
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 865
    :goto_7
    return v1

    .line 849
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 850
    const/4 v1, -0x1

    goto :goto_7

    .line 855
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getInstantFuelConsumption()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 857
    :catch_15
    move-exception v0

    .line 859
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 860
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 861
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getInstantFuelConsumption exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 862
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getLeftRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1405
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1425
    :cond_6
    :goto_6
    return-object v1

    .line 1409
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1415
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getLeftRadarData()Lcom/qinggan/canbus/RadarData;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1417
    :catch_12
    move-exception v0

    .line 1419
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1420
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1421
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLeftRadarData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getLightStatus()Lcom/qinggan/canbus/LightStatus;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 496
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 516
    :cond_6
    :goto_6
    return-object v1

    .line 500
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 506
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getLightStatus()Lcom/qinggan/canbus/LightStatus;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 508
    :catch_12
    move-exception v0

    .line 510
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 511
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 512
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLightStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getOdometer()Lcom/qinggan/canbus/Odometer;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 409
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 429
    :cond_6
    :goto_6
    return-object v1

    .line 413
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 419
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getOdometer()Lcom/qinggan/canbus/Odometer;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 421
    :catch_12
    move-exception v0

    .line 423
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 424
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 425
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOdometer exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getPowerLevelValue()Lcom/qinggan/canbus/PowerLevel;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 634
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 654
    :cond_6
    :goto_6
    return-object v1

    .line 638
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 644
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getPowerlLevel()Lcom/qinggan/canbus/PowerLevel;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 646
    :catch_12
    move-exception v0

    .line 648
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 649
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 650
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getFuelLevelValue exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getRainfallLevel()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 2239
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2258
    :cond_6
    :goto_6
    return v1

    .line 2243
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2248
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getRainfallLevel()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    .line 2249
    .local v1, "level":I
    goto :goto_6

    .line 2251
    .end local v1    # "level":I
    :catch_12
    move-exception v0

    .line 2253
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2255
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2256
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRainfallLevel exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2257
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getReTracking()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1459
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1479
    :goto_7
    return v1

    .line 1463
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1464
    const/4 v1, -0x1

    goto :goto_7

    .line 1469
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getReTracking()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1471
    :catch_15
    move-exception v0

    .line 1473
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1474
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1475
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getReTracking exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1476
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getRealityWarningInfo()Lcom/qinggan/canbus/RealityWarningInfo;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 2427
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2445
    :cond_6
    :goto_6
    return-object v1

    .line 2431
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2436
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getRealityWarningInfo()Lcom/qinggan/canbus/RealityWarningInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 2438
    :catch_12
    move-exception v0

    .line 2440
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2441
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2442
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOdometer exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2443
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getRearRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1376
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1396
    :cond_6
    :goto_6
    return-object v1

    .line 1380
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1386
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getRearRadarData()Lcom/qinggan/canbus/RadarData;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1388
    :catch_12
    move-exception v0

    .line 1390
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1391
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1392
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRearRadarData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1393
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getRightRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1434
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1454
    :cond_6
    :goto_6
    return-object v1

    .line 1438
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1444
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getRightRadarData()Lcom/qinggan/canbus/RadarData;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1446
    :catch_12
    move-exception v0

    .line 1448
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1449
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1450
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getRightRadarData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1451
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getSWCAngle()Lcom/qinggan/canbus/SWCAngle;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1576
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1596
    :cond_6
    :goto_6
    return-object v1

    .line 1580
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1586
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getSWCAngle()Lcom/qinggan/canbus/SWCAngle;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1588
    :catch_12
    move-exception v0

    .line 1590
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1591
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1592
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSWCAngle exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1593
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getSeatBeltStatus()Lcom/qinggan/canbus/SeatBelt;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1000
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1020
    :cond_6
    :goto_6
    return-object v1

    .line 1004
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1010
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getSeatBeltStatus()Lcom/qinggan/canbus/SeatBelt;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1012
    :catch_12
    move-exception v0

    .line 1014
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1015
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1016
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getSeatBeltStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getSecondaryOdometer()I
    .registers 3

    .prologue
    .line 1111
    invoke-virtual {p0}, Lcom/qinggan/canbus/CanBusManager;->getSecondaryOdometerLong()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSecondaryOdometerLong()J
    .registers 7

    .prologue
    const-wide v2, -0x1f400000000L

    .line 1086
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v1, v4, :cond_b

    .line 1106
    :goto_a
    return-wide v2

    .line 1090
    :cond_b
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v1, :cond_12

    .line 1091
    const-wide/16 v2, -0x1

    goto :goto_a

    .line 1096
    :cond_12
    :try_start_12
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1}, Lcom/qinggan/canbus/ICanBusService;->getSecondaryOdometer()J
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_17} :catch_19
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_17} :catch_22

    move-result-wide v2

    goto :goto_a

    .line 1098
    :catch_19
    move-exception v0

    .line 1100
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v4, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_a

    .line 1101
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_22
    move-exception v0

    .line 1102
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getSecondaryOdometerLong exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a
.end method

.method public getTPMSInfo()Lcom/qinggan/canbus/TPMSInfo;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 2157
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2176
    :cond_6
    :goto_6
    return-object v1

    .line 2161
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2166
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getTPMSInfo()Lcom/qinggan/canbus/TPMSInfo;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    .line 2167
    .local v1, "tmInfo":Lcom/qinggan/canbus/TPMSInfo;
    goto :goto_6

    .line 2169
    .end local v1    # "tmInfo":Lcom/qinggan/canbus/TPMSInfo;
    :catch_12
    move-exception v0

    .line 2171
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2173
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2174
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2175
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;)I
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    .prologue
    const/4 v1, -0x1

    .line 2004
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2023
    :cond_6
    :goto_6
    return v1

    .line 2008
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2013
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->getVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    .line 2014
    .local v1, "state":I
    goto :goto_6

    .line 2016
    .end local v1    # "state":I
    :catch_12
    move-exception v0

    .line 2018
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2020
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2021
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleCenterControlEnabled exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2022
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getVehicleIO()Lcom/qinggan/canbus/VehicleIO;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1058
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1078
    :cond_6
    :goto_6
    return-object v1

    .line 1062
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1068
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getVehicleIO()Lcom/qinggan/canbus/VehicleIO;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1070
    :catch_12
    move-exception v0

    .line 1072
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1073
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1074
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleIO exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getVehicleKeyStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1120
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1140
    :goto_7
    return v1

    .line 1124
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1125
    const/4 v1, -0x1

    goto :goto_7

    .line 1130
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getVehicleKeyState()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1132
    :catch_15
    move-exception v0

    .line 1134
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1135
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1136
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleKeyStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1137
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getVehicleSceneMode()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 2372
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2391
    :cond_6
    :goto_6
    return v1

    .line 2376
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2381
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getVehicleSceneMode()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    .line 2382
    .local v1, "state":I
    goto :goto_6

    .line 2384
    .end local v1    # "state":I
    :catch_12
    move-exception v0

    .line 2386
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2388
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2389
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2390
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getVehicleSpeed()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 1148
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 1168
    :goto_7
    return v1

    .line 1152
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 1153
    const/4 v1, -0x1

    goto :goto_7

    .line 1158
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getVehicleSpeed()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 1160
    :catch_15
    move-exception v0

    .line 1162
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 1163
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1164
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleSpeed exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public getVehicleState(Lcom/qinggan/canbus/VehicleState;)I
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;

    .prologue
    const/4 v1, -0x1

    .line 1907
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1926
    :cond_6
    :goto_6
    return v1

    .line 1911
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1916
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->getVehicleState(Lcom/qinggan/canbus/VehicleState;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    .line 1917
    .local v1, "state":I
    goto :goto_6

    .line 1919
    .end local v1    # "state":I
    :catch_12
    move-exception v0

    .line 1921
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1923
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1924
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getVehicleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getWheelCount()Lcom/qinggan/canbus/WheelCount;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 659
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 679
    :cond_6
    :goto_6
    return-object v1

    .line 663
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 669
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getWheelCount()Lcom/qinggan/canbus/WheelCount;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 671
    :catch_12
    move-exception v0

    .line 673
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 674
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 675
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWheelCount exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getWheelSpeed()Lcom/qinggan/canbus/WheelSpeed;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 578
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 598
    :cond_6
    :goto_6
    return-object v1

    .line 582
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 588
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getWheelSpeed()Lcom/qinggan/canbus/WheelSpeed;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 590
    :catch_12
    move-exception v0

    .line 592
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 593
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 594
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWheelSpeed exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 595
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getWindowStatus()Lcom/qinggan/canbus/WindowStatus;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 1625
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1645
    :cond_6
    :goto_6
    return-object v1

    .line 1629
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1635
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getWindowStatus()Lcom/qinggan/canbus/WindowStatus;
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result-object v1

    goto :goto_6

    .line 1637
    :catch_12
    move-exception v0

    .line 1639
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1640
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1641
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWindowStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public getWiperFluidStatus()I
    .registers 6

    .prologue
    const/high16 v1, -0x80000000

    .line 766
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 786
    :goto_7
    return v1

    .line 770
    :cond_8
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v2, :cond_e

    .line 771
    const/4 v1, -0x1

    goto :goto_7

    .line 776
    :cond_e
    :try_start_e
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->getWiperFluidStatus()I
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_15
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    move-result v1

    goto :goto_7

    .line 778
    :catch_15
    move-exception v0

    .line 780
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 781
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 782
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getWiperFluidStatus exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 783
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7
.end method

.method public isSupportFunction(Lcom/qinggan/canbus/FunctionType;)Z
    .registers 7
    .param p1, "type"    # Lcom/qinggan/canbus/FunctionType;

    .prologue
    const/4 v1, 0x0

    .line 2077
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2095
    :cond_6
    :goto_6
    return v1

    .line 2081
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2086
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->isSupportFunction(Lcom/qinggan/canbus/FunctionType;)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    goto :goto_6

    .line 2088
    :catch_12
    move-exception v0

    .line 2090
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2092
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2093
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportFunction exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2094
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public queryVehicleState()V
    .registers 5

    .prologue
    .line 932
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 952
    :cond_5
    :goto_5
    return-void

    .line 936
    :cond_6
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v1, :cond_5

    .line 942
    :try_start_a
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1}, Lcom/qinggan/canbus/ICanBusService;->queryVehicleState()V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_19

    goto :goto_5

    .line 944
    :catch_10
    move-exception v0

    .line 946
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "queryVehicleState died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 947
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 948
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryVehicleState exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 949
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public registerCanBusListener(Lcom/qinggan/canbus/CanBusListener;)V
    .registers 7
    .param p1, "listener"    # Lcom/qinggan/canbus/CanBusListener;

    .prologue
    .line 360
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    if-eqz v2, :cond_9

    .line 364
    :try_start_4
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->addCallback(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_2b

    .line 376
    :cond_9
    :goto_9
    return-void

    .line 366
    :catch_a
    move-exception v0

    .line 368
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCallback exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 370
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_2b
    move-exception v1

    .line 371
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addCallback exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public requestTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;)I
    .registers 7
    .param p1, "type"    # Lcom/qinggan/canbus/TravellingInfoType;

    .prologue
    const/4 v1, -0x1

    .line 2053
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2072
    :cond_6
    :goto_6
    return v1

    .line 2057
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2062
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->requestTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    goto :goto_6

    .line 2065
    :catch_12
    move-exception v0

    .line 2067
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2069
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2070
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestTravellingInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2071
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public requestVehicleCenterControlEnabledInfo()I
    .registers 6

    .prologue
    const/4 v1, -0x1

    .line 2030
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2048
    :cond_6
    :goto_6
    return v1

    .line 2034
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2039
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2}, Lcom/qinggan/canbus/ICanBusService;->requestVehicleCenterControlEnabledInfo()I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    move-result v1

    goto :goto_6

    .line 2041
    :catch_12
    move-exception v0

    .line 2043
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2045
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2046
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "requestVehicleCenterControlEnabledInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2047
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setAirConditionBundleState(Landroid/os/Bundle;)I
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 1265
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1284
    :cond_6
    :goto_6
    return v1

    .line 1269
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1274
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->setAirConditionBundleState(Landroid/os/Bundle;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 1275
    const/4 v1, 0x0

    goto :goto_6

    .line 1277
    :catch_12
    move-exception v0

    .line 1279
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1281
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1282
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAirConditionBundleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setAirConditionState(Lcom/qinggan/canbus/AirConditionState;I)I
    .registers 8
    .param p1, "airCondition"    # Lcom/qinggan/canbus/AirConditionState;
    .param p2, "state"    # I

    .prologue
    const/4 v1, -0x1

    .line 1236
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1255
    :cond_6
    :goto_6
    return v1

    .line 1240
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1245
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->setAirConditionState(Lcom/qinggan/canbus/AirConditionState;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 1246
    const/4 v1, 0x0

    goto :goto_6

    .line 1248
    :catch_12
    move-exception v0

    .line 1250
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1252
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1253
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAirConditionState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setAirConditionStateEx(Lcom/qinggan/canbus/AirConditionState;F)I
    .registers 8
    .param p1, "airCondition"    # Lcom/qinggan/canbus/AirConditionState;
    .param p2, "state"    # F

    .prologue
    const/4 v1, -0x1

    .line 1294
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1313
    :cond_6
    :goto_6
    return v1

    .line 1298
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1303
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, p2

    float-to-int v3, v3

    invoke-interface {v2, p1, v3}, Lcom/qinggan/canbus/ICanBusService;->setAirConditionState(Lcom/qinggan/canbus/AirConditionState;I)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_14} :catch_16
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_14} :catch_1f

    .line 1304
    const/4 v1, 0x0

    goto :goto_6

    .line 1306
    :catch_16
    move-exception v0

    .line 1308
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1310
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1f
    move-exception v0

    .line 1311
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setAirConditionState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1312
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setCanRawData(I[I)I
    .registers 8
    .param p1, "canId"    # I
    .param p2, "data"    # [I

    .prologue
    const/4 v1, -0x1

    .line 1955
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1974
    :cond_6
    :goto_6
    return v1

    .line 1959
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1964
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->setCanRawData(I[I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 1965
    const/4 v1, 0x0

    goto :goto_6

    .line 1967
    :catch_12
    move-exception v0

    .line 1969
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1971
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1972
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setCanRawData exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1973
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setFactoryModeResult(ILjava/lang/String;)V
    .registers 6
    .param p1, "length"    # I
    .param p2, "factoryResult"    # Ljava/lang/String;

    .prologue
    .line 2138
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2149
    :cond_5
    :goto_5
    return-void

    .line 2141
    :cond_6
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v1, :cond_5

    .line 2145
    :try_start_a
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->setFactoryModeResult(ILjava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_5

    .line 2146
    :catch_10
    move-exception v0

    .line 2147
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setFactoryModeState(Lcom/qinggan/canbus/VehicleStateAutoTest;Ljava/lang/String;I)V
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleStateAutoTest;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 2124
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 2135
    :cond_5
    :goto_5
    return-void

    .line 2127
    :cond_6
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v1, :cond_5

    .line 2131
    :try_start_a
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1, p1, p2, p3}, Lcom/qinggan/canbus/ICanBusService;->setFactoryModeState(Lcom/qinggan/canbus/VehicleStateAutoTest;Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10

    goto :goto_5

    .line 2132
    :catch_10
    move-exception v0

    .line 2133
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public setGearBoxType(Lcom/qinggan/canbus/GearBoxType;)I
    .registers 7
    .param p1, "type"    # Lcom/qinggan/canbus/GearBoxType;

    .prologue
    const/4 v1, -0x1

    .line 2100
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2119
    :cond_6
    :goto_6
    return v1

    .line 2104
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2109
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->setGearBoxType(Lcom/qinggan/canbus/GearBoxType;)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 2110
    const/4 v1, 0x0

    goto :goto_6

    .line 2112
    :catch_12
    move-exception v0

    .line 2114
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2116
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2117
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setGearBoxType exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setVehicleAndAirConditionBundleState(Landroid/os/Bundle;Landroid/os/Bundle;)I
    .registers 8
    .param p1, "airBundle"    # Landroid/os/Bundle;
    .param p2, "vehicleBundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 2449
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2468
    :cond_6
    :goto_6
    return v1

    .line 2453
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2458
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->setVehicleAndAirConditionBundleState(Landroid/os/Bundle;Landroid/os/Bundle;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 2459
    const/4 v1, 0x0

    goto :goto_6

    .line 2461
    :catch_12
    move-exception v0

    .line 2463
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2465
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2466
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVehicleAndAirConditionBundleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2467
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setVehicleBundleState(Landroid/os/Bundle;)I
    .registers 7
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, -0x1

    .line 1980
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1999
    :cond_6
    :goto_6
    return v1

    .line 1984
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1989
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->setVehicleBundleState(Landroid/os/Bundle;)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 1990
    const/4 v1, 0x0

    goto :goto_6

    .line 1992
    :catch_12
    move-exception v0

    .line 1994
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1996
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1997
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVehicleBundleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1998
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)Z
    .registers 7
    .param p1, "vehicleCenterControlEnabled"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2265
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_7

    .line 2276
    :cond_6
    :goto_6
    return v3

    .line 2268
    :cond_7
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v1, :cond_6

    .line 2272
    :try_start_b
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->setVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)Z
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_11

    goto :goto_6

    .line 2273
    :catch_11
    move-exception v0

    .line 2274
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6
.end method

.method public setVehicleSceneMode(I)I
    .registers 7
    .param p1, "mode"    # I

    .prologue
    const/4 v1, -0x1

    .line 2400
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 2419
    :cond_6
    :goto_6
    return v1

    .line 2404
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 2409
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1}, Lcom/qinggan/canbus/ICanBusService;->setVehicleSceneMode(I)I
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 2410
    const/4 v1, 0x0

    goto :goto_6

    .line 2412
    :catch_12
    move-exception v0

    .line 2414
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 2416
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 2417
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVehicleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public setVehicleState(Lcom/qinggan/canbus/VehicleState;I)I
    .registers 8
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I

    .prologue
    const/4 v1, -0x1

    .line 1931
    iget-boolean v2, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7

    .line 1950
    :cond_6
    :goto_6
    return v1

    .line 1935
    :cond_7
    sget-boolean v2, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v2, :cond_6

    .line 1940
    :try_start_b
    iget-object v2, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v2, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->setVehicleState(Lcom/qinggan/canbus/VehicleState;I)V
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_10} :catch_12
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_10} :catch_1b

    .line 1941
    const/4 v1, 0x0

    goto :goto_6

    .line 1943
    :catch_12
    move-exception v0

    .line 1945
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v2, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 1947
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1b
    move-exception v0

    .line 1948
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setVehicleState exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1949
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6
.end method

.method public unregisterCanBusListener(Lcom/qinggan/canbus/CanBusListener;)V
    .registers 6
    .param p1, "listener"    # Lcom/qinggan/canbus/CanBusListener;

    .prologue
    .line 386
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    if-eqz v1, :cond_9

    .line 390
    :try_start_4
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1, p1}, Lcom/qinggan/canbus/ICanBusService;->removeCallback(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_9} :catch_a
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_2b

    .line 400
    :cond_9
    :goto_9
    return-void

    .line 391
    :catch_a
    move-exception v0

    .line 393
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCallback exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_9

    .line 395
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_2b
    move-exception v0

    .line 396
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeCallback exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9
.end method

.method public updateCallListInfo(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "callData"    # Landroid/os/Bundle;

    .prologue
    .line 1857
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1876
    :cond_5
    :goto_5
    return-void

    .line 1861
    :cond_6
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v1, :cond_5

    .line 1866
    :try_start_a
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1, p1}, Lcom/qinggan/canbus/ICanBusService;->updateCallListInfo(Landroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_19

    goto :goto_5

    .line 1869
    :catch_10
    move-exception v0

    .line 1871
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1873
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 1874
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNaviLaneInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1875
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public updateMediaPlayInfo(Lcom/qinggan/canbus/MediaPlayInfo;)I
    .registers 8
    .param p1, "info"    # Lcom/qinggan/canbus/MediaPlayInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1675
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaPlayInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1677
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1696
    :goto_1f
    return v1

    .line 1681
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1682
    goto :goto_1f

    .line 1686
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateMediaPlayInfo(Lcom/qinggan/canbus/MediaPlayInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1689
    :catch_2c
    move-exception v0

    .line 1691
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1692
    goto :goto_1f

    .line 1693
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1694
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1695
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1696
    goto :goto_1f
.end method

.method public updateMediaPlayMode(Lcom/qinggan/canbus/MediaPlayMode;)I
    .registers 8
    .param p1, "mode"    # Lcom/qinggan/canbus/MediaPlayMode;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1755
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaPlayMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1757
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1776
    :goto_1f
    return v1

    .line 1761
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1762
    goto :goto_1f

    .line 1766
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateMediaPlayMode(Lcom/qinggan/canbus/MediaPlayMode;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1769
    :catch_2c
    move-exception v0

    .line 1771
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1772
    goto :goto_1f

    .line 1773
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1774
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayMode exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1775
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1776
    goto :goto_1f
.end method

.method public updateMediaPlayProgressInfo(Lcom/qinggan/canbus/MediaPlayProgressInfo;)I
    .registers 8
    .param p1, "info"    # Lcom/qinggan/canbus/MediaPlayProgressInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1702
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaPlayInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1704
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1723
    :goto_1f
    return v1

    .line 1708
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1709
    goto :goto_1f

    .line 1713
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateMediaPlayProgressInfo(Lcom/qinggan/canbus/MediaPlayProgressInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1716
    :catch_2c
    move-exception v0

    .line 1718
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1719
    goto :goto_1f

    .line 1720
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1721
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1722
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1723
    goto :goto_1f
.end method

.method public updateMediaSeqType(I)I
    .registers 8
    .param p1, "seqtype"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1728
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaSeqType:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1730
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1749
    :goto_1f
    return v1

    .line 1734
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1735
    goto :goto_1f

    .line 1739
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateMediaSeqType(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1742
    :catch_2c
    move-exception v0

    .line 1744
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1745
    goto :goto_1f

    .line 1746
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1747
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaPlayInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1748
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1749
    goto :goto_1f
.end method

.method public updateMediaSrcInfo(Lcom/qinggan/canbus/MediaSrcInfo;)I
    .registers 8
    .param p1, "info"    # Lcom/qinggan/canbus/MediaSrcInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1649
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaSrcInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1670
    :goto_1f
    return v1

    .line 1655
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1656
    goto :goto_1f

    .line 1660
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateMediaSrcInfo(Lcom/qinggan/canbus/MediaSrcInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1663
    :catch_2c
    move-exception v0

    .line 1665
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1666
    goto :goto_1f

    .line 1667
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1668
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaSrcInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1669
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1670
    goto :goto_1f
.end method

.method public updateMediaVolume(I)I
    .registers 8
    .param p1, "volume"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1781
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMediaVolume:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1783
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1802
    :goto_1f
    return v1

    .line 1787
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1788
    goto :goto_1f

    .line 1792
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateMediaVolume(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1795
    :catch_2c
    move-exception v0

    .line 1797
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1798
    goto :goto_1f

    .line 1799
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1800
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMediaVolume exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1801
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1802
    goto :goto_1f
.end method

.method public updateNaviInfo(Lcom/qinggan/canbus/NaviInfo;)I
    .registers 7
    .param p1, "info"    # Lcom/qinggan/canbus/NaviInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1809
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_8

    .line 1828
    :goto_7
    return v1

    .line 1813
    :cond_8
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_e

    move v1, v2

    .line 1814
    goto :goto_7

    .line 1818
    :cond_e
    :try_start_e
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updateNaviInfo(Lcom/qinggan/canbus/NaviInfo;)V
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_13} :catch_14
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_13} :catch_1e

    goto :goto_7

    .line 1821
    :catch_14
    move-exception v0

    .line 1823
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1824
    goto :goto_7

    .line 1825
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1e
    move-exception v0

    .line 1826
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateNaviInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1828
    goto :goto_7
.end method

.method public updateNaviLaneInfo(ZLandroid/os/Bundle;)V
    .registers 7
    .param p1, "showLane"    # Z
    .param p2, "laneData"    # Landroid/os/Bundle;

    .prologue
    .line 1833
    iget-boolean v1, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v2, 0x1

    if-ne v1, v2, :cond_6

    .line 1852
    :cond_5
    :goto_5
    return-void

    .line 1837
    :cond_6
    sget-boolean v1, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-eqz v1, :cond_5

    .line 1842
    :try_start_a
    iget-object v1, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v1, p1, p2}, Lcom/qinggan/canbus/ICanBusService;->updateNaviLaneInfo(ZLandroid/os/Bundle;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_19

    goto :goto_5

    .line 1845
    :catch_10
    move-exception v0

    .line 1847
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v2, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 1849
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_19
    move-exception v0

    .line 1850
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateNaviLaneInfo exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1851
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5
.end method

.method public updatePhoneInfo(Lcom/qinggan/canbus/PhoneInfo;)I
    .registers 8
    .param p1, "info"    # Lcom/qinggan/canbus/PhoneInfo;

    .prologue
    const/4 v1, 0x0

    const/4 v2, -0x1

    .line 1881
    const-string v3, "CanBusManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePhoneInfo:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1883
    iget-boolean v3, p0, Lcom/qinggan/canbus/CanBusManager;->mEmulator:Z

    const/4 v4, 0x1

    if-ne v3, v4, :cond_20

    .line 1902
    :goto_1f
    return v1

    .line 1887
    :cond_20
    sget-boolean v3, Lcom/qinggan/canbus/CanBusManager;->isConnected:Z

    if-nez v3, :cond_26

    move v1, v2

    .line 1888
    goto :goto_1f

    .line 1892
    :cond_26
    :try_start_26
    iget-object v3, p0, Lcom/qinggan/canbus/CanBusManager;->mService:Lcom/qinggan/canbus/ICanBusService;

    invoke-interface {v3, p1}, Lcom/qinggan/canbus/ICanBusService;->updatePhoneInfo(Lcom/qinggan/canbus/PhoneInfo;)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_2b} :catch_2c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_2b} :catch_36

    goto :goto_1f

    .line 1895
    :catch_2c
    move-exception v0

    .line 1897
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v1, "CanBusManager"

    const-string v3, "CanBusManagerService died, relaunch!"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v2

    .line 1898
    goto :goto_1f

    .line 1899
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_36
    move-exception v0

    .line 1900
    .local v0, "ex":Ljava/lang/Exception;
    const-string v1, "CanBusManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updatePhoneInfo exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1901
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v1, v2

    .line 1902
    goto :goto_1f
.end method
