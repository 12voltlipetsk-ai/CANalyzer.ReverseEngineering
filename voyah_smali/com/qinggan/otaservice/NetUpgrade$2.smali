.class Lcom/qinggan/otaservice/NetUpgrade$2;
.super Landroid/os/Handler;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/NetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$2;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$2;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$900(Lcom/qinggan/otaservice/NetUpgrade;)I

    move-result v0

    if-nez v0, :cond_d

    .line 154
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$2;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/NetUpgrade;->disconnectFd()V

    .line 156
    :cond_d
    return-void
.end method
