.class final Lcom/qinggan/canbus/RadarData$1;
.super Ljava/lang/Object;
.source "RadarData.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/RadarData;
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
        "Lcom/qinggan/canbus/RadarData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/RadarData;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 166
    new-instance v0, Lcom/qinggan/canbus/RadarData;

    invoke-direct {v0}, Lcom/qinggan/canbus/RadarData;-><init>()V

    .line 167
    .local v0, "radar":Lcom/qinggan/canbus/RadarData;
    const-class v1, Lcom/qinggan/canbus/RadarType;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/RadarType;

    iput-object v1, v0, Lcom/qinggan/canbus/RadarData;->radarType:Lcom/qinggan/canbus/RadarType;

    .line 168
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    .line 169
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    .line 170
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    .line 171
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    .line 172
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    .line 173
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    .line 174
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    .line 175
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->radarShowDistanceColor:I

    .line 177
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->radarFunctionStatus:I

    .line 178
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    .line 179
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/RadarData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/RadarData;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/RadarData;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 161
    new-array v0, p1, [Lcom/qinggan/canbus/RadarData;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 159
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/RadarData$1;->newArray(I)[Lcom/qinggan/canbus/RadarData;

    move-result-object v0

    return-object v0
.end method
