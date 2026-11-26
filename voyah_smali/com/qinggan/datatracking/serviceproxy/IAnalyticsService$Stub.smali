.class public abstract Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;
.super Landroid/os/Binder;
.source "IAnalyticsService.java"

# interfaces
.implements Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

.field static final TRANSACTION_sendGzipMessage:I = 0x2

.field static final TRANSACTION_sendGzipMsgPath:I = 0x3

.field static final TRANSACTION_sendMessage:I = 0x1


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 33
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 34
    const-string v0, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    invoke-virtual {p0, p0, v0}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 35
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;
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
    const-string v1, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 46
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_13

    instance-of v1, v0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    if-eqz v1, :cond_13

    .line 47
    check-cast v0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    goto :goto_3

    .line 49
    :cond_13
    new-instance v0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method

.method public static getDefaultImpl()Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;
    .registers 1

    .prologue
    .line 192
    sget-object v0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;)Z
    .registers 2
    .param p0, "impl"    # Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    .prologue
    .line 185
    sget-object v0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    if-nez v0, :cond_a

    if-eqz p0, :cond_a

    .line 186
    sput-object p0, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub$Proxy;->sDefaultImpl:Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService;

    .line 187
    const/4 v0, 0x1

    .line 189
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
    const/4 v3, 0x1

    .line 57
    const-string v2, "com.qinggan.datatracking.serviceproxy.IAnalyticsService"

    .line 58
    .local v2, "descriptor":Ljava/lang/String;
    sparse-switch p1, :sswitch_data_46

    .line 97
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v3

    :goto_a
    return v3

    .line 62
    :sswitch_b
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_a

    .line 67
    :sswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->sendMessage(Ljava/lang/String;)I

    move-result v1

    .line 71
    .local v1, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 72
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 77
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :sswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 79
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 80
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->sendGzipMessage(Ljava/lang/String;)I

    move-result v1

    .line 81
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 82
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 87
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v1    # "_result":I
    :sswitch_33
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 89
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 90
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/qinggan/datatracking/serviceproxy/IAnalyticsService$Stub;->sendGzipMsgPath(Ljava/lang/String;)I

    move-result v1

    .line 91
    .restart local v1    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 92
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_a

    .line 58
    nop

    :sswitch_data_46
    .sparse-switch
        0x1 -> :sswitch_f
        0x2 -> :sswitch_21
        0x3 -> :sswitch_33
        0x5f4e5446 -> :sswitch_b
    .end sparse-switch
.end method
