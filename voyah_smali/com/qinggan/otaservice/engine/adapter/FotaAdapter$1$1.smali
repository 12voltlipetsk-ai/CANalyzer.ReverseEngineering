.class Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1$1;
.super Ljava/lang/Thread;
.source "FotaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;->onResult(ZLcom/qinggan/tsp/InitError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;)V
    .registers 2
    .param p1, "this$1"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->uploadResultImpl()V

    .line 92
    return-void
.end method
