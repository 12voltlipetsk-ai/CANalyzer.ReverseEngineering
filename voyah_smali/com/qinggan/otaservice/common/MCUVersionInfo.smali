.class public Lcom/qinggan/otaservice/common/MCUVersionInfo;
.super Ljava/lang/Object;
.source "MCUVersionInfo.java"


# instance fields
.field private platform:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->platform:Ljava/lang/String;

    .line 5
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPlatform()Ljava/lang/String;
    .registers 2

    .prologue
    .line 8
    iget-object v0, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->platform:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 16
    iget-object v0, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setPlatform(Ljava/lang/String;)V
    .registers 2
    .param p1, "platform"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->platform:Ljava/lang/String;

    .line 13
    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 20
    iput-object p1, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->version:Ljava/lang/String;

    .line 21
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 26
    iget-object v0, p0, Lcom/qinggan/otaservice/common/MCUVersionInfo;->version:Ljava/lang/String;

    return-object v0
.end method
