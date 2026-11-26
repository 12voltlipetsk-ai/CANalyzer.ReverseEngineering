.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Active;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Active"
.end annotation


# static fields
.field public static Device_Activation:Ljava/lang/String;

.field public static Regist:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 269
    const-string v0, "1014001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Active;->Device_Activation:Ljava/lang/String;

    .line 271
    const-string v0, "1014002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Active;->Regist:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 267
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
