.class final Lcom/pateo/tsp/push/PushObject$1;
.super Ljava/lang/Object;
.source "PushObject.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushObject;
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
        "Lcom/pateo/tsp/push/PushObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushObject;
    .registers 3
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 53
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushObject$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushObject;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/push/PushObject;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 48
    new-array v0, p1, [Lcom/pateo/tsp/push/PushObject;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 45
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushObject$1;->newArray(I)[Lcom/pateo/tsp/push/PushObject;

    move-result-object v0

    return-object v0
.end method
