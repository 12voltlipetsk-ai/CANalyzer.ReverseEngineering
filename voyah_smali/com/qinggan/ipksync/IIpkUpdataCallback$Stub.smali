.class public abstract Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;
.super Landroid/os/Binder;
.source "IIpkUpdataCallback.java"

# interfaces
.implements Lcom/qinggan/ipksync/IIpkUpdataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IIpkUpdataCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.ipksync.IIpkUpdataCallback"

.field static final TRANSACTION_onLogState:I = 0x4

.field static final TRANSACTION_onReqFile:I = 0x3

.field static final TRANSACTION_onUpgradeProgress:I = 0x5

.field static final TRANSACTION_onUploadProgress:I = 0x2

.field static final TRANSACTION_onUploadState:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 16
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 17
    const-string v0, "com.qinggan.ipksync.IIpkUpdataCallback"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 18
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkUpdataCallback;
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
    const-string v1, "com.qinggan.ipksync.IIpkUpdataCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 29
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/ipksync/IIpkUpdataCallback;

    if-eqz v1, :cond_13

    .line 30
    check-cast v0, Lcom/qinggan/ipksync/IIpkUpdataCallback;

    goto :goto_3

    .line 32
    :cond_13
    new-instance v0, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v4, 0x1

    .line 40
    const-string v1, "com.qinggan.ipksync.IIpkUpdataCallback"

    .line 41
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_5a

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

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
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->onUploadState(I)V

    .line 54
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 59
    .end local v0    # "_arg0":I
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 64
    .local v2, "_arg1":J
    invoke-virtual {p0, v0, v2, v3}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->onUploadProgress(Ljava/lang/String;J)V

    .line 65
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 70
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":J
    :sswitch_2f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 73
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->onReqFile(I)V

    .line 74
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 79
    .end local v0    # "_arg0":I
    :sswitch_3d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 81
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 82
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->onLogState(I)V

    .line 83
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 88
    .end local v0    # "_arg0":I
    :sswitch_4b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 91
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->onUpgradeProgress(I)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 41
    nop

    :sswitch_data_5a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_4b
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
