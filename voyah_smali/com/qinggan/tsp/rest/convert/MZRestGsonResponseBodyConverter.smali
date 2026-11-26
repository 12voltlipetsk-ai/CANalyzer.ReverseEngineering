.class public Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;
.super Ljava/lang/Object;
.source "MZRestGsonResponseBodyConverter.java"

# interfaces
.implements Lretrofit2/Converter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Converter",
        "<",
        "Lokhttp3/ResponseBody;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final adapter:Lcom/google/gson/TypeAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/google/gson/TypeAdapter;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 36
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter<TT;>;"
    .local p1, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    const-string v0, "GsonResponseBodyConvert"

    iput-object v0, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->TAG:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    .line 38
    return-void
.end method


# virtual methods
.method public bridge synthetic convert(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter<TT;>;"
    check-cast p1, Lokhttp3/ResponseBody;

    invoke-virtual {p0, p1}, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public convert(Lokhttp3/ResponseBody;)Ljava/lang/Object;
    .registers 8
    .param p1, "value"    # Lokhttp3/ResponseBody;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/ResponseBody;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter<TT;>;"
    :try_start_0
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 44
    .local v1, "json":Ljava/lang/String;
    const-string v3, "GsonResponseBodyConvert"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "response json --> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_30

    .line 45
    const/4 v2, 0x0

    .line 47
    .local v2, "object":Ljava/lang/Object;, "TT;"
    :try_start_1d
    iget-object v3, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v3, v1}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_22} :catch_27
    .catchall {:try_start_1d .. :try_end_22} :catchall_30

    move-result-object v2

    .line 54
    :goto_23
    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 52
    return-object v2

    .line 48
    :catch_27
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    :try_start_28
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 50
    invoke-virtual {p0, v2, v1}, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->handleJsonSyntaxException(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2e
    .catchall {:try_start_28 .. :try_end_2e} :catchall_30

    move-result-object v2

    goto :goto_23

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "json":Ljava/lang/String;
    .end local v2    # "object":Ljava/lang/Object;, "TT;"
    :catchall_30
    move-exception v3

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->close()V

    .line 55
    throw v3
.end method

.method protected getAdapter()Lcom/google/gson/TypeAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter<TT;>;"
    iget-object v0, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    return-object v0
.end method

.method protected handleJsonSyntaxException(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .registers 6
    .param p2, "json"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    :try_start_0
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 63
    iget-object v2, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v2, p2}, Lcom/google/gson/TypeAdapter;->fromJson(Ljava/lang/String;)Ljava/lang/Object;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_10

    move-result-object p1

    .line 67
    .end local v1    # "gson":Lcom/google/gson/Gson;
    :goto_f
    return-object p1

    .line 64
    :catch_10
    move-exception v0

    .line 65
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_f
.end method
