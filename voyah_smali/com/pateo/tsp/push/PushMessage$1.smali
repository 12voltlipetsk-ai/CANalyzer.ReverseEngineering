.class final Lcom/pateo/tsp/push/PushMessage$1;
.super Ljava/lang/Object;
.source "PushMessage.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushMessage;
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
        "Lcom/pateo/tsp/push/PushMessage;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushMessage;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 93
    new-instance v0, Lcom/pateo/tsp/push/PushMessage;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushMessage;-><init>()V

    .line 94
    .local v0, "message":Lcom/pateo/tsp/push/PushMessage;
    const-class v1, Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pateo/tsp/push/PushType;

    iput-object v1, v0, Lcom/pateo/tsp/push/PushMessage;->type:Lcom/pateo/tsp/push/PushType;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushMessage;->pushType:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushMessage;->pushBodyType:I

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushMessage;->msgTitle:Ljava/lang/String;

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushMessage;->message:Ljava/lang/String;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushMessage;->length:I

    .line 101
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushMessage$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushMessage;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/push/PushMessage;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 87
    new-array v0, p1, [Lcom/pateo/tsp/push/PushMessage;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 84
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushMessage$1;->newArray(I)[Lcom/pateo/tsp/push/PushMessage;

    move-result-object v0

    return-object v0
.end method
