.class public Lcom/qinggan/otaservice/common/Tool;
.super Ljava/lang/Object;
.source "Tool.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final UPDATE_PKG_PATH:Ljava/lang/String; = "/data/media/0/update/update.zip"

.field private static mAccountManager:Lcom/qinggan/account/AccountUserManager;

.field private static sCanVersion:Ljava/lang/String;

.field private static sMcuVersion:Ljava/lang/String;

.field private static sRecoveryCmd:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 50
    const-class v0, Lcom/qinggan/otaservice/common/Tool;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    .line 52
    const-string v0, ""

    sput-object v0, Lcom/qinggan/otaservice/common/Tool;->sRecoveryCmd:Ljava/lang/String;

    .line 54
    sput-object v1, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    .line 56
    sput-object v1, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    .line 59
    invoke-static {}, Lcom/qinggan/account/AccountUserManager;->getInstance()Lcom/qinggan/account/AccountUserManager;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/Tool;->mAccountManager:Lcom/qinggan/account/AccountUserManager;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static checkCANDependency()Z
    .registers 6

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 707
    const/4 v0, 0x1

    .line 708
    .local v0, "c":Z
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    const-string v5, "canbox_version"

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->getSystemDependency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 710
    .local v1, "dep":Ljava/lang/String;
    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 711
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v4, "checkCAN dep null"

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :goto_18
    return v2

    .line 714
    :cond_19
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    invoke-static {v4}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_23

    move v2, v3

    .line 715
    goto :goto_18

    .line 717
    :cond_23
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    invoke-static {v4, v1}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_60

    move v0, v2

    .line 718
    :goto_2c
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkCAN : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] ==> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_62

    const-string v2, "pass"

    :goto_53
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v0

    .line 720
    goto :goto_18

    :cond_60
    move v0, v3

    .line 717
    goto :goto_2c

    .line 718
    :cond_62
    const-string v2, "fail"

    goto :goto_53
.end method

.method public static checkCANOk(Ljava/lang/String;)Z
    .registers 7
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 953
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tool:checkCANOk(),path="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    const/4 v0, 0x0

    .line 955
    .local v0, "bRet":Z
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getCANVersionInfoByPath(Ljava/lang/String;)Lcom/qinggan/otaservice/common/CANVersionInfo;

    move-result-object v1

    .line 956
    .local v1, "canVersionInfo":Lcom/qinggan/otaservice/common/CANVersionInfo;
    if-eqz v1, :cond_64

    .line 957
    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/CANVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v2

    .line 958
    .local v2, "version":Ljava/lang/String;
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tool:checkCANOk,cur version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", version="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    invoke-static {v2}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_64

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    .line 961
    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_5d

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sCanVersion:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_64

    .line 963
    :cond_5d
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    if-nez v3, :cond_65

    .line 964
    const/4 v0, 0x1

    .line 965
    sput-object v2, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    .line 972
    .end local v2    # "version":Ljava/lang/String;
    :cond_64
    :goto_64
    return v0

    .line 966
    .restart local v2    # "version":Ljava/lang/String;
    :cond_65
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_64

    .line 967
    const/4 v0, 0x1

    .line 968
    sput-object v2, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    goto :goto_64
.end method

.method public static checkMCUDependency()Z
    .registers 9

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 678
    const/4 v0, 0x1

    .line 681
    .local v0, "c":Z
    :try_start_3
    sget-object v6, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "check hw version ["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Lcom/qinggan/otaservice/common/SYSCache;->sHwVersion:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 682
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sHwVersion:Ljava/lang/String;

    const-string v7, "V"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    .line 683
    .local v3, "hwVersion":Ljava/lang/String;
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    .line 684
    .local v2, "hw":F
    const/high16 v6, 0x40800000    # 4.0f

    cmpg-float v6, v2, v6

    if-gez v6, :cond_40

    .line 685
    sget-object v6, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v7, "lower than v4 hardware , no need check mcu!"

    invoke-static {v6, v7}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3e} :catch_3f

    .line 703
    .end local v2    # "hw":F
    .end local v3    # "hwVersion":Ljava/lang/String;
    :goto_3e
    return v4

    .line 688
    :catch_3f
    move-exception v6

    .line 691
    :cond_40
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    const-string v7, "mcu_version"

    invoke-static {v6, v7}, Lcom/qinggan/os/SystemProperties;->getSystemDependency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 693
    .local v1, "dep":Ljava/lang/String;
    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_56

    .line 694
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v6, "checkMCU dep null"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    .line 697
    :cond_56
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v6}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_60

    move v4, v5

    .line 698
    goto :goto_3e

    .line 700
    :cond_60
    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v6, v1}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    if-ltz v6, :cond_9d

    move v0, v4

    .line 701
    :goto_69
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkMCU : ["

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " , "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "] ==> "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v0, :cond_9f

    const-string v4, "pass"

    :goto_90
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    .line 703
    goto :goto_3e

    :cond_9d
    move v0, v5

    .line 700
    goto :goto_69

    .line 701
    :cond_9f
    const-string v4, "fail"

    goto :goto_90
.end method

.method public static checkMCUOk(Ljava/lang/String;)Z
    .registers 8
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 876
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tool:checkMCUOk(),path="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 877
    const/4 v0, 0x0

    .line 878
    .local v0, "bRet":Z
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getMcuVersionInfoByPath(Ljava/lang/String;)Lcom/qinggan/otaservice/common/MCUVersionInfo;

    move-result-object v1

    .line 879
    .local v1, "mcuVersionInfo":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    if-eqz v1, :cond_d0

    .line 880
    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/MCUVersionInfo;->getPlatform()Ljava/lang/String;

    move-result-object v2

    .line 881
    .local v2, "platform":Ljava/lang/String;
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tool:checkMCUOk(),platform="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 882
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tool:checkMCUOk,curPlatform="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 884
    invoke-virtual {v1}, Lcom/qinggan/otaservice/common/MCUVersionInfo;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 885
    .local v3, "version":Ljava/lang/String;
    const-string v4, "ro.product.board"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "c3005h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d1

    const-string v4, "C62-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_d1

    .line 886
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v5, "C62 proj deal with some version error"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "C62-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 893
    :cond_8b
    :goto_8b
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Tool:checkMCUOk,cur version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", version="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 895
    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    if-eqz v4, :cond_d0

    .line 897
    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_d0

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    .line 898
    invoke-static {v4}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c9

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_d0

    .line 900
    :cond_c9
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    if-nez v4, :cond_114

    .line 901
    const/4 v0, 0x1

    .line 902
    sput-object v3, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    .line 909
    .end local v2    # "platform":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :cond_d0
    :goto_d0
    return v0

    .line 888
    .restart local v2    # "platform":Ljava/lang/String;
    .restart local v3    # "version":Ljava/lang/String;
    :cond_d1
    const-string v4, "ro.product.board"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "f0501h"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f2

    const-string v4, "H97-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_f2

    .line 889
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_8b

    .line 890
    :cond_f2
    const-string v4, "ro.product.board"

    const-string v5, ""

    invoke-static {v4, v5}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "sa8155"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8b

    const-string v4, "H97-"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8b

    .line 891
    const-string v4, "-"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_8b

    .line 903
    :cond_114
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    invoke-static {v4, v3}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_d0

    .line 904
    const/4 v0, 0x1

    .line 905
    sput-object v3, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    goto :goto_d0
.end method

.method private static checkOtherVersionOk(Ljava/lang/String;)Z
    .registers 3
    .param p0, "version"    # Ljava/lang/String;

    .prologue
    .line 672
    if-eqz p0, :cond_22

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 673
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    .line 674
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const/4 v0, 0x1

    .line 672
    :goto_21
    return v0

    .line 674
    :cond_22
    const/4 v0, 0x0

    goto :goto_21
.end method

.method public static checkResourceDependency()Z
    .registers 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 724
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sMcuPlatformString:Ljava/lang/String;

    const-string v4, "iflytek_resource_version"

    invoke-static {v3, v4}, Lcom/qinggan/os/SystemProperties;->getSystemDependency(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 727
    .local v1, "dep":Ljava/lang/String;
    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 728
    sget-object v2, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v3, "checkRES dep null"

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 737
    :goto_17
    return v0

    .line 731
    :cond_18
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sResVersion:Ljava/lang/String;

    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->checkOtherVersionOk(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_22

    move v0, v2

    .line 732
    goto :goto_17

    .line 734
    :cond_22
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sResVersion:Ljava/lang/String;

    invoke-static {v3, v1}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_5d

    .line 735
    .local v0, "c":Z
    :goto_2a
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkRES : ["

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sResVersion:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " , "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "] ==> "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz v0, :cond_5f

    const-string v2, "pass"

    :goto_51
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_17

    .end local v0    # "c":Z
    :cond_5d
    move v0, v2

    .line 734
    goto :goto_2a

    .line 735
    .restart local v0    # "c":Z
    :cond_5f
    const-string v2, "fail"

    goto :goto_51
.end method

.method public static checkUpdatePKGType()Ljava/lang/String;
    .registers 9

    .prologue
    .line 1102
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v7

    const-string v8, "/data/media/0/update/update.zip"

    invoke-virtual {v7, v8}, Lcom/qinggan/otaservice/engine/ZipManager;->isUpdateFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_49

    .line 1104
    const/4 v4, 0x0

    .line 1105
    .local v4, "type":Ljava/lang/String;
    const/4 v6, 0x0

    .line 1107
    .local v6, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_e
    new-instance v6, Ljava/util/zip/ZipFile;

    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    const-string v7, "/data/media/0/update/update.zip"

    invoke-direct {v6, v7}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_15} :catch_2d

    .line 1111
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    const-string v7, "Manifest_SYS.xml"

    invoke-virtual {v6, v7}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v5

    .line 1112
    .local v5, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v2, 0x0

    .line 1114
    .local v2, "inputStream":Ljava/io/InputStream;
    :try_start_1c
    invoke-virtual {v6, v5}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_30
    .catch Ljava/lang/NullPointerException; {:try_start_1c .. :try_end_1f} :catch_35

    move-result-object v2

    .line 1120
    :goto_20
    if-eqz v2, :cond_26

    .line 1122
    :try_start_22
    invoke-static {v2}, Lcom/qinggan/otaservice/common/XMLParserZipInfo;->checkPKGType(Ljava/io/InputStream;)Ljava/lang/String;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_25} :catch_3a

    move-result-object v4

    .line 1128
    :cond_26
    :goto_26
    :try_start_26
    invoke-virtual {v6}, Ljava/util/zip/ZipFile;->close()V

    .line 1129
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_2c} :catch_3f
    .catch Ljava/lang/NullPointerException; {:try_start_26 .. :try_end_2c} :catch_44

    .line 1139
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2c
    return-object v4

    .line 1108
    .restart local v4    # "type":Ljava/lang/String;
    :catch_2d
    move-exception v1

    .line 1109
    .local v1, "e":Ljava/io/IOException;
    const/4 v4, 0x0

    goto :goto_2c

    .line 1115
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v2    # "inputStream":Ljava/io/InputStream;
    .restart local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_30
    move-exception v0

    .line 1116
    .local v0, "IOex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 1117
    .end local v0    # "IOex":Ljava/io/IOException;
    :catch_35
    move-exception v3

    .line 1118
    .local v3, "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_20

    .line 1123
    .end local v3    # "nullex":Ljava/lang/NullPointerException;
    :catch_3a
    move-exception v1

    .line 1124
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_26

    .line 1130
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3f
    move-exception v1

    .line 1131
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2c

    .line 1132
    .end local v1    # "e":Ljava/io/IOException;
    :catch_44
    move-exception v3

    .line 1133
    .restart local v3    # "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2c

    .line 1136
    .end local v2    # "inputStream":Ljava/io/InputStream;
    .end local v3    # "nullex":Ljava/lang/NullPointerException;
    .end local v4    # "type":Ljava/lang/String;
    .end local v5    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v6    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_49
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v7

    const-string v8, "/data/media/0/update/update.zip"

    invoke-virtual {v7, v8}, Lcom/qinggan/otaservice/engine/ZipManager;->isMeterUpdateFile(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_58

    .line 1137
    const-string v4, "meter"

    goto :goto_2c

    .line 1139
    :cond_58
    const-string v4, "unknown"

    goto :goto_2c
.end method

.method public static checkVersionDependency()Z
    .registers 4

    .prologue
    .line 741
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkMCUDependency()Z

    move-result v1

    .line 742
    .local v1, "mcu":Z
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkCANDependency()Z

    move-result v0

    .line 743
    .local v0, "can":Z
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkResourceDependency()Z

    move-result v2

    .line 744
    .local v2, "res":Z
    if-eqz v1, :cond_14

    if-eqz v0, :cond_14

    if-eqz v2, :cond_14

    const/4 v3, 0x1

    :goto_13
    return v3

    :cond_14
    const/4 v3, 0x0

    goto :goto_13
.end method

.method public static combineWipeDataCommand(Ljava/lang/String;)V
    .registers 3
    .param p0, "cmd"    # Ljava/lang/String;

    .prologue
    .line 668
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->sRecoveryCmd:Ljava/lang/String;

    const-string v1, "#"

    invoke-virtual {v0, v1, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/qinggan/otaservice/common/Tool;->sRecoveryCmd:Ljava/lang/String;

    .line 669
    return-void
.end method

.method public static compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p0, "versionStr1"    # Ljava/lang/String;
    .param p1, "versionStr2"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x0

    .line 417
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "compareCombinedVersionCode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 419
    if-eqz p0, :cond_27

    if-nez p1, :cond_29

    :cond_27
    move v1, v4

    .line 430
    :cond_28
    :goto_28
    return v1

    .line 422
    :cond_29
    const-string v5, "_"

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 423
    .local v2, "version1":[Ljava/lang/String;
    const-string v5, "_"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 424
    .local v3, "version2":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_36
    array-length v5, v2

    if-ge v0, v5, :cond_49

    array-length v5, v3

    if-ge v0, v5, :cond_49

    .line 425
    aget-object v5, v2, v0

    aget-object v6, v3, v0

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 426
    .local v1, "result":I
    if-nez v1, :cond_28

    .line 424
    add-int/lit8 v0, v0, 0x1

    goto :goto_36

    .end local v1    # "result":I
    :cond_49
    move v1, v4

    .line 430
    goto :goto_28
.end method

.method public static compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I
    .registers 15
    .param p0, "versionStr1"    # Ljava/lang/String;
    .param p1, "versionStr2"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 434
    sget-object v10, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "compareVersionCode: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    if-eqz p0, :cond_27

    if-nez p1, :cond_29

    :cond_27
    move v6, v9

    .line 463
    :goto_28
    return v6

    .line 438
    :cond_29
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    .line 439
    .local v7, "version1":[Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    const-string v11, "\\."

    invoke-virtual {v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    .line 440
    .local v8, "version2":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_3e
    array-length v10, v7

    if-ge v1, v10, :cond_91

    array-length v10, v8

    if-ge v1, v10, :cond_91

    .line 442
    :try_start_44
    aget-object v10, v7, v1

    invoke-static {v10}, Lcom/qinggan/otaservice/common/Tool;->getVersionLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 443
    .local v2, "i1":J
    aget-object v10, v8, v1

    invoke-static {v10}, Lcom/qinggan/otaservice/common/Tool;->getVersionLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 444
    .local v4, "i2":J
    cmp-long v10, v2, v4

    if-gez v10, :cond_5d

    .line 445
    sget-object v10, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v11, "compareVersionCode return -1"

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const/4 v6, -0x1

    goto :goto_28

    .line 448
    :cond_5d
    cmp-long v10, v2, v4

    if-lez v10, :cond_8e

    .line 449
    sget-object v10, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v11, "compareVersionCode return 1"

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_68
    .catch Ljava/lang/NumberFormatException; {:try_start_44 .. :try_end_68} :catch_6a

    .line 450
    const/4 v6, 0x1

    goto :goto_28

    .line 452
    .end local v2    # "i1":J
    .end local v4    # "i2":J
    :catch_6a
    move-exception v0

    .line 453
    .local v0, "e":Ljava/lang/NumberFormatException;
    aget-object v10, v7, v1

    aget-object v11, v8, v1

    invoke-virtual {v10, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v6

    .line 454
    .local v6, "result":I
    if-eqz v6, :cond_8e

    .line 455
    sget-object v9, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "compareVersionCode NumberFormatException return "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_28

    .line 440
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v6    # "result":I
    :cond_8e
    add-int/lit8 v1, v1, 0x1

    goto :goto_3e

    .line 462
    :cond_91
    sget-object v10, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v11, "compareVersionCode return 0"

    invoke-static {v10, v11}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v9

    .line 463
    goto :goto_28
.end method

.method public static covertTimeToLong(Ljava/lang/String;)J
    .registers 7
    .param p0, "time"    # Ljava/lang/String;

    .prologue
    .line 1081
    if-eqz p0, :cond_8

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1082
    :cond_8
    const-wide/16 v4, 0x0

    .line 1092
    :goto_a
    return-wide v4

    .line 1083
    :cond_b
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1085
    .local v1, "dateFormatFormat":Ljava/text/SimpleDateFormat;
    const-wide/16 v4, 0x0

    .line 1087
    .local v4, "tm":J
    :try_start_14
    invoke-virtual {v1, p0}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    .line 1088
    .local v0, "date":Ljava/util/Date;
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_1b
    .catch Ljava/text/ParseException; {:try_start_14 .. :try_end_1b} :catch_1d

    move-result-wide v4

    goto :goto_a

    .line 1089
    .end local v0    # "date":Ljava/util/Date;
    :catch_1d
    move-exception v2

    .line 1090
    .local v2, "e":Ljava/text/ParseException;
    invoke-virtual {v2}, Ljava/text/ParseException;->printStackTrace()V

    goto :goto_a
.end method

.method public static dataTracking(Landroid/content/Context;ZZZ)V
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "silence"    # Z
    .param p2, "local"    # Z
    .param p3, "start"    # Z

    .prologue
    .line 1017
    new-instance v2, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;

    if-eqz p1, :cond_7d

    sget-object v3, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->osHandle:Ljava/lang/String;

    move-object v4, v3

    :goto_7
    if-eqz p3, :cond_81

    sget-object v3, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->update:Ljava/lang/String;

    :goto_b
    invoke-direct {v2, p0, v4, v3}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 1022
    .local v2, "tracking":Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;
    new-instance v0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;

    invoke-direct {v0}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;-><init>()V

    .line 1023
    .local v0, "obj":Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;
    if-eqz p2, :cond_84

    const-string v3, "2"

    :goto_17
    invoke-virtual {v0, v3}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->setUpdate_way(Ljava/lang/String;)V

    .line 1024
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->setCurrent_version(Ljava/lang/String;)V

    .line 1026
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sCurrentVersionCode:Ljava/lang/String;

    .line 1027
    .local v1, "targetMpu":Ljava/lang/String;
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    if-eqz v3, :cond_53

    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    .line 1028
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_53

    .line 1029
    sget-object v3, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v3}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v1

    .line 1031
    :cond_53
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getNewMcuVersion()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->setTarget_version(Ljava/lang/String;)V

    .line 1032
    const-string v3, "03"

    invoke-virtual {v0, v3}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->setSoftware_type(Ljava/lang/String;)V

    .line 1033
    invoke-virtual {v2, v0}, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;->setSoftware_update(Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;)V

    .line 1034
    invoke-static {v2}, Lcom/qinggan/datatracking/DataTracking;->onEvent(Lcom/qinggan/datatracking/common/UserTrackingEvent;)V

    .line 1035
    return-void

    .line 1017
    .end local v0    # "obj":Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;
    .end local v1    # "targetMpu":Ljava/lang/String;
    .end local v2    # "tracking":Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;
    :cond_7d
    sget-object v3, Lcom/qinggan/datatracking/common/Constants$InteractiveWay;->appAuto:Ljava/lang/String;

    move-object v4, v3

    goto :goto_7

    :cond_81
    sget-object v3, Lcom/qinggan/datatracking/common/Constants$Behavior$SoftUpdate;->updateComplete:Ljava/lang/String;

    goto :goto_b

    .line 1023
    .restart local v0    # "obj":Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;
    .restart local v2    # "tracking":Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;
    :cond_84
    const-string v3, "1"

    goto :goto_17
.end method

.method public static deleteUpdateFile(Ljava/lang/String;)V
    .registers 3
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 236
    if-eqz p0, :cond_a

    const-string v1, ""

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 243
    :cond_a
    :goto_a
    return-void

    .line 239
    :cond_b
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 240
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 241
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_a
.end method

.method public static findOtherUpdateFilesFromExtsd()Z
    .registers 3

    .prologue
    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/update/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 533
    .local v0, "p":Ljava/lang/String;
    sget-object v1, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v2, "findOtherUpdateFilesFromExtsd"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 534
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->scanOtherUpdates(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static findOtherUpdateFilesFromUdisk(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/update/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 539
    .local v0, "p":Ljava/lang/String;
    sget-object v1, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v2, "findOtherUpdateFilesFromUdisk"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 540
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->scanOtherUpdates(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static findOtherUpdateFilesLocal(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 544
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v1, "findOtherUpdateFilesLocal"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getAllUDiskPath(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    const-string v1, "/update/"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/qinggan/otaservice/common/Tool;->scanOtherUpdates(Ljava/util/List;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public static findSYSZipFromDownloadOTA()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1151
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->isDownloadOtaExist()Z

    move-result v2

    if-eqz v2, :cond_48

    .line 1152
    invoke-static {}, Lcom/qinggan/otaservice/common/VersionUtil;->getProjectName()Ljava/lang/String;

    move-result-object v0

    .line 1153
    .local v0, "currentProjectName":Ljava/lang/String;
    sget-object v2, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "findSYSZipFromDownloadOTA() currentProjectName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1154
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1155
    .local v1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/media/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1156
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/update/update.zip"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1155
    invoke-static {v1, v0, v2}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipImpl(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    :goto_47
    return-object v1

    .end local v0    # "currentProjectName":Ljava/lang/String;
    .end local v1    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    :cond_48
    const/4 v1, 0x0

    goto :goto_47
.end method

.method public static findSYSZipFromSDCard()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 381
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v1, "Find Zip Files in SDCard"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/media/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->findUpdateFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public static findSYSZipFromUdisk(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 386
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v1, "Find Zip Files in Udisk"

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->findUpdateFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method private static findSYSZipImpl(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8
    .param p1, "currentProjectName"    # Ljava/lang/String;
    .param p2, "_path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 357
    .local p0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/qinggan/otaservice/engine/ZipManager;->isUpdateFile(Ljava/lang/String;)Z

    move-result v0

    .line 358
    .local v0, "flag":Z
    if-eqz v0, :cond_82

    .line 359
    invoke-static {p2}, Lcom/qinggan/otaservice/common/Tool;->getSYSVersionInfoByPath(Ljava/lang/String;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    move-result-object v1

    .line 360
    .local v1, "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    if-eqz v1, :cond_81

    .line 361
    sget-object v2, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", file pn: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 363
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getProject()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 364
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 361
    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 365
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getProject()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_62

    const-string v2, "f0506h"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    const-string v2, "f0505h"

    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getProject()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_81

    .line 366
    :cond_62
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v2

    sget-object v3, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->NA:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 367
    invoke-virtual {v3}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_81

    sget-boolean v2, Lcom/qinggan/otaservice/common/SYSCache;->sDualSystem:Z

    if-eqz v2, :cond_7e

    .line 368
    invoke-virtual {v1}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getType()I

    move-result v2

    sget-object v3, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 369
    invoke-virtual {v3}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->getValue()I

    move-result v3

    if-eq v2, v3, :cond_81

    .line 372
    :cond_7e
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 378
    .end local v1    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_81
    :goto_81
    return-void

    .line 376
    :cond_82
    sget-object v2, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not system update file ... "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_81
.end method

.method public static findSYSZipLocal(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 392
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v6, "Find Zip Files Local"

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getAllUDiskPath(Landroid/content/Context;)Ljava/util/List;

    move-result-object v5

    const-string v6, "/update/"

    const/4 v7, 0x1

    .line 393
    invoke-static {v5, v6, v7}, Lcom/qinggan/otaservice/common/Tool;->findUpdateFile(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v2

    .line 395
    .local v2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v0, -0x1

    .line 396
    .local v0, "chosen":I
    const/4 v4, 0x0

    .line 397
    .local v4, "version":Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_15
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v1, v5, :cond_47

    .line 398
    if-nez v4, :cond_2b

    .line 399
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 400
    move v0, v1

    .line 397
    :cond_28
    :goto_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    .line 402
    :cond_2b
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->compareVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_28

    .line 403
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-virtual {v5}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getVersionName()Ljava/lang/String;

    move-result-object v4

    .line 404
    move v0, v1

    goto :goto_28

    .line 408
    :cond_47
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 409
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    const/4 v5, -0x1

    if-eq v0, v5, :cond_56

    .line 410
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 412
    :cond_56
    return-object v3
.end method

.method private static findUpdateFile(Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 11
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "local"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 330
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 331
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-static {}, Lcom/qinggan/otaservice/common/VersionUtil;->getProjectName()Ljava/lang/String;

    move-result-object v2

    .line 332
    .local v2, "currentProjectName":Ljava/lang/String;
    if-eqz p1, :cond_3b

    sget-object v6, Lcom/qinggan/otaservice/common/SYSCache;->sMpuName:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3b

    .line 333
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Lcom/qinggan/otaservice/common/SYSCache;->sMpuName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".zip"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 334
    .local v1, "_path":Ljava/lang/String;
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 335
    invoke-static {v5, v2, v1}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipImpl(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .end local v1    # "_path":Ljava/lang/String;
    :cond_3a
    return-object v5

    .line 338
    :cond_3b
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->scanDirectory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 339
    .local v0, "_map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .line 340
    .local v4, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_47
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 341
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 342
    .local v3, "fileName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 344
    .restart local v1    # "_path":Ljava/lang/String;
    sget-object v6, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "test if it isUpdateFile "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    const-string v6, ".zip"

    invoke-virtual {v1, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_9d

    .line 346
    sget-object v6, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " not ends .zip , ignore... "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 349
    :cond_9d
    invoke-static {v5, v2, v1}, Lcom/qinggan/otaservice/common/Tool;->findSYSZipImpl(Ljava/util/ArrayList;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47
.end method

.method private static findUpdateFile(Ljava/util/List;Ljava/lang/String;Z)Ljava/util/ArrayList;
    .registers 7
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/engine/SYSVersionInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 318
    .local p0, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 319
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/engine/SYSVersionInfo;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 320
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/qinggan/otaservice/common/Tool;->findUpdateFile(Ljava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_9

    .line 322
    .end local v1    # "path":Ljava/lang/String;
    :cond_2e
    return-object v0
.end method

.method public static genOtherCombinedUpdateString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 557
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN_MCU:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MCU:"

    const-string v2, ":"

    .line 558
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "CAN:"

    const-string v2, ":"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 557
    return-object v0
.end method

.method public static genOtherUpdateString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 553
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->sRecoveryCmd:Ljava/lang/String;

    const-string v1, "#:"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "#"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getAllUDiskPath(Landroid/content/Context;)Ljava/util/List;
    .registers 9
    .param p0, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 165
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 166
    .local v2, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p0}, Lcom/qinggan/os/ExternalDevicesState;->getUsbVolume(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 167
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_d
    :goto_d
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 168
    .local v1, "mount":Ljava/lang/String;
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check mount point: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    invoke-static {p0, v1}, Lcom/qinggan/os/ExternalDevicesState;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 170
    .local v3, "res":Ljava/lang/String;
    const-string v5, "mounted"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 171
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check mount point: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is mounted"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_d

    .line 175
    .end local v1    # "mount":Ljava/lang/String;
    .end local v3    # "res":Ljava/lang/String;
    :cond_5f
    return-object v2
.end method

.method public static getAvailableStorage(Ljava/lang/String;)J
    .registers 5
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 479
    const-wide/16 v0, 0x0

    .line 480
    .local v0, "availabeSize":J
    if-eqz p0, :cond_1d

    const-string v3, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1d

    .line 481
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 482
    .local v2, "file":Ljava/io/File;
    if-eqz v2, :cond_1d

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 483
    invoke-virtual {v2}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    .line 486
    .end local v2    # "file":Ljava/io/File;
    :cond_1d
    return-wide v0
.end method

.method public static getCANVersionInfoByPath(Ljava/lang/String;)Lcom/qinggan/otaservice/common/CANVersionInfo;
    .registers 13
    .param p0, "canPath"    # Ljava/lang/String;

    .prologue
    .line 976
    sget-object v9, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*****getCANVersionInfoByPath(),canPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 977
    new-instance v2, Lcom/qinggan/otaservice/common/CANVersionInfo;

    invoke-direct {v2}, Lcom/qinggan/otaservice/common/CANVersionInfo;-><init>()V

    .line 978
    .local v2, "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    const/4 v7, 0x0

    .line 980
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1e
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_3f

    .line 984
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    const-string v9, "Manifest_SYS.xml"

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 985
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 987
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_2a
    invoke-virtual {v8, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2d} :catch_48

    move-result-object v4

    .line 993
    :goto_2e
    if-eqz v4, :cond_51

    .line 995
    :try_start_30
    invoke-static {v4}, Lcom/qinggan/otaservice/common/XMLParserCANZipInfo;->readXmlByPull(Ljava/io/InputStream;)Lcom/qinggan/otaservice/common/CANVersionInfo;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_4d

    move-result-object v2

    move-object v3, v2

    .line 1001
    .end local v2    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    .local v3, "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    :goto_35
    :try_start_35
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 1002
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_3b} :catch_58

    :goto_3b
    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    move-object v2, v3

    .end local v3    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    .restart local v2    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    move-object v9, v3

    .line 1008
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_3e
    return-object v9

    .line 981
    :catch_3f
    move-exception v1

    .line 982
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_3e

    .line 988
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_43
    move-exception v0

    .line 989
    .local v0, "IOex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 990
    .end local v0    # "IOex":Ljava/io/IOException;
    :catch_48
    move-exception v5

    .line 991
    .local v5, "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2e

    .line 996
    .end local v5    # "nullex":Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v1

    .line 997
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_51
    move-object v3, v2

    .end local v2    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    .restart local v3    # "infoBean":Lcom/qinggan/otaservice/common/CANVersionInfo;
    goto :goto_35

    .line 1003
    :catch_53
    move-exception v1

    .line 1004
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 1005
    .end local v1    # "e":Ljava/io/IOException;
    :catch_58
    move-exception v5

    .line 1006
    .restart local v5    # "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3b
.end method

.method public static getCombinedVersion(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p0, "mpuVersion"    # Ljava/lang/String;

    .prologue
    .line 102
    move-object v0, p0

    .line 103
    .local v0, "result":Ljava/lang/String;
    sget-object v1, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mcu"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 106
    :cond_28
    return-object v0
.end method

.method public static getCurrentTime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 1075
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 1077
    .local v0, "dateFormatFormat":Ljava/text/SimpleDateFormat;
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getCurrentUserId()I
    .registers 1

    .prologue
    .line 1012
    const/4 v0, 0x0

    return v0
.end method

.method public static getDownloadedUpdateFileSize(Ljava/lang/String;)J
    .registers 9
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 490
    const-wide/16 v4, 0x0

    .line 491
    .local v4, "size":J
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 492
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_39

    .line 493
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v3, v0

    if-ge v1, v3, :cond_39

    .line 494
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    .line 495
    .local v2, "name":Ljava/lang/String;
    const-string v3, "update-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_27

    const-string v3, "patch-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    :cond_27
    const-string v3, ".zip"

    .line 496
    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_36

    .line 497
    aget-object v3, v0, v1

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 493
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 501
    .end local v1    # "i":I
    .end local v2    # "name":Ljava/lang/String;
    :cond_39
    return-wide v4
.end method

.method public static getMcuVersionInfoByPath(Ljava/lang/String;)Lcom/qinggan/otaservice/common/MCUVersionInfo;
    .registers 13
    .param p0, "mcuPath"    # Ljava/lang/String;

    .prologue
    .line 917
    sget-object v9, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "*****mcuVersionInfoByPath(),mcuPath="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 918
    new-instance v2, Lcom/qinggan/otaservice/common/MCUVersionInfo;

    invoke-direct {v2}, Lcom/qinggan/otaservice/common/MCUVersionInfo;-><init>()V

    .line 919
    .local v2, "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    const/4 v7, 0x0

    .line 921
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_1e
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_23} :catch_3f

    .line 925
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    const-string v9, "Manifest_SYS.xml"

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 926
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 928
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_2a
    invoke-virtual {v8, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2d} :catch_43
    .catch Ljava/lang/NullPointerException; {:try_start_2a .. :try_end_2d} :catch_48

    move-result-object v4

    .line 934
    :goto_2e
    if-eqz v4, :cond_51

    .line 936
    :try_start_30
    invoke-static {v4}, Lcom/qinggan/otaservice/common/XMLParserMCUZipInfo;->readXmlByPull(Ljava/io/InputStream;)Lcom/qinggan/otaservice/common/MCUVersionInfo;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_33} :catch_4d

    move-result-object v2

    move-object v3, v2

    .line 942
    .end local v2    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    .local v3, "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    :goto_35
    :try_start_35
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 943
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3b
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_3b} :catch_53
    .catch Ljava/lang/NullPointerException; {:try_start_35 .. :try_end_3b} :catch_58

    :goto_3b
    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    move-object v2, v3

    .end local v3    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    .restart local v2    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    move-object v9, v3

    .line 949
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_3e
    return-object v9

    .line 922
    :catch_3f
    move-exception v1

    .line 923
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_3e

    .line 929
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_43
    move-exception v0

    .line 930
    .local v0, "IOex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2e

    .line 931
    .end local v0    # "IOex":Ljava/io/IOException;
    :catch_48
    move-exception v5

    .line 932
    .local v5, "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_2e

    .line 937
    .end local v5    # "nullex":Ljava/lang/NullPointerException;
    :catch_4d
    move-exception v1

    .line 938
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_51
    move-object v3, v2

    .end local v2    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    .restart local v3    # "infoBean":Lcom/qinggan/otaservice/common/MCUVersionInfo;
    goto :goto_35

    .line 944
    :catch_53
    move-exception v1

    .line 945
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3b

    .line 946
    .end local v1    # "e":Ljava/io/IOException;
    :catch_58
    move-exception v5

    .line 947
    .restart local v5    # "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_3b
.end method

.method public static getMd5Info(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 19
    .param p0, "localPath"    # Ljava/lang/String;
    .param p1, "md5file"    # Ljava/lang/String;

    .prologue
    .line 246
    const/4 v12, 0x0

    .line 247
    .local v12, "zipFile":Ljava/util/zip/ZipFile;
    const/4 v7, 0x0

    .line 249
    .local v7, "result":Ljava/lang/String;
    :try_start_2
    new-instance v13, Ljava/util/zip/ZipFile;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_9} :catch_2f

    .line 253
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .local v13, "zipFile":Ljava/util/zip/ZipFile;
    move-object/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v11

    .line 254
    .local v11, "zipEntry":Ljava/util/zip/ZipEntry;
    sget-object v14, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "getMd5Info, md5file = "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    if-nez v11, :cond_33

    .line 256
    const/4 v14, 0x0

    move-object v8, v7

    .end local v7    # "result":Ljava/lang/String;
    .local v8, "result":Ljava/lang/String;
    move-object v12, v13

    .line 288
    .end local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    :goto_2e
    return-object v14

    .line 250
    .end local v8    # "result":Ljava/lang/String;
    .restart local v7    # "result":Ljava/lang/String;
    :catch_2f
    move-exception v4

    .line 251
    .local v4, "e":Ljava/io/IOException;
    const/4 v14, 0x0

    move-object v8, v7

    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    goto :goto_2e

    .line 258
    .end local v4    # "e":Ljava/io/IOException;
    .end local v8    # "result":Ljava/lang/String;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v11    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_33
    const/4 v5, 0x0

    .line 260
    .local v5, "inputStream":Ljava/io/InputStream;
    :try_start_34
    invoke-virtual {v13, v11}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_5c
    .catch Ljava/lang/NullPointerException; {:try_start_34 .. :try_end_37} :catch_64

    move-result-object v5

    .line 268
    if-eqz v5, :cond_58

    .line 270
    :try_start_3a
    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v2, "bis":Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 272
    .local v3, "br":Ljava/io/BufferedReader;
    new-instance v9, Ljava/lang/StringBuffer;

    invoke-direct {v9}, Ljava/lang/StringBuffer;-><init>()V

    .line 273
    .local v9, "sb":Ljava/lang/StringBuffer;
    const/4 v10, 0x0

    .line 274
    .local v10, "temp":Ljava/lang/String;
    :goto_4a
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6c

    .line 275
    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_53
    .catch Ljava/io/FileNotFoundException; {:try_start_3a .. :try_end_53} :catch_54
    .catch Ljava/io/IOException; {:try_start_3a .. :try_end_53} :catch_77
    .catch Ljava/lang/NullPointerException; {:try_start_3a .. :try_end_53} :catch_7c

    goto :goto_4a

    .line 280
    .end local v2    # "bis":Ljava/io/InputStreamReader;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "temp":Ljava/lang/String;
    :catch_54
    move-exception v4

    .line 281
    .local v4, "e":Ljava/io/FileNotFoundException;
    invoke-virtual {v4}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .end local v4    # "e":Ljava/io/FileNotFoundException;
    :cond_58
    :goto_58
    move-object v8, v7

    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    move-object v14, v7

    .line 288
    goto :goto_2e

    .line 261
    .end local v8    # "result":Ljava/lang/String;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_5c
    move-exception v1

    .line 262
    .local v1, "IOex":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    .line 263
    const/4 v14, 0x0

    move-object v8, v7

    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2e

    .line 264
    .end local v1    # "IOex":Ljava/io/IOException;
    .end local v8    # "result":Ljava/lang/String;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_64
    move-exception v6

    .line 265
    .local v6, "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 266
    const/4 v14, 0x0

    move-object v8, v7

    .end local v7    # "result":Ljava/lang/String;
    .restart local v8    # "result":Ljava/lang/String;
    move-object v12, v13

    .end local v13    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v12    # "zipFile":Ljava/util/zip/ZipFile;
    goto :goto_2e

    .line 277
    .end local v6    # "nullex":Ljava/lang/NullPointerException;
    .end local v8    # "result":Ljava/lang/String;
    .end local v12    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v2    # "bis":Ljava/io/InputStreamReader;
    .restart local v3    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "result":Ljava/lang/String;
    .restart local v9    # "sb":Ljava/lang/StringBuffer;
    .restart local v10    # "temp":Ljava/lang/String;
    .restart local v13    # "zipFile":Ljava/util/zip/ZipFile;
    :cond_6c
    :try_start_6c
    invoke-virtual {v9}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    .line 278
    invoke-virtual {v13}, Ljava/util/zip/ZipFile;->close()V

    .line 279
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_76
    .catch Ljava/io/FileNotFoundException; {:try_start_6c .. :try_end_76} :catch_54
    .catch Ljava/io/IOException; {:try_start_6c .. :try_end_76} :catch_77
    .catch Ljava/lang/NullPointerException; {:try_start_6c .. :try_end_76} :catch_7c

    goto :goto_58

    .line 282
    .end local v2    # "bis":Ljava/io/InputStreamReader;
    .end local v3    # "br":Ljava/io/BufferedReader;
    .end local v9    # "sb":Ljava/lang/StringBuffer;
    .end local v10    # "temp":Ljava/lang/String;
    :catch_77
    move-exception v4

    .line 283
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_58

    .line 284
    .end local v4    # "e":Ljava/io/IOException;
    :catch_7c
    move-exception v6

    .line 285
    .restart local v6    # "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v6}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_58
.end method

.method public static getNewMcuVersion()Ljava/lang/String;
    .registers 1

    .prologue
    .line 913
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    return-object v0
.end method

.method public static getOTAVersion(Ljava/lang/String;)Lcom/qinggan/ota/OTAVersion;
    .registers 6
    .param p0, "combinedVersion"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 110
    if-eqz p0, :cond_46

    .line 111
    const-string v2, "_"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 112
    .local v1, "versionParts":[Ljava/lang/String;
    if-eqz v1, :cond_46

    array-length v2, v1

    if-lez v2, :cond_46

    .line 113
    new-instance v0, Lcom/qinggan/ota/OTAVersion;

    invoke-direct {v0}, Lcom/qinggan/ota/OTAVersion;-><init>()V

    .line 114
    .local v0, "version":Lcom/qinggan/ota/OTAVersion;
    const/4 v2, 0x0

    aget-object v2, v1, v2

    iput-object v2, v0, Lcom/qinggan/ota/OTAVersion;->mpuVersion:Ljava/lang/String;

    .line 115
    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sOTAExtra:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "mcu"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2d

    array-length v2, v1

    if-le v2, v4, :cond_2d

    .line 117
    aget-object v2, v1, v4

    iput-object v2, v0, Lcom/qinggan/ota/OTAVersion;->mcuVersion:Ljava/lang/String;

    .line 119
    :cond_2d
    sget-object v2, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getOTAVersion: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    .end local v0    # "version":Lcom/qinggan/ota/OTAVersion;
    .end local v1    # "versionParts":[Ljava/lang/String;
    :goto_45
    return-object v0

    :cond_46
    const/4 v0, 0x0

    goto :goto_45
.end method

.method public static getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 157
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 158
    .local v0, "root":Ljava/lang/String;
    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1f

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/Android/data/com.qinggan.otaservice/files"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :cond_1f
    return-object v0
.end method

.method public static getSYSVersionInfoByPath(Ljava/lang/String;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .registers 11
    .param p0, "localPath"    # Ljava/lang/String;

    .prologue
    .line 197
    new-instance v2, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    invoke-direct {v2}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;-><init>()V

    .line 198
    .local v2, "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    const/4 v7, 0x0

    .line 200
    .local v7, "zipFile":Ljava/util/zip/ZipFile;
    :try_start_6
    new-instance v8, Ljava/util/zip/ZipFile;

    invoke-direct {v8, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_b} :catch_2a

    .line 204
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .local v8, "zipFile":Ljava/util/zip/ZipFile;
    const-string v9, "Manifest_SYS.xml"

    invoke-virtual {v8, v9}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    .line 205
    .local v6, "zipEntry":Ljava/util/zip/ZipEntry;
    const/4 v4, 0x0

    .line 207
    .local v4, "inputStream":Ljava/io/InputStream;
    :try_start_12
    invoke-virtual {v8, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_15} :catch_2e
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_15} :catch_33

    move-result-object v4

    .line 213
    :goto_16
    if-eqz v4, :cond_3c

    .line 215
    :try_start_18
    invoke-static {v4}, Lcom/qinggan/otaservice/common/XMLParserZipInfo;->readXmlByPull(Ljava/io/InputStream;)Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_38

    move-result-object v2

    move-object v3, v2

    .line 221
    .end local v2    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .local v3, "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :goto_1d
    :try_start_1d
    invoke-virtual {v8}, Ljava/util/zip/ZipFile;->close()V

    .line 222
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_23} :catch_3e
    .catch Ljava/lang/NullPointerException; {:try_start_1d .. :try_end_23} :catch_43

    .line 228
    :goto_23
    invoke-virtual {v3, p0}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->setLocalPath(Ljava/lang/String;)V

    move-object v7, v8

    .end local v8    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v7    # "zipFile":Ljava/util/zip/ZipFile;
    move-object v2, v3

    .end local v3    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .restart local v2    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    move-object v9, v3

    .line 229
    .end local v4    # "inputStream":Ljava/io/InputStream;
    .end local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    :goto_29
    return-object v9

    .line 201
    :catch_2a
    move-exception v1

    .line 202
    .local v1, "e":Ljava/io/IOException;
    const/4 v3, 0x0

    move-object v9, v3

    goto :goto_29

    .line 208
    .end local v1    # "e":Ljava/io/IOException;
    .end local v7    # "zipFile":Ljava/util/zip/ZipFile;
    .restart local v4    # "inputStream":Ljava/io/InputStream;
    .restart local v6    # "zipEntry":Ljava/util/zip/ZipEntry;
    .restart local v8    # "zipFile":Ljava/util/zip/ZipFile;
    :catch_2e
    move-exception v0

    .line 209
    .local v0, "IOex":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 210
    .end local v0    # "IOex":Ljava/io/IOException;
    :catch_33
    move-exception v5

    .line 211
    .local v5, "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_16

    .line 216
    .end local v5    # "nullex":Ljava/lang/NullPointerException;
    :catch_38
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3c
    move-object v3, v2

    .end local v2    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    .restart local v3    # "infoBean":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    goto :goto_1d

    .line 223
    :catch_3e
    move-exception v1

    .line 224
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_23

    .line 225
    .end local v1    # "e":Ljava/io/IOException;
    :catch_43
    move-exception v5

    .line 226
    .restart local v5    # "nullex":Ljava/lang/NullPointerException;
    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_23
.end method

.method public static getUDiskPath(Landroid/content/Context;)Ljava/lang/String;
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    invoke-static {p0}, Lcom/qinggan/os/ExternalDevicesState;->getUsbVolume(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 145
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_57

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 146
    .local v1, "mount":Ljava/lang/String;
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check mount point: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    invoke-static {p0, v1}, Lcom/qinggan/os/ExternalDevicesState;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 148
    .local v2, "res":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 149
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check mount point: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is mounted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    .end local v1    # "mount":Ljava/lang/String;
    .end local v2    # "res":Ljava/lang/String;
    :goto_56
    return-object v1

    :cond_57
    const-string v1, ""

    goto :goto_56
.end method

.method private static getVersionLong(Ljava/lang/String;)J
    .registers 6
    .param p0, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    .prologue
    .line 467
    const-wide/16 v0, 0x0

    .line 468
    .local v0, "re":J
    if-eqz p0, :cond_26

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_26

    .line 469
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rc"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_27

    .line 470
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "rc"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 475
    :cond_26
    :goto_26
    return-wide v0

    .line 472
    :cond_27
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_26
.end method

.method public static hasUboot()Z
    .registers 3

    .prologue
    .line 1163
    invoke-static {}, Lcom/qinggan/otaservice/engine/ZipManager;->getInstance()Lcom/qinggan/otaservice/engine/ZipManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "/data/media/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1164
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/update/update.zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1163
    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/ZipManager;->hasUbootUpgrade(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isDownloadOtaExist()Z
    .registers 2

    .prologue
    .line 1097
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/media/0/update/update.zip"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1098
    .local v0, "updateFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    return v1
.end method

.method public static isFileInUDisk(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    .line 179
    const/4 v0, 0x0

    .line 180
    .local v0, "mFlag":Z
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 181
    .local v1, "udiskPath":Ljava/lang/String;
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    if-eqz p1, :cond_1e

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1e

    .line 182
    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 183
    const/4 v0, 0x1

    .line 186
    :cond_1e
    return v0
.end method

.method public static isMcuOk()Z
    .registers 3

    .prologue
    .line 658
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isMcuOk ? version is ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    sget-object v0, Lcom/qinggan/otaservice/common/SYSCache;->sMcuVersion:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_31

    .line 660
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v1, "mcu is broken!"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const/4 v0, 0x0

    .line 664
    :goto_30
    return v0

    .line 663
    :cond_31
    sget-object v0, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v1, "mcu is OK!"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    const/4 v0, 0x1

    goto :goto_30
.end method

.method private static isMessyCode(Ljava/lang/String;)Z
    .registers 14
    .param p0, "strName"    # Ljava/lang/String;

    .prologue
    const/4 v10, 0x0

    .line 1046
    :try_start_1
    const-string v11, "\\s*|\t*|\r*|\n*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    .line 1047
    .local v7, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v7, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 1048
    .local v6, "m":Ljava/util/regex/Matcher;
    const-string v11, ""

    invoke-virtual {v6, v11}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1049
    .local v0, "after":Ljava/lang/String;
    const-string v11, "\\p{P}"

    const-string v12, ""

    invoke-virtual {v0, v11, v12}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 1050
    .local v9, "temp":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 1052
    .local v2, "ch":[C
    if-eqz v2, :cond_4e

    array-length v5, v2

    .line 1053
    .local v5, "length":I
    :goto_24
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_25
    if-ge v4, v5, :cond_4d

    .line 1054
    aget-char v1, v2, v4

    .line 1055
    .local v1, "c":C
    invoke-static {v1}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v11

    if-nez v11, :cond_50

    .line 1056
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    aget-char v12, v2, v4

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1057
    .local v8, "str":Ljava/lang/String;
    const-string v11, "[\u4e00-\u9fa5]+"

    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z
    :try_end_49
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_49} :catch_53

    move-result v11

    if-nez v11, :cond_50

    .line 1058
    const/4 v10, 0x1

    .line 1066
    .end local v0    # "after":Ljava/lang/String;
    .end local v1    # "c":C
    .end local v2    # "ch":[C
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "p":Ljava/util/regex/Pattern;
    .end local v8    # "str":Ljava/lang/String;
    .end local v9    # "temp":Ljava/lang/String;
    :cond_4d
    :goto_4d
    return v10

    .restart local v0    # "after":Ljava/lang/String;
    .restart local v2    # "ch":[C
    .restart local v6    # "m":Ljava/util/regex/Matcher;
    .restart local v7    # "p":Ljava/util/regex/Pattern;
    .restart local v9    # "temp":Ljava/lang/String;
    :cond_4e
    move v5, v10

    .line 1052
    goto :goto_24

    .line 1053
    .restart local v1    # "c":C
    .restart local v4    # "i":I
    .restart local v5    # "length":I
    :cond_50
    add-int/lit8 v4, v4, 0x1

    goto :goto_25

    .line 1062
    .end local v0    # "after":Ljava/lang/String;
    .end local v1    # "c":C
    .end local v2    # "ch":[C
    .end local v4    # "i":I
    .end local v5    # "length":I
    .end local v6    # "m":Ljava/util/regex/Matcher;
    .end local v7    # "p":Ljava/util/regex/Pattern;
    .end local v9    # "temp":Ljava/lang/String;
    :catch_53
    move-exception v3

    .line 1063
    .local v3, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_4d
.end method

.method public static isUDiskDeviceExist(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 127
    invoke-static {p0}, Lcom/qinggan/os/ExternalDevicesState;->getUsbVolume(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 128
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_58

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 129
    .local v1, "mount":Ljava/lang/String;
    sget-object v4, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "check mount point: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    invoke-static {p0, v1}, Lcom/qinggan/os/ExternalDevicesState;->getVolumeState(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 131
    .local v2, "res":Ljava/lang/String;
    const-string v4, "mounted"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 132
    sget-object v3, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "check mount point: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " is mounted"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v3, 0x1

    .line 136
    .end local v1    # "mount":Ljava/lang/String;
    .end local v2    # "res":Ljava/lang/String;
    :goto_57
    return v3

    :cond_58
    const/4 v3, 0x0

    goto :goto_57
.end method

.method public static isUDiskExtExist(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 140
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->isUDiskDeviceExist(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public static isUpgradeFileExist(Ljava/lang/String;)Z
    .registers 3
    .param p0, "fileName"    # Ljava/lang/String;

    .prologue
    .line 1143
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 1144
    const/4 v1, 0x0

    .line 1147
    :goto_7
    return v1

    .line 1146
    :cond_8
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1147
    .local v0, "upgradeFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_7
.end method

.method public static logd(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 88
    const-string v0, "UPGRADE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public static loge(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 98
    const-string v0, "UPGRADE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public static logi(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 68
    const-string v0, "UPGRADE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public static logw(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p0, "TAG"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 78
    const-string v0, "UPGRADE"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    return-void
.end method

.method public static needRebootToUpdate()Z
    .registers 1

    .prologue
    .line 549
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static needUDiskToUpdateSYS(Landroid/content/Context;)Z
    .registers 8
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 514
    const/4 v1, 0x0

    .line 515
    .local v1, "flag":Z
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->getPrivateUDiskPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 516
    .local v3, "uDiskStr":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_3a

    .line 517
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v2, v5, :cond_3a

    .line 518
    sget-object v5, Lcom/qinggan/otaservice/common/SYSCache;->sSortedUpdateList:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/qinggan/otaservice/engine/SYSVersionInfo;

    .line 519
    .local v4, "versionInfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    invoke-virtual {v4}, Lcom/qinggan/otaservice/engine/SYSVersionInfo;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "filePath":Ljava/lang/String;
    const-string v5, ""

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3b

    .line 521
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 522
    const/4 v1, 0x1

    .line 523
    sget-object v5, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v6, "Need UDisk to Update SYS"

    invoke-static {v5, v6}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 528
    .end local v0    # "filePath":Ljava/lang/String;
    .end local v2    # "i":I
    .end local v4    # "versionInfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_3a
    return v1

    .line 517
    .restart local v0    # "filePath":Ljava/lang/String;
    .restart local v2    # "i":I
    .restart local v4    # "versionInfo":Lcom/qinggan/otaservice/engine/SYSVersionInfo;
    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_c
.end method

.method public static nvdataIsLegal(Ljava/lang/String;)Z
    .registers 3
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 1038
    if-eqz p0, :cond_9

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1041
    :cond_9
    :goto_9
    return v0

    :cond_a
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->isMessyCode(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x1

    goto :goto_9
.end method

.method public static rebootSystem(Landroid/content/Context;)V
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 505
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.REBOOT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 506
    .local v0, "reboot":Landroid/content/Intent;
    const-string v1, "nowait"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 507
    const-string v1, "interval"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 508
    const-string v1, "window"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 509
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 510
    sget-object v1, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v2, "Reboot System"

    invoke-static {v1, v2}, Lcom/qinggan/otaservice/common/Tool;->logd(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method public static repair(Landroid/content/Context;)I
    .registers 27
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 748
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v23, "repair..."

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const-string v22, "/cache/recovery/last_install"

    invoke-static/range {v22 .. v22}, Lcom/qinggan/otaservice/common/FileUtils;->readFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 750
    .local v9, "last":Ljava/lang/String;
    const/4 v5, 0x1

    .line 751
    .local v5, "fromUdisk":Z
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "last_install is ["

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "]"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 752
    const/4 v6, 0x1

    .line 753
    .local v6, "hasResource":Z
    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-nez v22, :cond_47

    .line 754
    const-string v22, "extsd"

    move-object/from16 v0, v22

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_83

    .line 755
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v23, "last install from extsd"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 756
    const/4 v5, 0x0

    .line 762
    :cond_47
    :goto_47
    if-eqz v5, :cond_8b

    .line 763
    new-instance v20, Ljava/util/HashMap;

    invoke-direct/range {v20 .. v20}, Ljava/util/HashMap;-><init>()V

    .line 764
    .local v20, "scan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-static/range {p0 .. p0}, Lcom/qinggan/otaservice/common/Tool;->getAllUDiskPath(Landroid/content/Context;)Ljava/util/List;

    move-result-object v13

    .line 765
    .local v13, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    :goto_56
    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_ac

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 766
    .local v12, "path":Ljava/lang/String;
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/update/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v23 .. v23}, Lcom/qinggan/otaservice/common/Tool;->scanDirectory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_56

    .line 758
    .end local v12    # "path":Ljava/lang/String;
    .end local v13    # "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v20    # "scan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_83
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v23, "last install from udisk"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_47

    .line 769
    :cond_8b
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "/data/media/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->getCurrentUserId()I

    move-result v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, "/update/"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v22 .. v22}, Lcom/qinggan/otaservice/common/Tool;->scanDirectory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v20

    .line 771
    .restart local v20    # "scan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    :cond_ac
    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v8

    .line 773
    .local v8, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkMCUDependency()Z

    move-result v22

    if-nez v22, :cond_d3

    const/4 v10, 0x1

    .line 774
    .local v10, "mcu":Z
    :goto_b7
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkCANDependency()Z

    move-result v22

    if-nez v22, :cond_d5

    const/4 v3, 0x1

    .line 775
    .local v3, "can":Z
    :goto_be
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->checkResourceDependency()Z

    move-result v22

    if-nez v22, :cond_d7

    const/16 v16, 0x1

    .line 776
    .local v16, "res":Z
    :goto_c6
    if-nez v10, :cond_da

    if-nez v3, :cond_da

    if-nez v16, :cond_da

    .line 777
    const/16 v22, 0x0

    sput-boolean v22, Lcom/qinggan/otaservice/common/SYSCache;->sNeedRepair:Z

    .line 778
    const/16 v21, 0x0

    .line 872
    :cond_d2
    :goto_d2
    return v21

    .line 773
    .end local v3    # "can":Z
    .end local v10    # "mcu":Z
    .end local v16    # "res":Z
    :cond_d3
    const/4 v10, 0x0

    goto :goto_b7

    .line 774
    .restart local v10    # "mcu":Z
    :cond_d5
    const/4 v3, 0x0

    goto :goto_be

    .line 775
    .restart local v3    # "can":Z
    :cond_d7
    const/16 v16, 0x0

    goto :goto_c6

    .line 780
    .restart local v16    # "res":Z
    :cond_da
    const-string v19, ""

    .line 781
    .local v19, "sRes":Ljava/lang/String;
    const-string v14, ""

    .line 782
    .local v14, "pre":Ljava/lang/String;
    const/4 v11, 0x0

    .line 783
    .local v11, "mcuNameType":I
    const-string v18, ""

    .line 784
    .local v18, "sMcu":Ljava/lang/String;
    const-string v17, ""

    .line 785
    .local v17, "sCan":Ljava/lang/String;
    const/4 v4, 0x0

    .line 786
    .local v4, "check":Z
    const/16 v22, 0x0

    sput-object v22, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    .line 787
    const/16 v22, 0x0

    sput-object v22, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    .line 788
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_f0
    :goto_f0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_269

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 789
    .local v7, "k":Ljava/lang/String;
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/io/File;

    invoke-virtual/range {v22 .. v22}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    .line 790
    .restart local v12    # "path":Ljava/lang/String;
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "repair scanning..."

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "-> "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 791
    const-string v22, ".zip"

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_f0

    .line 793
    const/4 v4, 0x0

    .line 794
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_1f1

    .line 795
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v24, "mcu"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_156

    .line 796
    const/4 v4, 0x1

    .line 801
    :cond_156
    :goto_156
    if-eqz v4, :cond_177

    .line 802
    invoke-static {v12}, Lcom/qinggan/otaservice/common/Tool;->checkMCUOk(Ljava/lang/String;)Z

    move-result v2

    .line 803
    .local v2, "bOk":Z
    if-eqz v2, :cond_177

    .line 804
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 807
    .end local v2    # "bOk":Z
    :cond_177
    const/4 v4, 0x0

    .line 808
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_219

    .line 809
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v24, "canbox"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_191

    .line 810
    const/4 v4, 0x1

    .line 815
    :cond_191
    :goto_191
    if-eqz v4, :cond_1b2

    .line 816
    invoke-static {v12}, Lcom/qinggan/otaservice/common/Tool;->checkCANOk(Ljava/lang/String;)Z

    move-result v2

    .line 817
    .restart local v2    # "bOk":Z
    if-eqz v2, :cond_1b2

    .line 818
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    .line 821
    .end local v2    # "bOk":Z
    :cond_1b2
    const/4 v4, 0x0

    .line 822
    sget-object v22, Lcom/qinggan/otaservice/common/SYSCache;->sResName:Ljava/lang/String;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->isEmpty()Z

    move-result v22

    if-eqz v22, :cond_241

    .line 823
    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v22

    const-string v24, "resource"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1cc

    .line 824
    const/4 v4, 0x1

    .line 829
    :cond_1cc
    :goto_1cc
    if-eqz v4, :cond_f0

    .line 830
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ":"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    goto/16 :goto_f0

    .line 798
    :cond_1f1
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ".zip"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_156

    .line 799
    const/4 v4, 0x1

    goto/16 :goto_156

    .line 812
    :cond_219
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ".zip"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_191

    .line 813
    const/4 v4, 0x1

    goto/16 :goto_191

    .line 826
    :cond_241
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v24, Lcom/qinggan/otaservice/common/SYSCache;->sResName:Ljava/lang/String;

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v24, ".zip"

    move-object/from16 v0, v22

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1cc

    .line 827
    const/4 v4, 0x1

    goto/16 :goto_1cc

    .line 833
    .end local v7    # "k":Ljava/lang/String;
    .end local v12    # "path":Ljava/lang/String;
    :cond_269
    if-eqz v16, :cond_279

    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_279

    .line 834
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v23, "need repair resource , but update-resource file not exists!"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 836
    const/4 v6, 0x0

    .line 838
    :cond_279
    if-eqz v10, :cond_333

    if-eqz v3, :cond_333

    .line 839
    const-string v14, "CAN_MCU"

    .line 847
    :cond_27f
    :goto_27f
    const/16 v21, 0x0

    .line 848
    .local v21, "value":I
    if-eqz v10, :cond_292

    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_292

    .line 849
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v23, "mcu not exists"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    add-int/lit8 v21, v21, 0x1

    .line 852
    :cond_292
    if-eqz v3, :cond_2a3

    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_2a3

    .line 853
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v23, "update-canbox.zip not exists"

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 854
    add-int/lit8 v21, v21, 0x2

    .line 856
    :cond_2a3
    if-eqz v16, :cond_2a9

    if-nez v6, :cond_2a9

    .line 857
    add-int/lit8 v21, v21, 0x4

    .line 859
    :cond_2a9
    if-nez v21, :cond_d2

    .line 863
    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    const-string v23, ":#"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    .line 864
    .local v15, "recoveryCmd":Ljava/lang/String;
    const-string v22, ":"

    move-object/from16 v0, v22

    invoke-virtual {v15, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_2ee

    .line 865
    const-string v22, ":"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 866
    :cond_2ee
    const-string v22, "usb1/"

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-virtual {v15, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "#:"

    const-string v24, ""

    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v22

    const-string v23, "#"

    const-string v24, ""

    .line 867
    invoke-virtual/range {v22 .. v24}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v15

    .line 868
    sget-object v22, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "repair: recoveryCmd = "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-static/range {v22 .. v23}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 869
    invoke-static {v15}, Lcom/qinggan/otaservice/engine/NativeManager;->writeUpdateCommand(Ljava/lang/String;)V

    .line 870
    const-string v22, "--"

    invoke-static/range {v22 .. v22}, Lcom/qinggan/otaservice/engine/NativeManager;->setRecoveryCmd(Ljava/lang/String;)V

    .line 871
    invoke-static/range {p0 .. p0}, Lcom/qinggan/otaservice/common/Tool;->rebootSystem(Landroid/content/Context;)V

    .line 872
    const/16 v21, 0x0

    goto/16 :goto_d2

    .line 841
    .end local v15    # "recoveryCmd":Ljava/lang/String;
    .end local v21    # "value":I
    :cond_333
    if-eqz v10, :cond_339

    .line 842
    const-string v14, "MCU"

    goto/16 :goto_27f

    .line 843
    :cond_339
    if-eqz v3, :cond_27f

    .line 844
    const-string v14, "CAN"

    goto/16 :goto_27f
.end method

.method public static scanDirectory(Ljava/lang/String;)Ljava/util/Map;
    .registers 10
    .param p0, "fileDir"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .prologue
    .line 298
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 299
    .local v3, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 300
    .local v5, "updateFileDir":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v0

    .line 301
    .local v0, "exists":Z
    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v2

    .line 302
    .local v2, "isDir":Z
    if-eqz v0, :cond_16

    if-nez v2, :cond_17

    .line 313
    :cond_16
    return-object v3

    .line 305
    :cond_17
    invoke-virtual {v5}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 306
    .local v1, "files":[Ljava/io/File;
    if-eqz v1, :cond_16

    .line 307
    array-length v7, v1

    const/4 v6, 0x0

    :goto_1f
    if-ge v6, v7, :cond_16

    aget-object v4, v1, v6

    .line 308
    .local v4, "updateFile":Ljava/io/File;
    if-eqz v4, :cond_32

    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_32

    .line 309
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v3, v8, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    :cond_32
    add-int/lit8 v6, v6, 0x1

    goto :goto_1f
.end method

.method private static scanOtherUpdates(Ljava/lang/String;Z)Z
    .registers 3
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "local"    # Z

    .prologue
    .line 562
    invoke-static {p0}, Lcom/qinggan/otaservice/common/Tool;->scanDirectory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/qinggan/otaservice/common/Tool;->scanOtherUpdates(Ljava/util/Map;Z)Z

    move-result v0

    return v0
.end method

.method private static scanOtherUpdates(Ljava/util/List;Ljava/lang/String;Z)Z
    .registers 7
    .param p1, "dir"    # Ljava/lang/String;
    .param p2, "local"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Z)Z"
        }
    .end annotation

    .prologue
    .line 567
    .local p0, "pathList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 568
    .local v0, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 569
    .local v1, "path":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/qinggan/otaservice/common/Tool;->scanDirectory(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    goto :goto_9

    .line 571
    .end local v1    # "path":Ljava/lang/String;
    :cond_2e
    invoke-static {v0, p2}, Lcom/qinggan/otaservice/common/Tool;->scanOtherUpdates(Ljava/util/Map;Z)Z

    move-result v2

    return v2
.end method

.method private static scanOtherUpdates(Ljava/util/Map;Z)Z
    .registers 19
    .param p1, "local"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            ">;Z)Z"
        }
    .end annotation

    .prologue
    .line 576
    .local p0, "scan":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/io/File;>;"
    const-string v13, ""

    sput-object v13, Lcom/qinggan/otaservice/common/Tool;->sRecoveryCmd:Ljava/lang/String;

    .line 577
    invoke-interface/range {p0 .. p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 579
    .local v5, "keys":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v6, 0x0

    .line 580
    .local v6, "mcu":Z
    const/4 v2, 0x0

    .line 581
    .local v2, "can":Z
    const-string v10, ""

    .line 582
    .local v10, "res":Ljava/lang/String;
    const-string v8, ""

    .line 583
    .local v8, "pre":Ljava/lang/String;
    const-string v12, ""

    .line 584
    .local v12, "sMcu":Ljava/lang/String;
    const-string v11, ""

    .line 585
    .local v11, "sCan":Ljava/lang/String;
    const/4 v3, 0x0

    .line 586
    .local v3, "check":Z
    const/4 v13, 0x0

    sput-object v13, Lcom/qinggan/otaservice/common/Tool;->sMcuVersion:Ljava/lang/String;

    .line 587
    const/4 v13, 0x0

    sput-object v13, Lcom/qinggan/otaservice/common/Tool;->sCanVersion:Ljava/lang/String;

    .line 588
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v14

    :cond_1d
    :goto_1d
    invoke-interface {v14}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_14c

    invoke-interface {v14}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 589
    .local v4, "k":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/io/File;

    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    .line 590
    .local v7, "path":Ljava/lang/String;
    sget-object v13, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, ""

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, "-> "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 591
    const-string v13, ".zip"

    invoke-virtual {v4, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 593
    const/4 v3, 0x0

    .line 594
    if-eqz p1, :cond_12b

    sget-object v13, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_12b

    .line 595
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/qinggan/otaservice/common/SYSCache;->sMcuName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".zip"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 596
    const/4 v3, 0x1

    .line 601
    :cond_86
    :goto_86
    if-eqz v3, :cond_c1

    .line 602
    sget-object v13, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v15, "Tool:scanOtherUpdates(),is mcu"

    invoke-static {v13, v15}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 603
    invoke-static {v7}, Lcom/qinggan/otaservice/common/Tool;->checkMCUOk(Ljava/lang/String;)Z

    move-result v1

    .line 604
    .local v1, "bOk":Z
    sget-object v13, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Tool:scanOtherUpdates(),is mcu,bOK="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    if-eqz v1, :cond_c1

    .line 606
    const/4 v6, 0x1

    .line 607
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 610
    .end local v1    # "bOk":Z
    :cond_c1
    const/4 v3, 0x0

    .line 611
    if-eqz p1, :cond_13c

    sget-object v13, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_13c

    .line 612
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v15, Lcom/qinggan/otaservice/common/SYSCache;->sCanName:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ".zip"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_e8

    .line 613
    const/4 v3, 0x1

    .line 618
    :cond_e8
    :goto_e8
    if-eqz v3, :cond_1d

    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->isMcuOk()Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 619
    sget-object v13, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    const-string v15, "Tool:scanOtherUpdates(),is canbox"

    invoke-static {v13, v15}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 620
    invoke-static {v7}, Lcom/qinggan/otaservice/common/Tool;->checkCANOk(Ljava/lang/String;)Z

    move-result v1

    .line 621
    .restart local v1    # "bOk":Z
    sget-object v13, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "Tool:scanOtherUpdates(),is canbox,bOK="

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v13, v15}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 622
    if-eqz v1, :cond_1d

    .line 623
    const/4 v2, 0x1

    .line 624
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    goto/16 :goto_1d

    .line 598
    .end local v1    # "bOk":Z
    :cond_12b
    if-nez p1, :cond_86

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v15, "mcu"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_86

    .line 599
    const/4 v3, 0x1

    goto/16 :goto_86

    .line 615
    :cond_13c
    if-nez p1, :cond_e8

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v13

    const-string v15, "canbox"

    invoke-virtual {v13, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_e8

    .line 616
    const/4 v3, 0x1

    goto :goto_e8

    .line 639
    .end local v4    # "k":Ljava/lang/String;
    .end local v7    # "path":Ljava/lang/String;
    :cond_14c
    if-eqz v6, :cond_1af

    if-eqz v2, :cond_1af

    .line 640
    const-string v8, "CAN_MCU"

    .line 648
    :cond_152
    :goto_152
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, ":#"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 649
    .local v9, "recoveryCmd":Ljava/lang/String;
    const-string v13, ":"

    invoke-virtual {v9, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_181

    .line 650
    const-string v13, ":"

    const-string v14, ""

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 651
    :cond_181
    const-string v13, "usb1/"

    const-string v14, ""

    invoke-virtual {v9, v13, v14}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 652
    sput-object v9, Lcom/qinggan/otaservice/common/Tool;->sRecoveryCmd:Ljava/lang/String;

    .line 653
    sget-object v13, Lcom/qinggan/otaservice/common/Tool;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "scanOtherUpdates recoveryCmd = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    invoke-static {}, Lcom/qinggan/otaservice/common/Tool;->genOtherUpdateString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/String;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_1b9

    const/4 v13, 0x1

    :goto_1ae
    return v13

    .line 642
    .end local v9    # "recoveryCmd":Ljava/lang/String;
    :cond_1af
    if-eqz v6, :cond_1b4

    .line 643
    const-string v8, "MCU"

    goto :goto_152

    .line 644
    :cond_1b4
    if-eqz v2, :cond_152

    .line 645
    const-string v8, "CAN"

    goto :goto_152

    .line 654
    .restart local v9    # "recoveryCmd":Ljava/lang/String;
    :cond_1b9
    const/4 v13, 0x0

    goto :goto_1ae
.end method

.method public static updateTaskId(JJ)V
    .registers 4
    .param p0, "taskSid"    # J
    .param p2, "taskItemSid"    # J

    .prologue
    .line 1070
    sput-wide p0, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 1071
    sput-wide p2, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 1072
    return-void
.end method
