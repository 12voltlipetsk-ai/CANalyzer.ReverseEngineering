.class public abstract Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;
.super Landroid/os/Binder;
.source "IPKIAidlInterface.java"

# interfaces
.implements Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.qgsecurityservice.IPKIAidlInterface"

.field static final TRANSACTION_CertApply:I = 0x1

.field static final TRANSACTION_certUpdate:I = 0x3

.field static final TRANSACTION_certrevoke:I = 0x4

.field static final TRANSACTION_readRPMB:I = 0x8

.field static final TRANSACTION_registerPKICallback:I = 0x5

.field static final TRANSACTION_requestCert:I = 0x2

.field static final TRANSACTION_unregisterPKICallback:I = 0x6

.field static final TRANSACTION_writeRPMB:I = 0x7


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 53
    const-string v0, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 54
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 61
    if-nez p0, :cond_4

    .line 62
    const/4 v0, 0x0

    .line 68
    :goto_3
    return-object v0

    .line 64
    :cond_4
    const-string v1, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 65
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    if-eqz v1, :cond_13

    .line 66
    check-cast v0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    goto :goto_3

    .line 68
    :cond_13
    new-instance v0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;
    .registers 1

    .prologue
    .line 372
    sget-object v0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;)Z
    .registers 2
    .param p0, "impl"    # Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    .prologue
    .line 365
    sget-object v0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 366
    sput-object p0, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    .line 367
    const/4 v0, 0x1

    .line 369
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
    .line 72
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 12
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
    const/4 v5, 0x1

    .line 76
    const-string v4, "com.qinggan.qgsecurityservice.IPKIAidlInterface"

    .line 77
    .local v4, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_a6

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_a
    return v5

    .line 81
    :sswitch_b
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 86
    :sswitch_f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->CertApply(Ljava/lang/String;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 97
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_21
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 102
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->requestCert(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 108
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_33
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 112
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 114
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->certUpdate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 116
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 121
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_arg2":Ljava/lang/String;
    :sswitch_49
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 125
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 126
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->certrevoke(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 132
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_5b
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 134
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/qgsecurityservice/IPKICallback;

    move-result-object v0

    .line 135
    .local v0, "_arg0":Lcom/qinggan/qgsecurityservice/IPKICallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->registerPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V

    .line 136
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 141
    .end local v0    # "_arg0":Lcom/qinggan/qgsecurityservice/IPKICallback;
    :sswitch_6d
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v6

    invoke-static {v6}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/qgsecurityservice/IPKICallback;

    move-result-object v0

    .line 144
    .restart local v0    # "_arg0":Lcom/qinggan/qgsecurityservice/IPKICallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->unregisterPKICallback(Lcom/qinggan/qgsecurityservice/IPKICallback;)V

    .line 145
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 150
    .end local v0    # "_arg0":Lcom/qinggan/qgsecurityservice/IPKICallback;
    :sswitch_7f
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 155
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->writeRPMB(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 161
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_92
    invoke-virtual {p2, v4}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface$Stub;->readRPMB(Ljava/lang/String;)[B

    move-result-object v3

    .line 165
    .local v3, "_result":[B
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeByteArray([B)V

    goto/16 :goto_a

    .line 77
    nop

    :sswitch_data_a6
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_21
        0x3 -> :sswitch_33
        0x4 -> :sswitch_49
        0x5 -> :sswitch_5b
        0x6 -> :sswitch_6d
        0x7 -> :sswitch_7f
        0x8 -> :sswitch_92
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
