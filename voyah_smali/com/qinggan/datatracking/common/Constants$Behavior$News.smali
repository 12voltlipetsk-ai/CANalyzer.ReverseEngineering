.class public Lcom/qinggan/datatracking/common/Constants$Behavior$News;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "News"
.end annotation


# static fields
.field public static CancleFavNews:Ljava/lang/String;

.field public static FavNews:Ljava/lang/String;

.field public static PauseNews:Ljava/lang/String;

.field public static SearchNews:Ljava/lang/String;

.field public static StartNews:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 683
    const-string v0, "1028"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$News;->StartNews:Ljava/lang/String;

    .line 685
    const-string v0, "102802"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$News;->PauseNews:Ljava/lang/String;

    .line 687
    const-string v0, "1028001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$News;->SearchNews:Ljava/lang/String;

    .line 689
    const-string v0, "1028002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$News;->FavNews:Ljava/lang/String;

    .line 691
    const-string v0, "1028003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$News;->CancleFavNews:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
