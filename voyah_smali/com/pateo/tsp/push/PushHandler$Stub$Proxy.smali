.class Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;
.super Ljava/lang/Object;
.source "PushHandler.java"

# interfaces
.implements Lcom/pateo/tsp/push/PushHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushHandler$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/push/PushHandler;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 148
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 149
    iput-object p1, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 150
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 157
    const-string v0, "com.pateo.tsp.push.PushHandler"

    return-object v0
.end method

.method public onPushGuidance(Lcom/pateo/tsp/push/PushGuidance;)V
    .registers 8
    .param p1, "guidance"    # Lcom/pateo/tsp/push/PushGuidance;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 187
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 189
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.push.PushHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 190
    if-eqz p1, :cond_35

    .line 191
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 192
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/pateo/tsp/push/PushGuidance;->writeToParcel(Landroid/os/Parcel;I)V

    .line 197
    :goto_17
    iget-object v3, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 198
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 199
    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/push/PushHandler;->onPushGuidance(Lcom/pateo/tsp/push/PushGuidance;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 208
    :goto_34
    return-void

    .line 195
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 205
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 207
    throw v3

    .line 202
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3a

    .line 205
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 206
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34
.end method

.method public onPushMessage(Lcom/pateo/tsp/push/PushMessage;)V
    .registers 8
    .param p1, "message"    # Lcom/pateo/tsp/push/PushMessage;
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
    const-string v3, "com.pateo.tsp.push.PushHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 240
    if-eqz p1, :cond_35

    .line 241
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 242
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/pateo/tsp/push/PushMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 247
    :goto_17
    iget-object v3, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 248
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 249
    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/push/PushHandler;->onPushMessage(Lcom/pateo/tsp/push/PushMessage;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 258
    :goto_34
    return-void

    .line 245
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 255
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 257
    throw v3

    .line 252
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3a

    .line 255
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 256
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34
.end method

.method public onPushPoi(Lcom/pateo/tsp/push/PushPoi;)V
    .registers 8
    .param p1, "poi"    # Lcom/pateo/tsp/push/PushPoi;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 161
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 162
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.push.PushHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    if-eqz p1, :cond_35

    .line 166
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/pateo/tsp/push/PushPoi;->writeToParcel(Landroid/os/Parcel;I)V

    .line 172
    :goto_17
    iget-object v3, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 173
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 174
    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/push/PushHandler;->onPushPoi(Lcom/pateo/tsp/push/PushPoi;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 183
    :goto_34
    return-void

    .line 170
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 180
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 182
    throw v3

    .line 177
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3a

    .line 180
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 181
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34
.end method

.method public onPushStringMessage(Lcom/qinggan/tsp/push/PushStringMessage;)V
    .registers 8
    .param p1, "message"    # Lcom/qinggan/tsp/push/PushStringMessage;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 262
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 264
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.push.PushHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 265
    if-eqz p1, :cond_35

    .line 266
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 267
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qinggan/tsp/push/PushStringMessage;->writeToParcel(Landroid/os/Parcel;I)V

    .line 272
    :goto_17
    iget-object v3, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 273
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 274
    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/push/PushHandler;->onPushStringMessage(Lcom/qinggan/tsp/push/PushStringMessage;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 283
    :goto_34
    return-void

    .line 270
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 280
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 282
    throw v3

    .line 277
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3a

    .line 280
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 281
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34
.end method

.method public onPushUrlBack(Lcom/pateo/tsp/push/PushUrlBack;)V
    .registers 8
    .param p1, "urlBack"    # Lcom/pateo/tsp/push/PushUrlBack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 211
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 212
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 214
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.push.PushHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 215
    if-eqz p1, :cond_35

    .line 216
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 217
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/pateo/tsp/push/PushUrlBack;->writeToParcel(Landroid/os/Parcel;I)V

    .line 222
    :goto_17
    iget-object v3, p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 223
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 224
    invoke-static {}, Lcom/pateo/tsp/push/PushHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/pateo/tsp/push/PushHandler;->onPushUrlBack(Lcom/pateo/tsp/push/PushUrlBack;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 233
    :goto_34
    return-void

    .line 220
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 230
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 232
    throw v3

    .line 227
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3a

    .line 230
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 231
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34
.end method
