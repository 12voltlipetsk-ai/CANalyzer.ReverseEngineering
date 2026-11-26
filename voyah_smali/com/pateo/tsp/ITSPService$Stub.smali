.class public abstract Lcom/pateo/tsp/ITSPService$Stub;
.super Landroid/os/Binder;
.source "ITSPService.java"

# interfaces
.implements Lcom/pateo/tsp/ITSPService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/ITSPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/ITSPService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.ITSPService"

.field static final TRANSACTION_cancelXCall:I = 0x2

.field static final TRANSACTION_getRemoteConfigItem:I = 0x1c

.field static final TRANSACTION_getRemoteConfigItemFromConfig:I = 0x1d

.field static final TRANSACTION_nativeDial:I = 0x22

.field static final TRANSACTION_nativeGetCurrentLocation:I = 0x27

.field static final TRANSACTION_nativeGetIMEI:I = 0x24

.field static final TRANSACTION_nativeGetIMSI:I = 0x23

.field static final TRANSACTION_nativeGetPDSN:I = 0x25

.field static final TRANSACTION_nativeGetRemoteConfigPath:I = 0x26

.field static final TRANSACTION_nativeIsNetworkAvailable:I = 0x2a

.field static final TRANSACTION_nativeRemoveLocationListener:I = 0x29

.field static final TRANSACTION_nativeSendMessage:I = 0x20

.field static final TRANSACTION_nativeSetLocationListener:I = 0x28

.field static final TRANSACTION_nativeSetSmsReceiverListener:I = 0x21

.field static final TRANSACTION_onCanbusStateChanged:I = 0x18

.field static final TRANSACTION_onGpsStateChanged:I = 0x1b

.field static final TRANSACTION_onLocationChanged:I = 0x1a

.field static final TRANSACTION_onNetworkStateChanged:I = 0x15

.field static final TRANSACTION_onPhoneStateChanged:I = 0x13

.field static final TRANSACTION_onSmsReceived:I = 0x11

.field static final TRANSACTION_onSmsSendResult:I = 0x10

.field static final TRANSACTION_registerAutoECallHandler:I = 0x5

.field static final TRANSACTION_registerCallHandler:I = 0x3

.field static final TRANSACTION_registerPushHandler:I = 0x7

.field static final TRANSACTION_removeTSPListener:I = 0xa

.field static final TRANSACTION_setCanbusAdapter:I = 0x17

.field static final TRANSACTION_setCmsHuToken:I = 0xd

.field static final TRANSACTION_setCmsHuTokenListener:I = 0xe

.field static final TRANSACTION_setDeviceInfoAdapter:I = 0x16

.field static final TRANSACTION_setGlobalToken:I = 0xc

.field static final TRANSACTION_setGlobalTokenListener:I = 0xb

.field static final TRANSACTION_setLocationInfoAdapter:I = 0x19

.field static final TRANSACTION_setNetworkAdapter:I = 0x14

.field static final TRANSACTION_setPhoneAdapter:I = 0x12

.field static final TRANSACTION_setSmsAdapter:I = 0xf

.field static final TRANSACTION_setTSPListener:I = 0x9

.field static final TRANSACTION_startXCall:I = 0x1

.field static final TRANSACTION_subscribeTopic:I = 0x1e

.field static final TRANSACTION_unSubscribeTopic:I = 0x1f

.field static final TRANSACTION_unregisterAutoECallHandler:I = 0x6

.field static final TRANSACTION_unregisterCallHandler:I = 0x4

.field static final TRANSACTION_unregisterPushHandler:I = 0x8


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 181
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 182
    const-string v0, "com.pateo.tsp.ITSPService"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 183
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/ITSPService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 190
    if-nez p0, :cond_4

    .line 191
    const/4 v0, 0x0

    .line 197
    :goto_3
    return-object v0

    .line 193
    :cond_4
    const-string v1, "com.pateo.tsp.ITSPService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 194
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_13

    .line 195
    check-cast v0, Lcom/pateo/tsp/ITSPService;

    goto :goto_3

    .line 197
    :cond_13
    new-instance v0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/ITSPService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/ITSPService;
    .registers 1

    .prologue
    .line 1628
    sget-object v0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/ITSPService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/ITSPService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/ITSPService;

    .prologue
    .line 1621
    sget-object v0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/ITSPService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 1622
    sput-object p0, Lcom/pateo/tsp/ITSPService$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/ITSPService;

    .line 1623
    const/4 v0, 0x1

    .line 1625
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
    .line 201
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
    const/4 v4, 0x1

    .line 205
    const-string v3, "com.pateo.tsp.ITSPService"

    .line 206
    .local v3, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_394

    .line 660
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_a
    return v4

    .line 210
    :sswitch_b
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 215
    :sswitch_f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_33

    .line 218
    sget-object v5, Lcom/pateo/tsp/call/XCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/call/XCall;

    .line 224
    .local v0, "_arg0":Lcom/pateo/tsp/call/XCall;
    :goto_20
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/call/XCallHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v1

    .line 225
    .local v1, "_arg1":Lcom/pateo/tsp/call/XCallHandler;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->startXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v2

    .line 226
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 227
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 221
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    .end local v1    # "_arg1":Lcom/pateo/tsp/call/XCallHandler;
    .end local v2    # "_result":I
    :cond_33
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    goto :goto_20

    .line 232
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    :sswitch_35
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_59

    .line 235
    sget-object v5, Lcom/pateo/tsp/call/XCall;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/call/XCall;

    .line 241
    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    :goto_46
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/call/XCallHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v1

    .line 242
    .restart local v1    # "_arg1":Lcom/pateo/tsp/call/XCallHandler;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->cancelXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v2

    .line 243
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 238
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    .end local v1    # "_arg1":Lcom/pateo/tsp/call/XCallHandler;
    .end local v2    # "_result":I
    :cond_59
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    goto :goto_46

    .line 249
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCall;
    :sswitch_5b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/call/XCallHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v0

    .line 252
    .local v0, "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->registerCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v2

    .line 253
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 259
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    .end local v2    # "_result":I
    :sswitch_71
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/call/XCallHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v0

    .line 262
    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->unregisterCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v2

    .line 263
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 269
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    .end local v2    # "_result":I
    :sswitch_87
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/call/XCallHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v0

    .line 272
    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->registerAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v2

    .line 273
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 279
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    .end local v2    # "_result":I
    :sswitch_9e
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/call/XCallHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/call/XCallHandler;

    move-result-object v0

    .line 282
    .restart local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->unregisterAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v2

    .line 283
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 289
    .end local v0    # "_arg0":Lcom/pateo/tsp/call/XCallHandler;
    .end local v2    # "_result":I
    :sswitch_b5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 291
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/push/PushHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/push/PushHandler;

    move-result-object v0

    .line 292
    .local v0, "_arg0":Lcom/pateo/tsp/push/PushHandler;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->registerPushHandler(Lcom/pateo/tsp/push/PushHandler;)I

    move-result v2

    .line 293
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 294
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 299
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushHandler;
    .end local v2    # "_result":I
    :sswitch_cc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/push/PushHandler$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/push/PushHandler;

    move-result-object v0

    .line 302
    .restart local v0    # "_arg0":Lcom/pateo/tsp/push/PushHandler;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->unregisterPushHandler(Lcom/pateo/tsp/push/PushHandler;)I

    move-result v2

    .line 303
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 304
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 309
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushHandler;
    .end local v2    # "_result":I
    :sswitch_e3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/ITSPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/ITSPListener;

    move-result-object v0

    .line 312
    .local v0, "_arg0":Lcom/pateo/tsp/ITSPListener;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setTSPListener(Lcom/pateo/tsp/ITSPListener;)V

    .line 313
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 318
    .end local v0    # "_arg0":Lcom/pateo/tsp/ITSPListener;
    :sswitch_f6
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/ITSPListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/ITSPListener;

    move-result-object v0

    .line 321
    .restart local v0    # "_arg0":Lcom/pateo/tsp/ITSPListener;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->removeTSPListener(Lcom/pateo/tsp/ITSPListener;)V

    .line 322
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 327
    .end local v0    # "_arg0":Lcom/pateo/tsp/ITSPListener;
    :sswitch_109
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 329
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/qinggan/tsp/manager/listener/ITokenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/tsp/manager/listener/ITokenListener;

    move-result-object v1

    .line 332
    .local v1, "_arg1":Lcom/qinggan/tsp/manager/listener/ITokenListener;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->setGlobalTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ITokenListener;)V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 338
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/qinggan/tsp/manager/listener/ITokenListener;
    :sswitch_120
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 340
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 342
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_13d

    .line 343
    sget-object v5, Lcom/qinggan/tsp/models/TokenBean;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qinggan/tsp/models/TokenBean;

    .line 348
    .local v1, "_arg1":Lcom/qinggan/tsp/models/TokenBean;
    :goto_135
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->setGlobalToken(Ljava/lang/String;Lcom/qinggan/tsp/models/TokenBean;)V

    .line 349
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 346
    .end local v1    # "_arg1":Lcom/qinggan/tsp/models/TokenBean;
    :cond_13d
    const/4 v1, 0x0

    .restart local v1    # "_arg1":Lcom/qinggan/tsp/models/TokenBean;
    goto :goto_135

    .line 354
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/qinggan/tsp/models/TokenBean;
    :sswitch_13f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 356
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 358
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 359
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->setCmsHuToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 360
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 365
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_152
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 369
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;

    move-result-object v1

    .line 370
    .local v1, "_arg1":Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->setCmsHuTokenListener(Ljava/lang/String;Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;)V

    .line 371
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 376
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Lcom/qinggan/tsp/manager/listener/ICmsHuTokenListener;
    :sswitch_169
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 378
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/adapter/SmsAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/SmsAdapter;

    move-result-object v0

    .line 379
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/SmsAdapter;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setSmsAdapter(Lcom/pateo/tsp/adapter/SmsAdapter;)I

    move-result v2

    .line 380
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 386
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/SmsAdapter;
    .end local v2    # "_result":I
    :sswitch_180
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 388
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 390
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 391
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->onSmsSendResult(Ljava/lang/String;I)I

    move-result v2

    .line 392
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 393
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 398
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_197
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 400
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 402
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 403
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->onSmsReceived(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 404
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 405
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 410
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_1ae
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/adapter/PhoneAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/PhoneAdapter;

    move-result-object v0

    .line 413
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/PhoneAdapter;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setPhoneAdapter(Lcom/pateo/tsp/adapter/PhoneAdapter;)I

    move-result v2

    .line 414
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 415
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 420
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/PhoneAdapter;
    .end local v2    # "_result":I
    :sswitch_1c5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 424
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 425
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->onPhoneStateChanged(Ljava/lang/String;I)I

    move-result v2

    .line 426
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 432
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_1dc
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/adapter/NetworkAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/NetworkAdapter;

    move-result-object v0

    .line 435
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/NetworkAdapter;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setNetworkAdapter(Lcom/pateo/tsp/adapter/NetworkAdapter;)I

    move-result v2

    .line 436
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 437
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 442
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/NetworkAdapter;
    .end local v2    # "_result":I
    :sswitch_1f3
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 445
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->onNetworkStateChanged(I)I

    move-result v2

    .line 446
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 447
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 452
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_206
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/adapter/DeviceInfoAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    move-result-object v0

    .line 455
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setDeviceInfoAdapter(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)I

    move-result v2

    .line 456
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 457
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 462
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/DeviceInfoAdapter;
    .end local v2    # "_result":I
    :sswitch_21d
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/adapter/CanbusAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/CanbusAdapter;

    move-result-object v0

    .line 465
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/CanbusAdapter;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setCanbusAdapter(Lcom/pateo/tsp/adapter/CanbusAdapter;)I

    move-result v2

    .line 466
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 467
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 472
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/CanbusAdapter;
    .end local v2    # "_result":I
    :sswitch_234
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 476
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 477
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->onCanbusStateChanged(II)I

    move-result v2

    .line 478
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 479
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 484
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_result":I
    :sswitch_24b
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 486
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/pateo/tsp/adapter/LocationInfoAdapter$Stub;->asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    move-result-object v0

    .line 487
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/LocationInfoAdapter;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->setLocationInfoAdapter(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)I

    move-result v2

    .line 488
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 489
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 494
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/LocationInfoAdapter;
    .end local v2    # "_result":I
    :sswitch_262
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 496
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_27f

    .line 497
    sget-object v5, Lcom/pateo/tsp/adapter/NaviLocationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;

    .line 502
    .local v0, "_arg0":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    :goto_273
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->onLocationChanged(Lcom/pateo/tsp/adapter/NaviLocationInfo;)I

    move-result v2

    .line 503
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 504
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 500
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    .end local v2    # "_result":I
    :cond_27f
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    goto :goto_273

    .line 509
    .end local v0    # "_arg0":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    :sswitch_281
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 511
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 512
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->onGpsStateChanged(I)I

    move-result v2

    .line 513
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 514
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 519
    .end local v0    # "_arg0":I
    .end local v2    # "_result":I
    :sswitch_294
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 523
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 524
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->getRemoteConfigItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    .line 525
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 526
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 531
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2ab
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 533
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 534
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 535
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 536
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 541
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_2be
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 543
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 545
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 546
    .local v1, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->subscribeTopic(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 547
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 548
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 553
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_2d5
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 555
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 557
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 558
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->unSubscribeTopic(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    .line 559
    .restart local v2    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 560
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 565
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    .end local v2    # "_result":I
    :sswitch_2ec
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 567
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 569
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 570
    .restart local v1    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Lcom/pateo/tsp/ITSPService$Stub;->nativeSendMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 576
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Ljava/lang/String;
    :sswitch_2ff
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeSetSmsReceiverListener()V

    .line 578
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 583
    :sswitch_30a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 585
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 586
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeDial(Ljava/lang/String;)V

    .line 587
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 592
    .end local v0    # "_arg0":Ljava/lang/String;
    :sswitch_319
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 593
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeGetIMSI()Ljava/lang/String;

    move-result-object v2

    .line 594
    .local v2, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 595
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 600
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_328
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 601
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeGetIMEI()Ljava/lang/String;

    move-result-object v2

    .line 602
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 603
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 608
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_337
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 609
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeGetPDSN()Ljava/lang/String;

    move-result-object v2

    .line 610
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 611
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 616
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_346
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 617
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeGetRemoteConfigPath()Ljava/lang/String;

    move-result-object v2

    .line 618
    .restart local v2    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 619
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_a

    .line 624
    .end local v2    # "_result":Ljava/lang/String;
    :sswitch_355
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeGetCurrentLocation()Landroid/location/Location;

    move-result-object v2

    .line 626
    .local v2, "_result":Landroid/location/Location;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 627
    if-eqz v2, :cond_369

    .line 628
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 629
    invoke-virtual {v2, p3, v4}, Landroid/location/Location;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_a

    .line 632
    :cond_369
    const/4 v5, 0x0

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 638
    .end local v2    # "_result":Landroid/location/Location;
    :sswitch_36f
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 639
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeSetLocationListener()V

    .line 640
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 645
    :sswitch_37a
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 646
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeRemoveLocationListener()V

    .line 647
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 652
    :sswitch_385
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 653
    invoke-virtual {p0}, Lcom/pateo/tsp/ITSPService$Stub;->nativeIsNetworkAvailable()I

    move-result v2

    .line 654
    .local v2, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 655
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_a

    .line 206
    :sswitch_data_394
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_35
        0x3 -> :sswitch_5b
        0x4 -> :sswitch_71
        0x5 -> :sswitch_87
        0x6 -> :sswitch_9e
        0x7 -> :sswitch_b5
        0x8 -> :sswitch_cc
        0x9 -> :sswitch_e3
        0xa -> :sswitch_f6
        0xb -> :sswitch_109
        0xc -> :sswitch_120
        0xd -> :sswitch_13f
        0xe -> :sswitch_152
        0xf -> :sswitch_169
        0x10 -> :sswitch_180
        0x11 -> :sswitch_197
        0x12 -> :sswitch_1ae
        0x13 -> :sswitch_1c5
        0x14 -> :sswitch_1dc
        0x15 -> :sswitch_1f3
        0x16 -> :sswitch_206
        0x17 -> :sswitch_21d
        0x18 -> :sswitch_234
        0x19 -> :sswitch_24b
        0x1a -> :sswitch_262
        0x1b -> :sswitch_281
        0x1c -> :sswitch_294
        0x1d -> :sswitch_2ab
        0x1e -> :sswitch_2be
        0x1f -> :sswitch_2d5
        0x20 -> :sswitch_2ec
        0x21 -> :sswitch_2ff
        0x22 -> :sswitch_30a
        0x23 -> :sswitch_319
        0x24 -> :sswitch_328
        0x25 -> :sswitch_337
        0x26 -> :sswitch_346
        0x27 -> :sswitch_355
        0x28 -> :sswitch_36f
        0x29 -> :sswitch_37a
        0x2a -> :sswitch_385
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
