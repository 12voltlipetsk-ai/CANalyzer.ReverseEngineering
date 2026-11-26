.class Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;
.super Lcom/qinggan/tsp/TspManager$OnInitDetailListener;
.source "TspAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/TspAdapter;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    invoke-direct {p0}, Lcom/qinggan/tsp/TspManager$OnInitDetailListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(ZLcom/qinggan/tsp/InitError;)V
    .registers 7
    .param p1, "arg0"    # Z
    .param p2, "arg1"    # Lcom/qinggan/tsp/InitError;

    .prologue
    const/4 v3, 0x0

    .line 76
    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TspManager init onResult: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z
    invoke-static {v0, p1}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$102(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Z)Z

    .line 78
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$300(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/tsp/TspManager;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPushListener:Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;
    invoke-static {v1}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$200(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/TspManager;->setOtaPushMessageListener(Lcom/qinggan/tsp/TspManager$OtaPushMessageListener;)V

    .line 79
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$100(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$400(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z

    move-result v0

    if-eqz v0, :cond_4c

    .line 80
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUploadResultPending:Z
    invoke-static {v0, v3}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$402(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Z)Z

    .line 81
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$1;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$1;-><init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;)V

    .line 86
    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$1;->start()V

    .line 88
    :cond_4c
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mInit:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$100(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z

    move-result v0

    if-eqz v0, :cond_69

    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z
    invoke-static {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$500(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Z

    move-result v0

    if-eqz v0, :cond_69

    .line 89
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mUpdateLocalVersionPending:Z
    invoke-static {v0, v3}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$502(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Z)Z

    .line 90
    new-instance v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$2;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$2;-><init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1;)V

    .line 95
    invoke-virtual {v0}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$1$2;->start()V

    .line 97
    :cond_69
    return-void
.end method
