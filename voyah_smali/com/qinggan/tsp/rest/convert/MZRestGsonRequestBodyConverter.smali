.class public Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;
.super Ljava/lang/Object;
.source "MZRestGsonRequestBodyConverter.java"

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
        "<TT;",
        "Lokhttp3/RequestBody;",
        ">;"
    }
.end annotation


# static fields
.field private static final MEDIA_TYPE:Lokhttp3/MediaType;

.field private static final UTF_8:Ljava/nio/charset/Charset;


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

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 40
    const-string v0, "application/json; charset=UTF-8"

    .line 41
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    .line 42
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    return-void
.end method

.method protected constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;)V
    .registers 4
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/Gson;",
            "Lcom/google/gson/TypeAdapter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 47
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter<TT;>;"
    .local p2, "adapter":Lcom/google/gson/TypeAdapter;, "Lcom/google/gson/TypeAdapter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->TAG:Ljava/lang/String;

    .line 48
    iput-object p1, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    .line 49
    iput-object p2, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    .line 50
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
    .line 37
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter<TT;>;"
    invoke-virtual {p0, p1}, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->convert(Ljava/lang/Object;)Lokhttp3/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public convert(Ljava/lang/Object;)Lokhttp3/RequestBody;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)",
            "Lokhttp3/RequestBody;"
        }
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;, "Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    new-instance v1, Lokio/Buffer;

    invoke-direct {v1}, Lokio/Buffer;-><init>()V

    .line 55
    .local v1, "buffer":Lokio/Buffer;
    const/4 v0, 0x0

    .line 57
    .local v0, "body":Lokio/ByteString;
    :try_start_6
    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-virtual {v1}, Lokio/Buffer;->outputStream()Ljava/io/OutputStream;

    move-result-object v5

    sget-object v6, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v4, v5, v6}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    .line 58
    .local v4, "writer":Ljava/io/Writer;
    iget-object v5, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, v4}, Lcom/google/gson/Gson;->newJsonWriter(Ljava/io/Writer;)Lcom/google/gson/stream/JsonWriter;

    move-result-object v3

    .line 59
    .local v3, "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    iget-object v5, p0, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->adapter:Lcom/google/gson/TypeAdapter;

    invoke-virtual {v5, v3, p1}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 60
    invoke-virtual {v3}, Lcom/google/gson/stream/JsonWriter;->close()V

    .line 61
    invoke-virtual {v1}, Lokio/Buffer;->readByteString()Lokio/ByteString;
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_22} :catch_2d
    .catchall {:try_start_6 .. :try_end_22} :catchall_35

    move-result-object v0

    .line 67
    invoke-virtual {v1}, Lokio/Buffer;->close()V

    .line 69
    .end local v3    # "jsonWriter":Lcom/google/gson/stream/JsonWriter;
    .end local v4    # "writer":Ljava/io/Writer;
    :goto_26
    sget-object v5, Lcom/qinggan/tsp/rest/convert/MZRestGsonRequestBodyConverter;->MEDIA_TYPE:Lokhttp3/MediaType;

    invoke-static {v5, v0}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v5

    return-object v5

    .line 64
    :catch_2d
    move-exception v2

    .line 65
    .local v2, "e":Ljava/lang/Exception;
    :try_start_2e
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_35

    .line 67
    invoke-virtual {v1}, Lokio/Buffer;->close()V

    goto :goto_26

    .end local v2    # "e":Ljava/lang/Exception;
    :catchall_35
    move-exception v5

    invoke-virtual {v1}, Lokio/Buffer;->close()V

    .line 68
    throw v5
.end method
