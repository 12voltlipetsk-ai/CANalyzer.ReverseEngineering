.class Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ClientVersion"
.end annotation


# instance fields
.field private appkey:Ljava/lang/String;

.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

.field private version:I


# direct methods
.method private constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)V
    .registers 2

    .prologue
    .line 218
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->this$1:Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
    .param p2, "x1"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$1;

    .prologue
    .line 218
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;-><init>(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;)V

    return-void
.end method

.method static synthetic access$802(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 218
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->appkey:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$902(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;
    .param p1, "x1"    # I

    .prologue
    .line 218
    iput p1, p0, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest$ClientVersion;->version:I

    return p1
.end method
