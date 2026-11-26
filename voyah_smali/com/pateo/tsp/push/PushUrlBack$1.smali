.class final Lcom/pateo/tsp/push/PushUrlBack$1;
.super Ljava/lang/Object;
.source "PushUrlBack.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushUrlBack;
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
        "Lcom/pateo/tsp/push/PushUrlBack;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushUrlBack;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 77
    new-instance v0, Lcom/pateo/tsp/push/PushUrlBack;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushUrlBack;-><init>()V

    .line 78
    .local v0, "urlBack":Lcom/pateo/tsp/push/PushUrlBack;
    const-class v1, Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pateo/tsp/push/PushType;

    iput-object v1, v0, Lcom/pateo/tsp/push/PushUrlBack;->type:Lcom/pateo/tsp/push/PushType;

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushUrlBack;->whileMoving:I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushUrlBack;->timeToLive:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushUrlBack;->url:Ljava/lang/String;

    .line 83
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushUrlBack$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushUrlBack;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/push/PushUrlBack;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 71
    new-array v0, p1, [Lcom/pateo/tsp/push/PushUrlBack;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 68
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushUrlBack$1;->newArray(I)[Lcom/pateo/tsp/push/PushUrlBack;

    move-result-object v0

    return-object v0
.end method
