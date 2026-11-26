.class Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;
.super Ljava/lang/Object;
.source "XCallHandler.java"

# interfaces
.implements Lcom/pateo/tsp/call/XCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/call/XCallHandler$Stub;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Proxy"
.end annotation


# static fields
.field public static sDefaultImpl:Lcom/pateo/tsp/call/XCallHandler;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method constructor <init>(Landroid/os/IBinder;)V
    .registers 2
    .param p1, "remote"    # Landroid/os/IBinder;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    iput-object p1, p0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 89
    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public getInterfaceDescriptor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 96
    const-string v0, "com.pateo.tsp.call.XCallHandler"

    return-object v0
.end method

.method public onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V
    .registers 9
    .param p1, "xcallObject"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "event"    # Lcom/pateo/tsp/call/XCallEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 101
    .local v0, "_data":Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 103
    .local v1, "_reply":Landroid/os/Parcel;
    :try_start_8
    const-string v3, "com.pateo.tsp.call.XCallHandler"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 104
    if-eqz p1, :cond_3f

    .line 105
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 106
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3}, Lcom/pateo/tsp/call/XCall;->writeToParcel(Landroid/os/Parcel;I)V

    .line 111
    :goto_17
    if-eqz p2, :cond_4c

    .line 112
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3}, Lcom/pateo/tsp/call/XCallEvent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 118
    :goto_21
    iget-object v3, p0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    .line 119
    .local v2, "_status":Z
    if-nez v2, :cond_51

    invoke-static {}, Lcom/pateo/tsp/call/XCallHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v3

    if-eqz v3, :cond_51

    .line 120
    invoke-static {}, Lcom/pateo/tsp/call/XCallHandler$Stub;->getDefaultImpl()Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v3

    invoke-interface {v3, p1, p2}, Lcom/pateo/tsp/call/XCallHandler;->onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V
    :try_end_38
    .catchall {:try_start_8 .. :try_end_38} :catchall_44

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 129
    :goto_3e
    return-void

    .line 109
    .end local v2    # "_status":Z
    :cond_3f
    const/4 v3, 0x0

    :try_start_40
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V
    :try_end_43
    .catchall {:try_start_40 .. :try_end_43} :catchall_44

    goto :goto_17

    .line 126
    :catchall_44
    move-exception v3

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 128
    throw v3

    .line 116
    :cond_4c
    const/4 v3, 0x0

    :try_start_4d
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_21

    .line 123
    .restart local v2    # "_status":Z
    :cond_51
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V
    :try_end_54
    .catchall {:try_start_4d .. :try_end_54} :catchall_44

    .line 126
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 127
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_3e
.end method
