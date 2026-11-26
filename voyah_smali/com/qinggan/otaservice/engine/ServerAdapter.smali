.class public interface abstract Lcom/qinggan/otaservice/engine/ServerAdapter;
.super Ljava/lang/Object;
.source "ServerAdapter.java"


# static fields
.field public static final ERROR_CMD_EXECUTED_FAILED:I = 0xa

.field public static final ERROR_DOWNLOAD_FAILED:I = 0x5

.field public static final ERROR_FILE_DAMAGED:I = 0x8

.field public static final ERROR_NO_DOWNLOAD_SPACE:I = 0x3

.field public static final ERROR_NO_UNZIP_SPACE:I = 0x4

.field public static final ERROR_OTHER:I = 0x63

.field public static final ERROR_SHUTDOWN:I = 0x1

.field public static final ERROR_UDISK_EJECT:I = 0x2

.field public static final ERROR_UNZIP_VERIFY_FAILED:I = 0x6

.field public static final ERROR_UPGRADE_VERIFY_FAILED:I = 0x7

.field public static final ERROR_UPGRADE_WRITE_FAILED:I = 0x9

.field public static final RESULT_OK:I


# virtual methods
.method public abstract finishDownload(Ljava/lang/String;)V
.end method

.method public abstract getErrorCode()J
.end method

.method public abstract getErrorMsg()Ljava/lang/String;
.end method

.method public abstract getFullPkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;
.end method

.method public abstract getPatchPkgs()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getSendTime()J
.end method

.method public abstract processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V
.end method

.method public abstract searchUpdate(I)Z
.end method

.method public abstract setListener(Lcom/qinggan/otaservice/engine/ServerAdapterListener;)V
.end method

.method public abstract updateLocalVersion(Z)Z
.end method

.method public abstract uploadResult(IJJ)V
.end method
