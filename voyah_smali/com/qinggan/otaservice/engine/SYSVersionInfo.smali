.class public Lcom/qinggan/otaservice/engine/SYSVersionInfo;
.super Ljava/lang/Object;
.source "SYSVersionInfo.java"


# instance fields
.field private checkCode:Ljava/lang/String;

.field private dependencyVersionCode:Ljava/lang/String;

.field private ext:Ljava/lang/String;

.field private fileName:Ljava/lang/String;

.field private isfull:Ljava/lang/String;

.field private localPath:Ljava/lang/String;

.field private project:Ljava/lang/String;

.field private ptime:Ljava/lang/String;

.field private signAlg:Ljava/lang/String;

.field private signInfo:Ljava/lang/String;

.field private size:J

.field private type:I

.field private url:Ljava/lang/String;

.field private vendor:Ljava/lang/String;

.field private versionCode:Ljava/lang/String;

.field private versionDescription:Ljava/lang/String;

.field private versionName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    sget-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v0

    iput v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->type:I

    .line 7
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->project:Ljava/lang/String;

    .line 8
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->vendor:Ljava/lang/String;

    .line 9
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->fileName:Ljava/lang/String;

    .line 10
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionName:Ljava/lang/String;

    .line 11
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->isfull:Ljava/lang/String;

    .line 12
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->dependencyVersionCode:Ljava/lang/String;

    .line 13
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionCode:Ljava/lang/String;

    .line 14
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionDescription:Ljava/lang/String;

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->localPath:Ljava/lang/String;

    .line 16
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->size:J

    .line 17
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->url:Ljava/lang/String;

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->ptime:Ljava/lang/String;

    .line 19
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->ext:Ljava/lang/String;

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->checkCode:Ljava/lang/String;

    .line 21
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->signAlg:Ljava/lang/String;

    .line 22
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->signInfo:Ljava/lang/String;

    return-void
.end method

.method private getVersionCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getCheckCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 146
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->checkCode:Ljava/lang/String;

    return-object v0
.end method

.method public getDependencyVersionCode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->dependencyVersionCode:Ljava/lang/String;

    return-object v0
.end method

.method public getExt()Ljava/lang/String;
    .registers 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->ext:Ljava/lang/String;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getIsfull()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->isfull:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getProject()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->project:Ljava/lang/String;

    return-object v0
.end method

.method public getPtime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->ptime:Ljava/lang/String;

    return-object v0
.end method

.method public getSignAlg()Ljava/lang/String;
    .registers 2

    .prologue
    .line 154
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->signAlg:Ljava/lang/String;

    return-object v0
.end method

.method public getSignInfo()Ljava/lang/String;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->signInfo:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()J
    .registers 3

    .prologue
    .line 105
    iget-wide v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->size:J

    return-wide v0
.end method

.method public getType()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getVendor()Ljava/lang/String;
    .registers 2

    .prologue
    .line 41
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->vendor:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionDescription()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getVersionName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method public setCheckCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "checkCode"    # Ljava/lang/String;

    .prologue
    .line 142
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->checkCode:Ljava/lang/String;

    .line 143
    return-void
.end method

.method public setDependencyVersionCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "dependencyVersionCode"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->dependencyVersionCode:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setExt(Ljava/lang/String;)V
    .registers 2
    .param p1, "ext"    # Ljava/lang/String;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->ext:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->fileName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setIsfull(Ljava/lang/String;)V
    .registers 2
    .param p1, "isfull"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->isfull:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .registers 2
    .param p1, "localPath"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->localPath:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setProject(Ljava/lang/String;)V
    .registers 2
    .param p1, "project"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->project:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setPtime(Ljava/lang/String;)V
    .registers 2
    .param p1, "ptime"    # Ljava/lang/String;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->ptime:Ljava/lang/String;

    .line 126
    return-void
.end method

.method public setSignAlg(Ljava/lang/String;)V
    .registers 2
    .param p1, "signAlg"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->signAlg:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setSignInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "signInfo"    # Ljava/lang/String;

    .prologue
    .line 158
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->signInfo:Ljava/lang/String;

    .line 159
    return-void
.end method

.method public setSize(J)V
    .registers 4
    .param p1, "size"    # J

    .prologue
    .line 109
    iput-wide p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->size:J

    .line 110
    return-void
.end method

.method public setType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->type:I

    .line 30
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->url:Ljava/lang/String;

    .line 118
    return-void
.end method

.method public setVendor(Ljava/lang/String;)V
    .registers 2
    .param p1, "vendor"    # Ljava/lang/String;

    .prologue
    .line 45
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->vendor:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public setVersionCode(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionCode"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionCode:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setVersionDescription(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionDescription"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionDescription:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setVersionName(Ljava/lang/String;)V
    .registers 2
    .param p1, "versionName"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionName:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->versionCode:Ljava/lang/String;

    return-object v0
.end method
