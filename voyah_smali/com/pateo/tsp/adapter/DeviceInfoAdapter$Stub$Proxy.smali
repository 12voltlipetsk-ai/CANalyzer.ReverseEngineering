.class Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "DeviceInfoAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/DeviceInfoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/adapter/DeviceInfoAdapter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 185
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 188
    iget-object v0, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 227
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 228
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 229
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->destroy()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 235
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 238
    :goto_2b
    return v2

    .line 231
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 232
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 235
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 235
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 236
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 237
    throw v4
.end method

.method public getICCID()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 315
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 320
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 321
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->getICCID()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v2

    .line 327
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 330
    :goto_2b
    return-object v2

    .line 323
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 324
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v2

    .line 327
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 327
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 328
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 329
    throw v4
.end method

.method public getIMEI()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 292
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 295
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 296
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 297
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 298
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->getIMEI()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v2

    .line 304
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 307
    :goto_2b
    return-object v2

    .line 300
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 301
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v2

    .line 304
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 304
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 305
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 306
    throw v4
.end method

.method public getIMSI()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 246
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 249
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 250
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 251
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 252
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->getIMSI()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v2

    .line 258
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 261
    :goto_2b
    return-object v2

    .line 254
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v2

    .line 258
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 258
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 259
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 260
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 192
    const-string v0, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    return-object v0
.end method

.method public getMssidn()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 337
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 338
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 341
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 342
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 343
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 344
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->getMssidn()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v2

    .line 350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 353
    :goto_2b
    return-object v2

    .line 346
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 347
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v2

    .line 350
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 350
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    throw v4
.end method

.method public getPDSN()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 364
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 365
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 366
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 367
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->getPDSN()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 373
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 376
    :goto_2c
    return-object v2

    .line 369
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 370
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 373
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 373
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 374
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 375
    throw v4
.end method

.method public getVIN()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 269
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 272
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 273
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 274
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 275
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->getVIN()Ljava/lang/String;
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-object v2

    .line 281
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 284
    :goto_2b
    return-object v2

    .line 277
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 278
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-object v2

    .line 281
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 281
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 282
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
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
    .line 199
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 200
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 203
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 204
    iget-object v4, p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 205
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 206
    invoke-static {}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->init()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 212
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 215
    :goto_2b
    return v2

    .line 208
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 209
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 212
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 212
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 213
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 214
    throw v4
.end method
