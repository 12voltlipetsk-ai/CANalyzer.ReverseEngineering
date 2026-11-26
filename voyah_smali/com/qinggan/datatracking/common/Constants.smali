.class public Lcom/qinggan/datatracking/common/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/common/Constants$Behavior;,
        Lcom/qinggan/datatracking/common/Constants$PageName;,
        Lcom/qinggan/datatracking/common/Constants$PageId;,
        Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;,
        Lcom/qinggan/datatracking/common/Constants$OrderType;,
        Lcom/qinggan/datatracking/common/Constants$PlayMode;,
        Lcom/qinggan/datatracking/common/Constants$StorageType;,
        Lcom/qinggan/datatracking/common/Constants$InteractiveWay;,
        Lcom/qinggan/datatracking/common/Constants$ClientType;
    }
.end annotation


# static fields
.field public static cacheName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 8
    const-string v0, "/dataTracking.cache"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants;->cacheName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
