.class public Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;
.super Lretrofit2/Converter$Factory;
.source "MZRestGsonConverterFactory.java"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method protected constructor <init>(Lcom/google/gson/Gson;)V
    .registers 4
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 59
    invoke-direct {p0}, Lretrofit2/Converter$Factory;-><init>()V

    .line 60
    if-nez p1, :cond_d

    .line 61
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "gson == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_d
    iput-object p1, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->gson:Lcom/google/gson/Gson;

    .line 63
    return-void
.end method

.method public static create()Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    invoke-static {v0}, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->create(Lcom/google/gson/Gson;)Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/google/gson/Gson;)Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;
    .registers 2
    .param p0, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 54
    new-instance v0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;

    invoke-direct {v0, p0}, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;-><init>(Lcom/google/gson/Gson;)V

    return-object v0
.end method


# virtual methods
.method protected getGson()Lcom/google/gson/Gson;
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->gson:Lcom/google/gson/Gson;

    return-object v0
.end method

.method public requestBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 8
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "parameterAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "methodAnnotations"    # [Ljava/lang/annotation/Annotation;
    .param p4, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Lokhttp3/RequestBody;",
            ">;"
        }
    .end annotation

    .prologue
    .line 78
    iget-object v1, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 79
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;

    iget-object v2, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-direct {v1, v2, v0}, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method

.method public responseBodyConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<",
            "Lokhttp3/ResponseBody;",
            "*>;"
        }
    .end annotation

    .prologue
    .line 69
    iget-object v1, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 70
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;

    invoke-direct {v1, v0}, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;-><init>(Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method

.method public stringConverter(Ljava/lang/reflect/Type;[Ljava/lang/annotation/Annotation;Lretrofit2/Retrofit;)Lretrofit2/Converter;
    .registers 7
    .param p1, "type"    # Ljava/lang/reflect/Type;
    .param p2, "annotations"    # [Ljava/lang/annotation/Annotation;
    .param p3, "retrofit"    # Lretrofit2/Retrofit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Type;",
            "[",
            "Ljava/lang/annotation/Annotation;",
            "Lretrofit2/Retrofit;",
            ")",
            "Lretrofit2/Converter",
            "<*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 85
    iget-object v1, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonConverterFactory;->gson:Lcom/google/gson/Gson;

    invoke-static {p1}, Lcom/google/gson/reflect/TypeToken;->get(Ljava/lang/reflect/Type;)Lcom/google/gson/reflect/TypeToken;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    move-result-object v0

    .line 86
    .local v0, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<*>;"
    new-instance v1, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;

    invoke-direct {v1, v0}, Lcom/qinggan/tsp/rest/convert/MZRestGsonResponseBodyConverter;-><init>(Lcom/google/gson/TypeAdapter;)V

    return-object v1
.end method
