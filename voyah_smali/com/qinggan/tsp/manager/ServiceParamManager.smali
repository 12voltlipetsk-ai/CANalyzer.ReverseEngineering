.class public Lcom/qinggan/tsp/manager/ServiceParamManager;
.super Ljava/lang/Object;
.source "ServiceParamManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/manager/ServiceParamManager$ParamInitListener;
    }
.end annotation


# instance fields
.field TAG:Ljava/lang/String;

.field private baseUrl:Ljava/lang/String;

.field private cmsUrl:Ljava/lang/String;

.field private deviceTypeForCp:Ljava/lang/String;

.field private gwmUrl:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private mIsConnected:Ljava/lang/Boolean;

.field private mOtaPushMessageListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

.field private mPoiPushMessageListener:Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;

.field private mPushMessageListener:Lcom/qinggan/tsp/TspManager$PushMessageListener;

.field private projectKey:Ljava/lang/String;

.field private trackingUrl:Ljava/lang/String;

.field private tspapi:Lcom/pateo/tsp/TSPAPI;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/pateo/tsp/TSPAPI;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pTspApi"    # Lcom/pateo/tsp/TSPAPI;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-class v0, Lcom/qinggan/tsp/manager/ServiceParamManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->TAG:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    .line 27
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mIsConnected:Ljava/lang/Boolean;

    .line 28
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->baseUrl:Ljava/lang/String;

    .line 29
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->cmsUrl:Ljava/lang/String;

    .line 30
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->gwmUrl:Ljava/lang/String;

    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->trackingUrl:Ljava/lang/String;

    .line 32
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->projectKey:Ljava/lang/String;

    .line 33
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->deviceTypeForCp:Ljava/lang/String;

    .line 37
    iput-object p2, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    .line 38
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mContext:Landroid/content/Context;

    .line 39
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/tsp/manager/ServiceParamManager;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/tsp/manager/ServiceParamManager;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 23
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mIsConnected:Ljava/lang/Boolean;

    return-object p1
.end method


# virtual methods
.method public getBaseUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 42
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->baseUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getCmsUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->cmsUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceTypeForCp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 62
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->deviceTypeForCp:Ljava/lang/String;

    return-object v0
.end method

.method public getGwmUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 50
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->gwmUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getProjectKey()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->projectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getTrackingUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->trackingUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getTspapi()Lcom/pateo/tsp/TSPAPI;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    return-object v0
.end method

.method public initParamConfig(Lcom/qinggan/tsp/manager/ServiceParamManager$ParamInitListener;)V
    .registers 5
    .param p1, "initListener"    # Lcom/qinggan/tsp/manager/ServiceParamManager$ParamInitListener;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->tspapi:Lcom/pateo/tsp/TSPAPI;

    iget-object v1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/qinggan/tsp/manager/ServiceParamManager$1;

    invoke-direct {v2, p0}, Lcom/qinggan/tsp/manager/ServiceParamManager$1;-><init>(Lcom/qinggan/tsp/manager/ServiceParamManager;)V

    invoke-virtual {v0, v1, v2}, Lcom/pateo/tsp/TSPAPI;->init(Landroid/content/Context;Lcom/pateo/tsp/TSPAPI$OnInitListener;)V

    .line 81
    return-void
.end method

.method public setOtaPushMessageListener(Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;)V
    .registers 5
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOtaPushMessageListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mOtaPushMessageListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    .line 95
    return-void
.end method

.method public setPoiPushMessageListener(Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;)V
    .registers 5
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPoiPushMessageListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mPoiPushMessageListener:Lcom/qinggan/tsp/TspManager$PoiPushMessageListener;

    .line 100
    return-void
.end method

.method public setPushMessageListener(Lcom/qinggan/tsp/TspManager$PushMessageListener;)V
    .registers 5
    .param p1, "pushMessageListener"    # Lcom/qinggan/tsp/TspManager$PushMessageListener;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPushMessageListener: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceParamManager;->mPushMessageListener:Lcom/qinggan/tsp/TspManager$PushMessageListener;

    .line 90
    return-void
.end method
