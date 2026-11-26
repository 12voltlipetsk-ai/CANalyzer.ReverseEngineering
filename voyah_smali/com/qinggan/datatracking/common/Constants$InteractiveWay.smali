.class public Lcom/qinggan/datatracking/common/Constants$InteractiveWay;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InteractiveWay"
.end annotation


# static fields
.field public static appAuto:Ljava/lang/String;

.field public static hardKey:Ljava/lang/String;

.field public static ivoka:Ljava/lang/String;

.field public static osHandle:Ljava/lang/String;

.field public static touch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 34
    const-string v0, "0"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->ivoka:Ljava/lang/String;

    .line 37
    const-string v0, "1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->touch:Ljava/lang/String;

    .line 40
    const-string v0, "2"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->appAuto:Ljava/lang/String;

    .line 43
    const-string v0, "3"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->osHandle:Ljava/lang/String;

    .line 46
    const-string v0, "4"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->hardKey:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
