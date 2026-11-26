.class Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPKIAidlInterface.java"

# interfaces
.implements Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    iput-object p1, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 181
    return-void
.end method


# virtual methods
.method public CertApply(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "VIN"    # Ljava/lang/String;
    .param p2, "PDSN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 196
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 197
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 199
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 200
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 202
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 203
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 204
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->CertApply(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 213
    :goto_30
    return-void

    .line 207
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    .line 210
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    .line 210
    .end local v2    # "_status":Z
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 211
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 212
    throw v3
.end method

.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 184
    iget-object v0, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public certUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p1, "vin"    # Ljava/lang/String;
    .param p2, "pdsn"    # Ljava/lang/String;
    .param p3, "certSn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 236
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 237
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 239
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 241
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 242
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 243
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 244
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 245
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2, p3}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->certUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_3e

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 254
    :goto_33
    return-void

    .line 248
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3e

    .line 251
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    .line 251
    .end local v2    # "_status":Z
    :catchall_3e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 252
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 253
    throw v3
.end method

.method public certrevoke(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "transId"    # Ljava/lang/String;
    .param p2, "certSn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 258
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 260
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 262
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 263
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 264
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 265
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->certrevoke(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 274
    :goto_30
    return-void

    .line 268
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    .line 271
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    .line 271
    .end local v2    # "_status":Z
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 272
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 273
    throw v3
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 188
    const-string v0, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    return-object v0
.end method

.method public readRPMB(Ljava/lang/String;)[B
    .registers 9
    .param p1, "FileTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 336
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 339
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 340
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 341
    iget-object v4, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 342
    .local v3, "_status":Z
    if-nez v3, :cond_30

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v4

    if-eqz v4, :cond_30

    .line 343
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->readRPMB(Ljava/lang/String;)[B
    :try_end_28
    .catchall {:try_start_8 .. :try_end_28} :catchall_3e

    move-result-object v2

    .line 349
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 352
    :goto_2f
    return-object v2

    .line 345
    :cond_30
    :try_start_30
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 346
    invoke-virtual {v1}, Landroid/os/Parcel;->createByteArray()[B
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_3e

    move-result-object v2

    .line 349
    .local v2, "_result":[B
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2f

    .line 349
    .end local v2    # "_result":[B
    .end local v3    # "_status":Z
    :catchall_3e
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 350
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 351
    throw v4
.end method

.method public registerPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V
    .registers 8
    .param p1, "cb"    # Lcom/qinggan/qgsecurityservice/IPKICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 277
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 278
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 280
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 281
    if-eqz p1, :cond_34

    invoke-interface {p1}, Lcom/qinggan/qgsecurityservice/IPKICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 282
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 283
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 284
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->registerPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_40

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 293
    :goto_33
    return-void

    .line 281
    .end local v2    # "_status":Z
    :cond_34
    const/4 v3, 0x0

    goto :goto_13

    .line 287
    .restart local v2    # "_status":Z
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 290
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    .line 290
    .end local v2    # "_status":Z
    :catchall_40
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 291
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 292
    throw v3
.end method

.method public requestCert(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "VIN"    # Ljava/lang/String;
    .param p2, "PDSN"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 216
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 217
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 223
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 224
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->requestCert(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    :goto_30
    return-void

    .line 227
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    .line 230
    .end local v2    # "_status":Z
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v3
.end method

.method public unregisterPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V
    .registers 8
    .param p1, "cb"    # Lcom/qinggan/qgsecurityservice/IPKICallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 297
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 299
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 300
    if-eqz p1, :cond_34

    invoke-interface {p1}, Lcom/qinggan/qgsecurityservice/IPKICallback;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_13
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 301
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 302
    .local v2, "_status":Z
    if-nez v2, :cond_36

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_36

    .line 303
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->unregisterPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V
    :try_end_2d
    .catchall {:try_start_8 .. :try_end_2d} :catchall_40

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 312
    :goto_33
    return-void

    .line 300
    .end local v2    # "_status":Z
    :cond_34
    const/4 v3, 0x0

    goto :goto_13

    .line 306
    .restart local v2    # "_status":Z
    :cond_36
    :try_start_36
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_40

    .line 309
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_33

    .line 309
    .end local v2    # "_status":Z
    :catchall_40
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 310
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 311
    throw v3
.end method

.method public writeRPMB(Ljava/lang/String;Ljava/lang/String;)V
    .registers 9
    .param p1, "FileTag"    # Ljava/lang/String;
    .param p2, "Filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 315
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 316
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 318
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 319
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 321
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 322
    .local v2, "_status":Z
    if-nez v2, :cond_31

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    if-eqz v3, :cond_31

    .line 323
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->writeRPMB(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_3b

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 332
    :goto_30
    return-void

    .line 326
    :cond_31
    :try_start_31
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_34
    .catchall {:try_start_31 .. :try_end_34} :catchall_3b

    .line 329
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_30

    .line 329
    .end local v2    # "_status":Z
    :catchall_3b
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 331
    throw v3
.end method
