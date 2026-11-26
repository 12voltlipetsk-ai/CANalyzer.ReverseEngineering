.class Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;
.super Ljava/lang/Object;
.source "PhoneAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/PhoneAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/adapter/PhoneAdapter;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 128
    iput-object p1, p0, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 129
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

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
    .line 166
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 167
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 170
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.PhoneAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 171
    iget-object v4, p0, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 172
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 173
    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/PhoneAdapter;->destroy()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 179
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    :goto_2b
    return v2

    .line 175
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 176
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 179
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 179
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 180
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 181
    throw v4
.end method

.method public dial(Ljava/lang/String;)I
    .registers 9
    .param p1, "number"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 191
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 192
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 195
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.PhoneAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 197
    iget-object v4, p0, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 198
    .local v3, "_status":Z
    if-nez v3, :cond_2f

    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 199
    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/pateo/tsp/adapter/PhoneAdapter;->dial(Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result v2

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    :goto_2e
    return v2

    .line 201
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 202
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result v2

    .line 205
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 205
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw v4
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 136
    const-string v0, "com.pateo.tsp.adapter.PhoneAdapter"

    return-object v0
.end method

.method public hangup()I
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 216
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 219
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.PhoneAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 220
    iget-object v4, p0, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 221
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 222
    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/PhoneAdapter;->hangup()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 228
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 231
    :goto_2b
    return v2

    .line 224
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 225
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 228
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 228
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 229
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 230
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
    .line 143
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 144
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 147
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.pateo.tsp.adapter.PhoneAdapter"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 148
    iget-object v4, p0, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 149
    .local v3, "_status":Z
    if-nez v3, :cond_2c

    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    if-eqz v4, :cond_2c

    .line 150
    invoke-static {}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->getDefaultImpl()Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v4

    invoke-interface {v4}, Lcom/pateo/tsp/adapter/PhoneAdapter;->init()I
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_3a

    move-result v2

    .line 156
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 159
    :goto_2b
    return v2

    .line 152
    :cond_2c
    :try_start_2c
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3a

    move-result v2

    .line 156
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2b

    .line 156
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3a
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 157
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 158
    throw v4
.end method
