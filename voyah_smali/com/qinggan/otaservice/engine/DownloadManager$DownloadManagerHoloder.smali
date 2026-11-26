.class Lcom/qinggan/otaservice/engine/DownloadManager$DownloadManagerHoloder;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/DownloadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DownloadManagerHoloder"
.end annotation


# static fields
.field private static final sInstance:Lcom/qinggan/otaservice/engine/DownloadManager;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    .line 52
    new-instance v0, Lcom/qinggan/otaservice/engine/DownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/qinggan/otaservice/engine/DownloadManager;-><init>(Lcom/qinggan/otaservice/engine/DownloadManager$1;)V

    sput-object v0, Lcom/qinggan/otaservice/engine/DownloadManager$DownloadManagerHoloder;->sInstance:Lcom/qinggan/otaservice/engine/DownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/qinggan/otaservice/engine/DownloadManager;
    .registers 1

    .prologue
    .line 51
    sget-object v0, Lcom/qinggan/otaservice/engine/DownloadManager$DownloadManagerHoloder;->sInstance:Lcom/qinggan/otaservice/engine/DownloadManager;

    return-object v0
.end method
