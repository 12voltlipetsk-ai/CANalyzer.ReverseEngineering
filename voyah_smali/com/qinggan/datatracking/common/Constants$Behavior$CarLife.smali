.class public Lcom/qinggan/datatracking/common/Constants$Behavior$CarLife;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CarLife"
.end annotation


# static fields
.field public static EnterCarLife:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 1201
    const-string v0, "8500002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$CarLife;->EnterCarLife:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 1199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
