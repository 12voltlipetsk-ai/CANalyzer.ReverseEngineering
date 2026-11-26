.class public abstract Lcom/pateo/tsp/push/PushHandler$Stub;
.super Landroid/os/Binder;
.source "PushHandler.java"

# interfaces
.implements Lcom/pateo/tsp/push/PushHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.pateo.tsp.push.PushHandler"

.field static final TRANSACTION_onPushGuidance:I = 0x2

.field static final TRANSACTION_onPushMessage:I = 0x4

.field static final TRANSACTION_onPushPoi:I = 0x1

.field static final TRANSACTION_onPushStringMessage:I = 0x5

.field static final TRANSACTION_onPushUrlBack:I = 0x3


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 36
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 37
    const-string v0, "com.pateo.tsp.push.PushHandler"

    invoke-virtual {p0, p0, v0}, Lcom/pateo/tsp/push/PushHandler$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 38
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/pateo/tsp/push/PushHandler;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 45
    if-nez p0, :cond_4

    .line 46
    const/4 v0, 0x0

    .line 52
    :goto_3
    return-object v0

    .line 48
    :cond_4
    const-string v1, "com.pateo.tsp.push.PushHandler"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 49
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/pateo/tsp/push/PushHandler;

    if-eqz v1, :cond_13

    .line 50
    check-cast v0, Lcom/pateo/tsp/push/PushHandler;

    goto :goto_3

    .line 52
    :cond_13
    new-instance v0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/pateo/tsp/push/PushHandler;
    .registers 1

    .prologue
    .line 299
    sget-object v0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/push/PushHandler;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/pateo/tsp/push/PushHandler;)Z
    .registers 2
    .param p0, "impl"    # Lcom/pateo/tsp/push/PushHandler;

    .prologue
    .line 292
    sget-object v0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/push/PushHandler;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 293
    sput-object p0, Lcom/pateo/tsp/push/PushHandler$Stub$Proxy;->sDefaultImpl:Lcom/pateo/tsp/push/PushHandler;

    .line 294
    const/4 v0, 0x1

    .line 296
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
    .line 56
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

    .line 60
    const-string v1, "com.pateo.tsp.push.PushHandler"

    .line 61
    .local v1, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_92

    .line 140
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v2

    :goto_a
    return v2

    .line 65
    :sswitch_b
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 70
    :sswitch_f
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_27

    .line 73
    sget-object v3, Lcom/pateo/tsp/push/PushPoi;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/push/PushPoi;

    .line 78
    .local v0, "_arg0":Lcom/pateo/tsp/push/PushPoi;
    :goto_20
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/push/PushHandler$Stub;->onPushPoi(Lcom/pateo/tsp/push/PushPoi;)V

    .line 79
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 76
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushPoi;
    :cond_27
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/push/PushPoi;
    goto :goto_20

    .line 84
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushPoi;
    :sswitch_29
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 86
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_41

    .line 87
    sget-object v3, Lcom/pateo/tsp/push/PushGuidance;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/push/PushGuidance;

    .line 92
    .local v0, "_arg0":Lcom/pateo/tsp/push/PushGuidance;
    :goto_3a
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/push/PushHandler$Stub;->onPushGuidance(Lcom/pateo/tsp/push/PushGuidance;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 90
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushGuidance;
    :cond_41
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/push/PushGuidance;
    goto :goto_3a

    .line 98
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushGuidance;
    :sswitch_43
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_5b

    .line 101
    sget-object v3, Lcom/pateo/tsp/push/PushUrlBack;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/push/PushUrlBack;

    .line 106
    .local v0, "_arg0":Lcom/pateo/tsp/push/PushUrlBack;
    :goto_54
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/push/PushHandler$Stub;->onPushUrlBack(Lcom/pateo/tsp/push/PushUrlBack;)V

    .line 107
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 104
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushUrlBack;
    :cond_5b
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/push/PushUrlBack;
    goto :goto_54

    .line 112
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushUrlBack;
    :sswitch_5d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_75

    .line 115
    sget-object v3, Lcom/pateo/tsp/push/PushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/push/PushMessage;

    .line 120
    .local v0, "_arg0":Lcom/pateo/tsp/push/PushMessage;
    :goto_6e
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/push/PushHandler$Stub;->onPushMessage(Lcom/pateo/tsp/push/PushMessage;)V

    .line 121
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_a

    .line 118
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushMessage;
    :cond_75
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/pateo/tsp/push/PushMessage;
    goto :goto_6e

    .line 126
    .end local v0    # "_arg0":Lcom/pateo/tsp/push/PushMessage;
    :sswitch_77
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_90

    .line 129
    sget-object v3, Lcom/qinggan/tsp/push/PushStringMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/push/PushStringMessage;

    .line 134
    .local v0, "_arg0":Lcom/qinggan/tsp/push/PushStringMessage;
    :goto_88
    invoke-virtual {p0, v0}, Lcom/pateo/tsp/push/PushHandler$Stub;->onPushStringMessage(Lcom/qinggan/tsp/push/PushStringMessage;)V

    .line 135
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_a

    .line 132
    .end local v0    # "_arg0":Lcom/qinggan/tsp/push/PushStringMessage;
    :cond_90
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Lcom/qinggan/tsp/push/PushStringMessage;
    goto :goto_88

    .line 61
    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_29
        0x3 -> :sswitch_43
        0x4 -> :sswitch_5d
        0x5 -> :sswitch_77
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
