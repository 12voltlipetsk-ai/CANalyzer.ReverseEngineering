.class final Lcom/pateo/tsp/push/PushGuidance$1;
.super Ljava/lang/Object;
.source "PushGuidance.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/tsp/push/PushGuidance;
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
        "Lcom/pateo/tsp/push/PushGuidance;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushGuidance;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 175
    new-instance v0, Lcom/pateo/tsp/push/PushGuidance;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushGuidance;-><init>()V

    .line 176
    .local v0, "guidance":Lcom/pateo/tsp/push/PushGuidance;
    const-class v1, Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/pateo/tsp/push/PushType;

    iput-object v1, v0, Lcom/pateo/tsp/push/PushGuidance;->type:Lcom/pateo/tsp/push/PushType;

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/pateo/tsp/push/PushGuidance;->description:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLon:I

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->destinationPositionLat:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLon:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage1PositionLat:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLon:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage2PositionLat:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLon:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage3PositionLat:I

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLon:I

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->stage4PositionLat:I

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/pateo/tsp/push/PushGuidance;->shifted:I

    .line 190
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushGuidance$1;->createFromParcel(Landroid/os/Parcel;)Lcom/pateo/tsp/push/PushGuidance;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/pateo/tsp/push/PushGuidance;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 169
    new-array v0, p1, [Lcom/pateo/tsp/push/PushGuidance;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/pateo/tsp/push/PushGuidance$1;->newArray(I)[Lcom/pateo/tsp/push/PushGuidance;

    move-result-object v0

    return-object v0
.end method
