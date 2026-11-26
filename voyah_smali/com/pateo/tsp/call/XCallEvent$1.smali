.class final Lcom/pateo/tsp/call/XCallEvent$1;
.super Ljava/lang/Object;
.source "XCallEvent.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/call/XCallEvent;
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
        "Lcom/pateo/tsp/call/XCallEvent;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/call/XCallEvent;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 62
    invoke-static {}, Lcom/pateo/tsp/call/XCallEvent;->values()[Lcom/pateo/tsp/call/XCallEvent;

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/call/XCallEvent$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/call/XCallEvent;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/call/XCallEvent;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 67
    new-array v0, p1, [Lcom/pateo/tsp/call/XCallEvent;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 59
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/call/XCallEvent$1;->newArray(I)[Lcom/pateo/tsp/call/XCallEvent;

    move-result-object v0

    return-object v0
.end method
