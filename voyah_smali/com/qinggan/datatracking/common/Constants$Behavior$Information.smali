.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Information;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Information"
.end annotation


# static fields
.field public static OpenInfoSearch:Ljava/lang/String;

.field public static WheatherSearch:Ljava/lang/String;

.field public static removeSearch:Ljava/lang/String;

.field public static saveSearch:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 598
    const-string v0, "1024"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Information;->OpenInfoSearch:Ljava/lang/String;

    .line 600
    const-string v0, "1024001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Information;->WheatherSearch:Ljava/lang/String;

    .line 602
    const-string v0, "1024002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Information;->saveSearch:Ljava/lang/String;

    .line 604
    const-string v0, "1024003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Information;->removeSearch:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 596
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
