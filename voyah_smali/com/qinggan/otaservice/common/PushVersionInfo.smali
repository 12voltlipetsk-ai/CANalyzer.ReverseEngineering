.class public final Lcom/qinggan/otaservice/common/PushVersionInfo;
.super Ljava/lang/Object;
.source "PushVersionInfo.java"


# instance fields
.field private releaseDate:Ljava/lang/String;

.field private releaseDesc:Ljava/lang/String;

.field private targetSoftware:Ljava/lang/String;

.field private targetVerNo:Ljava/lang/String;

.field private updateSize:J

.field private upgradeMode:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JI)V
    .registers 9
    .param p1, "targetSoftware"    # Ljava/lang/String;
    .param p2, "targetVerNo"    # Ljava/lang/String;
    .param p3, "releaseDate"    # Ljava/lang/String;
    .param p4, "releaseDesc"    # Ljava/lang/String;
    .param p5, "updateSize"    # J
    .param p7, "upgradeMode"    # I

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetSoftware:Ljava/lang/String;

    .line 22
    iput-object p2, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetVerNo:Ljava/lang/String;

    .line 23
    iput-object p3, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDate:Ljava/lang/String;

    .line 24
    iput-object p4, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDesc:Ljava/lang/String;

    .line 25
    iput p7, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->upgradeMode:I

    .line 26
    iput-wide p5, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->updateSize:J

    .line 27
    return-void
.end method


# virtual methods
.method public getReleaseDate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDate:Ljava/lang/String;

    return-object v0
.end method

.method public getReleaseDesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetSoftware()Ljava/lang/String;
    .registers 2

    .prologue
    .line 30
    iget-object v0, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetSoftware:Ljava/lang/String;

    return-object v0
.end method

.method public getTargetVerNo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 38
    iget-object v0, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetVerNo:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdateSize()J
    .registers 3

    .prologue
    .line 71
    iget-wide v0, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->updateSize:J

    return-wide v0
.end method

.method public getUpgradeMode()I
    .registers 2

    .prologue
    .line 62
    iget v0, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->upgradeMode:I

    return v0
.end method

.method public setReleaseDate(Ljava/lang/String;)V
    .registers 2
    .param p1, "releaseDate"    # Ljava/lang/String;

    .prologue
    .line 50
    iput-object p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDate:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setReleaseDesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "releaseDesc"    # Ljava/lang/String;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDesc:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setTargetSoftware(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetSoftware"    # Ljava/lang/String;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetSoftware:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public setTargetVerNo(Ljava/lang/String;)V
    .registers 2
    .param p1, "targetVerNo"    # Ljava/lang/String;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetVerNo:Ljava/lang/String;

    .line 43
    return-void
.end method

.method public setUpdateSize(J)V
    .registers 4
    .param p1, "updateSize"    # J

    .prologue
    .line 75
    iput-wide p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->updateSize:J

    .line 76
    return-void
.end method

.method public setUpgradeMode(I)V
    .registers 2
    .param p1, "upgradeMode"    # I

    .prologue
    .line 66
    iput p1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->upgradeMode:I

    .line 67
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .prologue
    const/16 v4, 0x27

    .line 80
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushVersionInfo{  targetSoftware=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetSoftware:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", targetVerNo=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->targetVerNo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", releaseDate=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDate:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", releaseDesc=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->releaseDesc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", updateSize=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->updateSize:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", upgradeMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/otaservice/common/PushVersionInfo;->upgradeMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
