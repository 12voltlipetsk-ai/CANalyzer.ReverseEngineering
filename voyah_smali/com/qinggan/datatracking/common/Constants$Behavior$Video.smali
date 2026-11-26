.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Video;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Video"
.end annotation


# static fields
.field public static CancelFav:Ljava/lang/String;

.field public static Fav:Ljava/lang/String;

.field public static FinishWatch:Ljava/lang/String;

.field public static LeaveVideo:Ljava/lang/String;

.field public static NextVideo:Ljava/lang/String;

.field public static OpenVideo:Ljava/lang/String;

.field public static PauseVideo:Ljava/lang/String;

.field public static PreVideo:Ljava/lang/String;

.field public static SearchVideo:Ljava/lang/String;

.field public static VideoSeek:Ljava/lang/String;

.field public static clickVideo:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 437
    const-string v0, "1022"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->OpenVideo:Ljava/lang/String;

    .line 439
    const-string v0, "102201"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->clickVideo:Ljava/lang/String;

    .line 441
    const-string v0, "102202"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->PauseVideo:Ljava/lang/String;

    .line 443
    const-string v0, "1022001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->SearchVideo:Ljava/lang/String;

    .line 445
    const-string v0, "1022002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->PreVideo:Ljava/lang/String;

    .line 447
    const-string v0, "1022003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->NextVideo:Ljava/lang/String;

    .line 450
    const-string v0, "1022004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->Fav:Ljava/lang/String;

    .line 453
    const-string v0, "1022005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->CancelFav:Ljava/lang/String;

    .line 455
    const-string v0, "1022006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->FinishWatch:Ljava/lang/String;

    .line 457
    const-string v0, "1022007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->VideoSeek:Ljava/lang/String;

    .line 459
    const-string v0, "10221"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Video;->LeaveVideo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 435
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
