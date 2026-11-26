.class public Lcom/qinggan/otaservice/common/OtaProcessInfo;
.super Ljava/lang/Object;
.source "OtaProcessInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/common/OtaProcessInfo$ProcessId;,
        Lcom/qinggan/otaservice/common/OtaProcessInfo$State;
    }
.end annotation


# instance fields
.field private mEndTime:Ljava/lang/String;

.field private mProgressId:Ljava/lang/String;

.field private mRemark:Ljava/lang/String;

.field private mStartTime:Ljava/lang/String;

.field private mStatus:S


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;SLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "processId"    # Ljava/lang/String;
    .param p2, "status"    # S
    .param p3, "startTime"    # Ljava/lang/String;
    .param p4, "endTime"    # Ljava/lang/String;
    .param p5, "remark"    # Ljava/lang/String;

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mProgressId:Ljava/lang/String;

    .line 24
    iput-object p3, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStartTime:Ljava/lang/String;

    .line 25
    iput-object p4, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mEndTime:Ljava/lang/String;

    .line 26
    iput-short p2, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStatus:S

    .line 27
    iput-object p5, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mRemark:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getEndTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mEndTime:Ljava/lang/String;

    return-object v0
.end method

.method public getProgressId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mProgressId:Ljava/lang/String;

    return-object v0
.end method

.method public getRemark()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mRemark:Ljava/lang/String;

    return-object v0
.end method

.method public getStartTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStartTime:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()S
    .registers 2

    .prologue
    .line 78
    iget-short v0, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStatus:S

    return v0
.end method

.method public setEndTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "endTime"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mEndTime:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setProgressId(Ljava/lang/String;)V
    .registers 2
    .param p1, "progressId"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mProgressId:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setRemark(Ljava/lang/String;)V
    .registers 2
    .param p1, "remark"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mRemark:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setStartTime(Ljava/lang/String;)V
    .registers 2
    .param p1, "startTime"    # Ljava/lang/String;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStartTime:Ljava/lang/String;

    .line 67
    return-void
.end method

.method public setStatus(S)V
    .registers 2
    .param p1, "status"    # S

    .prologue
    .line 82
    iput-short p1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStatus:S

    .line 83
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    const/16 v2, 0x27

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OtaProcessInfo {  ProgressId=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mProgressId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", StartTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStartTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", EndTime=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mStatus:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Remark=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/OtaProcessInfo;->mRemark:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
