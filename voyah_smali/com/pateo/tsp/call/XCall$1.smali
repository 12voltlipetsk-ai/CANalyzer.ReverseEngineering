.class final Lcom/pateo/tsp/call/XCall$1;
.super Ljava/lang/Object;
.source "XCall.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/call/XCall;
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
        "Lcom/pateo/tsp/call/XCall;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/call/XCall;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 104
    new-instance v0, Lcom/pateo/tsp/call/XCall;

    invoke-direct {v0}, Lcom/pateo/tsp/call/XCall;-><init>()V

    .line 105
    .local v0, "call":Lcom/pateo/tsp/call/XCall;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/call/XCall;->callID:I

    .line 106
    const-class v1, Lcom/pateo/tsp/call/XCallType;

    .line 107
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pateo/tsp/call/XCallType;

    iput-object v1, v0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/call/XCall;->telNumber:Ljava/lang/String;

    .line 110
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/call/XCall$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/call/XCall;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/call/XCall;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 98
    new-array v0, p1, [Lcom/pateo/tsp/call/XCall;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 95
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/call/XCall$1;->newArray(I)[Lcom/pateo/tsp/call/XCall;

    move-result-object v0

    return-object v0
.end method
