.class Lcom/qinggan/otaservice/EthernetUpgrade$2;
.super Ljava/lang/Object;
.source "EthernetUpgrade.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$2;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .prologue
    .line 174
    const/16 v3, 0x64

    .line 175
    .local v3, "time":I
    :goto_2
    # getter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z
    invoke-static {}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$200()Z

    move-result v4

    if-nez v4, :cond_48

    .line 176
    const-string v4, "qg.doip_service"

    invoke-static {v4}, Lcom/qinggan/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 178
    .local v0, "binder":Landroid/os/IBinder;
    if-nez v0, :cond_28

    .line 179
    rem-int/lit16 v4, v3, 0x3e8

    if-nez v4, :cond_1b

    .line 180
    const-string v4, "EthernetUpgrade"

    const-string v5, "Can not get service qg.doip_service"

    invoke-static {v4, v5}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    :cond_1b
    const-wide/16 v4, 0xc8

    :try_start_1d
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_20
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_20} :catch_23

    .line 183
    add-int/lit8 v3, v3, 0x64

    goto :goto_2

    .line 184
    :catch_23
    move-exception v1

    .line 185
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_2

    .line 189
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :cond_28
    const/4 v4, 0x1

    # setter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mIsConnected:Z
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$202(Z)Z

    .line 191
    :try_start_2c
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$2;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    iget-object v4, v4, Lcom/qinggan/otaservice/EthernetUpgrade;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v5, 0x0

    invoke-interface {v0, v4, v5}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_2c .. :try_end_34} :catch_43

    .line 195
    :goto_34
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$2;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    .line 196
    invoke-static {v0}, Lcom/qinggan/system/IDoIPService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/system/IDoIPService;

    move-result-object v5

    .line 195
    # setter for: Lcom/qinggan/otaservice/EthernetUpgrade;->mDoIPService:Lcom/qinggan/system/IDoIPService;
    invoke-static {v4, v5}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$302(Lcom/qinggan/otaservice/EthernetUpgrade;Lcom/qinggan/system/IDoIPService;)Lcom/qinggan/system/IDoIPService;

    .line 197
    iget-object v4, p0, Lcom/qinggan/otaservice/EthernetUpgrade$2;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->registerDoIPListener()V
    invoke-static {v4}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$400(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    goto :goto_2

    .line 192
    :catch_43
    move-exception v2

    .line 193
    .local v2, "exception":Landroid/os/RemoteException;
    invoke-virtual {v2}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_34

    .line 199
    .end local v0    # "binder":Landroid/os/IBinder;
    .end local v2    # "exception":Landroid/os/RemoteException;
    :cond_48
    return-void
.end method
