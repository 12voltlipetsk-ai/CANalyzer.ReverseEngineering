.class Lcom/qinggan/otaservice/engine/ZipManager$ZipManagerHolder;
.super Ljava/lang/Object;
.source "ZipManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/ZipManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ZipManagerHolder"
.end annotation


# static fields
.field private static final sInstance:Lcom/qinggan/otaservice/engine/ZipManager;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 32
    new-instance v0, Lcom/qinggan/otaservice/engine/ZipManager;

    invoke-direct {v0}, Lcom/qinggan/otaservice/engine/ZipManager;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/engine/ZipManager$ZipManagerHolder;->sInstance:Lcom/qinggan/otaservice/engine/ZipManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/qinggan/otaservice/engine/ZipManager;
    .registers 1

    .prologue
    .line 31
    sget-object v0, Lcom/qinggan/otaservice/engine/ZipManager$ZipManagerHolder;->sInstance:Lcom/qinggan/otaservice/engine/ZipManager;

    return-object v0
.end method
