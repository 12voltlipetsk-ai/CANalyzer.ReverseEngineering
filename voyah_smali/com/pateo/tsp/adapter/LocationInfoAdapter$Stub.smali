.class public abstract Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;
.super Landroid/os/Binder;
.source "LocationInfoAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/LocationInfoAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/LocationInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.adapter.LocationInfoAdapter"

.field static final TRANSACTION_destroy:I = 0x2

.field static final TRANSACTION_getCurrentLocation:I = 0x3

.field static final TRANSACTION_getGpsState:I = 0x5

.field static final TRANSACTION_getSatelliteNumber:I = 0x4

.field static final TRANSACTION_init:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 56
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 57
    const-string v0, "com.pateo.tsp.adapter.LocationInfoAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/LocationInfoAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 65
    if-nez p0, :cond_4

    .line 66
    const/4 v0, 0x0

    .line 72
    :goto_3
    return-object v0

    .line 68
    :cond_4
    const-string v1, "com.pateo.tsp.adapter.LocationInfoAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 69
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    if-eqz v1, :cond_13

    .line 70
    check-cast v0, Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    goto :goto_3

    .line 72
    :cond_13
    new-instance v0, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/adapter/LocationInfoAdapter;
    .registers 1

    .prologue
    .line 290
    sget-object v0, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    .prologue
    .line 283
    sget-object v0, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 284
    sput-object p0, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    .line 285
    const/4 v0, 0x1

    .line 287
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
    .line 76
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

    .line 80
    const-string v1, "com.pateo.tsp.adapter.LocationInfoAdapter"

    .line 81
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_60

    .line 136
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 85
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 90
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->init()I

    move-result v0

    .line 92
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 93
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 98
    .end local v0    # "_result":I
    :sswitch_1d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->destroy()I

    move-result v0

    .line 100
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 106
    .end local v0    # "_result":I
    :sswitch_2b
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->getCurrentLocation()Lcom/pateo/tsp/adapter/NaviLocationInfo;

    move-result-object v0

    .line 108
    .local v0, "_result":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 109
    if-eqz v0, :cond_3e

    .line 110
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    invoke-virtual {v0, p3, v2}, Lcom/pateo/tsp/adapter/NaviLocationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_a

    .line 114
    :cond_3e
    const/4 v3, 0x0

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 120
    .end local v0    # "_result":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    :sswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->getSatelliteNumber()I

    move-result v0

    .line 122
    .local v0, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 123
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 128
    .end local v0    # "_result":I
    :sswitch_51
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->getGpsState()I

    move-result v0

    .line 130
    .restart local v0    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 81
    nop

    :sswitch_data_60
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2b
        0x4 -> :sswitch_43
        0x5 -> :sswitch_51
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
