.class public abstract Lcom/qinggan/ipksync/IIpkLogService$Stub;
.super Landroid/os/Binder;
.source "IIpkLogService.java"

# interfaces
.implements Lcom/qinggan/ipksync/IIpkLogService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IIpkLogService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkLogService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.ipksync.IIpkLogService"

.field static final TRANSACTION_exitExtractIpkLog:I = 0x2

.field static final TRANSACTION_setIpkLogCallback:I = 0x3

.field static final TRANSACTION_startExtractIpkLog:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qinggan.ipksync.IIpkLogService"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/ipksync/IIpkLogService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkLogService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 23
    if-nez p0, :cond_4

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_3
    return-object v0

    .line 26
    :cond_4
    const-string v1, "com.qinggan.ipksync.IIpkLogService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/ipksync/IIpkLogService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qinggan/ipksync/IIpkLogService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/qinggan/ipksync/IIpkLogService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IIpkLogService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 34
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

    .line 38
    const-string v1, "com.qinggan.ipksync.IIpkLogService"

    .line 39
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_36

    .line 71
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 43
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 48
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkLogService$Stub;->startExtractIpkLog()V

    .line 50
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 55
    :sswitch_19
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 56
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkLogService$Stub;->exitExtractIpkLog()V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 62
    :sswitch_23
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/ipksync/IIpkLogCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkLogCallback;

    move-result-object v0

    .line 65
    .local v0, "_arg0":Lcom/qinggan/ipksync/IIpkLogCallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkLogService$Stub;->setIpkLogCallback(Lcom/qinggan/ipksync/IIpkLogCallback;)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 39
    nop

    :sswitch_data_36
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_19
        0x3 -> :sswitch_23
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
