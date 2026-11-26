.class Lcom/qinggan/ipksync/IpkLogManager$2;
.super Ljava/lang/Object;
.source "IpkLogManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IpkLogManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/ipksync/IpkLogManager;


# direct methods
.method constructor <init>(Lcom/qinggan/ipksync/IpkLogManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/ipksync/IpkLogManager;

    .prologue
    .line 59
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 62
    const-string v1, "IpkLogManager"

    const-string v2, "IpkLogManager connect success"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    invoke-static {p2}, Lcom/qinggan/ipksync/IIpkLogService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkLogService;

    move-result-object v2

    # setter for: Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;
    invoke-static {v1, v2}, Lcom/qinggan/ipksync/IpkLogManager;->access$102(Lcom/qinggan/ipksync/IpkLogManager;Lcom/qinggan/ipksync/IIpkLogService;)Lcom/qinggan/ipksync/IIpkLogService;

    .line 64
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    # getter for: Lcom/qinggan/ipksync/IpkLogManager;->mInitListenerLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qinggan/ipksync/IpkLogManager;->access$300(Lcom/qinggan/ipksync/IpkLogManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    # getter for: Lcom/qinggan/ipksync/IpkLogManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/ipksync/IpkLogManager;->access$200(Lcom/qinggan/ipksync/IpkLogManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 65
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_28

    .line 66
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 68
    :cond_28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 72
    const-string v1, "IpkLogManager"

    const-string v2, "IpkLogManager onServiceDisconnected"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/ipksync/IpkLogManager;->mService:Lcom/qinggan/ipksync/IIpkLogService;
    invoke-static {v1, v2}, Lcom/qinggan/ipksync/IpkLogManager;->access$102(Lcom/qinggan/ipksync/IpkLogManager;Lcom/qinggan/ipksync/IIpkLogService;)Lcom/qinggan/ipksync/IIpkLogService;

    .line 74
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    # getter for: Lcom/qinggan/ipksync/IpkLogManager;->mInitListenerLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qinggan/ipksync/IpkLogManager;->access$300(Lcom/qinggan/ipksync/IpkLogManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkLogManager$2;->this$0:Lcom/qinggan/ipksync/IpkLogManager;

    # getter for: Lcom/qinggan/ipksync/IpkLogManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/ipksync/IpkLogManager;->access$200(Lcom/qinggan/ipksync/IpkLogManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 75
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_25

    .line 76
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 78
    :cond_25
    return-void
.end method
