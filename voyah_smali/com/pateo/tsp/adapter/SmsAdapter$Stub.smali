.class public abstract Lcom/pateo/tsp/adapter/SmsAdapter$Stub;
.super Landroid/os/Binder;
.source "SmsAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/SmsAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/SmsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.adapter.SmsAdapter"

.field static final TRANSACTION_deleteAllSmsMsg:I = 0x4

.field static final TRANSACTION_destroy:I = 0x2

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_sendMessage:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 51
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 52
    const-string v0, "com.pateo.tsp.adapter.SmsAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/SmsAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 60
    if-nez p0, :cond_4

    .line 61
    const/4 v0, 0x0

    .line 67
    :goto_3
    return-object v0

    .line 63
    :cond_4
    const-string v1, "com.pateo.tsp.adapter.SmsAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 64
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/adapter/SmsAdapter;

    if-eqz v1, :cond_13

    .line 65
    check-cast v0, Lcom/pateo/tsp/adapter/SmsAdapter;

    goto :goto_3

    .line 67
    :cond_13
    new-instance v0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/adapter/SmsAdapter;
    .registers 1

    .prologue
    .line 248
    sget-object v0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/SmsAdapter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/adapter/SmsAdapter;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/adapter/SmsAdapter;

    .prologue
    .line 241
    sget-object v0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/SmsAdapter;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 242
    sput-object p0, Lcom/pateo/tsp/adapter/SmsAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/SmsAdapter;

    .line 243
    const/4 v0, 0x1

    .line 245
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
    .line 71
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

    .line 75
    const-string v3, "com.pateo.tsp.adapter.SmsAdapter"

    .line 76
    .local v3, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_4c

    .line 120
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 80
    :sswitch_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 85
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->init()I

    move-result v2

    .line 87
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 88
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 93
    .end local v2    # "_result":I
    :sswitch_1d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->destroy()I

    move-result v2

    .line 95
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 96
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 101
    .end local v2    # "_result":I
    :sswitch_2b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 106
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->sendMessage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 107
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 108
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 113
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_41
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->deleteAllSmsMsg()V

    .line 115
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 76
    nop

    :sswitch_data_4c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_41
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
