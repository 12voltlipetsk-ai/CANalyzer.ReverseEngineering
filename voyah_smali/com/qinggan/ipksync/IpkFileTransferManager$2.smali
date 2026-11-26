.class Lcom/qinggan/ipksync/IpkFileTransferManager$2;
.super Ljava/lang/Object;
.source "IpkFileTransferManager.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/IpkFileTransferManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;


# direct methods
.method constructor <init>(Lcom/qinggan/ipksync/IpkFileTransferManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/ipksync/IpkFileTransferManager;

    .prologue
    .line 100
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 103
    const-string v1, "IpkFileTransferManager"

    const-string v2, "IpkUploadService connect success"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    invoke-static {p2}, Lcom/qinggan/ipksync/IIpkFileTransferService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/qinggan/ipksync/IIpkFileTransferService;

    move-result-object v2

    # setter for: Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;
    invoke-static {v1, v2}, Lcom/qinggan/ipksync/IpkFileTransferManager;->access$102(Lcom/qinggan/ipksync/IpkFileTransferManager;Lcom/qinggan/ipksync/IIpkFileTransferService;)Lcom/qinggan/ipksync/IIpkFileTransferService;

    .line 105
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    # getter for: Lcom/qinggan/ipksync/IpkFileTransferManager;->mInitListenerLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qinggan/ipksync/IpkFileTransferManager;->access$300(Lcom/qinggan/ipksync/IpkFileTransferManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    # getter for: Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/ipksync/IpkFileTransferManager;->access$200(Lcom/qinggan/ipksync/IpkFileTransferManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 106
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_28

    .line 107
    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 109
    :cond_28
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 5
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 113
    const-string v1, "IpkFileTransferManager"

    const-string v2, "IpkUploadService onServiceDisconnected"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    const/4 v2, 0x0

    # setter for: Lcom/qinggan/ipksync/IpkFileTransferManager;->mService:Lcom/qinggan/ipksync/IIpkFileTransferService;
    invoke-static {v1, v2}, Lcom/qinggan/ipksync/IpkFileTransferManager;->access$102(Lcom/qinggan/ipksync/IpkFileTransferManager;Lcom/qinggan/ipksync/IIpkFileTransferService;)Lcom/qinggan/ipksync/IIpkFileTransferService;

    .line 115
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    # getter for: Lcom/qinggan/ipksync/IpkFileTransferManager;->mInitListenerLists:Ljava/util/HashMap;
    invoke-static {v1}, Lcom/qinggan/ipksync/IpkFileTransferManager;->access$300(Lcom/qinggan/ipksync/IpkFileTransferManager;)Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/qinggan/ipksync/IpkFileTransferManager$2;->this$0:Lcom/qinggan/ipksync/IpkFileTransferManager;

    # getter for: Lcom/qinggan/ipksync/IpkFileTransferManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/qinggan/ipksync/IpkFileTransferManager;->access$200(Lcom/qinggan/ipksync/IpkFileTransferManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/common/OnInitListener;

    .line 116
    .local v0, "listener":Lcom/qinggan/common/OnInitListener;
    if-eqz v0, :cond_25

    .line 117
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 119
    :cond_25
    return-void
.end method
