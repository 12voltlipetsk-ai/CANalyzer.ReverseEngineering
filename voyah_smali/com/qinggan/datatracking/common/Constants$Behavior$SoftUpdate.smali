.class public Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftUpdate"
.end annotation


# static fields
.field public static GoToUpdate:Ljava/lang/String;

.field public static otaPush:Ljava/lang/String;

.field public static restart:Ljava/lang/String;

.field public static restartLater:Ljava/lang/String;

.field public static update:Ljava/lang/String;

.field public static updateComplete:Ljava/lang/String;

.field public static updateLater:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 699
    const-string v0, "1030001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->update:Ljava/lang/String;

    .line 701
    const-string v0, "1030002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->updateComplete:Ljava/lang/String;

    .line 703
    const-string v0, "1030003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->otaPush:Ljava/lang/String;

    .line 705
    const-string v0, "1030004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->updateLater:Ljava/lang/String;

    .line 707
    const-string v0, "1030005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->restart:Ljava/lang/String;

    .line 709
    const-string v0, "1030006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->restartLater:Ljava/lang/String;

    .line 711
    const-string v0, "1030007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->GoToUpdate:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
