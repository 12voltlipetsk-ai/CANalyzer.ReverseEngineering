.class public Lcom/qinggan/datatracking/common/Constants$Behavior$XCall;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "XCall"
.end annotation


# static fields
.field public static BCall:Ljava/lang/String;

.field public static ECall:Ljava/lang/String;

.field public static ICall:Ljava/lang/String;

.field public static SCall:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 234
    const-string v0, "1000"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$XCall;->ECall:Ljava/lang/String;

    .line 236
    const-string v0, "1001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$XCall;->BCall:Ljava/lang/String;

    .line 238
    const-string v0, "1002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$XCall;->SCall:Ljava/lang/String;

    .line 240
    const-string v0, "1003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$XCall;->ICall:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
