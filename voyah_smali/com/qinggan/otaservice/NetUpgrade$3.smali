.class Lcom/qinggan/otaservice/NetUpgrade$3;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Lcom/qinggan/system/SystemEventHelper$SystemEventHandler;


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
    .line 159
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$3;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAVNStatusChange(I)V
    .registers 7
    .param p1, "arg0"    # I

    .prologue
    const/4 v4, 0x0

    .line 175
    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/NetUpgrade;->access$800()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAVNStatusChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$3;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$900(Lcom/qinggan/otaservice/NetUpgrade;)I

    move-result v0

    if-eq v0, p1, :cond_3e

    .line 177
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$3;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1000(Lcom/qinggan/otaservice/NetUpgrade;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 178
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$3;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # setter for: Lcom/qinggan/otaservice/NetUpgrade;->mPowerState:I
    invoke-static {v0, p1}, Lcom/qinggan/otaservice/NetUpgrade;->access$902(Lcom/qinggan/otaservice/NetUpgrade;I)I

    .line 179
    if-nez p1, :cond_3e

    .line 180
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$3;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$1000(Lcom/qinggan/otaservice/NetUpgrade;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 183
    :cond_3e
    return-void
.end method

.method public onAppExit()V
    .registers 1

    .prologue
    .line 187
    return-void
.end method

.method public onExitControlCenter()V
    .registers 1

    .prologue
    .line 191
    return-void
.end method

.method public onRestoreLastMemory(Lcom/qinggan/system/RestoreInfo;)V
    .registers 2
    .param p1, "arg0"    # Lcom/qinggan/system/RestoreInfo;

    .prologue
    .line 171
    return-void
.end method

.method public onSaveLastMemory()V
    .registers 1

    .prologue
    .line 167
    return-void
.end method

.method public onScreenSaver(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 195
    return-void
.end method

.method public onSwitchBTPhonePrivacyMode()V
    .registers 1

    .prologue
    .line 163
    return-void
.end method
