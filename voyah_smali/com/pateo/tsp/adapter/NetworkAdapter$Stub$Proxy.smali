.class Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "NetworkAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/NetworkAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/adapter/NetworkAdapter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 254
    iput-object p1, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 255
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 258
    iget-object v0, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public destroy()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 286
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 287
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 290
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 291
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 292
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 293
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->destroy()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 302
    :goto_2b
    return v2

    .line 295
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 296
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 299
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 299
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 300
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 301
    throw v4
.end method

.method public getDNSAddress(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "addr1"    # Ljava/lang/String;
    .param p2, "addr2"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 485
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 486
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 488
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 489
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 490
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 491
    iget-object v3, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 492
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 493
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getDNSAddress(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3c

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 502
    :goto_31
    return-void

    .line 496
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .line 499
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    .line 499
    .end local v2    # "_status":Z
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 500
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 501
    throw v3
.end method

.method public getDataNetworkState()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 537
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 538
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 541
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 542
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 543
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 544
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getDataNetworkState()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 550
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 553
    :goto_2c
    return v2

    .line 546
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 547
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 550
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 550
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 551
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 552
    throw v4
.end method

.method public getGatewayAddress()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 465
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 466
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 469
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 470
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 471
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 472
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getGatewayAddress()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 478
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 481
    :goto_2c
    return-object v2

    .line 474
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 475
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 478
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 478
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 479
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 480
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 262
    const-string v0, "com.pateo.tsp.adapter.NetworkAdapter"

    return-object v0
.end method

.method public getInterfaceName()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 421
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 422
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 425
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 426
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 427
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 428
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getInterfaceName()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 434
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 437
    :goto_2c
    return-object v2

    .line 430
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 431
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 434
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 434
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 435
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 436
    throw v4
.end method

.method public getNetState()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 351
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 354
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 355
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 356
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 357
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getNetState()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 363
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 366
    :goto_2b
    return v2

    .line 359
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 360
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 363
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 363
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 364
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 365
    throw v4
.end method

.method public getNetworkType()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 510
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 513
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 514
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 515
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 516
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getNetworkType()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 522
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 525
    :goto_2c
    return v2

    .line 518
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 519
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 522
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 522
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 523
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 524
    throw v4
.end method

.method public getSessionState()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 402
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 403
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 404
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 405
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getSessionState()Z
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_3e

    move-result v2

    .line 411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 414
    :goto_2c
    return v2

    .line 407
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 408
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3e

    move-result v4

    if-eqz v4, :cond_37

    const/4 v2, 0x1

    .line 411
    .local v2, "_result":Z
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 411
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 413
    throw v4
.end method

.method public getSignalQuality()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 375
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 378
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 379
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 380
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 381
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->getSignalQuality()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 387
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 390
    :goto_2b
    return v2

    .line 383
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 384
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 387
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 387
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 389
    throw v4
.end method

.method public goOffLine()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 326
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 327
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 330
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 331
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 332
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 333
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->goOffLine()Z
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_3e

    move-result v2

    .line 339
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 342
    :goto_2c
    return v2

    .line 335
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 336
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3e

    move-result v4

    if-eqz v4, :cond_37

    const/4 v2, 0x1

    .line 339
    .local v2, "_result":Z
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 339
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 340
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 341
    throw v4
.end method

.method public goOnLine()Z
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 306
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 307
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 310
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 311
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 312
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 313
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->goOnLine()Z
    :try_end_25
    .catchall {:try_start_9 .. :try_end_25} :catchall_3e

    move-result v2

    .line 319
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 322
    :goto_2c
    return v2

    .line 315
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3e

    move-result v4

    if-eqz v4, :cond_37

    const/4 v2, 0x1

    .line 319
    .local v2, "_result":Z
    :cond_37
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 319
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 320
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 321
    throw v4
.end method

.method public init()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 266
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 267
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 270
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 271
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 272
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 273
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/NetworkAdapter;->init()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 279
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    :goto_2b
    return v2

    .line 275
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 279
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 279
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 280
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 281
    throw v4
.end method

.method public setAPN(Ljava/lang/String;)Z
    .registers 9
    .param p1, "apn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 444
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 445
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 448
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 449
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 450
    iget-object v4, p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x9

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 451
    .local v3, "_status":Z
    if-nez v3, :cond_31

    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    if-eqz v4, :cond_31

    .line 452
    invoke-static {}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/adapter/NetworkAdapter;->setAPN(Ljava/lang/String;)Z
    :try_end_29
    .catchall {:try_start_9 .. :try_end_29} :catchall_42

    move-result v2

    .line 458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 461
    :goto_30
    return v2

    .line 454
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 455
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_37
    .catchall {:try_start_31 .. :try_end_37} :catchall_42

    move-result v4

    if-eqz v4, :cond_3b

    const/4 v2, 0x1

    .line 458
    .local v2, "_result":Z
    :cond_3b
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    .line 458
    .end local v2    # "_result":Z
    .end local v3    # "_status":Z
    :catchall_42
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 459
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 460
    throw v4
.end method
