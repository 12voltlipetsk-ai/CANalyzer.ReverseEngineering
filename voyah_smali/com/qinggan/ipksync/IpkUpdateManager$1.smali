.class final Lcom/qinggan/ipksync/IpkUpdateManager$1;
.super Ljava/lang/Object;
.source "IpkUpdateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/ipksync/IpkUpdateManager;->getInstance(Landroid/content/Context;Lcom/qinggan/common/OnInitListener;)Lcom/qinggan/ipksync/IpkUpdateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$linstener:Lcom/qinggan/common/OnInitListener;


# direct methods
.method constructor <init>(Lcom/qinggan/common/OnInitListener;)V
    .registers 2

    .prologue
    .line 80
    iput-object p1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$1;->val$linstener:Lcom/qinggan/common/OnInitListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 84
    const-wide/16 v2, 0x1e

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_16

    .line 88
    :goto_5
    # getter for: Lcom/qinggan/ipksync/IpkUpdateManager;->sUpdateManager:Lcom/qinggan/ipksync/IpkUpdateManager;
    invoke-static {}, Lcom/qinggan/ipksync/IpkUpdateManager;->access$000()Lcom/qinggan/ipksync/IpkUpdateManager;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$1;->val$linstener:Lcom/qinggan/common/OnInitListener;

    if-eqz v1, :cond_15

    .line 89
    iget-object v1, p0, Lcom/qinggan/ipksync/IpkUpdateManager$1;->val$linstener:Lcom/qinggan/common/OnInitListener;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/qinggan/common/OnInitListener;->onConnectStatusChange(Z)V

    .line 91
    :cond_15
    return-void

    .line 85
    :catch_16
    move-exception v0

    .line 86
    .local v0, "e":Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_5
.end method
