.class Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICarSignalServiceCallBack.java"

# interfaces
.implements Lcom/qinggan/carsignal/ICarSignalServiceCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 282
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 283
    iput-object p1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 284
    return-void
.end method


# virtual methods
.method public OnBackLightStateChanged(I)V
    .registers 7
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 548
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 550
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 551
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 552
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x16

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 555
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 557
    return-void

    .line 555
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 556
    throw v1
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 287
    iget-object v0, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 291
    const-string v0, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    return-object v0
.end method

.method public onACCStateChanged(I)V
    .registers 7
    .param p1, "accState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 332
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 334
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 335
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 336
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 339
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    return-void

    .line 339
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 340
    throw v1
.end method

.method public onAVINStateChanged(I)V
    .registers 7
    .param p1, "avinState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 406
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 408
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xa

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 411
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    return-void

    .line 411
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 412
    throw v1
.end method

.method public onBatteryChanged(I)V
    .registers 7
    .param p1, "batteryLevel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 310
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 312
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 315
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 317
    return-void

    .line 315
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 316
    throw v1
.end method

.method public onCameraStateChanged(I)V
    .registers 7
    .param p1, "cameraState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 382
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 384
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x8

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 387
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    return-void

    .line 387
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 388
    throw v1
.end method

.method public onCanBusStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 500
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 502
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 504
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x12

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 507
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 509
    return-void

    .line 507
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 508
    throw v1
.end method

.method public onCarSafeStateChanged(I)V
    .registers 7
    .param p1, "carSafe"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 392
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 394
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 395
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 396
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x9

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 401
    return-void

    .line 399
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 400
    throw v1
.end method

.method public onHeadLightStateChanged(I)V
    .registers 7
    .param p1, "lightState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 368
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 370
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 371
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 372
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x7

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 377
    return-void

    .line 375
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    throw v1
.end method

.method public onKeyChannelLine1ValueChanged(I)V
    .registers 7
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 524
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 526
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 527
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 528
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x14

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 531
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 533
    return-void

    .line 531
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 532
    throw v1
.end method

.method public onKeyChannelLine2ValueChanged(I)V
    .registers 7
    .param p1, "keyValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 536
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 539
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 540
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x15

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 543
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 545
    return-void

    .line 543
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 544
    throw v1
.end method

.method public onKeyEvent(II)V
    .registers 8
    .param p1, "keyCode"    # I
    .param p2, "keyType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 298
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 299
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 300
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_17
    .catchall {:try_start_4 .. :try_end_17} :catchall_1b

    .line 303
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 305
    return-void

    .line 303
    :catchall_1b
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 304
    throw v1
.end method

.method public onLCDTempChanged(I)V
    .registers 7
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 490
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 492
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x11

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 495
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 497
    return-void

    .line 495
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 496
    throw v1
.end method

.method public onLightKeyChanged(I)V
    .registers 7
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 476
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 478
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 479
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 480
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x10

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 483
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 485
    return-void

    .line 483
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 484
    throw v1
.end method

.method public onLightSensorChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 440
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 442
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xd

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 447
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 449
    return-void

    .line 447
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 448
    throw v1
.end method

.method public onMCUDiagRequest(I)V
    .registers 7
    .param p1, "code"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 560
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 562
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 563
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 564
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x17

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 567
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 569
    return-void

    .line 567
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 568
    throw v1
.end method

.method public onMCUDiagRequestEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V
    .registers 7
    .param p1, "diagnosticInfo"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 572
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 574
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 575
    if-eqz p1, :cond_20

    .line 576
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 577
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 582
    :goto_13
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x18

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1c
    .catchall {:try_start_4 .. :try_end_1c} :catchall_25

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    return-void

    .line 580
    :cond_20
    const/4 v1, 0x0

    :try_start_21
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_24
    .catchall {:try_start_21 .. :try_end_24} :catchall_25

    goto :goto_13

    .line 585
    :catchall_25
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
    throw v1
.end method

.method public onMuteKeyChanged(I)V
    .registers 7
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 467
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 468
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xf

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 473
    return-void

    .line 471
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 472
    throw v1
.end method

.method public onPADistortionStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 356
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 358
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 360
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 363
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    return-void

    .line 363
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 364
    throw v1
.end method

.method public onPASLCDTempChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 604
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 605
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 606
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1a

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 611
    return-void

    .line 609
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw v1
.end method

.method public onPASLightSensorChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 590
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 592
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 594
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 599
    return-void

    .line 597
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 598
    throw v1
.end method

.method public onPowerKeyStateChanged(I)V
    .registers 7
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 344
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 346
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 347
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 348
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x5

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    return-void

    .line 351
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw v1
.end method

.method public onPowerStateChanged(I)V
    .registers 7
    .param p1, "powerState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 320
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 322
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 323
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_14
    .catchall {:try_start_4 .. :try_end_14} :catchall_18

    .line 327
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    return-void

    .line 327
    :catchall_18
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 328
    throw v1
.end method

.method public onTboxMutePinStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 614
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 616
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 618
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x1b

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 621
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 623
    return-void

    .line 621
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 622
    throw v1
.end method

.method public onTemValueChanged(I)V
    .registers 7
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 428
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 430
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 431
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 432
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xc

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    return-void

    .line 435
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v1
.end method

.method public onTouchScreenStateChanged(I)V
    .registers 7
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 416
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 418
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xb

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 423
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 425
    return-void

    .line 423
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 424
    throw v1
.end method

.method public onVoltageStateChanged(I)V
    .registers 7
    .param p1, "voltageValue"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 512
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 514
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 515
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 516
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x13

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 519
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 521
    return-void

    .line 519
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 520
    throw v1
.end method

.method public onVolumeKeyChanged(I)V
    .registers 7
    .param p1, "keyState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 452
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 454
    .local v0, "_data":Landroid/os/Parcel;
    :try_start_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 455
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 456
    iget-object v1, p0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0xe

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_19

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    return-void

    .line 459
    :catchall_19
    move-exception v1

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    throw v1
.end method
