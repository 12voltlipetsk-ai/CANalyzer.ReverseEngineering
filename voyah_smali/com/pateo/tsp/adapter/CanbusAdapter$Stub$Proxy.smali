.class Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "CanbusAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/CanbusAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/adapter/CanbusAdapter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 481
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 482
    iput-object p1, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 483
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 486
    iget-object v0, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 520
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 521
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 524
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 525
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 526
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 527
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->destroy()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 533
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 536
    :goto_2b
    return v2

    .line 529
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 530
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 533
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 533
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 534
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 535
    throw v4
.end method

.method public getAccStatus()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 545
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 546
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 549
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 550
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 551
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 552
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getAccStatus()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 558
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 561
    :goto_2b
    return v2

    .line 554
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 555
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 558
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 558
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 559
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 560
    throw v4
.end method

.method public getAlerts()Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 837
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 838
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 841
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 842
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xf

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 843
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 844
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getAlerts()Ljava/lang/String;
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-object v2

    .line 850
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 853
    :goto_2c
    return-object v2

    .line 846
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 847
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-object v2

    .line 850
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 850
    .end local v2    # "_result":Ljava/lang/String;
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 851
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 852
    throw v4
.end method

.method public getAutonomy()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 645
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 646
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 649
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 650
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x7

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 651
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 652
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getAutonomy()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 658
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 661
    :goto_2b
    return v2

    .line 654
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 655
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 658
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 658
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 660
    throw v4
.end method

.method public getBackupBatteryLevel()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1076
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1077
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1080
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1081
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x19

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1082
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1083
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getBackupBatteryLevel()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 1089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1092
    :goto_2c
    return v2

    .line 1085
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1086
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 1089
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1089
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1090
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1091
    throw v4
.end method

.method public getCrashInfo()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 814
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 815
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 818
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 819
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 820
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 821
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getCrashInfo()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 830
    :goto_2c
    return v2

    .line 823
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 824
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 827
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 827
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 828
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 829
    throw v4
.end method

.method public getEngineHybirdState()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1053
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1054
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1057
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1058
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x18

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1059
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1060
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getEngineHybirdState()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 1066
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1069
    :goto_2c
    return v2

    .line 1062
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 1066
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1066
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1067
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1068
    throw v4
.end method

.method public getEngineOilLevel()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 979
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 980
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 983
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 984
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x15

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 985
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 986
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getEngineOilLevel()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 995
    :goto_2c
    return v2

    .line 988
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 989
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 992
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 992
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 993
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 994
    throw v4
.end method

.method public getEngineOilTemperature()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 955
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 956
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 959
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 960
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 961
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 962
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getEngineOilTemperature()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 968
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 971
    :goto_2c
    return v2

    .line 964
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 965
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 968
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 968
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 969
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 970
    throw v4
.end method

.method public getEngineSpeed()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1104
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1105
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1a

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1106
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1107
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getEngineSpeed()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 1113
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1116
    :goto_2c
    return v2

    .line 1109
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1110
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 1113
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1113
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1114
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1115
    throw v4
.end method

.method public getEngineState()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1028
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1029
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1032
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1033
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1034
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1035
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getEngineState()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 1041
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1044
    :goto_2c
    return v2

    .line 1037
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1038
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 1041
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1041
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1042
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1043
    throw v4
.end method

.method public getEtatPrincpSev()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 790
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 791
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 794
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 795
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xd

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 796
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 797
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getEtatPrincpSev()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 803
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 806
    :goto_2c
    return v2

    .line 799
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 800
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 803
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 803
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 804
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 805
    throw v4
.end method

.method public getFuelConsumption()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 620
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 621
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 624
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v5, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 625
    iget-object v5, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v6, 0x6

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 626
    .local v4, "_status":Z
    if-nez v4, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v5

    if-eqz v5, :cond_2c

    .line 627
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getFuelConsumption()J
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result-wide v2

    .line 633
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 636
    :goto_2b
    return-wide v2

    .line 629
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 630
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result-wide v2

    .line 633
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 633
    .end local v2    # "_result":J
    .end local v4    # "_status":Z
    :catchall_3a
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 635
    throw v5
.end method

.method public getFuelLevel()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 595
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 596
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 599
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 600
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x5

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 601
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 602
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getFuelLevel()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 608
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 611
    :goto_2b
    return v2

    .line 604
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 605
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 608
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 608
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 609
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 610
    throw v4
.end method

.method public getHardwareVersion()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 861
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 864
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 865
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 866
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 867
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getHardwareVersion()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 873
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 876
    :goto_2c
    return v2

    .line 869
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 870
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 873
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 873
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 874
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 875
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 490
    const-string v0, "com.pateo.tsp.adapter.CanbusAdapter"

    return-object v0
.end method

.method public getMaintenanceDays()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 718
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 719
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 722
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 723
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xa

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 724
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 725
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getMaintenanceDays()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 731
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 734
    :goto_2c
    return v2

    .line 727
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 728
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 731
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 731
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 732
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 733
    throw v4
.end method

.method public getMaintenanceDistance()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 695
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 696
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 699
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v5, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 700
    iget-object v5, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x9

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 701
    .local v4, "_status":Z
    if-nez v4, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 702
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getMaintenanceDistance()J
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-wide v2

    .line 708
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 711
    :goto_2c
    return-wide v2

    .line 704
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 705
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-wide v2

    .line 708
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 708
    .end local v2    # "_result":J
    .end local v4    # "_status":Z
    :catchall_3b
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 709
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 710
    throw v5
.end method

.method public getMaintenanceSign()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 742
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 743
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 746
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 747
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 748
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 749
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getMaintenanceSign()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 755
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 758
    :goto_2c
    return v2

    .line 751
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 752
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 755
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 755
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 756
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 757
    throw v4
.end method

.method public getPassengerNum()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 931
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 932
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 935
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 936
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x13

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 937
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 938
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getPassengerNum()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 944
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 947
    :goto_2c
    return v2

    .line 940
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 941
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 944
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 944
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 946
    throw v4
.end method

.method public getSignEcheance()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 766
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 767
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 770
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 771
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 772
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 773
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getSignEcheance()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 779
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 782
    :goto_2c
    return v2

    .line 775
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 776
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 779
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 779
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 780
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 781
    throw v4
.end method

.method public getSoftwareVersion()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 883
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 884
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 887
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 888
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x11

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 889
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 890
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getSoftwareVersion()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 896
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 899
    :goto_2c
    return v2

    .line 892
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 893
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 896
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 896
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 897
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 898
    throw v4
.end method

.method public getTotalDistance()J
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 670
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 671
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 674
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v5, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 675
    iget-object v5, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-interface {v5, v6, v0, v1, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    .line 676
    .local v4, "_status":Z
    if-nez v4, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v5

    if-eqz v5, :cond_2d

    .line 677
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v5

    invoke-interface {v5}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getTotalDistance()J
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result-wide v2

    .line 683
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 686
    :goto_2c
    return-wide v2

    .line 679
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 680
    invoke-virtual {v1}, Landroid/os/Parcel;->readLong()J
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result-wide v2

    .line 683
    .local v2, "_result":J
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 683
    .end local v2    # "_result":J
    .end local v4    # "_status":Z
    :catchall_3b
    move-exception v5

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 684
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 685
    throw v5
.end method

.method public getVehicleSpeed()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 908
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 909
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 912
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 913
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 914
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 915
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getVehicleSpeed()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 921
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 924
    :goto_2c
    return v2

    .line 917
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 918
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 921
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 921
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 922
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 923
    throw v4
.end method

.method public getVehicleState()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1003
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 1004
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 1007
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 1008
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x16

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 1009
    .local v3, "_status":Z
    if-nez v3, :cond_2d

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2d

    .line 1010
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getVehicleState()I
    :try_end_25
    .catchall {:try_start_8 .. :try_end_25} :catchall_3b

    move-result v2

    .line 1016
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1019
    :goto_2c
    return v2

    .line 1012
    :cond_2d
    :try_start_2d
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 1013
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_33
    .catchall {:try_start_2d .. :try_end_33} :catchall_3b

    move-result v2

    .line 1016
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2c

    .line 1016
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3b
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 1017
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 1018
    throw v4
.end method

.method public getWaterTemperature()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 575
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 576
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 577
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 578
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->getWaterTemperature()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 584
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 587
    :goto_2b
    return v2

    .line 580
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 581
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 584
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 584
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 585
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 586
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
    .line 497
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 498
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 501
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.CanbusAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 502
    iget-object v4, p0, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 503
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 504
    invoke-static {}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/CanbusAdapter;->init()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 510
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 513
    :goto_2b
    return v2

    .line 506
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 507
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 510
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 510
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 511
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 512
    throw v4
.end method
