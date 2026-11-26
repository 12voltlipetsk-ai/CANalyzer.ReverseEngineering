.class public abstract Lcom/qinggan/ipksync/IIpkLogCallback$Stub;
.super Landroid/os/Binder;
.source "IIpkLogCallback.java"

# interfaces
.implements Lcom/qinggan/ipksync/IIpkLogCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IIpkLogCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkLogCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.ipksync.IIpkLogCallback"

.field static final TRANSACTION_onExtractIpkLogState:I = 0x1

.field static final TRANSACTION_onExtractLogProgress:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.qinggan.ipksync.IIpkLogCallback"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/ipksync/IIpkLogCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkLogCallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 25
    if-nez p0, :cond_4

    .line 26
    const/4 v0, 0x0

    .line 32
    :goto_3
    return-object v0

    .line 28
    :cond_4
    const-string v1, "com.qinggan.ipksync.IIpkLogCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/ipksync/IIpkLogCallback;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/qinggan/ipksync/IIpkLogCallback;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/qinggan/ipksync/IIpkLogCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IIpkLogCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 36
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
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

    .line 40
    const-string v1, "com.qinggan.ipksync.IIpkLogCallback"

    .line 41
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_2c

    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 45
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 50
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 53
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkLogCallback$Stub;->onExtractIpkLogState(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 62
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkLogCallback$Stub;->onExtractLogProgress(I)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 41
    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
