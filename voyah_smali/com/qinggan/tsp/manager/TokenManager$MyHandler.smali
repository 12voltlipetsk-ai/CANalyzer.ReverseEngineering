.class Lcom/qinggan/tsp/manager/TokenManager$MyHandler;
.super Landroid/os/Handler;
.source "TokenManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/manager/TokenManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/TokenManager;


# direct methods
.method public constructor <init>(Lcom/qinggan/tsp/manager/TokenManager;Landroid/os/Looper;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/TokenManager;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 208
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager$MyHandler;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    .line 209
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 210
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 214
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_34

    .line 223
    :goto_1f
    :pswitch_1f
    return-void

    .line 217
    :pswitch_20
    sget-object v0, Lcom/qinggan/tsp/manager/TokenManager;->TAG:Ljava/lang/String;

    const-string v1, "refresh token"

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager$MyHandler;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->requestAuthTokenByPdsn()V
    invoke-static {v0}, Lcom/qinggan/tsp/manager/TokenManager;->access$500(Lcom/qinggan/tsp/manager/TokenManager;)V

    goto :goto_1f

    .line 221
    :pswitch_2d
    iget-object v0, p0, Lcom/qinggan/tsp/manager/TokenManager$MyHandler;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->refreshToken()Lcom/qinggan/tsp/models/TokenBean;
    invoke-static {v0}, Lcom/qinggan/tsp/manager/TokenManager;->access$600(Lcom/qinggan/tsp/manager/TokenManager;)Lcom/qinggan/tsp/models/TokenBean;

    goto :goto_1f

    .line 215
    nop

    :pswitch_data_34
    .packed-switch 0x21
        :pswitch_20
        :pswitch_1f
        :pswitch_2d
    .end packed-switch
.end method
