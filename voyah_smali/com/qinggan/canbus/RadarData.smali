.class public final Lcom/qinggan/canbus/RadarData;
.super Ljava/lang/Object;
.source "RadarData.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/RadarData;",
            ">;"
        }
    .end annotation
.end field

.field private static final GRAY:I = 0x1

.field private static final RADAR_CLEAN_HINT:I = 0xd

.field public static RADAR_DISTANCE_UNKNOWN:I = 0x0

.field private static final RADAR_FUNCTION_EXCEPTION:I = 0xf

.field public static RADAR_FUNCTION_STATUS:I = 0x0

.field public static RADAR_LEVEL_ACCESSIBILITY:I = 0x0

.field public static RADAR_LEVEL_MAX:I = 0x0

.field public static RADAR_LEVEL_UNKNOWN:I = 0x0

.field public static RADAR_SHOW_DISTANCE_COLOR:I = 0x0

.field private static final RED:I = 0x3

.field private static final YELLOW:I = 0x2


# instance fields
.field leftOrFrontDistance:I

.field leftOrFrontDistanceLevel:I

.field middleLeftOrFrontDistance:I

.field middleLeftOrFrontDistanceLevel:I

.field middleRightOrRearDistance:I

.field middleRightOrRearDistanceLevel:I

.field radarFunctionStatus:I

.field radarShowDistanceColor:I

.field radarType:Lcom/qinggan/canbus/RadarType;

.field recentObstaclesDistance:I

.field rightOrRearDistance:I

.field rightOrRearDistanceLevel:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, -0x1

    .line 8
    const/4 v0, 0x0

    sput v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_ACCESSIBILITY:I

    .line 9
    sput v1, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    .line 10
    sput v1, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    .line 11
    const/16 v0, 0x8

    sput v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_MAX:I

    .line 12
    sput v1, Lcom/qinggan/canbus/RadarData;->RADAR_SHOW_DISTANCE_COLOR:I

    .line 13
    sput v1, Lcom/qinggan/canbus/RadarData;->RADAR_FUNCTION_STATUS:I

    .line 159
    new-instance v0, Lcom/qinggan/canbus/RadarData$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/RadarData$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/RadarData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, -0x1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    .line 21
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    .line 22
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    .line 23
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    .line 27
    iput v1, p0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    .line 32
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    .line 33
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    .line 34
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    .line 35
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    .line 37
    iput v1, p0, Lcom/qinggan/canbus/RadarData;->radarShowDistanceColor:I

    .line 38
    iput v1, p0, Lcom/qinggan/canbus/RadarData;->radarFunctionStatus:I

    .line 54
    return-void
.end method

.method public constructor <init>(Lcom/qinggan/canbus/RadarType;)V
    .registers 4
    .param p1, "radarType"    # Lcom/qinggan/canbus/RadarType;

    .prologue
    const/4 v1, -0x1

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    .line 21
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    .line 22
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    .line 23
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_LEVEL_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    .line 27
    iput v1, p0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    .line 32
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    .line 33
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    .line 34
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    .line 35
    sget v0, Lcom/qinggan/canbus/RadarData;->RADAR_DISTANCE_UNKNOWN:I

    iput v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    .line 37
    iput v1, p0, Lcom/qinggan/canbus/RadarData;->radarShowDistanceColor:I

    .line 38
    iput v1, p0, Lcom/qinggan/canbus/RadarData;->radarFunctionStatus:I

    .line 57
    iput-object p1, p0, Lcom/qinggan/canbus/RadarData;->radarType:Lcom/qinggan/canbus/RadarType;

    .line 58
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public getLeftOrFrontDistance()I
    .registers 2

    .prologue
    .line 101
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    return v0
.end method

.method public getLeftOrFrontDistanceLevel()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    return v0
.end method

.method public getMiddleLeftOrFrontDistance()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    return v0
.end method

.method public getMiddleLeftOrFrontDistanceLevel()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    return v0
.end method

.method public getMiddleRightOrRearDistance()I
    .registers 2

    .prologue
    .line 117
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    return v0
.end method

.method public getMiddleRightOrRearDistanceLevel()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    return v0
.end method

.method public getRadarType()Lcom/qinggan/canbus/RadarType;
    .registers 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/qinggan/canbus/RadarData;->radarType:Lcom/qinggan/canbus/RadarType;

    return-object v0
.end method

.method public getRecentObstaclesDistance()I
    .registers 2

    .prologue
    .line 133
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    return v0
.end method

.method public getRightOrRearDistance()I
    .registers 2

    .prologue
    .line 125
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    return v0
.end method

.method public getRightOrRearDistanceLevel()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    return v0
.end method

.method public setLeftOrFrontDistance(I)V
    .registers 2
    .param p1, "leftOrFrontDistance"    # I

    .prologue
    .line 105
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    .line 106
    return-void
.end method

.method public setLeftOrFrontDistanceLevel(I)V
    .registers 2
    .param p1, "leftOrFrontDistanceLevel"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    .line 74
    return-void
.end method

.method public setMiddleLeftOrFrontDistance(I)V
    .registers 2
    .param p1, "middleLeftOrFrontDistance"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    .line 114
    return-void
.end method

.method public setMiddleLeftOrFrontDistanceLevel(I)V
    .registers 2
    .param p1, "middleLeftOrFrontDistanceLevel"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    .line 82
    return-void
.end method

.method public setMiddleRightOrRearDistance(I)V
    .registers 2
    .param p1, "middleRightOrRearDistance"    # I

    .prologue
    .line 121
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    .line 122
    return-void
.end method

.method public setMiddleRightOrRearDistanceLevel(I)V
    .registers 2
    .param p1, "middleRightOrRearDistanceLevel"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    .line 90
    return-void
.end method

.method public setRadarType(Lcom/qinggan/canbus/RadarType;)V
    .registers 2
    .param p1, "radarType"    # Lcom/qinggan/canbus/RadarType;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/qinggan/canbus/RadarData;->radarType:Lcom/qinggan/canbus/RadarType;

    .line 66
    return-void
.end method

.method public setRecentObstaclesDistance(I)V
    .registers 2
    .param p1, "recentObstaclesDistance"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    .line 138
    return-void
.end method

.method public setRightOrRearDistance(I)V
    .registers 2
    .param p1, "rightOrRearDistance"    # I

    .prologue
    .line 129
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    .line 130
    return-void
.end method

.method public setRightOrRearDistanceLevel(I)V
    .registers 2
    .param p1, "rightOrRearDistanceLevel"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 186
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RadarData{radarType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/RadarData;->radarType:Lcom/qinggan/canbus/RadarType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftOrFrontDistanceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", middleLeftOrFrontDistanceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", middleRightOrRearDistanceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightOrRearDistanceLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftOrFrontDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", middleLeftOrFrontDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", middleRightOrRearDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rightOrRearDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radarShowDistanceColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->radarShowDistanceColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radarFunctionStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->radarFunctionStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", recentObstaclesDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/qinggan/canbus/RadarData;->radarType:Lcom/qinggan/canbus/RadarType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 146
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistanceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistanceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistanceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistanceLevel:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->leftOrFrontDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleLeftOrFrontDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->middleRightOrRearDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->rightOrRearDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->radarShowDistanceColor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->radarFunctionStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/qinggan/canbus/RadarData;->recentObstaclesDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
