.class Lcom/qinggan/tsp/InitManager$1;
.super Ljava/lang/Object;
.source "InitManager.java"

# interfaces
.implements Lcom/qinggan/tsp/manager/ServiceParamManager$ParamInitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/InitManager;->initTspApi()V
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
    .line 103
    iput-object p1, p0, Lcom/qinggan/tsp/InitManager$1;->this$0:Lcom/qinggan/tsp/InitManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onParamResult(Z)V
    .registers 2
    .param p1, "ok"    # Z

    .prologue
    .line 107
    return-void
.end method
