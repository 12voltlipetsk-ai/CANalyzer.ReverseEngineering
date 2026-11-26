.class public abstract Lcom/qinggan/ipksync/IIpkSyncService$Stub;
.super Landroid/os/Binder;
.source "IIpkSyncService.java"

# interfaces
.implements Lcom/qinggan/ipksync/IIpkSyncService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IIpkSyncService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkSyncService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.ipksync.IIpkSyncService"

.field static final TRANSACTION_attachIpkSyncCallbacks:I = 0x17

.field static final TRANSACTION_customThreeAreas:I = 0x19

.field static final TRANSACTION_factoryUpgrade:I = 0x2e

.field static final TRANSACTION_getAreaIndex:I = 0x1f

.field static final TRANSACTION_getMUStateformICM:I = 0x28

.field static final TRANSACTION_getWindowState:I = 0x20

.field static final TRANSACTION_mediaRadioFocusChange:I = 0x1a

.field static final TRANSACTION_registerIpkUpdateCallback:I = 0x23

.field static final TRANSACTION_restoreFactory:I = 0x2d

.field static final TRANSACTION_sendLanguageState:I = 0x2b

.field static final TRANSACTION_setLogState:I = 0x25

.field static final TRANSACTION_startFileTransfer:I = 0x2a

.field static final TRANSACTION_startLogReceive:I = 0x24

.field static final TRANSACTION_startUpload:I = 0x21

.field static final TRANSACTION_startUploadtype:I = 0x29

.field static final TRANSACTION_switchToRecoveryMode:I = 0x2c

.field static final TRANSACTION_syncEhu2IcmACK:I = 0x16

.field static final TRANSACTION_syncEhuFirstIsOK:I = 0x27

.field static final TRANSACTION_syncEhuMUState:I = 0x26

.field static final TRANSACTION_syncEhuNaviDirection:I = 0x1b

.field static final TRANSACTION_syncEhuPhone2IcmSyncCallTime:I = 0x14

.field static final TRANSACTION_syncEhuPhone2IcmSyncCallTimed:I = 0x15

.field static final TRANSACTION_syncEhuPhone2IcmSyncName:I = 0x13

.field static final TRANSACTION_syncEhuReqMediaRadioChange:I = 0x1e

.field static final TRANSACTION_syncEhuSetIPKMusic:I = 0x11

.field static final TRANSACTION_syncEhuSetTheme:I = 0x10

.field static final TRANSACTION_syncEhuSetTimeFormat:I = 0x12

.field static final TRANSACTION_syncEhuStatus2IcmPushCampByNavi:I = 0x31

.field static final TRANSACTION_syncEhuStatus2IcmPushRestByNavi:I = 0x30

.field static final TRANSACTION_syncEhuStaus2IcmAudioReady:I = 0x1

.field static final TRANSACTION_syncEhuStaus2IcmBTContactsRecordStatus:I = 0xe

.field static final TRANSACTION_syncEhuStaus2IcmBTStatus:I = 0xd

.field static final TRANSACTION_syncEhuStaus2IcmMediaEvent:I = 0x7

.field static final TRANSACTION_syncEhuStaus2IcmMediaReady:I = 0x5

.field static final TRANSACTION_syncEhuStaus2IcmMediaTypeReady:I = 0x6

.field static final TRANSACTION_syncEhuStaus2IcmNaviEvents:I = 0x4

.field static final TRANSACTION_syncEhuStaus2IcmNaviReady:I = 0x2

.field static final TRANSACTION_syncEhuStaus2IcmPhoneStatus:I = 0xc

.field static final TRANSACTION_syncEhuStaus2IcmPushNaviByDirection:I = 0x1d

.field static final TRANSACTION_syncEhuStaus2IcmPushNaviVideoEvent:I = 0x8

.field static final TRANSACTION_syncEhuStaus2IcmStartNaviEvent:I = 0x3

.field static final TRANSACTION_syncEhuStaus2IcmSyncingVideo:I = 0x9

.field static final TRANSACTION_syncEhuStaus2IcmSyncingVideoType:I = 0xa

.field static final TRANSACTION_syncEhuStaus2IcmSyncingVideoTypeArea:I = 0xb

.field static final TRANSACTION_syncEhuStaus2IcmUpdatePkgTransferStatus:I = 0xf

.field static final TRANSACTION_syncICMShowModeType:I = 0x1c

.field static final TRANSACTION_syncICMVehicleState:I = 0x32

.field static final TRANSACTION_syncMenuCardInfo:I = 0x2f

.field static final TRANSACTION_syncNaviStatus:I = 0x18

.field static final TRANSACTION_syncUploadFile:I = 0x22


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qinggan.ipksync.IIpkSyncService"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkSyncService;
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
    const-string v1, "com.qinggan.ipksync.IIpkSyncService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/ipksync/IIpkSyncService;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qinggan/ipksync/IIpkSyncService;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/qinggan/ipksync/IIpkSyncService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    .registers 14
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
    const/4 v1, 0x0

    const/4 v7, 0x1

    .line 38
    const-string v6, "com.qinggan.ipksync.IIpkSyncService"

    .line 39
    .local v6, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_334

    .line 516
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    :goto_b
    return v7

    .line 43
    :sswitch_c
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_b

    .line 48
    :sswitch_10
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmAudioReady(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 57
    .end local v0    # "_arg0":I
    :sswitch_1e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 60
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmNaviReady(I)V

    .line 61
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 66
    .end local v0    # "_arg0":I
    :sswitch_2c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmStartNaviEvent()V

    .line 68
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 73
    :sswitch_36
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmNaviEvents()V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 80
    :sswitch_40
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 83
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmMediaReady(I)V

    .line 84
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 89
    .end local v0    # "_arg0":I
    :sswitch_4e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 93
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 94
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmMediaTypeReady(II)V

    .line 95
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 100
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_60
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmMediaEvent()V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 107
    :sswitch_6a
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmPushNaviVideoEvent()V

    .line 109
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 114
    :sswitch_74
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 117
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmSyncingVideo(I)V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_b

    .line 123
    .end local v0    # "_arg0":I
    :sswitch_82
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 127
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 128
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmSyncingVideoType(II)V

    .line 129
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 134
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_95
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 138
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 141
    .local v2, "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmSyncingVideoTypeArea(III)V

    .line 142
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 147
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_ac
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 150
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmPhoneStatus(I)V

    .line 151
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 156
    .end local v0    # "_arg0":I
    :sswitch_bb
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 159
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmBTStatus(I)V

    .line 160
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 165
    .end local v0    # "_arg0":I
    :sswitch_ca
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmBTContactsRecordStatus(I)V

    .line 169
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 174
    .end local v0    # "_arg0":I
    :sswitch_d9
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 176
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 177
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmUpdatePkgTransferStatus(I)V

    .line 178
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 183
    .end local v0    # "_arg0":I
    :sswitch_e8
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 186
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuSetTheme(I)V

    .line 187
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 192
    .end local v0    # "_arg0":I
    :sswitch_f7
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 195
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuSetIPKMusic(I)V

    .line 196
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 201
    .end local v0    # "_arg0":I
    :sswitch_106
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 203
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 204
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuSetTimeFormat(I)V

    .line 205
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 210
    .end local v0    # "_arg0":I
    :sswitch_115
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 212
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 214
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_123

    move v1, v7

    .line 215
    .local v1, "_arg1":Z
    :cond_123
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuPhone2IcmSyncName(Ljava/lang/String;Z)V

    .line 216
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 221
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":Z
    :sswitch_12b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuPhone2IcmSyncCallTime(I)V

    .line 225
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 230
    .end local v0    # "_arg0":I
    :sswitch_13a
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 232
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 234
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v8

    if-eqz v8, :cond_148

    move v1, v7

    .line 235
    .restart local v1    # "_arg1":Z
    :cond_148
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuPhone2IcmSyncCallTimed(IZ)V

    .line 236
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 241
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":Z
    :sswitch_150
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 245
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 246
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhu2IcmACK(II)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 252
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_163
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkSyncCallbacks;

    move-result-object v0

    .line 255
    .local v0, "_arg0":Lcom/qinggan/ipksync/IIpkSyncCallbacks;
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->attachIpkSyncCallbacks(Lcom/qinggan/ipksync/IIpkSyncCallbacks;)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 261
    .end local v0    # "_arg0":Lcom/qinggan/ipksync/IIpkSyncCallbacks;
    :sswitch_176
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncNaviStatus(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 270
    .end local v0    # "_arg0":I
    :sswitch_185
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 274
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 276
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 277
    .restart local v2    # "_arg2":I
    invoke-virtual {p0, v0, v1, v2}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->customThreeAreas(III)V

    .line 278
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 283
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    :sswitch_19c
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 285
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 287
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 288
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->mediaRadioFocusChange(II)V

    .line 289
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 294
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1af
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 296
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 297
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuNaviDirection(I)V

    .line 298
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 303
    .end local v0    # "_arg0":I
    :sswitch_1be
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 305
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 307
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 308
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncICMShowModeType(II)V

    .line 309
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 314
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1d1
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 319
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStaus2IcmPushNaviByDirection(II)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 325
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1e4
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuReqMediaRadioChange(I)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 334
    .end local v0    # "_arg0":I
    :sswitch_1f3
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 337
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->getAreaIndex(I)I

    move-result v4

    .line 338
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 339
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 344
    .end local v0    # "_arg0":I
    .end local v4    # "_result":I
    :sswitch_206
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 345
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->getWindowState()I

    move-result v4

    .line 346
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 347
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 352
    .end local v4    # "_result":I
    :sswitch_215
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 353
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->startUpload()V

    .line 354
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 359
    :sswitch_220
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 361
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 363
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 365
    .restart local v1    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 367
    .restart local v2    # "_arg2":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 368
    .local v3, "_arg3":I
    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncUploadFile(IIII)V

    .line 369
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 374
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    .end local v2    # "_arg2":I
    .end local v3    # "_arg3":I
    :sswitch_23b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 376
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v8

    invoke-static {v8}, Lcom/qinggan/ipksync/IIpkUpdataCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkUpdataCallback;

    move-result-object v0

    .line 377
    .local v0, "_arg0":Lcom/qinggan/ipksync/IIpkUpdataCallback;
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->registerIpkUpdateCallback(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V

    .line 378
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 383
    .end local v0    # "_arg0":Lcom/qinggan/ipksync/IIpkUpdataCallback;
    :sswitch_24e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 384
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->startLogReceive()V

    .line 385
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 390
    :sswitch_259
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 392
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 393
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->setLogState(I)V

    .line 394
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 399
    .end local v0    # "_arg0":I
    :sswitch_268
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 401
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 403
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 404
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuMUState(II)V

    .line 405
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 410
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_27b
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 412
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 414
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 415
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuFirstIsOK(II)V

    .line 416
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 421
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_28e
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->getMUStateformICM()I

    move-result v4

    .line 423
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 424
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_b

    .line 429
    .end local v4    # "_result":I
    :sswitch_29d
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 431
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 432
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->startUploadtype(I)V

    .line 433
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 438
    .end local v0    # "_arg0":I
    :sswitch_2ac
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 440
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 441
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->startFileTransfer(I)V

    .line 442
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 447
    .end local v0    # "_arg0":I
    :sswitch_2bb
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 451
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 452
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->sendLanguageState(Ljava/lang/String;I)V

    .line 453
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 458
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_arg1":I
    :sswitch_2ce
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->switchToRecoveryMode()V

    .line 460
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 465
    :sswitch_2d9
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 466
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->restoreFactory()V

    .line 467
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 472
    :sswitch_2e4
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 473
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->factoryUpgrade()V

    .line 474
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 479
    :sswitch_2ef
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 481
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    .line 482
    .local v5, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p2, v5}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    .line 483
    .local v0, "_arg0":Ljava/util/Map;
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncMenuCardInfo(Ljava/util/Map;)V

    .line 484
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 489
    .end local v0    # "_arg0":Ljava/util/Map;
    .end local v5    # "cl":Ljava/lang/ClassLoader;
    :sswitch_306
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 491
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 492
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStatus2IcmPushRestByNavi(I)V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 498
    .end local v0    # "_arg0":I
    :sswitch_315
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 500
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 501
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncEhuStatus2IcmPushCampByNavi(I)V

    .line 502
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 507
    .end local v0    # "_arg0":I
    :sswitch_324
    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 509
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 510
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncService$Stub;->syncICMVehicleState(I)V

    .line 511
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_b

    .line 39
    nop

    :sswitch_data_334
    .sparse-switch
        0x1 -> :sswitch_10
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_2c
        0x4 -> :sswitch_36
        0x5 -> :sswitch_40
        0x6 -> :sswitch_4e
        0x7 -> :sswitch_60
        0x8 -> :sswitch_6a
        0x9 -> :sswitch_74
        0xa -> :sswitch_82
        0xb -> :sswitch_95
        0xc -> :sswitch_ac
        0xd -> :sswitch_bb
        0xe -> :sswitch_ca
        0xf -> :sswitch_d9
        0x10 -> :sswitch_e8
        0x11 -> :sswitch_f7
        0x12 -> :sswitch_106
        0x13 -> :sswitch_115
        0x14 -> :sswitch_12b
        0x15 -> :sswitch_13a
        0x16 -> :sswitch_150
        0x17 -> :sswitch_163
        0x18 -> :sswitch_176
        0x19 -> :sswitch_185
        0x1a -> :sswitch_19c
        0x1b -> :sswitch_1af
        0x1c -> :sswitch_1be
        0x1d -> :sswitch_1d1
        0x1e -> :sswitch_1e4
        0x1f -> :sswitch_1f3
        0x20 -> :sswitch_206
        0x21 -> :sswitch_215
        0x22 -> :sswitch_220
        0x23 -> :sswitch_23b
        0x24 -> :sswitch_24e
        0x25 -> :sswitch_259
        0x26 -> :sswitch_268
        0x27 -> :sswitch_27b
        0x28 -> :sswitch_28e
        0x29 -> :sswitch_29d
        0x2a -> :sswitch_2ac
        0x2b -> :sswitch_2bb
        0x2c -> :sswitch_2ce
        0x2d -> :sswitch_2d9
        0x2e -> :sswitch_2e4
        0x2f -> :sswitch_2ef
        0x30 -> :sswitch_306
        0x31 -> :sswitch_315
        0x32 -> :sswitch_324
        0x5f4e5446 -> :sswitch_c
    .end sparse-switch
.end method
