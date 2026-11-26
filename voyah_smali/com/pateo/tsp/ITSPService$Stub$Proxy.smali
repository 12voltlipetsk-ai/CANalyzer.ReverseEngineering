.class Lcom/pateo/tsp/ITSPService$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITSPService.java"

# interfaces
.implements Lcom/pateo/tsp/ITSPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/ITSPService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/ITSPService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 669
    iput-object p1, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 670
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 673
    iget-object v0, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public cancelXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 10
    .param p1, "xcall"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 710
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 713
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 714
    if-eqz p1, :cond_3f

    .line 715
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 716
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/pateo/tsp/call/XCall;->writeToParcel(Landroid/os/Parcel;I)V

    .line 721
    :goto_17
    if-eqz p2, :cond_4c

    invoke-interface {p2}, Lcom/pateo/tsp/call/XCallHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 722
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 723
    .local v3, "_status":Z
    if-nez v3, :cond_4e

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 724
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->cancelXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_44

    move-result v2

    .line 730
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    :goto_3e
    return v2

    .line 719
    .end local v3    # "_status":Z
    :cond_3f
    const/4 v4, 0x0

    :try_start_40
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_17

    .line 730
    :catchall_44
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 732
    throw v4

    .line 721
    :cond_4c
    const/4 v4, 0x0

    goto :goto_1d

    .line 726
    .restart local v3    # "_status":Z
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 727
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_44

    move-result v2

    .line 730
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 731
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_3e
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 677
    const-string v0, "com.pateo.tsp.ITSPService"

    return-object v0
.end method

.method public getRemoteConfigItem(Ljava/lang/String;I)Ljava/lang/String;
    .registers 10
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1271
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1274
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1275
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1276
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1277
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1c

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1278
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1279
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->getRemoteConfigItem(Ljava/lang/String;I)Ljava/lang/String;
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result-object v2

    .line 1285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1288
    :goto_32
    return-object v2

    .line 1281
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1282
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result-object v2

    .line 1285
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1285
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1286
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1287
    throw v4
.end method

.method public getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 9
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1292
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1293
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1296
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1297
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1298
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1299
    .local v3, "_status":Z
    if-nez v3, :cond_30

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 1300
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    move-result-object v2

    .line 1306
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1309
    :goto_2f
    return-object v2

    .line 1302
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1303
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_3e

    move-result-object v2

    .line 1306
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2f

    .line 1306
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1307
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1308
    throw v4
.end method

.method public nativeDial(Ljava/lang/String;)V
    .registers 8
    .param p1, "phone"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1399
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1401
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1402
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1403
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1404
    .local v2, "_status":Z
    if-nez v2, :cond_2f

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_2f

    .line 1405
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/ITSPService;->nativeDial(Ljava/lang/String;)V
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_39

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1414
    :goto_2e
    return-void

    .line 1408
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_32
    .catchall {:try_start_2f .. :try_end_32} :catchall_39

    .line 1411
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 1411
    .end local v2    # "_status":Z
    :catchall_39
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1412
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1413
    throw v3
.end method

.method public nativeGetCurrentLocation()Landroid/location/Location;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1502
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x27

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1503
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1504
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/ITSPService;->nativeGetCurrentLocation()Landroid/location/Location;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_47

    move-result-object v2

    .line 1515
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1518
    :goto_2c
    return-object v2

    .line 1506
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_45

    .line 1508
    sget-object v4, Landroid/location/Location;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/location/Location;
    :try_end_3e
    .catchall {:try_start_2d .. :try_end_3e} :catchall_47

    .line 1515
    .local v2, "_result":Landroid/location/Location;
    :goto_3e
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1511
    .end local v2    # "_result":Landroid/location/Location;
    :cond_45
    const/4 v2, 0x0

    .restart local v2    # "_result":Landroid/location/Location;
    goto :goto_3e

    .line 1515
    .end local v2    # "_result":Landroid/location/Location;
    .end local v3    # "_status":Z
    :catchall_47
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1516
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1517
    throw v4
.end method

.method public nativeGetIMEI()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1438
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1441
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1442
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x24

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1443
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1444
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/ITSPService;->nativeGetIMEI()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 1450
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1453
    :goto_2c
    return-object v2

    .line 1446
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1447
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 1450
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1450
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1451
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1452
    throw v4
.end method

.method public nativeGetIMSI()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1417
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1418
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1421
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1422
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x23

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1423
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1424
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/ITSPService;->nativeGetIMSI()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 1430
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1433
    :goto_2c
    return-object v2

    .line 1426
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1427
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 1430
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1430
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1431
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1432
    throw v4
.end method

.method public nativeGetPDSN()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1457
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1458
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1461
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1462
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x25

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1463
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1464
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/ITSPService;->nativeGetPDSN()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 1470
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1473
    :goto_2c
    return-object v2

    .line 1466
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1467
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 1470
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1470
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1471
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1472
    throw v4
.end method

.method public nativeGetRemoteConfigPath()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1477
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1478
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1481
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1482
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x26

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1483
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1484
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/ITSPService;->nativeGetRemoteConfigPath()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 1490
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1493
    :goto_2c
    return-object v2

    .line 1486
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1487
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 1490
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1490
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1491
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1492
    throw v4
.end method

.method public nativeIsNetworkAvailable()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1558
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1559
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1562
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1563
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x2a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1564
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1565
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/ITSPService;->nativeIsNetworkAvailable()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 1571
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1574
    :goto_2c
    return v2

    .line 1567
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1568
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 1571
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1571
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1572
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1573
    throw v4
.end method

.method public nativeRemoveLocationListener()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1540
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1541
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1543
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1544
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x29

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1545
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1546
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3}, Lcom/pateo/tsp/ITSPService;->nativeRemoveLocationListener()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_36

    .line 1552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1555
    :goto_2b
    return-void

    .line 1549
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36

    .line 1552
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 1552
    .end local v2    # "_status":Z
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1553
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1554
    throw v3
.end method

.method public nativeSendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1360
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1361
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1363
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1364
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1365
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1366
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1367
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 1368
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/ITSPService;->nativeSendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3c

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1377
    :goto_31
    return-void

    .line 1371
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .line 1374
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    .line 1374
    .end local v2    # "_status":Z
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1375
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1376
    throw v3
.end method

.method public nativeSetLocationListener()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1523
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1525
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1526
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x28

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1527
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1528
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3}, Lcom/pateo/tsp/ITSPService;->nativeSetLocationListener()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_36

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1537
    :goto_2b
    return-void

    .line 1531
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36

    .line 1534
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 1534
    .end local v2    # "_status":Z
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1535
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1536
    throw v3
.end method

.method public nativeSetSmsReceiverListener()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1380
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1381
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1383
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1384
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 1385
    .local v2, "_status":Z
    if-nez v2, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_2c

    .line 1386
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3}, Lcom/pateo/tsp/ITSPService;->nativeSetSmsReceiverListener()V
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_36

    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1395
    :goto_2b
    return-void

    .line 1389
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_36

    .line 1392
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 1392
    .end local v2    # "_status":Z
    :catchall_36
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1393
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1394
    throw v3
.end method

.method public onCanbusStateChanged(II)I
    .registers 10
    .param p1, "type"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1179
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1180
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1183
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1184
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1185
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1186
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1187
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1188
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->onCanbusStateChanged(II)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result v2

    .line 1194
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1197
    :goto_32
    return v2

    .line 1190
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1191
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result v2

    .line 1194
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1194
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1195
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1196
    throw v4
.end method

.method public onGpsStateChanged(I)I
    .registers 9
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1249
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1250
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1253
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1254
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1255
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1256
    .local v3, "_status":Z
    if-nez v3, :cond_30

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 1257
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->onGpsStateChanged(I)I
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    move-result v2

    .line 1263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1266
    :goto_2f
    return v2

    .line 1259
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1260
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_3e

    move-result v2

    .line 1263
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2f

    .line 1263
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1264
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1265
    throw v4
.end method

.method public onLocationChanged(Lcom/pateo/tsp/adapter/NaviLocationInfo;)I
    .registers 9
    .param p1, "location"    # Lcom/pateo/tsp/adapter/NaviLocationInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1222
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1223
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1226
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1227
    if-eqz p1, :cond_37

    .line 1228
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 1229
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/pateo/tsp/adapter/NaviLocationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1234
    :goto_17
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1235
    .local v3, "_status":Z
    if-nez v3, :cond_44

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_44

    .line 1236
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->onLocationChanged(Lcom/pateo/tsp/adapter/NaviLocationInfo;)I
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_3c

    move-result v2

    .line 1242
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1245
    :goto_36
    return v2

    .line 1232
    .end local v3    # "_status":Z
    :cond_37
    const/4 v4, 0x0

    :try_start_38
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3b
    .catchall {:try_start_38 .. :try_end_3b} :catchall_3c

    goto :goto_17

    .line 1242
    :catchall_3c
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1244
    throw v4

    .line 1238
    .restart local v3    # "_status":Z
    :cond_44
    :try_start_44
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1239
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_4a
    .catchall {:try_start_44 .. :try_end_4a} :catchall_3c

    move-result v2

    .line 1242
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1243
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_36
.end method

.method public onNetworkStateChanged(I)I
    .registers 9
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1117
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1120
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1121
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 1122
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1123
    .local v3, "_status":Z
    if-nez v3, :cond_30

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 1124
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->onNetworkStateChanged(I)I
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    move-result v2

    .line 1130
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1133
    :goto_2f
    return v2

    .line 1126
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1127
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_3e

    move-result v2

    .line 1130
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2f

    .line 1130
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1131
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1132
    throw v4
.end method

.method public onPhoneStateChanged(Ljava/lang/String;I)I
    .registers 10
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1074
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1077
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1078
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1079
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1080
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1081
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1082
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->onPhoneStateChanged(Ljava/lang/String;I)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result v2

    .line 1088
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    :goto_32
    return v2

    .line 1084
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1085
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result v2

    .line 1088
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1088
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1089
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1090
    throw v4
.end method

.method public onSmsReceived(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1031
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1034
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1035
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1036
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1037
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1038
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1039
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->onSmsReceived(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result v2

    .line 1045
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1048
    :goto_32
    return v2

    .line 1041
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1042
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result v2

    .line 1045
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1045
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1046
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1047
    throw v4
.end method

.method public onSmsSendResult(Ljava/lang/String;I)I
    .registers 10
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1008
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1009
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1012
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1013
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1014
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 1015
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1016
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1017
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->onSmsSendResult(Ljava/lang/String;I)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result v2

    .line 1023
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1026
    :goto_32
    return v2

    .line 1019
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1020
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result v2

    .line 1023
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1023
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1024
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1025
    throw v4
.end method

.method public registerAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 9
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 779
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 780
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 783
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 784
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/call/XCallHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 785
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 786
    .local v3, "_status":Z
    if-nez v3, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 787
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->registerAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_45

    move-result v2

    .line 793
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 796
    :goto_34
    return v2

    .line 784
    .end local v3    # "_status":Z
    :cond_35
    const/4 v4, 0x0

    goto :goto_13

    .line 789
    .restart local v3    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 790
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_45

    move-result v2

    .line 793
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 793
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_45
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 795
    throw v4
.end method

.method public registerCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 9
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 737
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 738
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 741
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 742
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/call/XCallHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 743
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 744
    .local v3, "_status":Z
    if-nez v3, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 745
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->registerCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_45

    move-result v2

    .line 751
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 754
    :goto_34
    return v2

    .line 742
    .end local v3    # "_status":Z
    :cond_35
    const/4 v4, 0x0

    goto :goto_13

    .line 747
    .restart local v3    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 748
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_45

    move-result v2

    .line 751
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 751
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_45
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 752
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 753
    throw v4
.end method

.method public registerPushHandler(Lcom/pateo/tsp/push/PushHandler;)I
    .registers 9
    .param p1, "handler"    # Lcom/pateo/tsp/push/PushHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 821
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 822
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 825
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 826
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/push/PushHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 827
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 828
    .local v3, "_status":Z
    if-nez v3, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 829
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->registerPushHandler(Lcom/pateo/tsp/push/PushHandler;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_45

    move-result v2

    .line 835
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 838
    :goto_34
    return v2

    .line 826
    .end local v3    # "_status":Z
    :cond_35
    const/4 v4, 0x0

    goto :goto_13

    .line 831
    .restart local v3    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 832
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_45

    move-result v2

    .line 835
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 835
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_45
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 836
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 837
    throw v4
.end method

.method public removeTSPListener(Lcom/pateo/tsp/ITSPListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/pateo/tsp/ITSPListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 882
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 883
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 885
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 886
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/ITSPListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 887
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 888
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 889
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/ITSPService;->removeTSPListener(Lcom/pateo/tsp/ITSPListener;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_41

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    :goto_34
    return-void

    .line 886
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    goto :goto_13

    .line 892
    .restart local v2    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 895
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 895
    .end local v2    # "_status":Z
    :catchall_41
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 896
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 897
    throw v3
.end method

.method public setCanbusAdapter(Lcom/pateo/tsp/adapter/CanbusAdapter;)I
    .registers 9
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/CanbusAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1158
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1159
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1162
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1163
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/adapter/CanbusAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1164
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1165
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1166
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->setCanbusAdapter(Lcom/pateo/tsp/adapter/CanbusAdapter;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 1172
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1175
    :goto_35
    return v2

    .line 1163
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 1168
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1169
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 1172
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 1172
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1173
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1174
    throw v4
.end method

.method public setCmsHuToken(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "huToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 947
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 948
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 950
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 951
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 952
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 953
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xd

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 954
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 955
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/ITSPService;->setCmsHuToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_3c

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 964
    :goto_31
    return-void

    .line 958
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .line 961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    .line 961
    .end local v2    # "_status":Z
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 962
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 963
    throw v3
.end method

.method public setCmsHuTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "cmsHuTokenListener"    # Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 968
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 970
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 971
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 972
    if-eqz p2, :cond_38

    invoke-interface {p2}, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 973
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xe

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 974
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 975
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/ITSPService;->setCmsHuTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_44

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 984
    :goto_37
    return-void

    .line 972
    .end local v2    # "_status":Z
    :cond_38
    const/4 v3, 0x0

    goto :goto_16

    .line 978
    .restart local v2    # "_status":Z
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    .line 981
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_37

    .line 981
    .end local v2    # "_status":Z
    :catchall_44
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 982
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 983
    throw v3
.end method

.method public setDeviceInfoAdapter(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)I
    .registers 9
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1137
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1138
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1141
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1142
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1143
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1144
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1145
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->setDeviceInfoAdapter(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 1151
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1154
    :goto_35
    return v2

    .line 1142
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 1147
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 1151
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 1151
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1152
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1153
    throw v4
.end method

.method public setGlobalToken(Ljava/lang/String;Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 921
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 922
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 924
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 925
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 926
    if-eqz p2, :cond_39

    .line 927
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 928
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/qinggan/tsp/models/TokenBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 933
    :goto_1a
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xc

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 934
    .local v2, "_status":Z
    if-nez v2, :cond_46

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_46

    .line 935
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/ITSPService;->setGlobalToken(Ljava/lang/String;Lcom/qinggan/tsp/models/TokenBean;)V
    :try_end_32
    .catchall {:try_start_8 .. :try_end_32} :catchall_3e

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 944
    :goto_38
    return-void

    .line 931
    .end local v2    # "_status":Z
    :cond_39
    const/4 v3, 0x0

    :try_start_3a
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_3e

    goto :goto_1a

    .line 941
    :catchall_3e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 943
    throw v3

    .line 938
    .restart local v2    # "_status":Z
    :cond_46
    :try_start_46
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_49
    .catchall {:try_start_46 .. :try_end_49} :catchall_3e

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 942
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_38
.end method

.method public setGlobalTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ITokenListener;)V
    .registers 9
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "tokenListener"    # Lcom/qinggan/tsp/manager/listener/ITokenListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 901
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 902
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 904
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 905
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 906
    if-eqz p2, :cond_38

    invoke-interface {p2}, Lcom/qinggan/tsp/manager/listener/ITokenListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_16
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 907
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xb

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 908
    .local v2, "_status":Z
    if-nez v2, :cond_3a

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_3a

    .line 909
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/ITSPService;->setGlobalTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ITokenListener;)V
    :try_end_31
    .catchall {:try_start_8 .. :try_end_31} :catchall_44

    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 918
    :goto_37
    return-void

    .line 906
    .end local v2    # "_status":Z
    :cond_38
    const/4 v3, 0x0

    goto :goto_16

    .line 912
    .restart local v2    # "_status":Z
    :cond_3a
    :try_start_3a
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3d
    .catchall {:try_start_3a .. :try_end_3d} :catchall_44

    .line 915
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_37

    .line 915
    .end local v2    # "_status":Z
    :catchall_44
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 916
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 917
    throw v3
.end method

.method public setLocationInfoAdapter(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)I
    .registers 9
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/LocationInfoAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1201
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1202
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1205
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1206
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/adapter/LocationInfoAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1207
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1208
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1209
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->setLocationInfoAdapter(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 1215
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1218
    :goto_35
    return v2

    .line 1206
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 1211
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1212
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 1215
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 1215
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1217
    throw v4
.end method

.method public setNetworkAdapter(Lcom/pateo/tsp/adapter/NetworkAdapter;)I
    .registers 9
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/NetworkAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1096
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1099
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1100
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/adapter/NetworkAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1101
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1102
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1103
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->setNetworkAdapter(Lcom/pateo/tsp/adapter/NetworkAdapter;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 1109
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1112
    :goto_35
    return v2

    .line 1100
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 1105
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1106
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 1109
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 1109
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1110
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1111
    throw v4
.end method

.method public setPhoneAdapter(Lcom/pateo/tsp/adapter/PhoneAdapter;)I
    .registers 9
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/PhoneAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1053
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1056
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1057
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/adapter/PhoneAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 1058
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1059
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 1060
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->setPhoneAdapter(Lcom/pateo/tsp/adapter/PhoneAdapter;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1069
    :goto_35
    return v2

    .line 1057
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 1062
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 1066
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 1066
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    throw v4
.end method

.method public setSmsAdapter(Lcom/pateo/tsp/adapter/SmsAdapter;)I
    .registers 9
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/SmsAdapter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 987
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 988
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 991
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 992
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/adapter/SmsAdapter;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 993
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 994
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 995
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->setSmsAdapter(Lcom/pateo/tsp/adapter/SmsAdapter;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 1001
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1004
    :goto_35
    return v2

    .line 992
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 997
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 998
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 1001
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 1001
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1002
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1003
    throw v4
.end method

.method public setTSPListener(Lcom/pateo/tsp/ITSPListener;)V
    .registers 8
    .param p1, "listener"    # Lcom/pateo/tsp/ITSPListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 863
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 864
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 866
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 867
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/ITSPListener;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 868
    iget-object v3, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 869
    .local v2, "_status":Z
    if-nez v2, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    if-eqz v3, :cond_37

    .line 870
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/ITSPService;->setTSPListener(Lcom/pateo/tsp/ITSPListener;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_41

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 879
    :goto_34
    return-void

    .line 867
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    goto :goto_13

    .line 873
    .restart local v2    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_41

    .line 876
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 876
    .end local v2    # "_status":Z
    :catchall_41
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 877
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 878
    throw v3
.end method

.method public startXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 10
    .param p1, "xcall"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 681
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 682
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 685
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 686
    if-eqz p1, :cond_3f

    .line 687
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 688
    const/4 v4, 0x0

    invoke-virtual {p1, v0, v4}, Lcom/pateo/tsp/call/XCall;->writeToParcel(Landroid/os/Parcel;I)V

    .line 693
    :goto_17
    if-eqz p2, :cond_4c

    invoke-interface {p2}, Lcom/pateo/tsp/call/XCallHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1d
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 694
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 695
    .local v3, "_status":Z
    if-nez v3, :cond_4e

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_4e

    .line 696
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->startXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_37
    .catchall {:try_start_8 .. :try_end_37} :catchall_44

    move-result v2

    .line 702
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 705
    :goto_3e
    return v2

    .line 691
    .end local v3    # "_status":Z
    :cond_3f
    const/4 v4, 0x0

    :try_start_40
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_17

    .line 702
    :catchall_44
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 704
    throw v4

    .line 693
    :cond_4c
    const/4 v4, 0x0

    goto :goto_1d

    .line 698
    .restart local v3    # "_status":Z
    :cond_4e
    :try_start_4e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 699
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_54
    .catchall {:try_start_4e .. :try_end_54} :catchall_44

    move-result v2

    .line 702
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 703
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_3e
.end method

.method public subscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1313
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1314
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1317
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1318
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1319
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1320
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1e

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1321
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1322
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->subscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result v2

    .line 1328
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1331
    :goto_32
    return v2

    .line 1324
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1325
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result v2

    .line 1328
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1328
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1329
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1330
    throw v4
.end method

.method public unSubscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "topic"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1341
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1342
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1343
    .local v3, "_status":Z
    if-nez v3, :cond_33

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_33

    .line 1344
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/ITSPService;->unSubscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2b
    .catchall {:try_start_8 .. :try_end_2b} :catchall_41

    move-result v2

    .line 1350
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1353
    :goto_32
    return v2

    .line 1346
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1347
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_39
    .catchall {:try_start_33 .. :try_end_39} :catchall_41

    move-result v2

    .line 1350
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_32

    .line 1350
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_41
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1351
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1352
    throw v4
.end method

.method public unregisterAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 9
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 800
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 801
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 804
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 805
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/call/XCallHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 806
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 807
    .local v3, "_status":Z
    if-nez v3, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 808
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->unregisterAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_45

    move-result v2

    .line 814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 817
    :goto_34
    return v2

    .line 805
    .end local v3    # "_status":Z
    :cond_35
    const/4 v4, 0x0

    goto :goto_13

    .line 810
    .restart local v3    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 811
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_45

    move-result v2

    .line 814
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 814
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_45
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 815
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 816
    throw v4
.end method

.method public unregisterCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    .registers 9
    .param p1, "handler"    # Lcom/pateo/tsp/call/XCallHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 758
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 759
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 762
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 763
    if-eqz p1, :cond_35

    invoke-interface {p1}, Lcom/pateo/tsp/call/XCallHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 764
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 765
    .local v3, "_status":Z
    if-nez v3, :cond_37

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_37

    .line 766
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->unregisterCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_45

    move-result v2

    .line 772
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 775
    :goto_34
    return v2

    .line 763
    .end local v3    # "_status":Z
    :cond_35
    const/4 v4, 0x0

    goto :goto_13

    .line 768
    .restart local v3    # "_status":Z
    :cond_37
    :try_start_37
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 769
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3d
    .catchall {:try_start_37 .. :try_end_3d} :catchall_45

    move-result v2

    .line 772
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34

    .line 772
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_45
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 773
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 774
    throw v4
.end method

.method public unregisterPushHandler(Lcom/pateo/tsp/push/PushHandler;)I
    .registers 9
    .param p1, "handler"    # Lcom/pateo/tsp/push/PushHandler;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 842
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 843
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 846
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.ITSPService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 847
    if-eqz p1, :cond_36

    invoke-interface {p1}, Lcom/pateo/tsp/push/PushHandler;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_13
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 848
    iget-object v4, p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 849
    .local v3, "_status":Z
    if-nez v3, :cond_38

    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    if-eqz v4, :cond_38

    .line 850
    invoke-static {}, Lcom/pateo/tsp/ITSPService$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/ITSPService;->unregisterPushHandler(Lcom/pateo/tsp/push/PushHandler;)I
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_46

    move-result v2

    .line 856
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 859
    :goto_35
    return v2

    .line 847
    .end local v3    # "_status":Z
    :cond_36
    const/4 v4, 0x0

    goto :goto_13

    .line 852
    .restart local v3    # "_status":Z
    :cond_38
    :try_start_38
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 853
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_3e
    .catchall {:try_start_38 .. :try_end_3e} :catchall_46

    move-result v2

    .line 856
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_35

    .line 856
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_46
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 857
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 858
    throw v4
.end method
