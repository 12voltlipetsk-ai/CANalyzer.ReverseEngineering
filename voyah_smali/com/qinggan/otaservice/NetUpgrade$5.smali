.class Lcom/qinggan/otaservice/NetUpgrade$5;
.super Ljava/lang/Thread;
.source "NetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;->initUpdateLocalVersion()V
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
    .line 252
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$5;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 255
    iget-object v0, p0, Lcom/qinggan/otaservice/NetUpgrade$5;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    # getter for: Lcom/qinggan/otaservice/NetUpgrade;->mServerAdapter:Lcom/qinggan/otaservice/engine/ServerAdapter;
    invoke-static {v0}, Lcom/qinggan/otaservice/NetUpgrade;->access$400(Lcom/qinggan/otaservice/NetUpgrade;)Lcom/qinggan/otaservice/engine/ServerAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/qinggan/otaservice/engine/ServerAdapter;->updateLocalVersion(Z)Z

    .line 256
    return-void
.end method
