.class Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SearchRequest"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;,
        Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    }
.end annotation


# instance fields
.field private clientversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

.field private ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

.field final synthetic this$0:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;


# direct methods
.method private constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;)V
    .registers 2

    .prologue
    .line 208
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->this$0:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;
    .param p2, "x1"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;

    .prologue
    .line 208
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;-><init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
    .param p1, "x1"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->ntspheader:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;

    return-object p1
.end method

.method static synthetic access$600(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->clientversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    return-object v0
.end method

.method static synthetic access$602(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
    .param p1, "x1"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;->clientversion:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;

    return-object p1
.end method
