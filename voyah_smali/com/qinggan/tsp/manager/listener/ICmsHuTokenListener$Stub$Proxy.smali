.class Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ICmsHuTokenListener.java"

# interfaces
.implements Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 81
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 88
    const-string v0, "com.qinggan.tsp.manager.listener.ICmsHuTokenListener"

    return-object v0
.end method

.method public onCmsHuTokenUpdate(Ljava/lang/String;)V
    .registers 8
    .param p1, "huToken"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 93
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 95
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.qinggan.tsp.manager.listener.ICmsHuTokenListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 96
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 97
    iget-object v3, p0, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 98
    .local v2, "_status":Z
    if-nez v2, :cond_2e

    invoke-static {}, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub;->getDefaultImpl()Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;

    move-result-object v3

    if-eqz v3, :cond_2e

    .line 99
    invoke-static {}, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub;->getDefaultImpl()Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;->onCmsHuTokenUpdate(Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_38

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 108
    :goto_2d
    return-void

    .line 102
    :cond_2e
    :try_start_2e
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_38

    .line 105
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2d

    .line 105
    .end local v2    # "_status":Z
    :catchall_38
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 107
    throw v3
.end method
