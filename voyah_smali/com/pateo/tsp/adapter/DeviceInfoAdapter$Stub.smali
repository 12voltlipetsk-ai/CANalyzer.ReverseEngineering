.class public abstract Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;
.super Landroid/os/Binder;
.source "DeviceInfoAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/DeviceInfoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.adapter.DeviceInfoAdapter"

.field static final TRANSACTION_destroy:I = 0x2

.field static final TRANSACTION_getICCID:I = 0x6

.field static final TRANSACTION_getIMEI:I = 0x5

.field static final TRANSACTION_getIMSI:I = 0x3

.field static final TRANSACTION_getMssidn:I = 0x7

.field static final TRANSACTION_getPDSN:I = 0x8

.field static final TRANSACTION_getVIN:I = 0x4

.field static final TRANSACTION_init:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 77
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 78
    const-string v0, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 86
    if-nez p0, :cond_4

    .line 87
    const/4 v0, 0x0

    .line 93
    :goto_3
    return-object v0

    .line 89
    :cond_4
    const-string v1, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 90
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    if-eqz v1, :cond_13

    .line 91
    check-cast v0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    goto :goto_3

    .line 93
    :cond_13
    new-instance v0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
    .registers 1

    .prologue
    .line 396
    sget-object v0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    .prologue
    .line 389
    sget-object v0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 390
    sput-object p0, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    .line 391
    const/4 v0, 0x1

    .line 393
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
    .line 97
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

    .line 101
    const-string v1, "com.pateo.tsp.adapter.DeviceInfoAdapter"

    .line 102
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_80

    .line 175
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 106
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 111
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->init()I

    move-result v0

    .line 113
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 119
    .end local v0    # "_result":I
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->destroy()I

    move-result v0

    .line 121
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 122
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 127
    .end local v0    # "_result":I
    :sswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getIMSI()Ljava/lang/String;

    move-result-object v0

    .line 129
    .local v0, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 130
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 135
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_39
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getVIN()Ljava/lang/String;

    move-result-object v0

    .line 137
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 138
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 143
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_47
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getIMEI()Ljava/lang/String;

    move-result-object v0

    .line 145
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 151
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_55
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getICCID()Ljava/lang/String;

    move-result-object v0

    .line 153
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 159
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_63
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getMssidn()Ljava/lang/String;

    move-result-object v0

    .line 161
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 167
    .end local v0    # "_result":Ljava/lang/String;
    :sswitch_71
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->getPDSN()Ljava/lang/String;

    move-result-object v0

    .line 169
    .restart local v0    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 102
    nop

    :sswitch_data_80
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_39
        0x5 -> :sswitch_47
        0x6 -> :sswitch_55
        0x7 -> :sswitch_63
        0x8 -> :sswitch_71
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
