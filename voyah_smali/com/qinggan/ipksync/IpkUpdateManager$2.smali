.class Lcom/qinggan/ipksync/IpkUpdateManager$2;
.super Ljava/lang/Object;
.source "IpkUpdateManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IpkUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/ipksync/IpkUpdateManager;


# direct methods
.method constructor <init>(Lcom/qinggan/ipksync/IpkUpdateManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/ipksync/IpkUpdateManager;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 107
    const-string v1, "IpkUpdateManager"

    const-string v2, "IpkUpdateService connect success"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    invoke-static {p2}, Lcom/qinggan/ipksync/IIpkUpdateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkUpdateService;

    move-result-object v2

    # setter for: Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;
    invoke-static {v1, v2}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$102(Lcom/qinggan/ipksync/IpkUpdateManager;Lcom/qinggan/ipksync/IIpkUpdateService;)Lcom/qinggan/ipksync/IIpkUpdateService;

    .line 109
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    # getter for: Lcom/qinggan/ipksync/IpkUpdateManager;->mInitListenerLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$300(Lcom/qinggan/ipksync/IpkUpdateManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    # getter for: Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$200(Lcom/qinggan/ipksync/IpkUpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 110
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_28

    .line 111
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 113
    :cond_28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 117
    const-string v1, "IpkUpdateManager"

    const-string v2, "IpkUpdateService onServiceDisconnected"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/ipksync/IpkUpdateManager;->mService:Lcom/qinggan/ipksync/IIpkUpdateService;
    invoke-static {v1, v2}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$102(Lcom/qinggan/ipksync/IpkUpdateManager;Lcom/qinggan/ipksync/IIpkUpdateService;)Lcom/qinggan/ipksync/IIpkUpdateService;

    .line 119
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    # getter for: Lcom/qinggan/ipksync/IpkUpdateManager;->mInitListenerLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$300(Lcom/qinggan/ipksync/IpkUpdateManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkUpdateManager$2;->this$0:Lcom/qinggan/ipksync/IpkUpdateManager;

    # getter for: Lcom/qinggan/ipksync/IpkUpdateManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$200(Lcom/qinggan/ipksync/IpkUpdateManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 120
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_25

    .line 121
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 123
    :cond_25
    return-void
.end method
