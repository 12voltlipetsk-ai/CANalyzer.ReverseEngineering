.class public Lcom/pateo/tsp/TSPAPI;
.super Ljava/lang/Object;
.source "TSPAPI.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;,
        Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;,
        Lcom/pateo/tsp/TSPAPI$OnInitListener;,
        Lcom/pateo/tsp/TSPAPI$NetworkStatus;,
        Lcom/pateo/tsp/TSPAPI$CanbusItemType;,
        Lcom/pateo/tsp/TSPAPI$Result;,
        Lcom/pateo/tsp/TSPAPI$GpsState;,
        Lcom/pateo/tsp/TSPAPI$PhoneStatus;,
        Lcom/pateo/tsp/TSPAPI$SMSStatus;
    }
.end annotation


# static fields
.field public static TAG:Ljava/lang/String;


# instance fields
.field private isBound:Z

.field private localCmsHuTokenBeanCache:Ljava/lang/String;

.field private localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

.field private mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;

.field private mAutoECallListener:Lcom/pateo/tsp/call/XCallListener;

.field private mCallHandler:Lcom/pateo/tsp/call/XCallHandler;

.field private mCallListener:Lcom/pateo/tsp/call/XCallListener;

.field private mCallback:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

.field private mCmsHuTokenCallback:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

.field private mContext:Landroid/content/Context;

.field private mInitListener:Lcom/pateo/tsp/TSPAPI$OnInitListener;

.field mPKIAidlInterface:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

.field private mPushHandler:Lcom/pateo/tsp/push/PushHandler;

.field private mPushListener:Lcom/pateo/tsp/push/PushListener;

.field private mTSPService:Lcom/pateo/tsp/ITSPService;

.field private pkiconnected:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    const-string v0, "TSPAPI"

    sput-object v0, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/pateo/tsp/TSPAPI;->isBound:Z

    .line 60
    new-instance v0, Lcom/pateo/tsp/TSPAPI$1;

    invoke-direct {v0, p0}, Lcom/pateo/tsp/TSPAPI$1;-><init>(Lcom/pateo/tsp/TSPAPI;)V

    iput-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mCallHandler:Lcom/pateo/tsp/call/XCallHandler;

    .line 210
    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mCallback:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    .line 225
    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mCmsHuTokenCallback:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    .line 236
    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    .line 237
    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->localCmsHuTokenBeanCache:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/pateo/tsp/TSPAPI;)Lcom/pateo/tsp/call/XCallListener;
    .registers 2
    .param p0, "x0"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mCallListener:Lcom/pateo/tsp/call/XCallListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/pateo/tsp/TSPAPI;)Lcom/pateo/tsp/call/XCallListener;
    .registers 2
    .param p0, "x0"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallListener:Lcom/pateo/tsp/call/XCallListener;

    return-object v0
.end method

.method private bindServiceAsUser(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z
    .registers 15
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "connection"    # Landroid/content/ServiceConnection;
    .param p4, "flags"    # I

    .prologue
    .line 980
    const/4 v3, 0x0

    .line 982
    .local v3, "object":Ljava/lang/Object;
    :try_start_1
    const-class v5, Landroid/os/UserHandle;

    const-string v6, "OWNER"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 983
    .local v1, "filed":Ljava/lang/reflect/Field;
    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 984
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 985
    .local v4, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    const-string v6, "bindServiceAsUser"

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    const-class v9, Landroid/content/Intent;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-class v9, Landroid/content/ServiceConnection;

    aput-object v9, v7, v8

    const/4 v8, 0x2

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x3

    const-class v9, Landroid/os/UserHandle;

    aput-object v9, v7, v8

    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 986
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    aput-object p3, v5, v6

    const/4 v6, 0x2

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x3

    aput-object v4, v5, v6

    invoke-virtual {v2, p1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_4b} :catch_50

    move-result-object v3

    .line 991
    if-eqz v3, :cond_5c

    .line 992
    const/4 v5, 0x1

    .line 994
    .end local v1    # "filed":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "object":Ljava/lang/Object;
    .end local v4    # "userHandle":Landroid/os/UserHandle;
    :goto_4f
    return v5

    .line 987
    .restart local v3    # "object":Ljava/lang/Object;
    :catch_50
    move-exception v0

    .line 988
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    const/4 v5, 0x0

    goto :goto_4f

    .line 994
    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "filed":Ljava/lang/reflect/Field;
    .restart local v2    # "method":Ljava/lang/reflect/Method;
    .restart local v4    # "userHandle":Landroid/os/UserHandle;
    :cond_5c
    const/4 v5, 0x0

    goto :goto_4f
.end method

.method private connectPKIService()V
    .registers 1

    .prologue
    .line 243
    return-void
.end method

.method private connectService()V
    .registers 1

    .prologue
    .line 240
    return-void
.end method

.method private startServiceAsUser(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 12
    .param p1, "ctx"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 999
    :try_start_0
    const-class v4, Landroid/os/UserHandle;

    const-string v5, "OWNER"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1000
    .local v1, "filed":Ljava/lang/reflect/Field;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 1001
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserHandle;

    .line 1002
    .local v3, "userHandle":Landroid/os/UserHandle;
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "startServiceAsUser"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/Intent;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/UserHandle;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 1003
    .local v2, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p2, v4, v5

    const/4 v5, 0x1

    aput-object v3, v4, v5

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_36} :catch_37

    .line 1007
    .end local v1    # "filed":Ljava/lang/reflect/Field;
    .end local v2    # "method":Ljava/lang/reflect/Method;
    .end local v3    # "userHandle":Landroid/os/UserHandle;
    :goto_36
    return-void

    .line 1004
    :catch_37
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/lang/Exception;
    sget-object v4, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_36
.end method


# virtual methods
.method public cancelXCall(Lcom/pateo/tsp/call/XCall;)I
    .registers 6
    .param p1, "xcall"    # Lcom/pateo/tsp/call/XCall;

    .prologue
    .line 299
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2d

    .line 300
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mCallHandler:Lcom/pateo/tsp/call/XCallHandler;

    invoke-interface {v1, p1, v2}, Lcom/pateo/tsp/ITSPService;->cancelXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_d

    move-result v1

    .line 307
    :goto_c
    return v1

    .line 302
    :catch_d
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelXCall failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 307
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_c
.end method

.method public destroy()I
    .registers 3

    .prologue
    .line 264
    sget-object v0, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v1, "TSPAPI destroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    sget-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v0}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v0

    return v0
.end method

.method public getCmsBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 827
    const-string v0, "cmsBaseUrl"

    invoke-virtual {p0, v0}, Lcom/pateo/tsp/TSPAPI;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceTypeForCp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 865
    const-string v0, "deviceTypeForCp"

    invoke-virtual {p0, v0}, Lcom/pateo/tsp/TSPAPI;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getGwmBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 831
    const-string v0, "gwmBaseUrl"

    invoke-virtual {p0, v0}, Lcom/pateo/tsp/TSPAPI;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getIviAdminUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 823
    const-string v0, "iviAdminUrl"

    invoke-virtual {p0, v0}, Lcom/pateo/tsp/TSPAPI;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProjectKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 861
    const-string v0, "projectKey"

    invoke-virtual {p0, v0}, Lcom/pateo/tsp/TSPAPI;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRemoteConfigItem(Ljava/lang/String;I)Ljava/lang/String;
    .registers 7
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "type"    # I

    .prologue
    .line 810
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_b

    .line 811
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1, p2}, Lcom/pateo/tsp/ITSPService;->getRemoteConfigItem(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 818
    :goto_a
    return-object v1

    .line 813
    :cond_b
    const-string v1, ""
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_a

    .line 815
    :catch_e
    move-exception v0

    .line 816
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetRemoteConfigItem failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 818
    const-string v1, ""

    goto :goto_a
.end method

.method public getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;
    .registers 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 847
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_b

    .line 848
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 855
    :goto_a
    return-object v1

    .line 850
    :cond_b
    const-string v1, ""
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    goto :goto_a

    .line 852
    :catch_e
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeGetRemoteConfigItem failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 854
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 855
    const-string v1, ""

    goto :goto_a
.end method

.method public getTrackingUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 835
    const-string v0, "trackingUrl"

    invoke-virtual {p0, v0}, Lcom/pateo/tsp/TSPAPI;->getRemoteConfigItemFromConfig(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public init(Landroid/content/Context;Lcom/pateo/tsp/TSPAPI$OnInitListener;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "listener"    # Lcom/pateo/tsp/TSPAPI$OnInitListener;

    .prologue
    .line 252
    sget-object v0, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v1, "TSPAPI init version: 1008"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 253
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->mContext:Landroid/content/Context;

    .line 254
    iput-object p2, p0, Lcom/pateo/tsp/TSPAPI;->mInitListener:Lcom/pateo/tsp/TSPAPI$OnInitListener;

    .line 255
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mInitListener:Lcom/pateo/tsp/TSPAPI$OnInitListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/pateo/tsp/TSPAPI$OnInitListener;->onResult(Z)V

    .line 256
    return-void
.end method

.method public logoutGlobalToken()V
    .registers 5

    .prologue
    const/4 v1, 0x0

    .line 191
    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    .line 192
    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->localCmsHuTokenBeanCache:Ljava/lang/String;

    .line 193
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-nez v1, :cond_11

    .line 195
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v2, "logoutGlobalToken mTSPService is null"

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    :goto_10
    return-void

    .line 199
    :cond_11
    :try_start_11
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pateo/tsp/TSPAPI;->localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    invoke-interface {v1, v2, v3}, Lcom/pateo/tsp/ITSPService;->setGlobalToken(Ljava/lang/String;Lcom/qinggan/tsp/models/TokenBean;)V

    .line 200
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/pateo/tsp/TSPAPI;->localCmsHuTokenBeanCache:Ljava/lang/String;

    invoke-interface {v1, v2, v3}, Lcom/pateo/tsp/ITSPService;->setCmsHuToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_2b} :catch_2c

    goto :goto_10

    .line 201
    :catch_2c
    move-exception v0

    .line 202
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error logoutGlobalToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_10
.end method

.method public nativeDial(Ljava/lang/String;)V
    .registers 6
    .param p1, "phone"    # Ljava/lang/String;

    .prologue
    .line 711
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_9

    .line 712
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->nativeDial(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 718
    :cond_9
    :goto_9
    return-void

    .line 714
    :catch_a
    move-exception v0

    .line 715
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeDial failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 716
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_9
.end method

.method public nativeGetCurrentLocation()Landroid/location/Location;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 933
    :try_start_1
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_b

    .line 934
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2}, Lcom/pateo/tsp/ITSPService;->nativeGetCurrentLocation()Landroid/location/Location;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 941
    :cond_b
    :goto_b
    return-object v1

    .line 938
    :catch_c
    move-exception v0

    .line 939
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeSetLocationListener exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 940
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_b
.end method

.method public nativeGetIMEI()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 738
    :try_start_1
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_b

    .line 739
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2}, Lcom/pateo/tsp/ITSPService;->nativeGetIMEI()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 746
    :cond_b
    :goto_b
    return-object v1

    .line 743
    :catch_c
    move-exception v0

    .line 744
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeGetIMEI failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_b
.end method

.method public nativeGetIMSI()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 722
    :try_start_1
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v3, "nativeGetIMSI"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_12

    .line 724
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2}, Lcom/pateo/tsp/ITSPService;->nativeGetIMSI()Ljava/lang/String;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_13

    move-result-object v1

    .line 731
    :cond_12
    :goto_12
    return-object v1

    .line 728
    :catch_13
    move-exception v0

    .line 729
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeGetIMSI exception:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 730
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_12
.end method

.method public nativeGetPDSN()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 752
    :try_start_1
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_b

    .line 753
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2}, Lcom/pateo/tsp/ITSPService;->nativeGetPDSN()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 760
    :cond_b
    :goto_b
    return-object v1

    .line 757
    :catch_c
    move-exception v0

    .line 758
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeGetPDSN failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_b
.end method

.method public nativeGetRemoteConfigPath()Ljava/lang/String;
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 766
    :try_start_1
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_b

    .line 767
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2}, Lcom/pateo/tsp/ITSPService;->nativeGetRemoteConfigPath()Ljava/lang/String;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result-object v1

    .line 774
    :cond_b
    :goto_b
    return-object v1

    .line 771
    :catch_c
    move-exception v0

    .line 772
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeGetRemoteConfigPath failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_b
.end method

.method public nativeIsNetworkAvailable()I
    .registers 6

    .prologue
    const/4 v1, 0x0

    .line 918
    :try_start_1
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_b

    .line 919
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2}, Lcom/pateo/tsp/ITSPService;->nativeIsNetworkAvailable()I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_a} :catch_c

    move-result v1

    .line 926
    :cond_b
    :goto_b
    return v1

    .line 923
    :catch_c
    move-exception v0

    .line 924
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "nativeIsNetworkAvailable failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_b
.end method

.method public nativeRemoveLocationListener()V
    .registers 5

    .prologue
    .line 958
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_9

    .line 959
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1}, Lcom/pateo/tsp/ITSPService;->nativeRemoveLocationListener()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 965
    :cond_9
    :goto_9
    return-void

    .line 961
    :catch_a
    move-exception v0

    .line 962
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeRemoveLocationListener exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 963
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_9
.end method

.method public nativeSendMessage(Ljava/lang/String;Ljava/lang/String;)V
    .registers 7
    .param p1, "phone"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 689
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_9

    .line 690
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1, p2}, Lcom/pateo/tsp/ITSPService;->nativeSendMessage(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 696
    :cond_9
    :goto_9
    return-void

    .line 692
    :catch_a
    move-exception v0

    .line 693
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSendMessage failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_9
.end method

.method public nativeSetLocationListener()V
    .registers 5

    .prologue
    .line 947
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_9

    .line 948
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1}, Lcom/pateo/tsp/ITSPService;->nativeSetLocationListener()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 954
    :cond_9
    :goto_9
    return-void

    .line 950
    :catch_a
    move-exception v0

    .line 951
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetLocationListener exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 952
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_9
.end method

.method public nativeSetSmsReceiverListener()V
    .registers 5

    .prologue
    .line 700
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_9

    .line 701
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1}, Lcom/pateo/tsp/ITSPService;->nativeSetSmsReceiverListener()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    .line 707
    :cond_9
    :goto_9
    return-void

    .line 703
    :catch_a
    move-exception v0

    .line 704
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "nativeSetSmsReceiverListener failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 705
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_9
.end method

.method public onCanbusStateChanged(Lcom/pateo/tsp/TSPAPI$CanbusItemType;I)I
    .registers 8
    .param p1, "type"    # Lcom/pateo/tsp/TSPAPI$CanbusItemType;
    .param p2, "value"    # I

    .prologue
    .line 614
    :try_start_0
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_51

    .line 615
    invoke-virtual {p1}, Lcom/pateo/tsp/TSPAPI$CanbusItemType;->value()I

    move-result v0

    .line 616
    .local v0, "canType":I
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " onCanbusStateChanged type:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v2, v0, p2}, Lcom/pateo/tsp/ITSPService;->onCanbusStateChanged(II)I
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2f} :catch_31

    move-result v2

    .line 624
    .end local v0    # "canType":I
    :goto_30
    return v2

    .line 619
    :catch_31
    move-exception v1

    .line 620
    .local v1, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onCanbusStateChanged failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 624
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_51
    sget-object v2, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v2}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v2

    goto :goto_30
.end method

.method public onGpsStateChanged(Lcom/pateo/tsp/TSPAPI$GpsState;)I
    .registers 6
    .param p1, "state"    # Lcom/pateo/tsp/TSPAPI$GpsState;

    .prologue
    .line 676
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2f

    .line 677
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-virtual {p1}, Lcom/pateo/tsp/TSPAPI$GpsState;->value()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/pateo/tsp/ITSPService;->onGpsStateChanged(I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 684
    :goto_e
    return v1

    .line 679
    :catch_f
    move-exception v0

    .line 680
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onGpsStateChanged failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 681
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 684
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_e
.end method

.method public onLocationChanged(Lcom/pateo/tsp/adapter/NaviLocationInfo;)I
    .registers 6
    .param p1, "location"    # Lcom/pateo/tsp/adapter/NaviLocationInfo;

    .prologue
    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2b

    .line 657
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->onLocationChanged(Lcom/pateo/tsp/adapter/NaviLocationInfo;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 664
    :goto_a
    return v1

    .line 659
    :catch_b
    move-exception v0

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onLocationChanged failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_a
.end method

.method public onNetworkStateChanged(Lcom/pateo/tsp/TSPAPI$NetworkStatus;)I
    .registers 6
    .param p1, "status"    # Lcom/pateo/tsp/TSPAPI$NetworkStatus;

    .prologue
    .line 553
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2f

    .line 554
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-virtual {p1}, Lcom/pateo/tsp/TSPAPI$NetworkStatus;->ordinal()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/pateo/tsp/ITSPService;->onNetworkStateChanged(I)I
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_f

    move-result v1

    .line 561
    :goto_e
    return v1

    .line 556
    :catch_f
    move-exception v0

    .line 557
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNetworkStateChanged failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 561
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2f
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_e
.end method

.method public onPhoneStateChanged(Ljava/lang/String;I)I
    .registers 7
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 513
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2b

    .line 514
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1, p2}, Lcom/pateo/tsp/ITSPService;->onPhoneStateChanged(Ljava/lang/String;I)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 521
    :goto_a
    return v1

    .line 516
    :catch_b
    move-exception v0

    .line 517
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPhoneStateChanged failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 521
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_a
.end method

.method public onSmsReceived(Ljava/lang/String;Ljava/lang/String;)I
    .registers 7
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2b

    .line 473
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1, p2}, Lcom/pateo/tsp/ITSPService;->onSmsReceived(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 480
    :goto_a
    return v1

    .line 475
    :catch_b
    move-exception v0

    .line 476
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSmsReceived failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 480
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_a
.end method

.method public onSmsSendResult(Ljava/lang/String;I)I
    .registers 7
    .param p1, "phoneNum"    # Ljava/lang/String;
    .param p2, "status"    # I

    .prologue
    .line 451
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2b

    .line 452
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1, p2}, Lcom/pateo/tsp/ITSPService;->onSmsSendResult(Ljava/lang/String;I)I
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_b

    move-result v1

    .line 459
    :goto_a
    return v1

    .line 454
    :catch_b
    move-exception v0

    .line 455
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSmsSendResult failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 459
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2b
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_a
.end method

.method public readRPMB(Ljava/lang/String;)[B
    .registers 6
    .param p1, "FileTag"    # Ljava/lang/String;

    .prologue
    .line 969
    :try_start_0
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mPKIAidlInterface:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    if-eqz v1, :cond_2b

    .line 970
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mPKIAidlInterface:Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;

    invoke-interface {v1, p1}, Lcom/qinggan/qgsecurityservice/IPKIAidlInterface;->readRPMB(Ljava/lang/String;)[B
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_b

    move-result-object v1

    .line 976
    :goto_a
    return-object v1

    .line 972
    :catch_b
    move-exception v0

    .line 973
    .local v0, "e":Landroid/os/RemoteException;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "readRPMB exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectPKIService()V

    .line 976
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2b
    const/4 v1, 0x0

    goto :goto_a
.end method

.method public removeAutoECallListener()I
    .registers 6

    .prologue
    .line 392
    sget-object v2, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v2}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    .line 395
    .local v1, "ret":I
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallListener:Lcom/pateo/tsp/call/XCallListener;

    .line 396
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;

    if-eqz v2, :cond_1c

    .line 397
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_19

    .line 398
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v3, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;

    invoke-interface {v2, v3}, Lcom/pateo/tsp/ITSPService;->unregisterAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I

    move-result v1

    .line 400
    :cond_19
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_1c} :catch_1d

    .line 407
    :cond_1c
    :goto_1c
    return v1

    .line 402
    :catch_1d
    move-exception v0

    .line 403
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeAutoECallListener failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_1c
.end method

.method public removeCallListener()I
    .registers 6

    .prologue
    .line 338
    sget-object v2, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v2}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    .line 341
    .local v1, "ret":I
    const/4 v2, 0x0

    :try_start_7
    iput-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mCallListener:Lcom/pateo/tsp/call/XCallListener;

    .line 342
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v2, :cond_15

    .line 343
    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v3, p0, Lcom/pateo/tsp/TSPAPI;->mCallHandler:Lcom/pateo/tsp/call/XCallHandler;

    invoke-interface {v2, v3}, Lcom/pateo/tsp/ITSPService;->unregisterCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_14} :catch_16

    move-result v1

    .line 350
    :cond_15
    :goto_15
    return v1

    .line 345
    :catch_16
    move-exception v0

    .line 346
    .local v0, "e":Ljava/lang/Exception;
    sget-object v2, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "removeCallListener failed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    goto :goto_15
.end method

.method public removePushListener()I
    .registers 3

    .prologue
    .line 427
    sget-object v0, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v1, "removePushListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    sget-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v0}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v0

    return v0
.end method

.method public setAutoECallListener(Lcom/pateo/tsp/call/XCallListener;)I
    .registers 6
    .param p1, "listener"    # Lcom/pateo/tsp/call/XCallListener;

    .prologue
    .line 360
    if-eqz p1, :cond_3c

    .line 362
    :try_start_2
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallListener:Lcom/pateo/tsp/call/XCallListener;

    .line 363
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;

    if-nez v1, :cond_f

    .line 364
    new-instance v1, Lcom/pateo/tsp/TSPAPI$2;

    invoke-direct {v1, p0}, Lcom/pateo/tsp/TSPAPI$2;-><init>(Lcom/pateo/tsp/TSPAPI;)V

    iput-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;

    .line 374
    :cond_f
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_3c

    .line 375
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mAutoECallHandler:Lcom/pateo/tsp/call/XCallHandler;

    invoke-interface {v1, v2}, Lcom/pateo/tsp/ITSPService;->registerAutoECallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_1a
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1a} :catch_1c

    move-result v1

    .line 383
    :goto_1b
    return v1

    .line 377
    :catch_1c
    move-exception v0

    .line 378
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setAutoECallListener failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 383
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_3c
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_1b
.end method

.method public setCallListener(Lcom/pateo/tsp/call/XCallListener;)I
    .registers 6
    .param p1, "listener"    # Lcom/pateo/tsp/call/XCallListener;

    .prologue
    .line 317
    if-eqz p1, :cond_31

    .line 319
    :try_start_2
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->mCallListener:Lcom/pateo/tsp/call/XCallListener;

    .line 320
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_31

    .line 321
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mCallHandler:Lcom/pateo/tsp/call/XCallHandler;

    invoke-interface {v1, v2}, Lcom/pateo/tsp/ITSPService;->registerCallHandler(Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result v1

    .line 329
    :goto_10
    return v1

    .line 323
    :catch_11
    move-exception v0

    .line 324
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallListener failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 329
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_10
.end method

.method public setCanbusAdapter(Lcom/pateo/tsp/adapter/CanbusAdapter;)I
    .registers 6
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/CanbusAdapter;

    .prologue
    .line 590
    if-eqz p1, :cond_2d

    .line 592
    :try_start_2
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2d

    .line 593
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->setCanbusAdapter(Lcom/pateo/tsp/adapter/CanbusAdapter;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 601
    :goto_c
    return v1

    .line 595
    :catch_d
    move-exception v0

    .line 596
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCanbusAdapter failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 601
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_c
.end method

.method public setCmsHuToken(Ljava/lang/String;)V
    .registers 6
    .param p1, "huToken"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->localCmsHuTokenBeanCache:Ljava/lang/String;

    .line 179
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-nez v1, :cond_e

    .line 180
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v2, "setCmsHuToken mTSPService is null"

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    :goto_d
    return-void

    .line 184
    :cond_e
    :try_start_e
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, p1}, Lcom/pateo/tsp/ITSPService;->setCmsHuToken(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_19} :catch_1a

    goto :goto_d

    .line 185
    :catch_1a
    move-exception v0

    .line 186
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error setCmsHuToken: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_d
.end method

.method public setCmsHuTokenListener(Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;)V
    .registers 4
    .param p1, "callback"    # Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    .prologue
    .line 227
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->mCmsHuTokenCallback:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    .line 228
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->localCmsHuTokenBeanCache:Ljava/lang/String;

    if-nez v0, :cond_7

    .line 233
    :cond_6
    :goto_6
    return-void

    .line 230
    :cond_7
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mCmsHuTokenCallback:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    if-eqz v0, :cond_6

    .line 232
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mCmsHuTokenCallback:Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;

    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->localCmsHuTokenBeanCache:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/pateo/tsp/TSPAPI$OnCmsHuTokenListener;->onCmsHutokenUpdate(Ljava/lang/String;)V

    goto :goto_6
.end method

.method public setDeviceInfoAdapter(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)I
    .registers 6
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/DeviceInfoAdapter;

    .prologue
    .line 570
    if-eqz p1, :cond_2d

    .line 572
    :try_start_2
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2d

    .line 573
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->setDeviceInfoAdapter(Lcom/pateo/tsp/adapter/DeviceInfoAdapter;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 581
    :goto_c
    return v1

    .line 575
    :catch_d
    move-exception v0

    .line 576
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDeviceInfoAdapter failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 581
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_c
.end method

.method public setGlobalToken(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 2
    .param p1, "token"    # Lcom/qinggan/tsp/models/TokenBean;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    .line 175
    return-void
.end method

.method public setGlobalTokenListener(Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;)V
    .registers 4
    .param p1, "callback"    # Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    .prologue
    .line 213
    iput-object p1, p0, Lcom/pateo/tsp/TSPAPI;->mCallback:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    .line 214
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    if-nez v0, :cond_7

    .line 219
    :cond_6
    :goto_6
    return-void

    .line 216
    :cond_7
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mCallback:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    if-eqz v0, :cond_6

    .line 218
    iget-object v0, p0, Lcom/pateo/tsp/TSPAPI;->mCallback:Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;

    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->localTokenBeanCache:Lcom/qinggan/tsp/models/TokenBean;

    invoke-interface {v0, v1}, Lcom/pateo/tsp/TSPAPI$OnGlobalTokenListener;->onGlobalTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    goto :goto_6
.end method

.method public setLocationInfoAdapter(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)I
    .registers 6
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/LocationInfoAdapter;

    .prologue
    .line 633
    if-eqz p1, :cond_2d

    .line 635
    :try_start_2
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2d

    .line 636
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->setLocationInfoAdapter(Lcom/pateo/tsp/adapter/LocationInfoAdapter;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 644
    :goto_c
    return v1

    .line 638
    :catch_d
    move-exception v0

    .line 639
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLocationInfoAdapter failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 644
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_c
.end method

.method public setNetworkAdapter(Lcom/pateo/tsp/adapter/NetworkAdapter;)I
    .registers 6
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/NetworkAdapter;

    .prologue
    .line 530
    if-eqz p1, :cond_2d

    .line 532
    :try_start_2
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2d

    .line 533
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->setNetworkAdapter(Lcom/pateo/tsp/adapter/NetworkAdapter;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 541
    :goto_c
    return v1

    .line 535
    :catch_d
    move-exception v0

    .line 536
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setNetworkAdapter failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 541
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_c
.end method

.method public setPhoneAdapter(Lcom/pateo/tsp/adapter/PhoneAdapter;)I
    .registers 6
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/PhoneAdapter;

    .prologue
    .line 489
    if-eqz p1, :cond_2d

    .line 491
    :try_start_2
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_2d

    .line 492
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    invoke-interface {v1, p1}, Lcom/pateo/tsp/ITSPService;->setPhoneAdapter(Lcom/pateo/tsp/adapter/PhoneAdapter;)I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_b} :catch_d

    move-result v1

    .line 500
    :goto_c
    return v1

    .line 494
    :catch_d
    move-exception v0

    .line 495
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setPhoneAdapter failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 500
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2d
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_c
.end method

.method public setPushListener(Lcom/pateo/tsp/push/PushListener;)I
    .registers 4
    .param p1, "listener"    # Lcom/pateo/tsp/push/PushListener;

    .prologue
    .line 417
    sget-object v0, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    const-string v1, "setPushListener"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    sget-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v0}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v0

    return v0
.end method

.method public setSmsAdapter(Lcom/pateo/tsp/adapter/SmsAdapter;)I
    .registers 3
    .param p1, "adapter"    # Lcom/pateo/tsp/adapter/SmsAdapter;

    .prologue
    .line 438
    sget-object v0, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v0}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v0

    return v0
.end method

.method public startXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallListener;)I
    .registers 7
    .param p1, "xcall"    # Lcom/pateo/tsp/call/XCall;
    .param p2, "listener"    # Lcom/pateo/tsp/call/XCallListener;

    .prologue
    .line 276
    if-eqz p2, :cond_31

    .line 278
    :try_start_2
    iput-object p2, p0, Lcom/pateo/tsp/TSPAPI;->mCallListener:Lcom/pateo/tsp/call/XCallListener;

    .line 279
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v1, :cond_31

    .line 280
    iget-object v1, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v2, p0, Lcom/pateo/tsp/TSPAPI;->mCallHandler:Lcom/pateo/tsp/call/XCallHandler;

    invoke-interface {v1, p1, v2}, Lcom/pateo/tsp/ITSPService;->startXCall(Lcom/pateo/tsp/call/XCall;Lcom/pateo/tsp/call/XCallHandler;)I
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_f} :catch_11

    move-result v1

    .line 288
    :goto_10
    return v1

    .line 282
    :catch_11
    move-exception v0

    .line 283
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startXCall failed:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    .line 288
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_31
    sget-object v1, Lcom/pateo/tsp/TSPAPI$Result;->RET_ERROR_UNKNOEN:Lcom/pateo/tsp/TSPAPI$Result;

    invoke-virtual {v1}, Lcom/pateo/tsp/TSPAPI$Result;->value()I

    move-result v1

    goto :goto_10
.end method

.method public subscribeTopic(Ljava/lang/String;)Z
    .registers 9
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 875
    const/4 v2, 0x0

    .line 877
    .local v2, "result":Z
    :try_start_3
    iget-object v5, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v5, :cond_17

    .line 878
    iget-object v5, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v6, p0, Lcom/pateo/tsp/TSPAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Lcom/pateo/tsp/ITSPService;->subscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_19

    move-result v1

    .line 879
    .local v1, "res":I
    if-ne v1, v3, :cond_16

    move v2, v3

    .line 889
    .end local v1    # "res":I
    .end local v2    # "result":Z
    :cond_16
    :goto_16
    return v2

    .restart local v2    # "result":Z
    :cond_17
    move v2, v4

    .line 882
    goto :goto_16

    .line 884
    :catch_19
    move-exception v0

    .line 885
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nativeGetRemoteConfigItem failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    move v2, v4

    .line 887
    goto :goto_16
.end method

.method public unSubscribeTopic(Ljava/lang/String;)Z
    .registers 9
    .param p1, "topic"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 899
    const/4 v2, 0x0

    .line 901
    .local v2, "result":Z
    :try_start_3
    iget-object v5, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    if-eqz v5, :cond_17

    .line 902
    iget-object v5, p0, Lcom/pateo/tsp/TSPAPI;->mTSPService:Lcom/pateo/tsp/ITSPService;

    iget-object v6, p0, Lcom/pateo/tsp/TSPAPI;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, p1}, Lcom/pateo/tsp/ITSPService;->unSubscribeTopic(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_12} :catch_19

    move-result v1

    .line 903
    .local v1, "res":I
    if-ne v1, v3, :cond_16

    move v2, v3

    .line 913
    .end local v1    # "res":I
    .end local v2    # "result":Z
    :cond_16
    :goto_16
    return v2

    .restart local v2    # "result":Z
    :cond_17
    move v2, v4

    .line 906
    goto :goto_16

    .line 908
    :catch_19
    move-exception v0

    .line 909
    .local v0, "e":Ljava/lang/Exception;
    sget-object v3, Lcom/pateo/tsp/TSPAPI;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "nativeGetRemoteConfigItem failed:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    invoke-direct {p0}, Lcom/pateo/tsp/TSPAPI;->connectService()V

    move v2, v4

    .line 911
    goto :goto_16
.end method
