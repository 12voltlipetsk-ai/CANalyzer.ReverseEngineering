.class public Lcom/qinggan/otaservice/common/Constant;
.super Ljava/lang/Object;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;
    }
.end annotation


# static fields
.field public static final CAN_UPDATE_XML_FILENAME:Ljava/lang/String; = "Manifest_SYS.xml"

.field public static final CAN_UPDATE_XML_TAG_VERSION:Ljava/lang/String; = "version"

.field public static final COLUMN_SYS_DEPENDENCYVERSIONCODE:Ljava/lang/String; = "dependencyVersionCode"

.field public static final COLUMN_SYS_DESCRIPTION:Ljava/lang/String; = "systemVersionDescription"

.field public static final COLUMN_SYS_EXT:Ljava/lang/String; = "ext"

.field public static final COLUMN_SYS_FILENAME:Ljava/lang/String; = "fileName"

.field public static final COLUMN_SYS_ISFULL:Ljava/lang/String; = "isfull"

.field public static final COLUMN_SYS_NODE_FACTORY:Ljava/lang/String; = "factory"

.field public static final COLUMN_SYS_NODE_PATCH:Ljava/lang/String; = "patch"

.field public static final COLUMN_SYS_NODE_SYS:Ljava/lang/String; = "sys"

.field public static final COLUMN_SYS_PROJECT:Ljava/lang/String; = "project"

.field public static final COLUMN_SYS_TYPE:Ljava/lang/String; = "type"

.field public static final COLUMN_SYS_VENDOR:Ljava/lang/String; = "vendor"

.field public static final COLUMN_SYS_VERSIONCODE:Ljava/lang/String; = "systemVersionCode"

.field public static final COLUMN_SYS_VERSIONNAME:Ljava/lang/String; = "systemVersionName"

.field public static final ENCODED_MODE:Ljava/lang/String; = "utf-8"

.field public static final ERROR_MSG_NETWORK:I = 0x3e7

.field public static final FIXUP_FILE:Ljava/lang/String; = "pateo_ivi_ota_fixup.sh"

.field public static final FOTA_CREATE_BY_CLOUD:I = 0x0

.field public static final FOTA_CREATE_BY_USER:I = 0x1

.field public static final FOTA_NOTIFY_AFTER_DOWNLOAD:I = 0x0

.field public static final FOTA_NOTIFY_BEFORE_DOWNLOAD:I = 0x1

.field public static final FOTA_RESPONSE_PARAM_ERROR:Ljava/lang/String; = "1001"

.field public static final FOTA_RESPONSE_PERM_ERROR:Ljava/lang/String; = "1"

.field public static final FOTA_RESPONSE_SIG_ERROR:Ljava/lang/String; = "1000"

.field public static final FOTA_RESPONSE_SUCCESS:Ljava/lang/String; = "0"

.field public static final FOTA_RESPONSE_SYSTEM_ERROR:Ljava/lang/String; = "1002"

.field public static final FOTA_SOFTWARE_CODE:Ljava/lang/String; = "C62IPDA"

.field public static FOTA_UPGRADE_MODE_COMMON:I = 0x0

.field public static FOTA_UPGRADE_MODE_SILENCE:I = 0x0

.field public static final H97A_MCU_UPGRADE_FILE:Ljava/lang/String; = "/update/h97-cluster-update-mcu.zip"

.field public static final H97A_MPU_UPGRADE_FILE:Ljava/lang/String; = "/update/h97-cluster-update-mpu.zip"

.field public static final H97_MCU_UPGRADE_FILE:Ljava/lang/String; = "/update/update-mcu.zip"

.field public static final H97_METER_UPGRADE_FILE:Ljava/lang/String; = "/update/h97-cluster-update.zip"

.field public static final H97_UPGRADE_FILES:Ljava/lang/String; = "/update/update.zip"

.field public static final MCU_UPDATE_XML_FILENAME:Ljava/lang/String; = "Manifest_SYS.xml"

.field public static final MCU_UPDATE_XML_TAG_PLATFORM:Ljava/lang/String; = "platform"

.field public static final MCU_UPDATE_XML_TAG_VERSION:Ljava/lang/String; = "version"

.field public static final MD5_CHECK_SUM_FILE:Ljava/lang/String; = "pateo_ivi_md5sum.txt"

.field public static final METER_UPDATE_XML_FILENAME:Ljava/lang/String; = "update_config.xml"

.field public static final PATH_INNER_SDCARD:Ljava/lang/String; = "/data/media/"

.field public static final SYSTEM_ID_A:I = 0x0

.field public static final SYSTEM_ID_B:I = 0x1

.field public static final UBOOT_FILE:Ljava/lang/String; = "uboot.sh"

.field public static final UPDAFILE_XML_NAME:Ljava/lang/String; = "Manifest_SYS.xml"

.field public static final UPDATE_FILE_TYPE_MCU:Ljava/lang/String; = "mcu"

.field public static final UPDATE_FILE_TYPE_METER:Ljava/lang/String; = "meter"

.field public static final UPDATE_FILE_TYPE_MPU:Ljava/lang/String; = "mpu"

.field public static final UPDATE_FILE_TYPE_UNKNOWN:Ljava/lang/String; = "unknown"

.field public static final UPGRADE_COMPLETE_PERCENT:I = 0x64

.field public static final UPGRADE_SYSTEM_FAILED:I = 0x3e7

.field public static final UPGRADE_SYSTEM_FAILED_ASSERT:I = 0x3e2

.field public static final UPGRADE_SYSTEM_FAILED_KEYCODE:I = 0x3e4

.field public static final UPGRADE_SYSTEM_FAILED_OPEN:I = 0x3e3

.field public static final UPGRADE_SYSTEM_FAILED_PROJECT:I = 0x3e6

.field public static final UPGRADE_SYSTEM_FAILED_SIGNATRUE:I = 0x3e5

.field public static final UPGRADE_SYSTEM_FAILED_VERSION:I = 0x3e1

.field public static final UPGRADE_TAG:Ljava/lang/String; = "UPGRADE"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 94
    const/4 v0, 0x0

    sput v0, Lcom/qinggan/otaservice/common/Constant;->FOTA_UPGRADE_MODE_SILENCE:I

    .line 95
    const/4 v0, 0x1

    sput v0, Lcom/qinggan/otaservice/common/Constant;->FOTA_UPGRADE_MODE_COMMON:I

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
