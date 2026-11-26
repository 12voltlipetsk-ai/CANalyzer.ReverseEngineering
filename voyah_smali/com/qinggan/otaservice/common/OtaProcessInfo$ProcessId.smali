.class public Lcom/qinggan/otaservice/common/OtaProcessInfo$ProcessId;
.super Ljava/lang/Object;
.source "OtaProcessInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/common/OtaProcessInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ProcessId"
.end annotation


# static fields
.field public static final CLIENT_VERSION_CHECK:Ljava/lang/String; = "CLIENT_VERSION_CHECK"

.field public static final DOWNLOAD_RESULT_NOTICE:Ljava/lang/String; = "DOWNLOAD_RESULT_NOTICE"

.field public static final ENV_CHECK:Ljava/lang/String; = "ENV_CHECK"

.field public static final INSTALL_ACK:Ljava/lang/String; = "INSTALL_ACK"

.field public static final NETWORK_CHECK:Ljava/lang/String; = "NETWORK_CHECK"

.field public static final PACKAGE_BACKUP:Ljava/lang/String; = "PACKAGE_BACKUP"

.field public static final PACKAGE_CHECK:Ljava/lang/String; = "PACKAGE_CHECK"

.field public static final PACKAGE_DOWNLOAD:Ljava/lang/String; = "PACKAGE_DOWNLOAD"

.field public static final PACKAGE_INSTALL:Ljava/lang/String; = "PACKAGE_INSTALL"

.field public static final UPGRADE_ACK:Ljava/lang/String; = "UPGRADE_ACK"

.field public static final UPGRADE_RESULT_NOTICE:Ljava/lang/String; = "UPGRADE_RESULT_NOTICE"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
