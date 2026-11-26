.class public Lcom/qinggan/canbus/service/BaseCanBusComponent;
.super Lcom/qinggan/canbus/service/AbstractCanBusComponent;
.source "BaseCanBusComponent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;
    }
.end annotation


# static fields
.field public static final LANG_CN:I = 0x0

.field public static final LANG_EN:I = 0x1

.field public static final LANG_UNKNOWN:I = -0x1

.field public static SOCKET_MSG_LEN:I

.field public static SOCKET_MSG_TYPE:I

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private final CANBUSSERVICE:Ljava/lang/String;

.field canLogContentObserver:Landroid/database/ContentObserver;

.field canLogEnable:Z

.field private can_fd:I

.field protected contentResolver:Landroid/content/ContentResolver;

.field private mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

.field private final mHandler:Landroid/os/Handler;

.field private mbaseContext:Landroid/content/Context;

.field private mu_fd:I

.field private observers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/qinggan/canbus/ICanBusServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private observersPidName:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 79
    const-class v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    .line 1020
    const/16 v0, 0x101

    sput v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->SOCKET_MSG_TYPE:I

    .line 1021
    const/16 v0, 0xd

    sput v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->SOCKET_MSG_LEN:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 78
    invoke-direct {p0}, Lcom/qinggan/canbus/service/AbstractCanBusComponent;-><init>()V

    .line 84
    const-string v0, "persist.qg.canbus.log_enable"

    iput-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->CANBUSSERVICE:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    .line 89
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    .line 92
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    .line 93
    iput v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->can_fd:I

    .line 94
    iput v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mu_fd:I

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    .line 99
    new-instance v0, Lcom/qinggan/canbus/service/BaseCanBusComponent$1;

    invoke-direct {v0, p0}, Lcom/qinggan/canbus/service/BaseCanBusComponent$1;-><init>(Lcom/qinggan/canbus/service/BaseCanBusComponent;)V

    iput-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    .line 111
    new-instance v0, Lcom/qinggan/canbus/service/BaseCanBusComponent$2;

    iget-object v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent$2;-><init>(Lcom/qinggan/canbus/service/BaseCanBusComponent;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private varargs allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z
    .registers 20
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "typesAndArgs"    # [Ljava/lang/Object;

    .prologue
    .line 308
    move-object/from16 v0, p2

    array-length v8, v0

    .line 309
    .local v8, "len":I
    rem-int/lit8 v12, v8, 0x2

    if-eqz v12, :cond_9

    .line 310
    const/4 v12, 0x0

    .line 371
    :goto_8
    return v12

    .line 312
    :cond_9
    const/4 v9, 0x0

    .line 313
    .local v9, "method":Ljava/lang/reflect/Method;
    div-int/lit8 v12, v8, 0x2

    new-array v11, v12, [Ljava/lang/Class;

    .line 314
    .local v11, "par":[Ljava/lang/Class;, "[Ljava/lang/Class<*>;"
    div-int/lit8 v12, v8, 0x2

    new-array v1, v12, [Ljava/lang/Object;

    .line 317
    .local v1, "args":[Ljava/lang/Object;
    const/4 v5, 0x0

    .local v5, "i":I
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_14
    :try_start_14
    div-int/lit8 v12, v8, 0x2

    if-ge v5, v12, :cond_29

    .line 318
    aget-object v12, p2, v7

    check-cast v12, Ljava/lang/Class;

    aput-object v12, v11, v5

    .line 319
    add-int/lit8 v12, v7, 0x1

    aget-object v12, p2, v12

    aput-object v12, v1, v5

    .line 317
    add-int/lit8 v5, v5, 0x1

    add-int/lit8 v7, v7, 0x2

    goto :goto_14

    .line 321
    :cond_29
    const-class v12, Lcom/qinggan/canbus/ICanBusServiceCallback;

    .line 322
    move-object/from16 v0, p1

    invoke-virtual {v12, v0, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_30
    .catch Ljava/lang/NoSuchMethodException; {:try_start_14 .. :try_end_30} :catch_d4

    move-result-object v9

    .line 334
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    monitor-enter v13

    .line 335
    :try_start_36
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    .line 336
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .line 337
    .local v6, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qinggan/canbus/ICanBusServiceCallback;>;>;"
    :cond_42
    :goto_42
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_d0

    .line 338
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/qinggan/canbus/ICanBusServiceCallback;

    .line 339
    .local v10, "observer":Lcom/qinggan/canbus/ICanBusServiceCallback;
    if-eqz v10, :cond_42

    .line 341
    const/4 v12, 0x1

    aget-object v12, p2, v12

    sget-object v14, Lcom/qinggan/canbus/VehicleState;->DVR_LOGO_SWITCH:Lcom/qinggan/canbus/VehicleState;

    if-ne v12, v14, :cond_c7

    .line 342
    sget-object v12, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v14, "canbusservice:allObserversInvoke111: typesAndArgs[1] == VehicleState.DVR_LOGO_SWITCH"

    invoke-static {v12, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    sget-object v12, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "canbusservice:allObserversInvoke111: typesAndArgs[2] ="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const/4 v15, 0x3

    aget-object v15, p2, v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    invoke-interface {v10}, Lcom/qinggan/canbus/ICanBusServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 345
    .local v2, "b":Landroid/os/IBinder;
    sget-object v12, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "canbusservice:allObserversInvoke: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    sget-object v14, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "canbusservice:allObserversInvoke callerPackage:"

    invoke-virtual {v12, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v14, v12}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c7
    .catchall {:try_start_36 .. :try_end_c7} :catchall_e0

    .line 351
    .end local v2    # "b":Landroid/os/IBinder;
    :cond_c7
    :try_start_c7
    invoke-virtual {v9, v10, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_ca
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c7 .. :try_end_ca} :catch_cc
    .catch Ljava/lang/IllegalAccessException; {:try_start_c7 .. :try_end_ca} :catch_db
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c7 .. :try_end_ca} :catch_e3
    .catch Ljava/lang/Exception; {:try_start_c7 .. :try_end_ca} :catch_108
    .catchall {:try_start_c7 .. :try_end_ca} :catchall_e0

    goto/16 :goto_42

    .line 352
    :catch_cc
    move-exception v3

    .line 353
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    :try_start_cd
    invoke-virtual {v3}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 369
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    .end local v10    # "observer":Lcom/qinggan/canbus/ICanBusServiceCallback;
    :cond_d0
    :goto_d0
    monitor-exit v13
    :try_end_d1
    .catchall {:try_start_cd .. :try_end_d1} :catchall_e0

    .line 371
    const/4 v12, 0x1

    goto/16 :goto_8

    .line 329
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qinggan/canbus/ICanBusServiceCallback;>;>;"
    :catch_d4
    move-exception v4

    .line 330
    .local v4, "e1":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v4}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    .line 331
    const/4 v12, 0x0

    goto/16 :goto_8

    .line 355
    .end local v4    # "e1":Ljava/lang/NoSuchMethodException;
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qinggan/canbus/ICanBusServiceCallback;>;>;"
    .restart local v10    # "observer":Lcom/qinggan/canbus/ICanBusServiceCallback;
    :catch_db
    move-exception v3

    .line 356
    .local v3, "e":Ljava/lang/IllegalAccessException;
    :try_start_dc
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_d0

    .line 369
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    .end local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qinggan/canbus/ICanBusServiceCallback;>;>;"
    .end local v10    # "observer":Lcom/qinggan/canbus/ICanBusServiceCallback;
    :catchall_e0
    move-exception v12

    monitor-exit v13
    :try_end_e2
    .catchall {:try_start_dc .. :try_end_e2} :catchall_e0

    throw v12

    .line 358
    .restart local v6    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Lcom/qinggan/canbus/ICanBusServiceCallback;>;>;"
    .restart local v10    # "observer":Lcom/qinggan/canbus/ICanBusServiceCallback;
    :catch_e3
    move-exception v3

    .line 359
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    :try_start_e4
    sget-object v12, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allObserversInvoke invoke method InvocationTargetException:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 361
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V

    goto/16 :goto_42

    .line 362
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_108
    move-exception v3

    .line 363
    .local v3, "e":Ljava/lang/Exception;
    sget-object v12, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "allObserversInvoke invoke method exception:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 365
    invoke-interface {v6}, Ljava/util/Iterator;->remove()V
    :try_end_12b
    .catchall {:try_start_e4 .. :try_end_12b} :catchall_e0

    goto/16 :goto_42
.end method

.method private getAppName(I)Ljava/lang/String;
    .registers 11
    .param p1, "pID"    # I

    .prologue
    .line 228
    const-string v6, ""

    .line 229
    .local v6, "processName":Ljava/lang/String;
    iget-object v7, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mbaseContext:Landroid/content/Context;

    const-string v8, "activity"

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 230
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v4

    .line 231
    .local v4, "l":Ljava/util/List;
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 232
    .local v2, "i":Ljava/util/Iterator;
    iget-object v7, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mbaseContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 233
    .local v5, "pm":Landroid/content/pm/PackageManager;
    :cond_1a
    :goto_1a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3c

    .line 234
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/ActivityManager$RunningAppProcessInfo;

    move-object v3, v7

    check-cast v3, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 236
    .local v3, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :try_start_29
    iget v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v7, p1, :cond_1a

    .line 237
    iget-object v7, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const/16 v8, 0x80

    invoke-virtual {v5, v7, v8}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 240
    .local v1, "c":Ljava/lang/CharSequence;
    iget-object v6, v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_3b} :catch_3d

    goto :goto_1a

    .line 246
    .end local v1    # "c":Ljava/lang/CharSequence;
    .end local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_3c
    return-object v6

    .line 242
    .restart local v3    # "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :catch_3d
    move-exception v7

    goto :goto_1a
.end method


# virtual methods
.method public declared-synchronized attachObserver(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z
    .registers 8
    .param p1, "observer"    # Lcom/qinggan/canbus/ICanBusServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    monitor-enter p0

    :try_start_1
    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    monitor-enter v3
    :try_end_4
    .catchall {:try_start_1 .. :try_end_4} :catchall_a4

    .line 254
    :try_start_4
    invoke-interface {p1}, Lcom/qinggan/canbus/ICanBusServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 256
    .local v0, "b":Landroid/os/IBinder;
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarSignalManagerService attachObserver pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 257
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarSignalManagerService attachObserver observer="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->getAppName(I)Ljava/lang/String;

    move-result-object v1

    .line 260
    .local v1, "callerPackage":Ljava/lang/String;
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarSignalManagerService attachObserver callerPackage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 262
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7a

    .line 263
    new-instance v2, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;

    invoke-direct {v2, p0, p1}, Lcom/qinggan/canbus/service/BaseCanBusComponent$ObserverDeathRecipient;-><init>(Lcom/qinggan/canbus/service/BaseCanBusComponent;Lcom/qinggan/canbus/ICanBusServiceCallback;)V

    const/4 v4, 0x0

    invoke-interface {v0, v2, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 264
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_7a
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CarSignalManagerService attachObserver observersPidName="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 271
    const/4 v2, 0x1

    monitor-exit v3
    :try_end_9f
    .catchall {:try_start_4 .. :try_end_9f} :catchall_a1

    monitor-exit p0

    return v2

    .line 272
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "callerPackage":Ljava/lang/String;
    :catchall_a1
    move-exception v2

    :try_start_a2
    monitor-exit v3
    :try_end_a3
    .catchall {:try_start_a2 .. :try_end_a3} :catchall_a1

    :try_start_a3
    throw v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a4

    .line 253
    :catchall_a4
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public destroy()V
    .registers 1

    .prologue
    .line 723
    return-void
.end method

.method public detachObserver(Lcom/qinggan/canbus/ICanBusServiceCallback;)Z
    .registers 9
    .param p1, "observer"    # Lcom/qinggan/canbus/ICanBusServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 279
    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    monitor-enter v3

    .line 280
    :try_start_3
    invoke-interface {p1}, Lcom/qinggan/canbus/ICanBusServiceCallback;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 281
    .local v0, "b":Landroid/os/IBinder;
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detachCANBusObserver: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 282
    sget-object v4, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detachCANBusObserver callerPackage:"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_47
    .catchall {:try_start_3 .. :try_end_47} :catchall_a8

    .line 285
    :try_start_47
    const-string v2, "com.pateonavi.naviapp"

    iget-object v4, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6b

    const-string v2, "com.nng.igo.primong"

    iget-object v4, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    .line 286
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_75

    .line 287
    :cond_6b
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v4, "detachObserver will remove navi app "

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->sendIPKNavideath()V

    .line 290
    :cond_75
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observersPidName:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 291
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->observers:Ljava/util/Map;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_87
    .catch Ljava/lang/Exception; {:try_start_47 .. :try_end_87} :catch_8a
    .catchall {:try_start_47 .. :try_end_87} :catchall_a8

    .line 295
    :goto_87
    const/4 v2, 0x1

    :try_start_88
    monitor-exit v3

    return v2

    .line 292
    :catch_8a
    move-exception v1

    .line 293
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detachObserver exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_87

    .line 296
    .end local v0    # "b":Landroid/os/IBinder;
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_a8
    move-exception v2

    monitor-exit v3
    :try_end_aa
    .catchall {:try_start_88 .. :try_end_aa} :catchall_a8

    throw v2
.end method

.method public dispatchCanData(I[I)Z
    .registers 4
    .param p1, "msg"    # I
    .param p2, "data"    # [I

    .prologue
    .line 122
    const/4 v0, 0x0

    return v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 728
    return-void
.end method

.method public getAccStatus()I
    .registers 2

    .prologue
    .line 1004
    const/4 v0, 0x0

    return v0
.end method

.method public getAirCondition()Lcom/qinggan/canbus/AirCondition;
    .registers 2

    .prologue
    .line 869
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAirConditionState(Lcom/qinggan/canbus/AirConditionState;)I
    .registers 3
    .param p1, "conditionState"    # Lcom/qinggan/canbus/AirConditionState;

    .prologue
    .line 999
    const/4 v0, 0x0

    return v0
.end method

.method public getAlarmData()I
    .registers 2

    .prologue
    .line 909
    const/4 v0, 0x0

    return v0
.end method

.method public getAmbientTemperatureValue()I
    .registers 2

    .prologue
    .line 759
    const/4 v0, 0x0

    return v0
.end method

.method public getBatteryRemainingCapacity()F
    .registers 2

    .prologue
    .line 135
    const/high16 v0, -0x40800000    # -1.0f

    return v0
.end method

.method public getBatteryState()Lcom/qinggan/canbus/BatteryState;
    .registers 2

    .prologue
    .line 824
    const/4 v0, 0x0

    return-object v0
.end method

.method public getBrakeFluidStatus()I
    .registers 2

    .prologue
    .line 794
    const/4 v0, 0x0

    return v0
.end method

.method public getBrakePadStatus()Lcom/qinggan/canbus/BrakePadStatus;
    .registers 2

    .prologue
    .line 789
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCameraState()Lcom/qinggan/canbus/CameraState;
    .registers 2

    .prologue
    .line 1153
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanBoxVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 744
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCanRawData(I)[I
    .registers 3
    .param p1, "canId"    # I

    .prologue
    .line 1127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getComprehensiveFuelConsumption()I
    .registers 2

    .prologue
    .line 804
    const/4 v0, 0x0

    return v0
.end method

.method public getComprehensiveFuelConsumptionEX()F
    .registers 2

    .prologue
    .line 809
    const/4 v0, 0x0

    return v0
.end method

.method public getDVRState()Lcom/qinggan/canbus/DVRState;
    .registers 2

    .prologue
    .line 1148
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDoorStatus()Lcom/qinggan/canbus/DoorStatus;
    .registers 2

    .prologue
    .line 739
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnergyConsumptionInfo()Lcom/qinggan/canbus/EnergyConsumptionInfo;
    .registers 2

    .prologue
    .line 1163
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEnergyConsumptionPercent()Lcom/qinggan/canbus/EnergyConsumptionPercent;
    .registers 2

    .prologue
    .line 1158
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEngineFluidStatus()I
    .registers 2

    .prologue
    .line 904
    const/4 v0, 0x0

    return v0
.end method

.method public getEngineSpeed()I
    .registers 2

    .prologue
    .line 853
    const/4 v0, 0x0

    return v0
.end method

.method public getEngineStatus()I
    .registers 2

    .prologue
    .line 819
    const/4 v0, 0x0

    return v0
.end method

.method public getEngineTemperature()I
    .registers 2

    .prologue
    .line 784
    const/4 v0, 0x0

    return v0
.end method

.method public getFrontRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 2

    .prologue
    .line 874
    const/4 v0, 0x0

    return-object v0
.end method

.method public getFuelLevel()Lcom/qinggan/canbus/FuelLevel;
    .registers 2

    .prologue
    .line 769
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGearStatus()Lcom/qinggan/canbus/GearState;
    .registers 2

    .prologue
    .line 754
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHandBrakeStatus()I
    .registers 2

    .prologue
    .line 899
    const/4 v0, 0x0

    return v0
.end method

.method public getHevSysMode()I
    .registers 2

    .prologue
    .line 919
    const/4 v0, 0x0

    return v0
.end method

.method public getIllumination()I
    .registers 2

    .prologue
    .line 838
    const/4 v0, 0x0

    return v0
.end method

.method public getInstantFuelConsumption()I
    .registers 2

    .prologue
    .line 814
    const/4 v0, 0x0

    return v0
.end method

.method public getIpkSyncComponent()Lcom/qinggan/canbus/service/IIpkSyncComponentBase;
    .registers 2

    .prologue
    .line 131
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLeftRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 2

    .prologue
    .line 884
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLightStatus()Lcom/qinggan/canbus/LightStatus;
    .registers 2

    .prologue
    .line 749
    const/4 v0, 0x0

    return-object v0
.end method

.method public getOdometer()Lcom/qinggan/canbus/Odometer;
    .registers 2

    .prologue
    .line 733
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPowerLevel()Lcom/qinggan/canbus/PowerLevel;
    .registers 2

    .prologue
    .line 774
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRainfallLevel()I
    .registers 2

    .prologue
    .line 1092
    const/4 v0, 0x0

    return v0
.end method

.method public getRawData([III)[I
    .registers 7
    .param p1, "data"    # [I
    .param p2, "len"    # I
    .param p3, "offset"    # I

    .prologue
    .line 1079
    new-array v1, p2, [I

    .line 1080
    .local v1, "tmp":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_e

    .line 1081
    add-int v2, v0, p3

    aget v2, p1, v2

    aput v2, v1, v0

    .line 1080
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1082
    :cond_e
    return-object v1
.end method

.method public getReTracking()I
    .registers 2

    .prologue
    .line 894
    const/4 v0, 0x0

    return v0
.end method

.method public getRealityWarningInfo()Lcom/qinggan/canbus/RealityWarningInfo;
    .registers 2

    .prologue
    .line 1107
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRearRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 2

    .prologue
    .line 879
    const/4 v0, 0x0

    return-object v0
.end method

.method public getRightRadarData()Lcom/qinggan/canbus/RadarData;
    .registers 2

    .prologue
    .line 889
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSWCAngle()Lcom/qinggan/canbus/SWCAngle;
    .registers 2

    .prologue
    .line 914
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSeatBeltStatus()Lcom/qinggan/canbus/SeatBelt;
    .registers 2

    .prologue
    .line 833
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSecondaryOdometer()J
    .registers 3

    .prologue
    .line 858
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getSystemLanguage()I
    .registers 6

    .prologue
    const/4 v2, 0x0

    .line 375
    const/4 v1, 0x0

    .line 377
    .local v1, "l":Ljava/util/Locale;
    :try_start_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_1a

    .line 378
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_10} :catch_1f

    move-result-object v1

    .line 389
    :goto_11
    sget-object v3, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-virtual {v3, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 392
    :goto_19
    return v2

    .line 380
    :cond_1a
    :try_start_1a
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1d} :catch_1f

    move-result-object v1

    goto :goto_11

    .line 382
    :catch_1f
    move-exception v0

    .line 383
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 384
    sget-object v3, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v4, "Can\'t get current Configuration"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_11

    .line 392
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    const/4 v2, 0x1

    goto :goto_19
.end method

.method public getTPMSInfo()Lcom/qinggan/canbus/TPMSInfo;
    .registers 2

    .prologue
    .line 1009
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;)I
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    .prologue
    .line 971
    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleIO()Lcom/qinggan/canbus/VehicleIO;
    .registers 2

    .prologue
    .line 843
    const/4 v0, 0x0

    return-object v0
.end method

.method public getVehicleKeyState()I
    .registers 2

    .prologue
    .line 863
    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleSceneMode()I
    .registers 2

    .prologue
    .line 1102
    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleSpeed()I
    .registers 2

    .prologue
    .line 848
    const/4 v0, 0x0

    return v0
.end method

.method public getVehicleState(Lcom/qinggan/canbus/VehicleState;)I
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;

    .prologue
    .line 953
    const/4 v0, 0x0

    return v0
.end method

.method public getWheelCountValue()Lcom/qinggan/canbus/WheelCount;
    .registers 2

    .prologue
    .line 779
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWheelSpeed()Lcom/qinggan/canbus/WheelSpeed;
    .registers 2

    .prologue
    .line 764
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWindowStatus()Lcom/qinggan/canbus/WindowStatus;
    .registers 2

    .prologue
    .line 924
    const/4 v0, 0x0

    return-object v0
.end method

.method public getWiperFluidStatus()I
    .registers 2

    .prologue
    .line 799
    const/4 v0, 0x0

    return v0
.end method

.method public init(Landroid/content/Context;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 711
    iput-object p1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mbaseContext:Landroid/content/Context;

    .line 712
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->contentResolver:Landroid/content/ContentResolver;

    .line 713
    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->contentResolver:Landroid/content/ContentResolver;

    const-string v4, "persist.qg.canbus.log_enable"

    invoke-static {v4}, Lcom/qinggan/provider/QGSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    iget-object v5, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v3, v4, v2, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 715
    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->contentResolver:Landroid/content/ContentResolver;

    const-string v4, "persist.qg.canbus.log_enable"

    invoke-static {v3, v4, v1}, Lcom/qinggan/provider/QGSettings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 716
    .local v0, "canbusServiceValue":I
    if-nez v0, :cond_3e

    :goto_21
    iput-boolean v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    .line 717
    sget-object v1, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "init canLogEnable  is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 718
    return-void

    :cond_3e
    move v1, v2

    .line 716
    goto :goto_21
.end method

.method public isSupportFunction(Lcom/qinggan/canbus/FunctionType;)Z
    .registers 3
    .param p1, "type"    # Lcom/qinggan/canbus/FunctionType;

    .prologue
    .line 986
    const/4 v0, 0x0

    return v0
.end method

.method public makeSockRawData([III)[I
    .registers 7
    .param p1, "data"    # [I
    .param p2, "arrayLen"    # I
    .param p3, "byteLen"    # I

    .prologue
    .line 1013
    new-array v1, p2, [I

    .line 1014
    .local v1, "tmp":[I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, p2, :cond_e

    if-ge v0, p3, :cond_e

    .line 1015
    aget v2, p1, v0

    aput v2, v1, v0

    .line 1014
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 1017
    :cond_e
    return-object v1
.end method

.method public notify(ILandroid/os/Bundle;)Z
    .registers 10
    .param p1, "len"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1041
    if-nez p2, :cond_c

    .line 1042
    sget-object v5, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v6, "notify data is null"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1057
    :cond_b
    :goto_b
    return v4

    .line 1046
    :cond_c
    invoke-static {p2}, Lcom/qinggan/os/BundleFormat;->getIntList(Landroid/os/Bundle;)[I

    move-result-object v1

    .line 1047
    .local v1, "buf":[I
    const-string v6, "CanBoxToSys Send Raw data"

    invoke-virtual {p0, v6, p1, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->printData(Ljava/lang/String;I[I)V

    .line 1049
    aget v3, v1, v4

    .line 1050
    .local v3, "what":I
    aget v0, v1, v5

    .line 1051
    .local v0, "RawDataLen":I
    if-eqz v1, :cond_b

    .line 1052
    iget-object v4, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1053
    .local v2, "msg":Landroid/os/Message;
    const/4 v4, 0x2

    invoke-virtual {p0, v1, v0, v4}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->getRawData([III)[I

    move-result-object v4

    invoke-static {v4}, Lcom/qinggan/os/BundleFormat;->formatBundle([I)Landroid/os/Bundle;

    move-result-object v4

    iput-object v4, v2, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1054
    iget-object v4, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    move v4, v5

    .line 1055
    goto :goto_b
.end method

.method public notify(I[I)Z
    .registers 9
    .param p1, "len"    # I
    .param p2, "data"    # [I

    .prologue
    const/4 v3, 0x0

    .line 1062
    if-nez p2, :cond_a

    .line 1063
    sget-object v4, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v5, "notify data is null"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1065
    :cond_a
    const-string v4, "MuToSys Send Raw data"

    invoke-virtual {p0, v4, p1, p2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->printData(Ljava/lang/String;I[I)V

    .line 1066
    aget v2, p2, v3

    .line 1067
    .local v2, "what":I
    const/16 v0, 0x8

    .line 1068
    .local v0, "RawDataLen":I
    if-eqz p2, :cond_2c

    .line 1069
    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1070
    .local v1, "msg":Landroid/os/Message;
    const/4 v3, 0x2

    invoke-virtual {p0, p2, v0, v3}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->getRawData([III)[I

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/os/BundleFormat;->formatBundle([I)Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1071
    iget-object v3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1072
    const/4 v3, 0x1

    .line 1074
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2c
    return v3
.end method

.method public onAccStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 611
    const-string v0, "onAccStateChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 613
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 611
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 614
    return-void
.end method

.method public onAirConditionChanged(Lcom/qinggan/canbus/AirCondition;)V
    .registers 6
    .param p1, "airConditionData"    # Lcom/qinggan/canbus/AirCondition;

    .prologue
    .line 421
    const-string v0, "onAirConditionChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/AirCondition;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 424
    return-void
.end method

.method public onAlarmDataChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 593
    const-string v0, "onAlarmDataChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 595
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 593
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 596
    return-void
.end method

.method public onAmbientTemperatureChanged(I)V
    .registers 6
    .param p1, "temperature"    # I

    .prologue
    .line 483
    const-string v0, "onAmbientTemperatureChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 485
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 483
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method public onBatteryRemainingCapacityChanged(F)V
    .registers 6
    .param p1, "data"    # F

    .prologue
    .line 646
    const-string v0, "onBatteryRemainingCapacityChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 647
    return-void
.end method

.method public onBatteryStateChanged(Lcom/qinggan/canbus/BatteryState;)V
    .registers 6
    .param p1, "state"    # Lcom/qinggan/canbus/BatteryState;

    .prologue
    .line 553
    const-string v0, "onBatteryStateChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/BatteryState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 554
    return-void
.end method

.method public onBrakeFluidStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 523
    const-string v0, "onBrakeFluidStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 525
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 523
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 526
    return-void
.end method

.method public onBrakePadStatusChanged(Lcom/qinggan/canbus/BrakePadStatus;)V
    .registers 6
    .param p1, "status"    # Lcom/qinggan/canbus/BrakePadStatus;

    .prologue
    .line 517
    const-string v0, "onBrakePadStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/BrakePadStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 520
    return-void
.end method

.method public onCANBusState(I)Z
    .registers 3
    .param p1, "state"    # I

    .prologue
    .line 1087
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraChanged(Lcom/qinggan/canbus/CameraState;)V
    .registers 6
    .param p1, "cameraState"    # Lcom/qinggan/canbus/CameraState;

    .prologue
    .line 698
    const-string v0, "onCameraChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/CameraState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 699
    return-void
.end method

.method public onCanBoxVersionChange(Ljava/lang/String;)V
    .registers 6
    .param p1, "ver"    # Ljava/lang/String;

    .prologue
    .line 403
    const-string v0, "onCanBoxVersionChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 406
    return-void
.end method

.method public onCanRawDataChanged(ILandroid/os/Bundle;)V
    .registers 7
    .param p1, "canId"    # I
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 674
    const-string v0, "onCanRawDataChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-class v3, Landroid/os/Bundle;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 675
    return-void
.end method

.method public onCarKeyChanged(II)V
    .registers 7
    .param p1, "keycode"    # I
    .param p2, "keystatus"    # I

    .prologue
    .line 557
    const-string v0, "onCarKeyChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 559
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 561
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 557
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 562
    return-void
.end method

.method public onDVRStateChenaged(Lcom/qinggan/canbus/DVRState;)V
    .registers 6
    .param p1, "DVRState"    # Lcom/qinggan/canbus/DVRState;

    .prologue
    .line 427
    const-string v0, "onDVRStateChenaged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/DVRState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 430
    return-void
.end method

.method public onDoorStatusChanged(Lcom/qinggan/canbus/DoorStatus;)V
    .registers 6
    .param p1, "doorStatus"    # Lcom/qinggan/canbus/DoorStatus;

    .prologue
    .line 397
    const-string v0, "onDoorStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/DoorStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 400
    return-void
.end method

.method public onEnergyConsumptionInfoChanged(Lcom/qinggan/canbus/EnergyConsumptionInfo;)V
    .registers 6
    .param p1, "consumptionInfo"    # Lcom/qinggan/canbus/EnergyConsumptionInfo;

    .prologue
    .line 706
    const-string v0, "onEnergyConsumptionInfoChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/EnergyConsumptionInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 707
    return-void
.end method

.method public onEnergyConsumptionPercentChanged(Lcom/qinggan/canbus/EnergyConsumptionPercent;)V
    .registers 6
    .param p1, "consumptionPercent"    # Lcom/qinggan/canbus/EnergyConsumptionPercent;

    .prologue
    .line 702
    const-string v0, "onEnergyConsumptionPercentChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/EnergyConsumptionPercent;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 703
    return-void
.end method

.method public onEngineFluidStatusChanged(I)V
    .registers 6
    .param p1, "value"    # I

    .prologue
    .line 465
    const-string v0, "onEngineFluidStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 467
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 465
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 468
    return-void
.end method

.method public onEngineSpeedChanged(I)V
    .registers 6
    .param p1, "speed"    # I

    .prologue
    .line 477
    const-string v0, "onEngineSpeedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 479
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 477
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 480
    return-void
.end method

.method public onEngineStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 541
    const-string v0, "onEngineStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 543
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 541
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 544
    return-void
.end method

.method public onEngineTemperatureChanged(I)V
    .registers 6
    .param p1, "temperature"    # I

    .prologue
    .line 511
    const-string v0, "onEngineTemperatureChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 513
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 511
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 514
    return-void
.end method

.method public onFactoryModeChangedNative(Ljava/lang/String;)V
    .registers 6
    .param p1, "sResult"    # Ljava/lang/String;

    .prologue
    .line 638
    const-string v0, "onFactoryModeChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 639
    return-void
.end method

.method public onFuelConsumptionChanged(I)V
    .registers 6
    .param p1, "consumption"    # I

    .prologue
    .line 535
    const-string v0, "onFuelConsumptionChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 537
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 535
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 538
    return-void
.end method

.method public onFuelLevelChanged(Lcom/qinggan/canbus/FuelLevel;)V
    .registers 6
    .param p1, "level"    # Lcom/qinggan/canbus/FuelLevel;

    .prologue
    .line 501
    const-string v0, "onFuelLevelChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/FuelLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 502
    return-void
.end method

.method public onGearStatusChanged(Lcom/qinggan/canbus/GearState;)V
    .registers 6
    .param p1, "gear"    # Lcom/qinggan/canbus/GearState;

    .prologue
    .line 471
    const-string v0, "onGearStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/GearState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 474
    return-void
.end method

.method public onHEVSystemModelChanged(I)V
    .registers 2
    .param p1, "hevMode"    # I

    .prologue
    .line 618
    return-void
.end method

.method public onHandBrakeStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 453
    const-string v0, "onHandBrakeStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 455
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 453
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 456
    return-void
.end method

.method public onICMReqCallModeChanged(Z)V
    .registers 6
    .param p1, "inVehicleCall"    # Z

    .prologue
    .line 690
    const-string v0, "onICMReqCallModeChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 691
    return-void
.end method

.method public onICMReqCallStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 694
    const-string v0, "onICMReqCallStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 695
    return-void
.end method

.method public onICMReqDialing(I)V
    .registers 6
    .param p1, "serialNumber"    # I

    .prologue
    .line 682
    const-string v0, "onICMReqDialing"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 683
    return-void
.end method

.method public onICMReqMediaChanged(III)V
    .registers 8
    .param p1, "flag"    # I
    .param p2, "action"    # I
    .param p3, "targetType"    # I

    .prologue
    .line 678
    const-string v0, "onICMReqMediaChanged"

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x5

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 679
    return-void
.end method

.method public onICMReqMuteModeChanged(Z)V
    .registers 6
    .param p1, "isMute"    # Z

    .prologue
    .line 686
    const-string v0, "onICMReqMuteModeChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 687
    return-void
.end method

.method public onIlluminationChanged(I)V
    .registers 6
    .param p1, "illumination"    # I

    .prologue
    .line 565
    const-string v0, "onIlluminationChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 567
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 565
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 568
    return-void
.end method

.method public onInstantaneousFuelConsumptionChanged(F)V
    .registers 6
    .param p1, "consumption"    # F

    .prologue
    .line 651
    const-string v0, "onInstantaneousFuelConsumptionChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 652
    return-void
.end method

.method public onLightStatusChanged(Lcom/qinggan/canbus/LightStatus;)V
    .registers 6
    .param p1, "lightStatus"    # Lcom/qinggan/canbus/LightStatus;

    .prologue
    .line 459
    const-string v0, "onLightStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/LightStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 462
    return-void
.end method

.method public onOdometerChanged(Lcom/qinggan/canbus/Odometer;)V
    .registers 6
    .param p1, "odometer"    # Lcom/qinggan/canbus/Odometer;

    .prologue
    .line 547
    const-string v0, "onOdometerChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/Odometer;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 550
    return-void
.end method

.method public onParkStateChanged(II)V
    .registers 7
    .param p1, "soundState"    # I
    .param p2, "systemState"    # I

    .prologue
    .line 439
    const-string v0, "onParkStateChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 441
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    .line 443
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 439
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 444
    return-void
.end method

.method public onPowerLevelChanged(Lcom/qinggan/canbus/PowerLevel;)V
    .registers 6
    .param p1, "poLevel"    # Lcom/qinggan/canbus/PowerLevel;

    .prologue
    .line 655
    const-string v0, "onPowerLevelChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/PowerLevel;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 656
    return-void
.end method

.method public onRadarDataChanged(Lcom/qinggan/canbus/RadarData;)V
    .registers 6
    .param p1, "radarData"    # Lcom/qinggan/canbus/RadarData;

    .prologue
    .line 433
    const-string v0, "onRadarDataChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/RadarData;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 436
    return-void
.end method

.method public onReTrackingChanged(I)V
    .registers 6
    .param p1, "angle"    # I

    .prologue
    .line 447
    const-string v0, "onReTrackingChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 449
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 447
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 450
    return-void
.end method

.method public onRealityWarningInfoChange(Lcom/qinggan/canbus/RealityWarningInfo;)V
    .registers 6
    .param p1, "val"    # Lcom/qinggan/canbus/RealityWarningInfo;

    .prologue
    .line 663
    const-string v0, "onRealityWarningInfoChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/RealityWarningInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 666
    return-void
.end method

.method public onRealityWarningInfoChanged(II)V
    .registers 7
    .param p1, "key"    # I
    .param p2, "value"    # I

    .prologue
    .line 669
    const-string v0, "onRealityWarningInfoChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 670
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 669
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 671
    return-void
.end method

.method public onSWCAngleChanged(Lcom/qinggan/canbus/SWCAngle;)V
    .registers 6
    .param p1, "swcAngle"    # Lcom/qinggan/canbus/SWCAngle;

    .prologue
    .line 599
    const-string v0, "onSWCAngleChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/SWCAngle;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 602
    return-void
.end method

.method public onSeatAdjustStateChanged(Lcom/qinggan/canbus/SeatAdjustState;)V
    .registers 6
    .param p1, "state"    # Lcom/qinggan/canbus/SeatAdjustState;

    .prologue
    .line 415
    const-string v0, "onSeatAdjustStateChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/SeatAdjustState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 418
    return-void
.end method

.method public onSeatBeltChanged(Lcom/qinggan/canbus/SeatBelt;)V
    .registers 6
    .param p1, "state"    # Lcom/qinggan/canbus/SeatBelt;

    .prologue
    .line 409
    const-string v0, "onSeatBeltChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/SeatBelt;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 412
    return-void
.end method

.method public onSecondaryOdometerChanged(I)V
    .registers 6
    .param p1, "odometer"    # I

    .prologue
    .line 575
    const-string v0, "onSecondaryOdometerChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 577
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 575
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 578
    return-void
.end method

.method public onTPMSInfoChanged(Lcom/qinggan/canbus/TPMSInfo;)V
    .registers 6
    .param p1, "tpmsInfo"    # Lcom/qinggan/canbus/TPMSInfo;

    .prologue
    .line 605
    const-string v0, "onTPMSInfoChange"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/TPMSInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 608
    return-void
.end method

.method public onTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;F)V
    .registers 7
    .param p1, "type"    # Lcom/qinggan/canbus/TravellingInfoType;
    .param p2, "data"    # F

    .prologue
    .line 629
    const-string v0, "onTravellingInfo"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 630
    return-void
.end method

.method public onVehicleCenterControlEnabledChanged(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)V
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .param p2, "state"    # I

    .prologue
    .line 625
    const-string v0, "onVehicleCenterControlEnabledChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/VehicleCenterControlEnabled;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 626
    return-void
.end method

.method public onVehicleIOChanged(Lcom/qinggan/canbus/VehicleIO;)V
    .registers 6
    .param p1, "state"    # Lcom/qinggan/canbus/VehicleIO;

    .prologue
    .line 571
    const-string v0, "onVehicleIOChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/VehicleIO;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 572
    return-void
.end method

.method public onVehicleKeyStateChanged(I)V
    .registers 6
    .param p1, "state"    # I

    .prologue
    .line 581
    const-string v0, "onVehicleKeyStateChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 583
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 581
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 584
    return-void
.end method

.method public onVehicleSceneModeChanged(I)V
    .registers 6
    .param p1, "mode"    # I

    .prologue
    .line 659
    const-string v0, "onVehicleSceneModeChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 660
    return-void
.end method

.method public onVehicleSpeedChanged(I)V
    .registers 6
    .param p1, "speed"    # I

    .prologue
    .line 495
    const-string v0, "onVehicleSpeedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 497
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 495
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 498
    return-void
.end method

.method public onVehicleStateChanged(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I

    .prologue
    .line 621
    const-string v0, "onVehicleStateChanged"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/VehicleState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 622
    return-void
.end method

.method public onVehicleStateSettingResponse(Lcom/qinggan/canbus/VehicleState;Z)V
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "isSuccess"    # Z

    .prologue
    .line 634
    const-string v0, "onVehicleStateSettingResponse"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/VehicleState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 635
    return-void
.end method

.method public onVehicleStateSettingResponseEx(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 7
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I

    .prologue
    .line 642
    const-string v0, "onVehicleStateSettingResponseEx"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/VehicleState;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 643
    return-void
.end method

.method public onWheelCountChanged(Lcom/qinggan/canbus/WheelCount;)V
    .registers 6
    .param p1, "count"    # Lcom/qinggan/canbus/WheelCount;

    .prologue
    .line 505
    const-string v0, "onWheelCountChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/WheelCount;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 508
    return-void
.end method

.method public onWheelSpeedChanged(Lcom/qinggan/canbus/WheelSpeed;)V
    .registers 6
    .param p1, "speed"    # Lcom/qinggan/canbus/WheelSpeed;

    .prologue
    .line 489
    const-string v0, "onWheelSpeedChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/WheelSpeed;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 492
    return-void
.end method

.method public onWindowsStatusChanged(Lcom/qinggan/canbus/WindowStatus;)V
    .registers 6
    .param p1, "state"    # Lcom/qinggan/canbus/WindowStatus;

    .prologue
    .line 587
    const-string v0, "onWindowsStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/canbus/WindowStatus;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 590
    return-void
.end method

.method public onWiperFluidStatusChanged(I)V
    .registers 6
    .param p1, "status"    # I

    .prologue
    .line 529
    const-string v0, "onWiperFluidStatusChanged"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 531
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 529
    invoke-direct {p0, v0, v1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->allObserversInvoke(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 532
    return-void
.end method

.method public printData(Ljava/lang/String;I[I)V
    .registers 12
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "len"    # I
    .param p3, "data"    # [I

    .prologue
    const/4 v7, 0x1

    .line 1167
    iget-boolean v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    if-eqz v2, :cond_6a

    .line 1168
    if-le p2, v7, :cond_6a

    .line 1169
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1171
    new-instance v0, Ljava/lang/String;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1172
    .local v0, "Data":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2b
    if-ge v1, p2, :cond_52

    .line 1173
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02x "

    new-array v4, v7, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget v6, p3, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1172
    add-int/lit8 v1, v1, 0x1

    goto :goto_2b

    .line 1175
    :cond_52
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1176
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1179
    .end local v0    # "Data":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_6a
    return-void
.end method

.method public printData(Ljava/lang/String;[B)V
    .registers 10
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [B

    .prologue
    .line 1182
    iget-boolean v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->canLogEnable:Z

    if-eqz v2, :cond_80

    .line 1183
    array-length v2, p2

    if-lez v2, :cond_80

    .line 1184
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", len:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1185
    new-instance v0, Ljava/lang/String;

    const-string v2, "["

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 1186
    .local v0, "data":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_2c
    array-length v2, p2

    if-ge v1, v2, :cond_55

    .line 1187
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%02x "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aget-byte v6, p2, v1

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1186
    add-int/lit8 v1, v1, 0x1

    goto :goto_2c

    .line 1189
    :cond_55
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1190
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1193
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_80
    return-void
.end method

.method public printDataWithLog(Ljava/lang/String;[B)V
    .registers 11
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "args"    # [B

    .prologue
    const/4 v3, 0x0

    .line 1196
    array-length v2, p2

    if-lez v2, :cond_60

    .line 1197
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", len:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "[ "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1199
    .local v1, "data":Ljava/lang/StringBuilder;
    array-length v4, p2

    move v2, v3

    :goto_2a
    if-ge v2, v4, :cond_43

    aget-byte v0, p2, v2

    .line 1200
    .local v0, "arg":I
    const-string v5, "%02X "

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1199
    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    .line 1202
    .end local v0    # "arg":I
    :cond_43
    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1203
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "data:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .end local v1    # "data":Ljava/lang/StringBuilder;
    :cond_60
    return-void
.end method

.method public queryVehicleState()V
    .registers 1

    .prologue
    .line 829
    return-void
.end method

.method public registerOperator(Lcom/qinggan/canbus/service/ICanBusOperator;I)V
    .registers 4
    .param p1, "ICANBusOperator"    # Lcom/qinggan/canbus/service/ICanBusOperator;
    .param p2, "fd"    # I

    .prologue
    .line 159
    iput p2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->can_fd:I

    .line 160
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    if-nez v0, :cond_8

    .line 161
    iput-object p1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    .line 163
    :cond_8
    return-void
.end method

.method public registerOperator(Lcom/qinggan/canbus/service/ICanBusOperator;II)V
    .registers 5
    .param p1, "canBusOperator"    # Lcom/qinggan/canbus/service/ICanBusOperator;
    .param p2, "canFd"    # I
    .param p3, "muFd"    # I

    .prologue
    .line 166
    iput p2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->can_fd:I

    .line 167
    iput p3, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mu_fd:I

    .line 168
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    if-nez v0, :cond_a

    .line 169
    iput-object p1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    .line 171
    :cond_a
    return-void
.end method

.method public requestTravellingInfo(Lcom/qinggan/canbus/TravellingInfoType;)I
    .registers 3
    .param p1, "type"    # Lcom/qinggan/canbus/TravellingInfoType;

    .prologue
    .line 981
    const/4 v0, 0x0

    return v0
.end method

.method public requestVehicleCenterControlEnabledInfo()I
    .registers 2

    .prologue
    .line 976
    const/4 v0, 0x0

    return v0
.end method

.method public sendCanIOCtl(I[B)I
    .registers 4
    .param p1, "cmd"    # I
    .param p2, "args"    # [B

    .prologue
    .line 196
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->sendCanIOCtl(I[BZ)I

    move-result v0

    return v0
.end method

.method public sendCanIOCtl(I[BZ)I
    .registers 6
    .param p1, "cmd"    # I
    .param p2, "args"    # [B
    .param p3, "showlog"    # Z

    .prologue
    .line 201
    array-length v0, p2

    if-lez v0, :cond_a

    if-eqz p3, :cond_a

    .line 203
    const-string v0, "SysToCanBox send raw data by canbuservice"

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->printDataWithLog(Ljava/lang/String;[B)V

    .line 206
    :cond_a
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    if-nez v0, :cond_17

    .line 207
    sget-object v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v1, "mCanBusOperator is null"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    const/4 v0, -0x1

    .line 211
    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    iget v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->can_fd:I

    invoke-interface {v0, v1, p1, p2}, Lcom/qinggan/canbus/service/ICanBusOperator;->sendCanCmd(II[B)I

    move-result v0

    goto :goto_16
.end method

.method public sendCanIOCtlBytes(I[B)[B
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "args"    # [B

    .prologue
    .line 216
    array-length v0, p2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_f

    .line 217
    const-string v0, "SysToCanBox send raw data"

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->printData(Ljava/lang/String;[B)V

    .line 219
    :cond_f
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    if-nez v0, :cond_1c

    .line 220
    sget-object v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v1, "mCanBusOperator is null"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const/4 v0, 0x0

    .line 223
    :goto_1b
    return-object v0

    :cond_1c
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    iget v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->can_fd:I

    invoke-interface {v0, v1, p1, p2}, Lcom/qinggan/canbus/service/ICanBusOperator;->sendCanCmdBytes(II[B)[B

    move-result-object v0

    goto :goto_1b
.end method

.method public sendIPKNavideath()V
    .registers 3

    .prologue
    .line 301
    sget-object v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v1, "basecanbus sendIPKNavideath: "

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.method public sendMuIoCtl(I[B)I
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "args"    # [B

    .prologue
    .line 174
    array-length v0, p2

    if-lez v0, :cond_f

    const/4 v0, 0x1

    aget-byte v0, p2, v0

    const/16 v1, -0x7f

    if-eq v0, v1, :cond_f

    .line 175
    const-string v0, "SysToMu send raw data"

    invoke-virtual {p0, v0, p2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->printData(Ljava/lang/String;[B)V

    .line 178
    :cond_f
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    if-nez v0, :cond_1c

    .line 179
    sget-object v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v1, "mCanBusOperator is null"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    const/4 v0, -0x1

    .line 183
    :goto_1b
    return v0

    :cond_1c
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    iget v1, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mu_fd:I

    invoke-interface {v0, v1, p1, p2}, Lcom/qinggan/canbus/service/ICanBusOperator;->sendMuCmd(II[B)I

    move-result v0

    goto :goto_1b
.end method

.method public sendSocketCtl(I[B)I
    .registers 5
    .param p1, "cmd"    # I
    .param p2, "bytes"    # [B

    .prologue
    .line 188
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    if-nez v0, :cond_d

    .line 189
    sget-object v0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v1, "mCanBusOperator is null"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const/4 v0, -0x1

    .line 192
    :goto_c
    return v0

    :cond_d
    iget-object v0, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mCanBusOperator:Lcom/qinggan/canbus/service/ICanBusOperator;

    array-length v1, p2

    invoke-interface {v0, v1, p2}, Lcom/qinggan/canbus/service/ICanBusOperator;->sendSocketCmd(I[B)I

    move-result v0

    goto :goto_c
.end method

.method public setAirConditionBundleState(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1112
    const/4 v0, 0x0

    return v0
.end method

.method public setAirConditionState(Lcom/qinggan/canbus/AirConditionState;I)V
    .registers 3
    .param p1, "conditionState"    # Lcom/qinggan/canbus/AirConditionState;
    .param p2, "state"    # I

    .prologue
    .line 995
    return-void
.end method

.method public setCanRawData(I[I)V
    .registers 3
    .param p1, "canId"    # I
    .param p2, "data"    # [I

    .prologue
    .line 962
    return-void
.end method

.method public setFactoryModeState(Lcom/qinggan/canbus/VehicleStateAutoTest;Ljava/lang/String;I)V
    .registers 4
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleStateAutoTest;
    .param p2, "result"    # Ljava/lang/String;
    .param p3, "length"    # I

    .prologue
    .line 966
    return-void
.end method

.method public setGearBoxType(Lcom/qinggan/canbus/GearBoxType;)V
    .registers 2
    .param p1, "type"    # Lcom/qinggan/canbus/GearBoxType;

    .prologue
    .line 991
    return-void
.end method

.method public setVehicleAndAirConditionBundleState(Landroid/os/Bundle;Landroid/os/Bundle;)I
    .registers 4
    .param p1, "airBundle"    # Landroid/os/Bundle;
    .param p2, "vehicleBundle"    # Landroid/os/Bundle;

    .prologue
    .line 1122
    const/4 v0, 0x0

    return v0
.end method

.method public setVehicleBundleState(Landroid/os/Bundle;)I
    .registers 3
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 1117
    const/4 v0, 0x0

    return v0
.end method

.method public setVehicleCenterControlEnabled(Lcom/qinggan/canbus/VehicleCenterControlEnabled;I)Z
    .registers 4
    .param p1, "vehicleCenterControlEnabled"    # Lcom/qinggan/canbus/VehicleCenterControlEnabled;
    .param p2, "state"    # I

    .prologue
    .line 127
    const/4 v0, 0x0

    return v0
.end method

.method public setVehicleSceneMode(I)I
    .registers 3
    .param p1, "mode"    # I

    .prologue
    .line 1097
    const/4 v0, 0x0

    return v0
.end method

.method public setVehicleState(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 3
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I

    .prologue
    .line 958
    return-void
.end method

.method public socketNotify(I[I)Z
    .registers 7
    .param p1, "len"    # I
    .param p2, "data"    # [I

    .prologue
    .line 1025
    if-nez p2, :cond_9

    .line 1026
    sget-object v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->TAG:Ljava/lang/String;

    const-string v3, "notify data is null"

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    :cond_9
    const-string v2, "SocketToSysBase Send Raw data"

    invoke-virtual {p0, v2, p1, p2}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->printData(Ljava/lang/String;I[I)V

    .line 1029
    sget v1, Lcom/qinggan/canbus/service/BaseCanBusComponent;->SOCKET_MSG_TYPE:I

    .line 1030
    .local v1, "what":I
    if-eqz p2, :cond_2b

    .line 1031
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1032
    .local v0, "msg":Landroid/os/Message;
    sget v2, Lcom/qinggan/canbus/service/BaseCanBusComponent;->SOCKET_MSG_LEN:I

    invoke-virtual {p0, p2, v2, p1}, Lcom/qinggan/canbus/service/BaseCanBusComponent;->makeSockRawData([III)[I

    move-result-object v2

    invoke-static {v2}, Lcom/qinggan/os/BundleFormat;->formatBundle([I)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1033
    iget-object v2, p0, Lcom/qinggan/canbus/service/BaseCanBusComponent;->mHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1034
    const/4 v2, 0x1

    .line 1036
    .end local v0    # "msg":Landroid/os/Message;
    :goto_2a
    return v2

    :cond_2b
    const/4 v2, 0x0

    goto :goto_2a
.end method

.method public updateCallListInfo(Landroid/os/Bundle;)V
    .registers 2
    .param p1, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1144
    return-void
.end method

.method public updateMediaPlayInfo(Lcom/qinggan/canbus/MediaPlayInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/qinggan/canbus/MediaPlayInfo;

    .prologue
    .line 933
    return-void
.end method

.method public updateMediaPlayMode(Lcom/qinggan/canbus/MediaPlayMode;)V
    .registers 2
    .param p1, "mode"    # Lcom/qinggan/canbus/MediaPlayMode;

    .prologue
    .line 937
    return-void
.end method

.method public updateMediaPlayProgressInfo(Lcom/qinggan/canbus/MediaPlayProgressInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/qinggan/canbus/MediaPlayProgressInfo;

    .prologue
    .line 1132
    return-void
.end method

.method public updateMediaSeqType(I)V
    .registers 2
    .param p1, "seqtype"    # I

    .prologue
    .line 1136
    return-void
.end method

.method public updateMediaSrcInfo(Lcom/qinggan/canbus/MediaSrcInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/qinggan/canbus/MediaSrcInfo;

    .prologue
    .line 929
    return-void
.end method

.method public updateMediaVolume(I)V
    .registers 2
    .param p1, "volume"    # I

    .prologue
    .line 941
    return-void
.end method

.method public updateNaviInfo(Lcom/qinggan/canbus/NaviInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/qinggan/canbus/NaviInfo;

    .prologue
    .line 945
    return-void
.end method

.method public updateNaviLaneInfo(ZLandroid/os/Bundle;)V
    .registers 3
    .param p1, "showLane"    # Z
    .param p2, "data"    # Landroid/os/Bundle;

    .prologue
    .line 1140
    return-void
.end method

.method public updatePhoneInfo(Lcom/qinggan/canbus/PhoneInfo;)V
    .registers 2
    .param p1, "info"    # Lcom/qinggan/canbus/PhoneInfo;

    .prologue
    .line 949
    return-void
.end method
