.class Lcom/qinggan/tsp/manager/ServiceManager$4;
.super Ljava/lang/Object;
.source "ServiceManager.java"

# interfaces
.implements Lokhttp3/Interceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/tsp/manager/ServiceManager;->getHeaderInterceptor(Z)Lokhttp3/Interceptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/tsp/manager/ServiceManager;

.field final synthetic val$safe:Z


# direct methods
.method constructor <init>(Lcom/qinggan/tsp/manager/ServiceManager;Z)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/tsp/manager/ServiceManager;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/qinggan/tsp/manager/ServiceManager$4;->this$0:Lcom/qinggan/tsp/manager/ServiceManager;

    iput-boolean p2, p0, Lcom/qinggan/tsp/manager/ServiceManager$4;->val$safe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .registers 12
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 407
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v6

    .line 408
    .local v6, "srcRequest":Lokhttp3/Request;
    invoke-virtual {v6}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v8

    invoke-virtual {v8}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v3

    .line 409
    .local v3, "realUrl":Ljava/lang/String;
    iget-object v8, p0, Lcom/qinggan/tsp/manager/ServiceManager$4;->this$0:Lcom/qinggan/tsp/manager/ServiceManager;

    iget-boolean v9, p0, Lcom/qinggan/tsp/manager/ServiceManager$4;->val$safe:Z

    # invokes: Lcom/qinggan/tsp/manager/ServiceManager;->createHeaders(Ljava/lang/String;Z)Ljava/util/LinkedHashMap;
    invoke-static {v8, v3, v9}, Lcom/qinggan/tsp/manager/ServiceManager;->access$100(Lcom/qinggan/tsp/manager/ServiceManager;Ljava/lang/String;Z)Ljava/util/LinkedHashMap;

    move-result-object v1

    .line 410
    .local v1, "headers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v6}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object v0

    .line 411
    .local v0, "builder":Lokhttp3/Request$Builder;
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_20
    :goto_20
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_3c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 412
    .local v2, "key":Ljava/lang/String;
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 413
    .local v7, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_20

    .line 414
    invoke-virtual {v0, v2, v7}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_20

    .line 417
    .end local v2    # "key":Ljava/lang/String;
    .end local v7    # "value":Ljava/lang/String;
    :cond_3c
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v4

    .line 418
    .local v4, "request":Lokhttp3/Request;
    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v5

    .line 420
    .local v5, "response":Lokhttp3/Response;
    return-object v5
.end method
