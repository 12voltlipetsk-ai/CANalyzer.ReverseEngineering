.class Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;
.super Ljava/lang/Object;
.source "FotaAdapter.java"

# interfaces
.implements Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 108
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMessageArrived(Lcom/qinggan/tsp/push/OtaPushMessage;)V
    .registers 4
    .param p1, "pushMessage"    # Lcom/qinggan/tsp/push/OtaPushMessage;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$700(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;

    invoke-direct {v1, p0, p1}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;-><init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;Lcom/qinggan/tsp/push/OtaPushMessage;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 157
    return-void
.end method
