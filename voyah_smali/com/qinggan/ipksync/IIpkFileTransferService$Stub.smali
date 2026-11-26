.class public abstract Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;
.super Landroid/os/Binder;
.source "IIpkFileTransferService.java"

# interfaces
.implements Lcom/qinggan/ipksync/IIpkFileTransferService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IIpkFileTransferService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkFileTransferService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.ipksync.IIpkFileTransferService"

.field static final TRANSACTION_isInitUpdate:I = 0x4

.field static final TRANSACTION_setCallbackListener:I = 0x3

.field static final TRANSACTION_startUpload:I = 0x1

.field static final TRANSACTION_stopUpload:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qinggan.ipksync.IIpkFileTransferService"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkFileTransferService;
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
    const-string v1, "com.qinggan.ipksync.IIpkFileTransferService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/ipksync/IIpkFileTransferService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qinggan/ipksync/IIpkFileTransferService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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

    .line 38
    const-string v2, "com.qinggan.ipksync.IIpkFileTransferService"

    .line 39
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_4c

    .line 81
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 43
    :sswitch_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 48
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;->startUpload(Ljava/lang/String;)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 57
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 58
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;->stopUpload()V

    .line 59
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 64
    :sswitch_27
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkUpdataCallback;

    move-result-object v0

    .line 67
    .local v0, "_arg0":Lcom/qinggan/ipksync/IIpkUpdataCallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;->setCallbackListener(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 73
    .end local v0    # "_arg0":Lcom/qinggan/ipksync/IIpkUpdataCallback;
    :sswitch_39
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;->isInitUpdate()Z

    move-result v1

    .line 75
    .local v1, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    if-eqz v1, :cond_4a

    move v3, v4

    :goto_46
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    :cond_4a
    const/4 v3, 0x0

    goto :goto_46

    .line 39
    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_27
        0x4 -> :sswitch_39
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
