.class Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NtspHeader"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

.field private transactionid:Ljava/lang/String;

.field private tuid:Ljava/lang/String;

.field private version:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)V
    .registers 2

    .prologue
    .line 212
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
    .param p2, "x1"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;

    .prologue
    .line 212
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;-><init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)V

    return-void
.end method

.method static synthetic access$302(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->tuid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->transactionid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$502(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 212
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$NtspHeader;->version:Ljava/lang/String;

    return-object p1
.end method
