.class public Lcom/qinggan/otaservice/common/CANVersionInfo;
.super Ljava/lang/Object;
.source "CANVersionInfo.java"


# instance fields
.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/otaservice/common/CANVersionInfo;->version:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getVersion()Ljava/lang/String;
    .registers 2

    .prologue
    .line 7
    iget-object v0, p0, Lcom/qinggan/otaservice/common/CANVersionInfo;->version:Ljava/lang/String;

    return-object v0
.end method

.method public setVersion(Ljava/lang/String;)V
    .registers 2
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 11
    iput-object p1, p0, Lcom/qinggan/otaservice/common/CANVersionInfo;->version:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/qinggan/otaservice/common/CANVersionInfo;->version:Ljava/lang/String;

    return-object v0
.end method
