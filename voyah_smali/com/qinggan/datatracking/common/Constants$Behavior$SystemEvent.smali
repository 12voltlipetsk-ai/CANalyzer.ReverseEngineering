.class public Lcom/qinggan/datatracking/common/Constants$Behavior$SystemEvent;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemEvent"
.end annotation


# static fields
.field public static EnterPage:Ljava/lang/String;

.field public static LeavePage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1059
    const-string v0, "8300000"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SystemEvent;->EnterPage:Ljava/lang/String;

    .line 1061
    const-string v0, "8300002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$SystemEvent;->LeavePage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1057
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
