.class Lcom/qinggan/tsp/InitManager$2;
.super Ljava/lang/Object;
.source "InitManager.java"

# interfaces
.implements Lcom/qinggan/tsp/manager/TokenManager$TokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/InitManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/InitManager;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/InitManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/InitManager;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/qinggan/tsp/InitManager$2;->this$0:Lcom/qinggan/tsp/InitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V
    .registers 3
    .param p1, "tokenBean"    # Lcom/qinggan/tsp/models/TokenBean;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager$2;->this$0:Lcom/qinggan/tsp/InitManager;

    iget-object v0, v0, Lcom/qinggan/tsp/InitManager;->clientTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    if-eqz v0, :cond_f

    if-eqz p1, :cond_f

    .line 119
    iget-object v0, p0, Lcom/qinggan/tsp/InitManager$2;->this$0:Lcom/qinggan/tsp/InitManager;

    iget-object v0, v0, Lcom/qinggan/tsp/InitManager;->clientTokenListener:Lcom/qinggan/tsp/manager/TokenManager$TokenListener;

    invoke-interface {v0, p1}, Lcom/qinggan/tsp/manager/TokenManager$TokenListener;->onTokenUpdate(Lcom/qinggan/tsp/models/TokenBean;)V

    .line 120
    :cond_f
    return-void
.end method
