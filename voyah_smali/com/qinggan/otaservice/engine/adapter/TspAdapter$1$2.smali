.class Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$2;
.super Ljava/lang/Thread;
.source "TspAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->onResult(ZLcom/qinggan/tsp/InitError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$2;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 93
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$2;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->updateLocalVersion(Z)Z

    .line 94
    return-void
.end method
