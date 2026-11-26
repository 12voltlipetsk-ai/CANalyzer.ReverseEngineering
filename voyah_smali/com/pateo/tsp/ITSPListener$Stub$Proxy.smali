.class Lcom/pateo/tsp/ITSPListener$Stub$Proxy;
.super Ljava/lang/Object;
.source "ITSPListener.java"

# interfaces
.implements Lcom/pateo/tsp/ITSPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/ITSPListener$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/ITSPListener;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 79
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    const-string v0, "com.pateo.tsp.ITSPListener"

    return-object v0
.end method

.method public onTSPImplReady()V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 90
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 91
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 93
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.ITSPListener"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 95
    .local v2, "_status":Z
    if-nez v2, :cond_2b

    invoke-static {}, Lcom/pateo/tsp/ITSPListener$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPListener;

    move-result-object v3

    if-eqz v3, :cond_2b

    .line 96
    invoke-static {}, Lcom/pateo/tsp/ITSPListener$Stub;->getDefaultImpl()Lcom/pateo/tsp/ITSPListener;

    move-result-object v3

    invoke-interface {v3}, Lcom/pateo/tsp/ITSPListener;->onTSPImplReady()V
    :try_end_24
    .catchall {:try_start_8 .. :try_end_24} :catchall_35

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 105
    :goto_2a
    return-void

    .line 99
    :cond_2b
    :try_start_2b
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_2e
    .catchall {:try_start_2b .. :try_end_2e} :catchall_35

    .line 102
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2a

    .line 102
    .end local v2    # "_status":Z
    :catchall_35
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 103
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 104
    throw v3
.end method
