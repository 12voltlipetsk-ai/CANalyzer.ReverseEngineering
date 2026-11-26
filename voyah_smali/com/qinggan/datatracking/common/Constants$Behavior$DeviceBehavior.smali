.class public Lcom/qinggan/datatracking/common/Constants$Behavior$DeviceBehavior;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeviceBehavior"
.end annotation


# static fields
.field public static Device_off:Ljava/lang/String;

.field public static Device_on:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 277
    const-string v0, "1100"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$DeviceBehavior;->Device_on:Ljava/lang/String;

    .line 279
    const-string v0, "1102"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$DeviceBehavior;->Device_off:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 275
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
