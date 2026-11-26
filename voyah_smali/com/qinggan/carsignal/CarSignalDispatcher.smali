.class public Lcom/qinggan/carsignal/CarSignalDispatcher;
.super Lcom/qinggan/carsignal/CarSignalListener;
.source "CarSignalDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;
    }
.end annotation


# static fields
.field private static final ARGS:Ljava/lang/String; = "args"

.field private static final METHOD_NAME:Ljava/lang/String; = "methodName"


# instance fields
.field private mCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/carsignal/ICarSignalServiceCallBack;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 126
    invoke-direct {p0}, Lcom/qinggan/carsignal/CarSignalListener;-><init>()V

    .line 128
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mCallbacks:Ljava/util/List;

    .line 129
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "callback"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    .line 130
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 131
    new-instance v0, Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;

    iget-object v1, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher$CallBackHandler;-><init>(Lcom/qinggan/carsignal/CarSignalDispatcher;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mHandler:Landroid/os/Handler;

    .line 132
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/carsignal/CarSignalDispatcher;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/CarSignalDispatcher;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mCallbacks:Ljava/util/List;

    return-object v0
.end method

.method private varargs sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 7
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "typesAndArgs"    # [Ljava/lang/Object;

    .prologue
    .line 136
    const/4 v3, 0x1

    new-array v2, v3, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    .line 137
    .local v2, "objects":[Ljava/lang/Object;
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 138
    .local v0, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;[Ljava/lang/Object;>;"
    const-string v3, "methodName"

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v3, "args"

    invoke-virtual {v0, v3, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    iget-object v3, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 141
    .local v1, "msg":Landroid/os/Message;
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 142
    iget-object v3, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 144
    return-void
.end method


# virtual methods
.method public OnBackLightStateChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 309
    const-string v0, "OnBackLightStateChanged"

    .line 310
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 311
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 312
    return-void
.end method

.method public declared-synchronized addCallbacks(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)V
    .registers 5
    .param p1, "cb"    # Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    .prologue
    .line 147
    monitor-enter p0

    :try_start_1
    const-string v0, "CarSignalDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addCallback--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 149
    monitor-exit p0

    return-void

    .line 147
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public addCallbacks(Ljava/lang/String;Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)V
    .registers 3
    .param p1, "PackageName"    # Ljava/lang/String;
    .param p2, "cb"    # Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    .prologue
    .line 154
    return-void
.end method

.method public onACCStateChanged(I)V
    .registers 6
    .param p1, "accState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 184
    const-string v0, "onACCStateChanged"

    .line 185
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 186
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 187
    return-void
.end method

.method public onAVINStateChanged(I)V
    .registers 6
    .param p1, "avinState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 226
    const-string v0, "onAVINStateChanged"

    .line 227
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 228
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 229
    return-void
.end method

.method public onBatteryChanged(I)V
    .registers 6
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 170
    const-string v0, "onBatteryChanged"

    .line 171
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 172
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    return-void
.end method

.method public onCameraStateChanged(I)V
    .registers 6
    .param p1, "cameraState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 212
    const-string v0, "onCameraStateChanged"

    .line 213
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 214
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 215
    return-void
.end method

.method public onCanBusStateChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 282
    const-string v0, "onCanBusStateChanged"

    .line 283
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 284
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 285
    return-void
.end method

.method public onCarSafeStateChanged(I)V
    .registers 6
    .param p1, "carSafe"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    const-string v0, "onCarSafeStateChanged"

    .line 220
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 221
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    return-void
.end method

.method public onHeadLightStateChanged(I)V
    .registers 6
    .param p1, "lightState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 205
    const-string v0, "onHeadLightStateChanged"

    .line 206
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 207
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 208
    return-void
.end method

.method public onKeyChannelLine1ValueChanged(I)V
    .registers 6
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    const-string v0, "onKeyChannelLine1ValueChanged"

    .line 297
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 298
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 299
    return-void
.end method

.method public onKeyChannelLine2ValueChanged(I)V
    .registers 6
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 302
    const-string v0, "onKeyChannelLine2ValueChanged"

    .line 303
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 304
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public onKeyEvent(II)V
    .registers 7
    .param p1, "keyCode"    # I
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 163
    const-string v0, "onKeyEvent"

    .line 164
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x4

    new-array v1, v2, [Ljava/lang/Object;

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

    .line 165
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 166
    return-void
.end method

.method public onLCDTempChanged(I)V
    .registers 6
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 275
    const-string v0, "onLCDTempChanged"

    .line 276
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 277
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    return-void
.end method

.method public onLightKeyChanged(I)V
    .registers 6
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    const-string v0, "onLightKeyChanged"

    .line 269
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 270
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    return-void
.end method

.method public onLightSensorChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    const-string v0, "onLightSensorChanged"

    .line 248
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 249
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 250
    return-void
.end method

.method public onMCUDiagRequest(I)V
    .registers 6
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 317
    const-string v0, "onMCUDiagRequest"

    .line 318
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 319
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    return-void
.end method

.method public onMCUDiagRequestEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V
    .registers 6
    .param p1, "diagnosticInfo"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 325
    const-string v0, "onMCUDiagRequestEx"

    .line 326
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    .line 327
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 328
    return-void
.end method

.method public onMuteKeyChanged(I)V
    .registers 6
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    const-string v0, "onMuteKeyChanged"

    .line 262
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 263
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 264
    return-void
.end method

.method public onPADistortionStateChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 198
    const-string v0, "onPADistortionStateChanged"

    .line 199
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 200
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 201
    return-void
.end method

.method public onPASLCDTempChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 339
    const-string v0, "onPASLCDTempChanged"

    .line 340
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 341
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 342
    return-void
.end method

.method public onPASLightSensorChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    const-string v0, "onPASLightSensorChanged"

    .line 333
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 334
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 335
    return-void
.end method

.method public onPowerKeyStateChanged(I)V
    .registers 6
    .param p1, "accState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    const-string v0, "onPowerKeyStateChanged"

    .line 192
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 193
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void
.end method

.method public onPowerStateChanged(I)V
    .registers 6
    .param p1, "powerState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    const-string v0, "onPowerStateChanged"

    .line 178
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 179
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 180
    return-void
.end method

.method public onTboxMutePinStateChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 346
    const-string v0, "onTboxMutePinStateChanged"

    .line 347
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 348
    .local v1, "tboxMutePinState":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 349
    return-void
.end method

.method public onTemValueChanged(I)V
    .registers 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 240
    const-string v0, "onTemValueChanged"

    .line 241
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 242
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 243
    return-void
.end method

.method public onTouchScreenStateChanged(I)V
    .registers 6
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    const-string v0, "onTouchScreenStateChanged"

    .line 234
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 235
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    return-void
.end method

.method public onVoltageStateChanged(I)V
    .registers 6
    .param p1, "voltageValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 289
    const-string v0, "onVoltageStateChanged"

    .line 290
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 291
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 292
    return-void
.end method

.method public onVolumeKeyChanged(I)V
    .registers 6
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 254
    const-string v0, "onVolumeKeyChanged"

    .line 255
    .local v0, "methodName":Ljava/lang/String;
    const/4 v2, 0x2

    new-array v1, v2, [Ljava/lang/Object;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 256
    .local v1, "typesAndArgs":[Ljava/lang/Object;
    invoke-direct {p0, v0, v1}, Lcom/qinggan/carsignal/CarSignalDispatcher;->sendMessgae(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    return-void
.end method

.method public declared-synchronized removeCallback(Lcom/qinggan/carsignal/ICarSignalServiceCallBack;)V
    .registers 5
    .param p1, "cb"    # Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    .prologue
    .line 157
    monitor-enter p0

    :try_start_1
    const-string v0, "CarSignalDispatcher"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeCallbac--->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/qinggan/carsignal/CarSignalDispatcher;->mCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z
    :try_end_1e
    .catchall {:try_start_1 .. :try_end_1e} :catchall_20

    .line 159
    monitor-exit p0

    return-void

    .line 157
    :catchall_20
    move-exception v0

    monitor-exit p0

    throw v0
.end method
