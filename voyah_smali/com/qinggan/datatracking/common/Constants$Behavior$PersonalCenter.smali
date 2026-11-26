.class public Lcom/qinggan/datatracking/common/Constants$Behavior$PersonalCenter;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PersonalCenter"
.end annotation


# static fields
.field public static AddVoicePrint:Ljava/lang/String;

.field public static EnterApp:Ljava/lang/String;

.field public static ModifyPhoneNumber:Ljava/lang/String;

.field public static ModifySecurityNumber:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 796
    const-string v0, "8000000"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$PersonalCenter;->EnterApp:Ljava/lang/String;

    .line 798
    const-string v0, "8000001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$PersonalCenter;->ModifyPhoneNumber:Ljava/lang/String;

    .line 800
    const-string v0, "8000002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$PersonalCenter;->ModifySecurityNumber:Ljava/lang/String;

    .line 802
    const-string v0, "8000003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$PersonalCenter;->AddVoicePrint:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
