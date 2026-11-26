.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Vedio"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static CancelFav:Ljava/lang/String;

.field public static Fav:Ljava/lang/String;

.field public static FinishWatch:Ljava/lang/String;

.field public static NextVedio:Ljava/lang/String;

.field public static OpenVedio:Ljava/lang/String;

.field public static PreVedio:Ljava/lang/String;

.field public static SearchVedio:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 465
    const-string v0, "1022"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->OpenVedio:Ljava/lang/String;

    .line 467
    const-string v0, "1022001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->SearchVedio:Ljava/lang/String;

    .line 469
    const-string v0, "1022002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->PreVedio:Ljava/lang/String;

    .line 471
    const-string v0, "1022003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->NextVedio:Ljava/lang/String;

    .line 477
    const-string v0, "1022004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->Fav:Ljava/lang/String;

    .line 480
    const-string v0, "1022005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->CancelFav:Ljava/lang/String;

    .line 482
    const-string v0, "1022006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Vedio;->FinishWatch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 464
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
