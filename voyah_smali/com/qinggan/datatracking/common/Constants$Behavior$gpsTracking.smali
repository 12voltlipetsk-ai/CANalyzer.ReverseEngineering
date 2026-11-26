.class public Lcom/qinggan/datatracking/common/Constants$Behavior$gpsTracking;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "gpsTracking"
.end annotation


# static fields
.field public static GSP:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 675
    const-string v0, "1027"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$gpsTracking;->GSP:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
