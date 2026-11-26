.class Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;,
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;
    }
.end annotation


# instance fields
.field private lastversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

.field private ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

.field final synthetic this$0:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;


# direct methods
.method private constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;)V
    .registers 2

    .prologue
    .line 224
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->this$0:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;

    .prologue
    .line 224
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;->lastversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$LatestVersion;

    return-object v0
.end method
