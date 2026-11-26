.class Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;
.super Ljava/lang/Object;
.source "IAnalyticsService.java"

# interfaces
.implements Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 107
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 114
    const-string v0, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    return-object v0
.end method

.method public sendGzipMessage(Ljava/lang/String;)I
    .registers 9
    .param p1, "gzipMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 139
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 140
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 143
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 144
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object v4, p0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 146
    .local v3, "_status":Z
    if-nez v3, :cond_2f

    invoke-static {}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 147
    invoke-static {}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;->sendGzipMessage(Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result v2

    .line 153
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 156
    :goto_2e
    return v2

    .line 149
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 150
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result v2

    .line 153
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 153
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 154
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 155
    throw v4
.end method

.method public sendGzipMsgPath(Ljava/lang/String;)I
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 161
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 164
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 166
    iget-object v4, p0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 167
    .local v3, "_status":Z
    if-nez v3, :cond_2f

    invoke-static {}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 168
    invoke-static {}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;->sendGzipMsgPath(Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result v2

    .line 174
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 177
    :goto_2e
    return v2

    .line 170
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 171
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result v2

    .line 174
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 174
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 175
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 176
    throw v4
.end method

.method public sendMessage(Ljava/lang/String;)I
    .registers 9
    .param p1, "gsonMessage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 118
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 119
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 122
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v4, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v4, p0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v1, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    .line 125
    .local v3, "_status":Z
    if-nez v3, :cond_2f

    invoke-static {}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    move-result-object v4

    if-eqz v4, :cond_2f

    .line 126
    invoke-static {}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;->sendMessage(Ljava/lang/String;)I
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_3d

    move-result v2

    .line 132
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 135
    :goto_2e
    return v2

    .line 128
    :cond_2f
    :try_start_2f
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 129
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I
    :try_end_35
    .catchall {:try_start_2f .. :try_end_35} :catchall_3d

    move-result v2

    .line 132
    .local v2, "_result":I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2e

    .line 132
    .end local v2    # "_result":I
    .end local v3    # "_status":Z
    :catchall_3d
    move-exception v4

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 133
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 134
    throw v4
.end method
