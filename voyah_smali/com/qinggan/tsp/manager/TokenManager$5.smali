.class Lcom/qinggan/tsp/manager/TokenManager$5;
.super Ljava/lang/Object;
.source "TokenManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshTokenAsync(Lcom/qinggan/tsp/models/TokenBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/TokenManager;

.field final synthetic val$tokenBean:Lcom/qinggan/tsp/models/TokenBean;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/TokenManager;Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/TokenManager;

    .prologue
    .line 240
    iput-object p1, p0, Lcom/qinggan/tsp/manager/TokenManager$5;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    iput-object p2, p0, Lcom/qinggan/tsp/manager/TokenManager$5;->val$tokenBean:Lcom/qinggan/tsp/models/TokenBean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 243
    iget-object v2, p0, Lcom/qinggan/tsp/manager/TokenManager$5;->val$tokenBean:Lcom/qinggan/tsp/models/TokenBean;

    invoke-virtual {v2}, Lcom/qinggan/tsp/models/TokenBean;->getExpiredTime()J

    move-result-wide v0

    .line 244
    .local v0, "expTime":J
    iget-object v2, p0, Lcom/qinggan/tsp/manager/TokenManager$5;->this$0:Lcom/qinggan/tsp/manager/TokenManager;

    const/16 v3, 0x23

    # invokes: Lcom/qinggan/tsp/manager/TokenManager;->setNextRefreshToken(JI)V
    invoke-static {v2, v0, v1, v3}, Lcom/qinggan/tsp/manager/TokenManager;->access$800(Lcom/qinggan/tsp/manager/TokenManager;JI)V

    .line 245
    return-void
.end method
