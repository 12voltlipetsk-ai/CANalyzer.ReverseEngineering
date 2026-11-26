.class public abstract Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;
.super Landroid/os/Binder;
.source "IIpkSyncCallbacks.java"

# interfaces
.implements Lcom/qinggan/ipksync/IIpkSyncCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IIpkSyncCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.ipksync.IIpkSyncCallbacks"

.field static final TRANSACTION_onIcmAck2EhuPhone:I = 0x2

.field static final TRANSACTION_onIcmAck2EhuStatus:I = 0x1

.field static final TRANSACTION_onIcmAck2EhuUpdate:I = 0x3

.field static final TRANSACTION_onIcmControlContactsAction:I = 0x1d

.field static final TRANSACTION_onIcmControlMedia:I = 0x18

.field static final TRANSACTION_onIcmControlMediaType:I = 0x1a

.field static final TRANSACTION_onIcmControlPhoneAction:I = 0x1c

.field static final TRANSACTION_onIcmControlRadio:I = 0x19

.field static final TRANSACTION_onIcmControlRadioType:I = 0x1b

.field static final TRANSACTION_onIcmReq2EhuCamp:I = 0x23

.field static final TRANSACTION_onIcmReq2EhuCampStopSync:I = 0x24

.field static final TRANSACTION_onIcmReq2EhuContacts:I = 0xa

.field static final TRANSACTION_onIcmReq2EhuFavorate:I = 0x1e

.field static final TRANSACTION_onIcmReq2EhuIpkPageChanged:I = 0x10

.field static final TRANSACTION_onIcmReq2EhuKeyCode:I = 0x20

.field static final TRANSACTION_onIcmReq2EhuLanguageState:I = 0x25

.field static final TRANSACTION_onIcmReq2EhuMedia:I = 0x7

.field static final TRANSACTION_onIcmReq2EhuMediaStopSync:I = 0x8

.field static final TRANSACTION_onIcmReq2EhuMuStatue:I = 0x1f

.field static final TRANSACTION_onIcmReq2EhuNaviShow:I = 0x4

.field static final TRANSACTION_onIcmReq2EhuNaviStopSync:I = 0x6

.field static final TRANSACTION_onIcmReq2EhuNaviStopSyncType:I = 0x5

.field static final TRANSACTION_onIcmReq2EhuPauseByArea:I = 0x12

.field static final TRANSACTION_onIcmReq2EhuPhone:I = 0xc

.field static final TRANSACTION_onIcmReq2EhuPhoneStopSync:I = 0xd

.field static final TRANSACTION_onIcmReq2EhuRadio:I = 0x9

.field static final TRANSACTION_onIcmReq2EhuRest:I = 0x21

.field static final TRANSACTION_onIcmReq2EhuRestStopSync:I = 0x22

.field static final TRANSACTION_onIcmReq2EhuShowByArea:I = 0x11

.field static final TRANSACTION_onIcmReq2EhuTbtInfo:I = 0xb

.field static final TRANSACTION_onIcmReq2EhuWarning:I = 0xe

.field static final TRANSACTION_onIcmReq2EhuWarningStopSync:I = 0xf

.field static final TRANSACTION_onIcmStatus2EhuIpkState:I = 0x13

.field static final TRANSACTION_onIcmStatus2EhuReceivePkg:I = 0x14

.field static final TRANSACTION_onIcmUpdateSetIkpMusic:I = 0x16

.field static final TRANSACTION_onIcmUpdateSetTheme:I = 0x15

.field static final TRANSACTION_onIcmUpdateSetTimeFormat:I = 0x17


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.qinggan.ipksync.IIpkSyncCallbacks"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkSyncCallbacks;
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
    const-string v1, "com.qinggan.ipksync.IIpkSyncCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/ipksync/IIpkSyncCallbacks;

    if-eqz v1, :cond_13

    .line 28
    check-cast v0, Lcom/qinggan/ipksync/IIpkSyncCallbacks;

    goto :goto_3

    .line 30
    :cond_13
    new-instance v0, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

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
    const/4 v3, 0x1

    .line 38
    const-string v2, "com.qinggan.ipksync.IIpkSyncCallbacks"

    .line 39
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_20c

    .line 363
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 43
    :sswitch_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 48
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmAck2EhuStatus(I)V

    .line 52
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 57
    .end local v0    # "_arg0":I
    :sswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 61
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 62
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmAck2EhuPhone(II)V

    .line 63
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 68
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_2f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 70
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 71
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmAck2EhuUpdate(I)V

    .line 72
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_3d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuNaviShow(I)V

    .line 81
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 86
    .end local v0    # "_arg0":I
    :sswitch_4b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 89
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuNaviStopSyncType(I)V

    .line 90
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 95
    .end local v0    # "_arg0":I
    :sswitch_59
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuNaviStopSync()V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 102
    :sswitch_63
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuMedia()V

    .line 104
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 109
    :sswitch_6d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuMediaStopSync()V

    .line 111
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 116
    :sswitch_77
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 117
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuRadio()V

    .line 118
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 123
    :sswitch_81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuContacts()V

    .line 125
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 130
    :sswitch_8b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 133
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuTbtInfo(I)V

    .line 134
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 139
    .end local v0    # "_arg0":I
    :sswitch_9a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 140
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuPhone()V

    .line 141
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 146
    :sswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 147
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuPhoneStopSync()V

    .line 148
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 153
    :sswitch_b0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 155
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 157
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 158
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuWarning(II)V

    .line 159
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 164
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_c3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 165
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuWarningStopSync()V

    .line 166
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 171
    :sswitch_ce
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 174
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuIpkPageChanged(I)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 180
    .end local v0    # "_arg0":I
    :sswitch_dd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 183
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuShowByArea(I)V

    .line 184
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 189
    .end local v0    # "_arg0":I
    :sswitch_ec
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuPauseByArea(I)V

    .line 193
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 198
    .end local v0    # "_arg0":I
    :sswitch_fb
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 200
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 201
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmStatus2EhuIpkState(I)V

    .line 202
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 207
    .end local v0    # "_arg0":I
    :sswitch_10a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 210
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmStatus2EhuReceivePkg(I)V

    .line 211
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 216
    .end local v0    # "_arg0":I
    :sswitch_119
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 219
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmUpdateSetTheme(I)V

    .line 220
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 225
    .end local v0    # "_arg0":I
    :sswitch_128
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 227
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 228
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmUpdateSetIkpMusic(I)V

    .line 229
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 234
    .end local v0    # "_arg0":I
    :sswitch_137
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 237
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmUpdateSetTimeFormat(I)V

    .line 238
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 243
    .end local v0    # "_arg0":I
    :sswitch_146
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 246
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmControlMedia(I)V

    .line 247
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 252
    .end local v0    # "_arg0":I
    :sswitch_155
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 254
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 255
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmControlRadio(I)V

    .line 256
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 261
    .end local v0    # "_arg0":I
    :sswitch_164
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 263
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 264
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmControlMediaType(I)V

    .line 265
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 270
    .end local v0    # "_arg0":I
    :sswitch_173
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 273
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmControlRadioType(I)V

    .line 274
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 279
    .end local v0    # "_arg0":I
    :sswitch_182
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 282
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmControlPhoneAction(I)V

    .line 283
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 288
    .end local v0    # "_arg0":I
    :sswitch_191
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 291
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmControlContactsAction(I)V

    .line 292
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 297
    .end local v0    # "_arg0":I
    :sswitch_1a0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 300
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuFavorate(I)V

    .line 301
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 306
    .end local v0    # "_arg0":I
    :sswitch_1af
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 308
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 309
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuMuStatue(I)V

    .line 310
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 315
    .end local v0    # "_arg0":I
    :sswitch_1be
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 317
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 318
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuKeyCode(I)V

    .line 319
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 324
    .end local v0    # "_arg0":I
    :sswitch_1cd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuRest()V

    .line 326
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 331
    :sswitch_1d8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 332
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuRestStopSync()V

    .line 333
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 338
    :sswitch_1e3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 339
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuCamp()V

    .line 340
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 345
    :sswitch_1ee
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuCampStopSync()V

    .line 347
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 352
    :sswitch_1f9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 354
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 356
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 357
    .restart local v1    # "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;->onIcmReq2EhuLanguageState(II)V

    .line 358
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 39
    :sswitch_data_20c
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_2f
        0x4 -> :sswitch_3d
        0x5 -> :sswitch_4b
        0x6 -> :sswitch_59
        0x7 -> :sswitch_63
        0x8 -> :sswitch_6d
        0x9 -> :sswitch_77
        0xa -> :sswitch_81
        0xb -> :sswitch_8b
        0xc -> :sswitch_9a
        0xd -> :sswitch_a5
        0xe -> :sswitch_b0
        0xf -> :sswitch_c3
        0x10 -> :sswitch_ce
        0x11 -> :sswitch_dd
        0x12 -> :sswitch_ec
        0x13 -> :sswitch_fb
        0x14 -> :sswitch_10a
        0x15 -> :sswitch_119
        0x16 -> :sswitch_128
        0x17 -> :sswitch_137
        0x18 -> :sswitch_146
        0x19 -> :sswitch_155
        0x1a -> :sswitch_164
        0x1b -> :sswitch_173
        0x1c -> :sswitch_182
        0x1d -> :sswitch_191
        0x1e -> :sswitch_1a0
        0x1f -> :sswitch_1af
        0x20 -> :sswitch_1be
        0x21 -> :sswitch_1cd
        0x22 -> :sswitch_1d8
        0x23 -> :sswitch_1e3
        0x24 -> :sswitch_1ee
        0x25 -> :sswitch_1f9
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
