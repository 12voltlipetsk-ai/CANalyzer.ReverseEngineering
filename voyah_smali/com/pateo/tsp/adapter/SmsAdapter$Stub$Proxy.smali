.class Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "SmsAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/SmsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/SmsAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/adapter/SmsAdapter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 129
    iput-object p1, p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 130
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public deleteAllSmsMsg()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 219
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 221
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.adapter.SmsAdapter"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 222
    iget-object v3, p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 223
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 224
    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v3

    invoke-interface {v3}, Lcom/pateo/tsp/adapter/SmsAdapter;->deleteAllSmsMsg()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_35

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    :goto_2a
    return-void

    .line 227
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2a

    .line 230
    .end local v2    # "_status":Z
    :catchall_35
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v3
.end method

.method public destroy()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 167
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 168
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 171
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.SmsAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 173
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 174
    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/SmsAdapter;->destroy()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    :goto_2b
    return v2

    .line 176
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 177
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 180
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 180
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 137
    const-string v0, "com.pateo.tsp.adapter.SmsAdapter"

    return-object v0
.end method

.method public init()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 145
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 148
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.SmsAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 149
    iget-object v4, p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 150
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 151
    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/SmsAdapter;->init()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 157
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 160
    :goto_2b
    return v2

    .line 153
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 154
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 157
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 157
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 158
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    throw v4
.end method

.method public sendMessage(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "phoneNumber"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 193
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 194
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 197
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.SmsAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 199
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 200
    iget-object v4, p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 201
    .local v3, "_status":Z
    if-nez v3, :cond_32

    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v4

    if-eqz v4, :cond_32

    .line 202
    invoke-static {}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v4

    invoke-interface {v4, p1, p2}, Lcom/pateo/tsp/adapter/SmsAdapter;->sendMessage(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2a
    .catchall {:try_start_8 .. :try_end_2a} :catchall_40

    move-result v2

    .line 208
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 211
    :goto_31
    return v2

    .line 204
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_38
    .catchall {:try_start_32 .. :try_end_38} :catchall_40

    move-result v2

    .line 208
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    .line 208
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_40
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 209
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 210
    throw v4
.end method
