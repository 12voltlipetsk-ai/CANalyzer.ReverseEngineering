.class public abstract Lcom/pateo/tsp/ITSPListener$Stub;
.super Landroid/os/Binder;
.source "ITSPListener.java"

# interfaces
.implements Lcom/pateo/tsp/ITSPListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/ITSPListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/ITSPListener$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.ITSPListener"

.field static final TRANSACTION_onTSPImplReady:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.pateo.tsp.ITSPListener"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/ITSPListener$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/ITSPListener;
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
    const-string v1, "com.pateo.tsp.ITSPListener"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/ITSPListener;

    if-eqz v1, :cond_13

    .line 42
    check-cast v0, Lcom/pateo/tsp/ITSPListener;

    goto :goto_3

    .line 44
    :cond_13
    new-instance v0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/ITSPListener;
    .registers 1

    .prologue
    .line 117
    sget-object v0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/ITSPListener;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/ITSPListener;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/ITSPListener;

    .prologue
    .line 110
    sget-object v0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/ITSPListener;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 111
    sput-object p0, Lcom/pateo/tsp/ITSPListener$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/ITSPListener;

    .line 112
    const/4 v0, 0x1

    .line 114
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
    .registers 7
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
    const/4 v1, 0x1

    .line 52
    const-string v0, "com.pateo.tsp.ITSPListener"

    .line 53
    .local v0, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_1a

    .line 69
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_a
    return v1

    .line 57
    :sswitch_b
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 62
    :sswitch_f
    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPListener$Stub;->onTSPImplReady()V

    .line 64
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 53
    nop

    :sswitch_data_1a
    .sparse-switch
        0x1 -> :sswitch_f
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
