.class Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;
.super Ljava/lang/Object;
.source "IPKICallback.java"

# interfaces
.implements Lcom/qinggan/qgsecurityservice/IPKICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKICallback;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    iput-object p1, p0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 95
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 98
    iget-object v0, p0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    const-string v0, "com.qinggan.qgsecurityservice.IPKICallback"

    return-object v0
.end method

.method public onCertInited(Z)V
    .registers 8
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 110
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 111
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 113
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_a
    const-string v5, "com.qinggan.qgsecurityservice.IPKICallback"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 114
    if-eqz p1, :cond_32

    :goto_11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 116
    .local v2, "_status":Z
    if-nez v2, :cond_34

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKICallback;

    move-result-object v3

    if-eqz v3, :cond_34

    .line 117
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKICallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qinggan/qgsecurityservice/IPKICallback;->onCertInited(Z)V
    :try_end_2b
    .catchall {:try_start_a .. :try_end_2b} :catchall_3e

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 126
    :goto_31
    return-void

    .end local v2    # "_status":Z
    :cond_32
    move v3, v4

    .line 114
    goto :goto_11

    .line 120
    .restart local v2    # "_status":Z
    :cond_34
    :try_start_34
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_37
    .catchall {:try_start_34 .. :try_end_37} :catchall_3e

    .line 123
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    .line 123
    .end local v2    # "_status":Z
    :catchall_3e
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 125
    throw v3
.end method

.method public onCertRevoked(Z)V
    .registers 8
    .param p1, "result"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 129
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 130
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 132
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_9
    const-string v4, "com.qinggan.qgsecurityservice.IPKICallback"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 133
    if-eqz p1, :cond_11

    const/4 v3, 0x1

    :cond_11
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    iget-object v3, p0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 135
    .local v2, "_status":Z
    if-nez v2, :cond_32

    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKICallback;

    move-result-object v3

    if-eqz v3, :cond_32

    .line 136
    invoke-static {}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKICallback;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qinggan/qgsecurityservice/IPKICallback;->onCertRevoked(Z)V
    :try_end_2b
    .catchall {:try_start_9 .. :try_end_2b} :catchall_3c

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 145
    :goto_31
    return-void

    .line 139
    :cond_32
    :try_start_32
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_3c

    .line 142
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_31

    .line 142
    .end local v2    # "_status":Z
    :catchall_3c
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 143
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 144
    throw v3
.end method
