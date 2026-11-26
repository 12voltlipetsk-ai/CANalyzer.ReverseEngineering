.class final Lcom/qinggan/tsp/push/PushStringMessage$1;
.super Ljava/lang/Object;
.source "PushStringMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/push/PushStringMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qinggan/tsp/push/PushStringMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/tsp/push/PushStringMessage;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 46
    new-instance v0, Lcom/qinggan/tsp/push/PushStringMessage;

    invoke-direct {v0, p1}, Lcom/qinggan/tsp/push/PushStringMessage;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/qinggan/tsp/push/PushStringMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/tsp/push/PushStringMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/tsp/push/PushStringMessage;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 51
    new-array v0, p1, [Lcom/qinggan/tsp/push/PushStringMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 43
    invoke-virtual {p0, p1}, Lcom/qinggan/tsp/push/PushStringMessage$1;->newArray(I)[Lcom/qinggan/tsp/push/PushStringMessage;

    move-result-object v0

    return-object v0
.end method
