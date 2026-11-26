.class Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NtspHeader"
.end annotation


# instance fields
.field private errcode:I

.field private errmsg:Ljava/lang/String;

.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;


# direct methods
.method private constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;)V
    .registers 2

    .prologue
    .line 228
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$1100(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

    .prologue
    .line 228
    iget v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->errcode:I

    return v0
.end method

.method static synthetic access$1200(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;

    .prologue
    .line 228
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse$NtspHeader;->errmsg:Ljava/lang/String;

    return-object v0
.end method
