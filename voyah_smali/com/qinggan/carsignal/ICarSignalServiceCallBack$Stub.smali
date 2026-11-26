.class public abstract Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;
.super Landroid/os/Binder;
.source "ICarSignalServiceCallBack.java"

# interfaces
.implements Lcom/qinggan/carsignal/ICarSignalServiceCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.carsignal.ICarSignalServiceCallBack"

.field static final TRANSACTION_OnBackLightStateChanged:I = 0x16

.field static final TRANSACTION_onACCStateChanged:I = 0x4

.field static final TRANSACTION_onAVINStateChanged:I = 0xa

.field static final TRANSACTION_onBatteryChanged:I = 0x2

.field static final TRANSACTION_onCameraStateChanged:I = 0x8

.field static final TRANSACTION_onCanBusStateChanged:I = 0x12

.field static final TRANSACTION_onCarSafeStateChanged:I = 0x9

.field static final TRANSACTION_onHeadLightStateChanged:I = 0x7

.field static final TRANSACTION_onKeyChannelLine1ValueChanged:I = 0x14

.field static final TRANSACTION_onKeyChannelLine2ValueChanged:I = 0x15

.field static final TRANSACTION_onKeyEvent:I = 0x1

.field static final TRANSACTION_onLCDTempChanged:I = 0x11

.field static final TRANSACTION_onLightKeyChanged:I = 0x10

.field static final TRANSACTION_onLightSensorChanged:I = 0xd

.field static final TRANSACTION_onMCUDiagRequest:I = 0x17

.field static final TRANSACTION_onMCUDiagRequestEx:I = 0x18

.field static final TRANSACTION_onMuteKeyChanged:I = 0xf

.field static final TRANSACTION_onPADistortionStateChanged:I = 0x6

.field static final TRANSACTION_onPASLCDTempChanged:I = 0x1a

.field static final TRANSACTION_onPASLightSensorChanged:I = 0x19

.field static final TRANSACTION_onPowerKeyStateChanged:I = 0x5

.field static final TRANSACTION_onPowerStateChanged:I = 0x3

.field static final TRANSACTION_onTboxMutePinStateChanged:I = 0x1b

.field static final TRANSACTION_onTemValueChanged:I = 0xc

.field static final TRANSACTION_onTouchScreenStateChanged:I = 0xb

.field static final TRANSACTION_onVoltageStateChanged:I = 0x13

.field static final TRANSACTION_onVolumeKeyChanged:I = 0xe


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 17
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 18
    const-string v0, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/carsignal/ICarSignalServiceCallBack;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 26
    if-nez p0, :cond_4

    .line 27
    const/4 v0, 0x0

    .line 33
    :goto_3
    return-object v0

    .line 29
    :cond_4
    const-string v1, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 30
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    if-eqz v1, :cond_13

    .line 31
    check-cast v0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack;

    goto :goto_3

    .line 33
    :cond_13
    new-instance v0, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .registers 1

    .prologue
    .line 37
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
    const/4 v3, 0x1

    .line 41
    const-string v2, "com.qinggan.carsignal.ICarSignalServiceCallBack"

    .line 42
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_15a

    .line 274
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 46
    :sswitch_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 51
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 55
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 56
    .local v1, "_arg1":I
    invoke-virtual {p0, v0, v1}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onKeyEvent(II)V

    goto :goto_a

    .line 61
    .end local v0    # "_arg0":I
    .end local v1    # "_arg1":I
    :sswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 64
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onBatteryChanged(I)V

    goto :goto_a

    .line 69
    .end local v0    # "_arg0":I
    :sswitch_29
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 72
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onPowerStateChanged(I)V

    goto :goto_a

    .line 77
    .end local v0    # "_arg0":I
    :sswitch_34
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 80
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onACCStateChanged(I)V

    goto :goto_a

    .line 85
    .end local v0    # "_arg0":I
    :sswitch_3f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 88
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onPowerKeyStateChanged(I)V

    goto :goto_a

    .line 93
    .end local v0    # "_arg0":I
    :sswitch_4a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 96
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onPADistortionStateChanged(I)V

    goto :goto_a

    .line 101
    .end local v0    # "_arg0":I
    :sswitch_55
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 103
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 104
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onHeadLightStateChanged(I)V

    goto :goto_a

    .line 109
    .end local v0    # "_arg0":I
    :sswitch_60
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 112
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onCameraStateChanged(I)V

    goto :goto_a

    .line 117
    .end local v0    # "_arg0":I
    :sswitch_6b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 119
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 120
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onCarSafeStateChanged(I)V

    goto :goto_a

    .line 125
    .end local v0    # "_arg0":I
    :sswitch_76
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 128
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onAVINStateChanged(I)V

    goto :goto_a

    .line 133
    .end local v0    # "_arg0":I
    :sswitch_81
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 135
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 136
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onTouchScreenStateChanged(I)V

    goto/16 :goto_a

    .line 141
    .end local v0    # "_arg0":I
    :sswitch_8d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 143
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 144
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onTemValueChanged(I)V

    goto/16 :goto_a

    .line 149
    .end local v0    # "_arg0":I
    :sswitch_99
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 152
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onLightSensorChanged(I)V

    goto/16 :goto_a

    .line 157
    .end local v0    # "_arg0":I
    :sswitch_a5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 159
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 160
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onVolumeKeyChanged(I)V

    goto/16 :goto_a

    .line 165
    .end local v0    # "_arg0":I
    :sswitch_b1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 167
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 168
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onMuteKeyChanged(I)V

    goto/16 :goto_a

    .line 173
    .end local v0    # "_arg0":I
    :sswitch_bd
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 175
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 176
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onLightKeyChanged(I)V

    goto/16 :goto_a

    .line 181
    .end local v0    # "_arg0":I
    :sswitch_c9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 183
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onLCDTempChanged(I)V

    goto/16 :goto_a

    .line 189
    .end local v0    # "_arg0":I
    :sswitch_d5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 191
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 192
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onCanBusStateChanged(I)V

    goto/16 :goto_a

    .line 197
    .end local v0    # "_arg0":I
    :sswitch_e1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 199
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 200
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onVoltageStateChanged(I)V

    goto/16 :goto_a

    .line 205
    .end local v0    # "_arg0":I
    :sswitch_ed
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 208
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onKeyChannelLine1ValueChanged(I)V

    goto/16 :goto_a

    .line 213
    .end local v0    # "_arg0":I
    :sswitch_f9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 216
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onKeyChannelLine2ValueChanged(I)V

    goto/16 :goto_a

    .line 221
    .end local v0    # "_arg0":I
    :sswitch_105
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 224
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->OnBackLightStateChanged(I)V

    goto/16 :goto_a

    .line 229
    .end local v0    # "_arg0":I
    :sswitch_111
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 232
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onMCUDiagRequest(I)V

    goto/16 :goto_a

    .line 237
    .end local v0    # "_arg0":I
    :sswitch_11d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 239
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_133

    .line 240
    sget-object v4, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    .line 245
    .local v0, "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    :goto_12e
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onMCUDiagRequestEx(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;)V

    goto/16 :goto_a

    .line 243
    .end local v0    # "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    :cond_133
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    goto :goto_12e

    .line 250
    .end local v0    # "_arg0":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    :sswitch_135
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 253
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onPASLightSensorChanged(I)V

    goto/16 :goto_a

    .line 258
    .end local v0    # "_arg0":I
    :sswitch_141
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 261
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onPASLCDTempChanged(I)V

    goto/16 :goto_a

    .line 266
    .end local v0    # "_arg0":I
    :sswitch_14d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 268
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 269
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lcom/qinggan/carsignal/ICarSignalServiceCallBack$Stub;->onTboxMutePinStateChanged(I)V

    goto/16 :goto_a

    .line 42
    nop

    :sswitch_data_15a
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_29
        0x4 -> :sswitch_34
        0x5 -> :sswitch_3f
        0x6 -> :sswitch_4a
        0x7 -> :sswitch_55
        0x8 -> :sswitch_60
        0x9 -> :sswitch_6b
        0xa -> :sswitch_76
        0xb -> :sswitch_81
        0xc -> :sswitch_8d
        0xd -> :sswitch_99
        0xe -> :sswitch_a5
        0xf -> :sswitch_b1
        0x10 -> :sswitch_bd
        0x11 -> :sswitch_c9
        0x12 -> :sswitch_d5
        0x13 -> :sswitch_e1
        0x14 -> :sswitch_ed
        0x15 -> :sswitch_f9
        0x16 -> :sswitch_105
        0x17 -> :sswitch_111
        0x18 -> :sswitch_11d
        0x19 -> :sswitch_135
        0x1a -> :sswitch_141
        0x1b -> :sswitch_14d
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
