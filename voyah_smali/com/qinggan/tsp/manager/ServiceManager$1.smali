.class Lcom/qinggan/tsp/manager/ServiceManager$1;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/manager/ServiceManager;->createHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/ServiceManager;


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/ServiceManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/ServiceManager;

    .prologue
    .line 280
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager$1;->this$0:Lcom/qinggan/tsp/manager/ServiceManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .registers 6
    .param p1, "hostname"    # Ljava/lang/String;
    .param p2, "session"    # Ljavax/net/ssl/SSLSession;

    .prologue
    .line 283
    iget-object v0, p0, Lcom/qinggan/tsp/manager/ServiceManager$1;->this$0:Lcom/qinggan/tsp/manager/ServiceManager;

    iget-object v0, v0, Lcom/qinggan/tsp/manager/ServiceManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ": hostname: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/qinggan/tsp/util/WLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x0

    return v0
.end method
