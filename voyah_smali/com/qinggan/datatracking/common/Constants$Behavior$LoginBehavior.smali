.class public Lcom/qinggan/datatracking/common/Constants$Behavior$LoginBehavior;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginBehavior"
.end annotation


# static fields
.field public static CancelLoginAuto:Ljava/lang/String;

.field public static LogOutKickOut:Ljava/lang/String;

.field public static LogOutManual:Ljava/lang/String;

.field public static Login:Ljava/lang/String;

.field public static SetLoginAuto:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 300
    const-string v0, "1103"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$LoginBehavior;->Login:Ljava/lang/String;

    .line 302
    const-string v0, "110301"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$LoginBehavior;->LogOutManual:Ljava/lang/String;

    .line 304
    const-string v0, "110302"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$LoginBehavior;->LogOutKickOut:Ljava/lang/String;

    .line 306
    const-string v0, "110303"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$LoginBehavior;->SetLoginAuto:Ljava/lang/String;

    .line 308
    const-string v0, "110304"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$LoginBehavior;->CancelLoginAuto:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 298
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
