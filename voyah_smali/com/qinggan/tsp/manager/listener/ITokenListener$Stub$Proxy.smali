.class Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITokenListener.java"

# interfaces
.implements Lcom/qinggan/tsp/manager/listener/ITokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qinggan/tsp/manager/listener/ITokenListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    iput-object p1, p0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 86
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 93
    const-string v0, "com.qinggan.tsp.manager.listener.ITokenListener"

    return-object v0
.end method

.method public onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 8
    .param p1, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 97
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 98
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 100
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.tsp.manager.listener.ITokenListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 101
    if-eqz p1, :cond_35

    .line 102
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/qinggan/tsp/models/TokenBean;->writeToParcel(Landroid/os/Parcel;I)V

    .line 108
    :goto_17
    iget-object v3, p0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 109
    .local v2, "_status":Z
    if-nez v2, :cond_42

    invoke-static {}, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;->getDefaultImpl()Lcom/qinggan/tsp/manager/listener/ITokenListener;

    move-result-object v3

    if-eqz v3, :cond_42

    .line 110
    invoke-static {}, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;->getDefaultImpl()Lcom/qinggan/tsp/manager/listener/ITokenListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qinggan/tsp/manager/listener/ITokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V
    :try_end_2e
    .catchall {:try_start_8 .. :try_end_2e} :catchall_3a

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 119
    :goto_34
    return-void

    .line 106
    .end local v2    # "_status":Z
    :cond_35
    const/4 v3, 0x0

    :try_start_36
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_3a

    goto :goto_17

    .line 116
    :catchall_3a
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 118
    throw v3

    .line 113
    .restart local v2    # "_status":Z
    :cond_42
    :try_start_42
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_3a

    .line 116
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 117
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_34
.end method
