.class public abstract Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;
.super Landroid/os/Binder;
.source "IPKICallback.java"

# interfaces
.implements Lcom/qinggan/qgsecurityservice/IPKICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/qgsecurityservice/IPKICallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.qgsecurityservice.IPKICallback"

.field static final TRANSACTION_onCertInited:I = 0x1

.field static final TRANSACTION_onCertRevoked:I = 0x2


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.qinggan.qgsecurityservice.IPKICallback"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/qgsecurityservice/IPKICallback;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 42
    if-nez p0, :cond_4

    .line 43
    const/4 v0, 0x0

    .line 49
    :goto_3
    return-object v0

    .line 45
    :cond_4
    const-string v1, "com.qinggan.qgsecurityservice.IPKICallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/qgsecurityservice/IPKICallback;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/qinggan/qgsecurityservice/IPKICallback;

    goto :goto_3

    .line 49
    :cond_13
    new-instance v0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/qinggan/qgsecurityservice/IPKICallback;
    .registers 1

    .prologue
    .line 158
    sget-object v0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKICallback;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/qinggan/qgsecurityservice/IPKICallback;)Z
    .registers 2
    .param p0, "impl"    # Lcom/qinggan/qgsecurityservice/IPKICallback;

    .prologue
    .line 151
    sget-object v0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKICallback;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 152
    sput-object p0, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/qgsecurityservice/IPKICallback;

    .line 153
    const/4 v0, 0x1

    .line 155
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
    .line 53
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
    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 57
    const-string v1, "com.qinggan.qgsecurityservice.IPKICallback"

    .line 58
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_32

    .line 85
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_b
    return v2

    .line 62
    :sswitch_c
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 67
    :sswitch_10
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1a

    move v0, v2

    .line 70
    .local v0, "_arg0":Z
    :cond_1a
    invoke-virtual {p0, v0}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->onCertInited(Z)V

    .line 71
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 76
    .end local v0    # "_arg0":Z
    :sswitch_21
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2b

    move v0, v2

    .line 79
    .restart local v0    # "_arg0":Z
    :cond_2b
    invoke-virtual {p0, v0}, Lcom/qinggan/qgsecurityservice/IPKICallback$Stub;->onCertRevoked(Z)V

    .line 80
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 58
    :sswitch_data_32
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_21
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
