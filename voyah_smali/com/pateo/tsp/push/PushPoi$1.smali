.class final Lcom/pateo/tsp/push/PushPoi$1;
.super Ljava/lang/Object;
.source "PushPoi.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushPoi;
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
        "Lcom/pateo/tsp/push/PushPoi;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushPoi;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 149
    new-instance v0, Lcom/pateo/tsp/push/PushPoi;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushPoi;-><init>()V

    .line 150
    .local v0, "poi":Lcom/pateo/tsp/push/PushPoi;
    const-class v1, Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pateo/tsp/push/PushType;

    iput-object v1, v0, Lcom/pateo/tsp/push/PushPoi;->type:Lcom/pateo/tsp/push/PushType;

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushPoi;->name:Ljava/lang/String;

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushPoi;->lon:I

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushPoi;->lat:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushPoi;->shifted:I

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushPoi;->telnum:Ljava/lang/String;

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushPoi;->address:Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushPoi;->distance:I

    .line 158
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushPoi;->poitype:Ljava/lang/String;

    .line 160
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushPoi$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushPoi;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/push/PushPoi;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 143
    new-array v0, p1, [Lcom/pateo/tsp/push/PushPoi;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 140
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushPoi$1;->newArray(I)[Lcom/pateo/tsp/push/PushPoi;

    move-result-object v0

    return-object v0
.end method
