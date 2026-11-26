.class public final Lcom/qinggan/canbus/NaviInfo;
.super Ljava/lang/Object;
.source "NaviInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/NaviInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private calcState:Lcom/qinggan/canbus/CalcState;

.field currentRoadName:Ljava/lang/String;

.field destDistance:I

.field destName:Ljava/lang/String;

.field directionId:I

.field display:Z

.field guideState:Lcom/qinggan/canbus/GuideState;

.field heading:I

.field private is_straight:I

.field private mRoundAboutAngle:Ljava/lang/String;

.field private mRoundAboutNum:I

.field private mRoundAboutOut:I

.field mTurnByTurnInfo:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field nextDistance:I

.field param:I

.field remainTime:I

.field private tbtIconId:I

.field turnRoadName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 169
    new-instance v0, Lcom/qinggan/canbus/NaviInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/NaviInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/NaviInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qinggan/canbus/NaviInfo;->display:Z

    .line 30
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/NaviInfo;Lcom/qinggan/canbus/CalcState;)Lcom/qinggan/canbus/CalcState;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/NaviInfo;
    .param p1, "x1"    # Lcom/qinggan/canbus/CalcState;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->calcState:Lcom/qinggan/canbus/CalcState;

    return-object p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/NaviInfo;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/NaviInfo;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 7
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutAngle:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/NaviInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/NaviInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutNum:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/NaviInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/NaviInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutOut:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/canbus/NaviInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/NaviInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->is_straight:I

    return p1
.end method

.method static synthetic access$502(Lcom/qinggan/canbus/NaviInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/NaviInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->tbtIconId:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method public getCalcState()Lcom/qinggan/canbus/CalcState;
    .registers 2

    .prologue
    .line 231
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->calcState:Lcom/qinggan/canbus/CalcState;

    return-object v0
.end method

.method public getCurrentRoadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 105
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->currentRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public getDestDistance()I
    .registers 2

    .prologue
    .line 89
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->destDistance:I

    return v0
.end method

.method public getDestName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 223
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->destName:Ljava/lang/String;

    return-object v0
.end method

.method public getDirectionId()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->directionId:I

    return v0
.end method

.method public getGuideState()Lcom/qinggan/canbus/GuideState;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->guideState:Lcom/qinggan/canbus/GuideState;

    return-object v0
.end method

.method public getHeading()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->heading:I

    return v0
.end method

.method public getNextDistance()I
    .registers 2

    .prologue
    .line 97
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->nextDistance:I

    return v0
.end method

.method public getParam()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->param:I

    return v0
.end method

.method public getRemainTime()I
    .registers 2

    .prologue
    .line 129
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->remainTime:I

    return v0
.end method

.method public getRoundAboutAngle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutAngle:Ljava/lang/String;

    return-object v0
.end method

.method public getRoundAboutNum()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutNum:I

    return v0
.end method

.method public getRoundAboutOut()I
    .registers 2

    .prologue
    .line 57
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutOut:I

    return v0
.end method

.method public getTbtIconId()I
    .registers 2

    .prologue
    .line 247
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->tbtIconId:I

    return v0
.end method

.method public getTurnByTurnInfo()Lcom/qinggan/canbus/TurnByTurnIconInfo;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->mTurnByTurnInfo:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    return-object v0
.end method

.method public getTurnRoadName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->turnRoadName:Ljava/lang/String;

    return-object v0
.end method

.method public isDisplay()Z
    .registers 2

    .prologue
    .line 137
    iget-boolean v0, p0, Lcom/qinggan/canbus/NaviInfo;->display:Z

    return v0
.end method

.method public isstraight()I
    .registers 2

    .prologue
    .line 239
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->is_straight:I

    return v0
.end method

.method public setCalcState(Lcom/qinggan/canbus/CalcState;)V
    .registers 2
    .param p1, "calcState"    # Lcom/qinggan/canbus/CalcState;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->calcState:Lcom/qinggan/canbus/CalcState;

    .line 236
    return-void
.end method

.method public setCurrentRoadName(Ljava/lang/String;)V
    .registers 2
    .param p1, "currentRoadName"    # Ljava/lang/String;

    .prologue
    .line 109
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->currentRoadName:Ljava/lang/String;

    .line 110
    return-void
.end method

.method public setDestDistance(I)V
    .registers 2
    .param p1, "destDistance"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->destDistance:I

    .line 94
    return-void
.end method

.method public setDestName(Ljava/lang/String;)V
    .registers 2
    .param p1, "destName"    # Ljava/lang/String;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->destName:Ljava/lang/String;

    .line 228
    return-void
.end method

.method public setDirectionId(I)V
    .registers 2
    .param p1, "directionId"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->directionId:I

    .line 78
    return-void
.end method

.method public setDisplay(Z)V
    .registers 2
    .param p1, "display"    # Z

    .prologue
    .line 141
    iput-boolean p1, p0, Lcom/qinggan/canbus/NaviInfo;->display:Z

    .line 142
    return-void
.end method

.method public setGuideState(Lcom/qinggan/canbus/GuideState;)V
    .registers 2
    .param p1, "guideState"    # Lcom/qinggan/canbus/GuideState;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->guideState:Lcom/qinggan/canbus/GuideState;

    .line 70
    return-void
.end method

.method public setHeading(I)V
    .registers 2
    .param p1, "heading"    # I

    .prologue
    .line 85
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->heading:I

    .line 86
    return-void
.end method

.method public setNextDistance(I)V
    .registers 2
    .param p1, "nextDistance"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->nextDistance:I

    .line 102
    return-void
.end method

.method public setParam(I)V
    .registers 2
    .param p1, "param"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->param:I

    .line 126
    return-void
.end method

.method public setRemainTime(I)V
    .registers 2
    .param p1, "remainTime"    # I

    .prologue
    .line 133
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->remainTime:I

    .line 134
    return-void
.end method

.method public setRoundAboutAngle(Ljava/lang/String;)V
    .registers 2
    .param p1, "angle"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutAngle:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setRoundAboutNum(I)V
    .registers 2
    .param p1, "num"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutNum:I

    .line 54
    return-void
.end method

.method public setRoundAboutOut(I)V
    .registers 2
    .param p1, "num"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutOut:I

    .line 62
    return-void
.end method

.method public setTbtIconId(I)V
    .registers 2
    .param p1, "tbtIconId"    # I

    .prologue
    .line 251
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->tbtIconId:I

    .line 252
    return-void
.end method

.method public setTurnByTurnInfo(Lcom/qinggan/canbus/TurnByTurnIconInfo;)V
    .registers 2
    .param p1, "turnByTurnInfo"    # Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->mTurnByTurnInfo:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 38
    return-void
.end method

.method public setTurnRoadName(Ljava/lang/String;)V
    .registers 2
    .param p1, "turnRoadName"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/qinggan/canbus/NaviInfo;->turnRoadName:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setstraight(I)V
    .registers 2
    .param p1, "is_straight"    # I

    .prologue
    .line 243
    iput p1, p0, Lcom/qinggan/canbus/NaviInfo;->is_straight:I

    .line 244
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NaviInfo{guideState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/NaviInfo;->guideState:Lcom/qinggan/canbus/GuideState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", calcState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/qinggan/canbus/NaviInfo;->getCalcState()Lcom/qinggan/canbus/CalcState;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", directionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->directionId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", heading="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->heading:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->destDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", nextDistance="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->nextDistance:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", remainTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->remainTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", param="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->param:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", currentRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/NaviInfo;->currentRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", turnRoadName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/NaviInfo;->turnRoadName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", display="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/canbus/NaviInfo;->display:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoundAboutAngle=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutAngle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoundAboutNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutNum:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRoundAboutOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mTurnByTurnInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/NaviInfo;->mTurnByTurnInfo:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", destName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/canbus/NaviInfo;->destName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", is_straight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->is_straight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", tbtIconId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/NaviInfo;->tbtIconId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 200
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 149
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->guideState:Lcom/qinggan/canbus/GuideState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 150
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->calcState:Lcom/qinggan/canbus/CalcState;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 151
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->mTurnByTurnInfo:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 152
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->directionId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->heading:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->destDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->nextDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->remainTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->param:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->currentRoadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 159
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->turnRoadName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget-boolean v0, p0, Lcom/qinggan/canbus/NaviInfo;->display:Z

    if-eqz v0, :cond_5e

    const/4 v0, 0x1

    :goto_3c
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutAngle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutNum:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->mRoundAboutOut:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v0, p0, Lcom/qinggan/canbus/NaviInfo;->destName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 165
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->is_straight:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget v0, p0, Lcom/qinggan/canbus/NaviInfo;->tbtIconId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    return-void

    .line 160
    :cond_5e
    const/4 v0, 0x0

    goto :goto_3c
.end method
