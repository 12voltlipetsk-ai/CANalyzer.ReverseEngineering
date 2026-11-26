.class Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LatestVersion"
.end annotation


# instance fields
.field private filesize:Ljava/lang/String;

.field private introduction:Ljava/lang/String;

.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;

.field private upgrade:Ljava/lang/String;

.field private url:Ljava/lang/String;

.field private version:I

.field private versionname:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)V
    .registers 2

    .prologue
    .line 233
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1400(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->versionname:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->upgrade:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->url:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 233
    iget v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->version:I

    return v0
.end method

.method static synthetic access$1800(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->filesize:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;->introduction:Ljava/lang/String;

    return-object v0
.end method
