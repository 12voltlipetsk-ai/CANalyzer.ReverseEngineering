.class final Lcom/pateo/tsp/adapter/NaviLocationInfo$1;
.super Ljava/lang/Object;
.source "NaviLocationInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/adapter/NaviLocationInfo;
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
        "Lcom/pateo/tsp/adapter/NaviLocationInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/adapter/NaviLocationInfo;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 147
    new-instance v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;

    invoke-direct {v0}, Lcom/pateo/tsp/adapter/NaviLocationInfo;-><init>()V

    .line 148
    .local v0, "info":Lcom/pateo/tsp/adapter/NaviLocationInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->timestamp:J

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->bear:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->speed:I

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->longitude:D

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->latitude:D

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLongitude:D

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->rawLatitude:D

    .line 155
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v2

    iput-wide v2, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->altitude:D

    .line 156
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/adapter/NaviLocationInfo;->accuracy:F

    .line 158
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/adapter/NaviLocationInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/adapter/NaviLocationInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/adapter/NaviLocationInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 141
    new-array v0, p1, [Lcom/pateo/tsp/adapter/NaviLocationInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 138
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/adapter/NaviLocationInfo$1;->newArray(I)[Lcom/pateo/tsp/adapter/NaviLocationInfo;

    move-result-object v0

    return-object v0
.end method
