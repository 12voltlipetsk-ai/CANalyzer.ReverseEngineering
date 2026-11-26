.class public Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserSchedula"
.end annotation


# static fields
.field public static BindAccount:Ljava/lang/String;

.field public static BuildSchedula:Ljava/lang/String;

.field public static CancleFav:Ljava/lang/String;

.field public static CancleSchedula:Ljava/lang/String;

.field public static Fav:Ljava/lang/String;

.field public static OpenSchedula:Ljava/lang/String;

.field public static SchedulaRemind:Ljava/lang/String;

.field public static searchSchedula:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 567
    const-string v0, "1013"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->OpenSchedula:Ljava/lang/String;

    .line 569
    const-string v0, "101301"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->BindAccount:Ljava/lang/String;

    .line 571
    const-string v0, "1013001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->BuildSchedula:Ljava/lang/String;

    .line 573
    const-string v0, "1013002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->CancleSchedula:Ljava/lang/String;

    .line 575
    const-string v0, "1013003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->Fav:Ljava/lang/String;

    .line 577
    const-string v0, "1013004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->CancleFav:Ljava/lang/String;

    .line 579
    const-string v0, "1013005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->searchSchedula:Ljava/lang/String;

    .line 581
    const-string v0, "1013006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$UserSchedula;->SchedulaRemind:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 565
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
