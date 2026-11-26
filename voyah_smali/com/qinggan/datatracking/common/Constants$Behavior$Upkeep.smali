.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Upkeep;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Upkeep"
.end annotation


# static fields
.field public static cancelOrder:Ljava/lang/String;

.field public static order:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 755
    const-string v0, "5001010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Upkeep;->order:Ljava/lang/String;

    .line 757
    const-string v0, "5001020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Upkeep;->cancelOrder:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 753
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
