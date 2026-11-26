.class public abstract Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;
.super Landroid/os/Binder;
.source "ITokenListener.java"

# interfaces
.implements Lcom/qinggan/tsp/manager/listener/ITokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/listener/ITokenListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.tsp.manager.listener.ITokenListener"

.field static final TRANSACTION_onTokenUpdate:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.qinggan.tsp.manager.listener.ITokenListener"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/tsp/manager/listener/ITokenListener;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 37
    if-nez p0, :cond_4

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_3
    return-object v0

    .line 40
    :cond_4
    const-string v1, "com.qinggan.tsp.manager.listener.ITokenListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/tsp/manager/listener/ITokenListener;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Lcom/qinggan/tsp/manager/listener/ITokenListener;

    goto :goto_3

    .line 44
    :cond_13
    new-instance v0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/qinggan/tsp/manager/listener/ITokenListener;
    .registers 1

    .prologue
    .line 131
    sget-object v0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/tsp/manager/listener/ITokenListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/qinggan/tsp/manager/listener/ITokenListener;)Z
    .registers 2
    .param p0, "impl"    # Lcom/qinggan/tsp/manager/listener/ITokenListener;

    .prologue
    .line 124
    sget-object v0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/tsp/manager/listener/ITokenListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 125
    sput-object p0, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/tsp/manager/listener/ITokenListener;

    .line 126
    const/4 v0, 0x1

    .line 128
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 9
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 52
    const-string v1, "com.qinggan.tsp.manager.listener.ITokenListener"

    .line 53
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_2a

    .line 76
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 57
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 62
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    .line 65
    sget-object v3, Lcom/qinggan/tsp/models/TokenBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/models/TokenBean;

    .line 70
    .local v0, "_arg0":Lcom/qinggan/tsp/models/TokenBean;
    :goto_20
    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 68
    .end local v0    # "_arg0":Lcom/qinggan/tsp/models/TokenBean;
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/tsp/models/TokenBean;
    goto :goto_20

    .line 53
    nop

    :sswitch_data_2a
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
