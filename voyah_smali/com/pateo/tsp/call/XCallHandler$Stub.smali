.class public abstract Lcom/pateo/tsp/call/XCallHandler$Stub;
.super Landroid/os/Binder;
.source "XCallHandler.java"

# interfaces
.implements Lcom/pateo/tsp/call/XCallHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/call/XCallHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.call.XCallHandler"

.field static final TRANSACTION_onEvent:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 24
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 25
    const-string v0, "com.pateo.tsp.call.XCallHandler"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/call/XCallHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 26
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 33
    if-nez p0, :cond_4

    .line 34
    const/4 v0, 0x0

    .line 40
    :goto_3
    return-object v0

    .line 36
    :cond_4
    const-string v1, "com.pateo.tsp.call.XCallHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 37
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/call/XCallHandler;

    if-eqz v1, :cond_13

    .line 38
    check-cast v0, Lcom/pateo/tsp/call/XCallHandler;

    goto :goto_3

    .line 40
    :cond_13
    new-instance v0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/call/XCallHandler;
    .registers 1

    .prologue
    .line 141
    sget-object v0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/call/XCallHandler;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/call/XCallHandler;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/call/XCallHandler;

    .prologue
    .line 134
    sget-object v0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/call/XCallHandler;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 135
    sput-object p0, Lcom/pateo/tsp/call/XCallHandler$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/call/XCallHandler;

    .line 136
    const/4 v0, 0x1

    .line 138
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
    .line 44
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 10
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
    const/4 v3, 0x1

    .line 48
    const-string v2, "com.pateo.tsp.call.XCallHandler"

    .line 49
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_3a

    .line 79
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 53
    :sswitch_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 58
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_35

    .line 61
    sget-object v4, Lcom/pateo/tsp/call/XCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/call/XCall;

    .line 67
    .local v0, "_arg0":Lcom/pateo/tsp/call/XCall;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_37

    .line 68
    sget-object v4, Lcom/pateo/tsp/call/XCallEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/pateo/tsp/call/XCallEvent;

    .line 73
    .local v1, "_arg1":Lcom/pateo/tsp/call/XCallEvent;
    :goto_2e
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/call/XCallHandler$Stub;->onEvent(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallEvent;)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 64
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    .end local v1    # "_arg1":Lcom/pateo/tsp/call/XCallEvent;
    :cond_35
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    goto :goto_20

    .line 71
    :cond_37
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/pateo/tsp/call/XCallEvent;
    goto :goto_2e

    .line 49
    nop

    :sswitch_data_3a
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
