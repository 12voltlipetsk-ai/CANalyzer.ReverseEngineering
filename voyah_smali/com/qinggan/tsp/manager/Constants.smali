.class public Lcom/qinggan/tsp/manager/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# static fields
.field public static final AUTHORIZATION_KEY:Ljava/lang/String; = "Authorization"

.field public static final HUTOKEN_KEY:Ljava/lang/String; = "huToken"

.field public static final ID_KEY:Ljava/lang/String; = "id"

.field public static final SIGN_KEY:Ljava/lang/String; = "Sign"

.field public static final SN_KEY:Ljava/lang/String; = "sn"

.field public static final VIN_KEY:Ljava/lang/String; = "vin"

.field public static final X_PATEO_C_SERIAL:Ljava/lang/String; = "x-pateo-c-serial"

.field public static cmsHutokenUrl:[Ljava/lang/String;

.field public static errHttpCodes:[I

.field public static excludeTokenUrl:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x2

    .line 9
    const/4 v0, 0x7

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "auth/login"

    aput-object v1, v0, v4

    const-string v1, "/auth/token"

    aput-object v1, v0, v5

    const-string v1, "/auth/getTokenStatus"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "/vcm/getTencentLoginQrCode"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "/vcm/getScanQrCodeResult"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "/base/user/pwdLoginWithTencent"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "/base/user/getTencentTokenStatus"

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/tsp/manager/Constants;->excludeTokenUrl:[Ljava/lang/String;

    .line 10
    new-array v0, v3, [Ljava/lang/String;

    const-string v1, "https://cmsonline.gwm.com.cn:8200/"

    aput-object v1, v0, v4

    const-string v1, "http://cmspre.gwm.com.cn:8200"

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/tsp/manager/Constants;->cmsHutokenUrl:[Ljava/lang/String;

    .line 14
    new-array v0, v3, [I

    fill-array-data v0, :array_3c

    sput-object v0, Lcom/qinggan/tsp/manager/Constants;->errHttpCodes:[I

    return-void

    :array_3c
    .array-data 4
        0x194
        0x191
    .end array-data
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
