.class public Lcom/qinggan/datatracking/common/Constants$Behavior$BindThirdAccount;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindThirdAccount"
.end annotation


# static fields
.field public static bindSuccess:Ljava/lang/String;

.field public static unbindSuccess:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 786
    const-string v0, "1040001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$BindThirdAccount;->bindSuccess:Ljava/lang/String;

    .line 788
    const-string v0, "1040004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$BindThirdAccount;->unbindSuccess:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 784
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
