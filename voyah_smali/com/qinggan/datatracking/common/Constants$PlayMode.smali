.class public Lcom/qinggan/datatracking/common/Constants$PlayMode;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PlayMode"
.end annotation


# static fields
.field public static LOOP_ALL:Ljava/lang/String;

.field public static LOOP_ONE:Ljava/lang/String;

.field public static SHUFFLE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 68
    const-string v0, "0"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$PlayMode;->LOOP_ALL:Ljava/lang/String;

    .line 70
    const-string v0, "1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$PlayMode;->SHUFFLE:Ljava/lang/String;

    .line 72
    const-string v0, "2"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$PlayMode;->LOOP_ONE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
