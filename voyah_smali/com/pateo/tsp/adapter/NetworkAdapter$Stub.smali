.class public abstract Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;
.super Landroid/os/Binder;
.source "NetworkAdapter.java"

# interfaces
.implements Lcom/pateo/tsp/adapter/NetworkAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/NetworkAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.adapter.NetworkAdapter"

.field static final TRANSACTION_destroy:I = 0x2

.field static final TRANSACTION_getDNSAddress:I = 0xb

.field static final TRANSACTION_getDataNetworkState:I = 0xd

.field static final TRANSACTION_getGatewayAddress:I = 0xa

.field static final TRANSACTION_getInterfaceName:I = 0x8

.field static final TRANSACTION_getNetState:I = 0x5

.field static final TRANSACTION_getNetworkType:I = 0xc

.field static final TRANSACTION_getSessionState:I = 0x7

.field static final TRANSACTION_getSignalQuality:I = 0x6

.field static final TRANSACTION_goOffLine:I = 0x4

.field static final TRANSACTION_goOnLine:I = 0x3

.field static final TRANSACTION_init:I = 0x1

.field static final TRANSACTION_setAPN:I = 0x9


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 102
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 103
    const-string v0, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 104
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/NetworkAdapter;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 111
    if-nez p0, :cond_4

    .line 112
    const/4 v0, 0x0

    .line 118
    :goto_3
    return-object v0

    .line 114
    :cond_4
    const-string v1, "com.pateo.tsp.adapter.NetworkAdapter"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 115
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/adapter/NetworkAdapter;

    if-eqz v1, :cond_13

    .line 116
    check-cast v0, Lcom/pateo/tsp/adapter/NetworkAdapter;

    goto :goto_3

    .line 118
    :cond_13
    new-instance v0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/adapter/NetworkAdapter;
    .registers 1

    .prologue
    .line 578
    sget-object v0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/NetworkAdapter;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/adapter/NetworkAdapter;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/adapter/NetworkAdapter;

    .prologue
    .line 571
    sget-object v0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/NetworkAdapter;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 572
    sput-object p0, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/adapter/NetworkAdapter;

    .line 573
    const/4 v0, 0x1

    .line 575
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
    .line 122
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 11
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
    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 126
    const-string v3, "com.pateo.tsp.adapter.NetworkAdapter"

    .line 127
    .local v3, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_e0

    .line 245
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v5

    :goto_b
    return v5

    .line 131
    :sswitch_c
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 136
    :sswitch_10
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->init()I

    move-result v2

    .line 138
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 139
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 144
    .end local v2    # "_result":I
    :sswitch_1e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->destroy()I

    move-result v2

    .line 146
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 152
    .end local v2    # "_result":I
    :sswitch_2c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->goOnLine()Z

    move-result v2

    .line 154
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 155
    if-eqz v2, :cond_39

    move v4, v5

    :cond_39
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 160
    .end local v2    # "_result":Z
    :sswitch_3d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 161
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->goOffLine()Z

    move-result v2

    .line 162
    .restart local v2    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 163
    if-eqz v2, :cond_4a

    move v4, v5

    :cond_4a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 168
    .end local v2    # "_result":Z
    :sswitch_4e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getNetState()I

    move-result v2

    .line 170
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 171
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 176
    .end local v2    # "_result":I
    :sswitch_5c
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getSignalQuality()I

    move-result v2

    .line 178
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 179
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 184
    .end local v2    # "_result":I
    :sswitch_6a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getSessionState()Z

    move-result v2

    .line 186
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 187
    if-eqz v2, :cond_77

    move v4, v5

    :cond_77
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_b

    .line 192
    .end local v2    # "_result":Z
    :sswitch_7b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getInterfaceName()Ljava/lang/String;

    move-result-object v2

    .line 194
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 195
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 200
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_89
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 202
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->setAPN(Ljava/lang/String;)Z

    move-result v2

    .line 204
    .local v2, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 205
    if-eqz v2, :cond_9a

    move v4, v5

    :cond_9a
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 210
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Z
    :sswitch_9f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 211
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getGatewayAddress()Ljava/lang/String;

    move-result-object v2

    .line 212
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 213
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_b

    .line 218
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_ae
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 222
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 223
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDNSAddress(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 229
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_c1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getNetworkType()I

    move-result v2

    .line 231
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 237
    .end local v2    # "_result":I
    :sswitch_d0
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 238
    invoke-virtual {p0}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->getDataNetworkState()I

    move-result v2

    .line 239
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 240
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 127
    nop

    :sswitch_data_e0
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_4e
        0x6 -> :sswitch_5c
        0x7 -> :sswitch_6a
        0x8 -> :sswitch_7b
        0x9 -> :sswitch_89
        0xa -> :sswitch_9f
        0xb -> :sswitch_ae
        0xc -> :sswitch_c1
        0xd -> :sswitch_d0
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
