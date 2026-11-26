.class public Lcom/qinggan/otaservice/common/VersionUtil;
.super Ljava/lang/Object;
.source "VersionUtil.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/otaservice/common/VersionUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/VersionUtil;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProjectName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 10
    :try_start_0
    const-string v1, "f0506h"
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_2} :catch_3

    .line 14
    :goto_2
    return-object v1

    .line 11
    :catch_3
    move-exception v0

    .line 12
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    .line 14
    const/4 v1, 0x0

    goto :goto_2
.end method
