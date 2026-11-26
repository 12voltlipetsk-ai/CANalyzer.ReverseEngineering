.class public Lretrofit/converter/GsonConverter;
.super Ljava/lang/Object;
.source "GsonConverter.java"

# interfaces
.implements Lretrofit/converter/Converter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lretrofit/converter/GsonConverter$JsonTypedOutput;
    }
.end annotation


# instance fields
.field private charset:Ljava/lang/String;

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;)V
    .registers 3
    .param p1, "gson"    # Lcom/google/gson/Gson;

    .prologue
    .line 43
    const-string v0, "UTF-8"

    invoke-direct {p0, p1, v0}, Lretrofit/converter/GsonConverter;-><init>(Lcom/google/gson/Gson;Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Lcom/google/gson/Gson;Ljava/lang/String;)V
    .registers 3
    .param p1, "gson"    # Lcom/google/gson/Gson;
    .param p2, "charset"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Lretrofit/converter/GsonConverter;->gson:Lcom/google/gson/Gson;

    .line 52
    iput-object p2, p0, Lretrofit/converter/GsonConverter;->charset:Ljava/lang/String;

    .line 53
    return-void
.end method


# virtual methods
.method public fromBody(Lretrofit/mime/TypedInput;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    .registers 9
    .param p1, "body"    # Lretrofit/mime/TypedInput;
    .param p2, "type"    # Ljava/lang/reflect/Type;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lretrofit/converter/ConversionException;
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lretrofit/converter/GsonConverter;->charset:Ljava/lang/String;

    .line 57
    .local v0, "charset":Ljava/lang/String;
    invoke-interface {p1}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_10

    .line 58
    invoke-interface {p1}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v0}, Lretrofit/mime/MimeUtil;->parseCharset(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    :cond_10
    const/4 v2, 0x0

    .line 62
    .local v2, "isr":Ljava/io/InputStreamReader;
    :try_start_11
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-interface {p1}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_1a} :catch_26
    .catch Lcom/google/gson/JsonParseException; {:try_start_11 .. :try_end_1a} :catch_34
    .catchall {:try_start_11 .. :try_end_1a} :catchall_2d

    .line 63
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_1a
    iget-object v4, p0, Lretrofit/converter/GsonConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, v3, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/io/Reader;Ljava/lang/reflect/Type;)Ljava/lang/Object;
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1f} :catch_45
    .catch Lcom/google/gson/JsonParseException; {:try_start_1a .. :try_end_1f} :catch_42
    .catchall {:try_start_1a .. :try_end_1f} :catchall_3f

    move-result-object v4

    .line 69
    if-eqz v3, :cond_25

    .line 71
    :try_start_22
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_25} :catch_3b

    .line 73
    :cond_25
    :goto_25
    return-object v4

    .line 64
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catch_26
    move-exception v1

    .line 65
    .local v1, "e":Ljava/io/IOException;
    :goto_27
    :try_start_27
    new-instance v4, Lretrofit/converter/ConversionException;

    invoke-direct {v4, v1}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_2d
    .catchall {:try_start_27 .. :try_end_2d} :catchall_2d

    .line 69
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_2d
    move-exception v4

    :goto_2e
    if-eqz v2, :cond_33

    .line 71
    :try_start_30
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_33
    .catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_3d

    .line 73
    :cond_33
    :goto_33
    throw v4

    .line 66
    :catch_34
    move-exception v1

    .line 67
    .local v1, "e":Lcom/google/gson/JsonParseException;
    :goto_35
    :try_start_35
    new-instance v4, Lretrofit/converter/ConversionException;

    invoke-direct {v4, v1}, Lretrofit/converter/ConversionException;-><init>(Ljava/lang/Throwable;)V

    throw v4
    :try_end_3b
    .catchall {:try_start_35 .. :try_end_3b} :catchall_2d

    .line 72
    .end local v1    # "e":Lcom/google/gson/JsonParseException;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_3b
    move-exception v5

    goto :goto_25

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :catch_3d
    move-exception v5

    goto :goto_33

    .line 69
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catchall_3f
    move-exception v4

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_2e

    .line 66
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_42
    move-exception v1

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_35

    .line 64
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_45
    move-exception v1

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_27
.end method

.method public toBody(Ljava/lang/Object;)Lretrofit/mime/TypedOutput;
    .registers 6
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 80
    :try_start_0
    new-instance v1, Lretrofit/converter/GsonConverter$JsonTypedOutput;

    iget-object v2, p0, Lretrofit/converter/GsonConverter;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lretrofit/converter/GsonConverter;->charset:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    iget-object v3, p0, Lretrofit/converter/GsonConverter;->charset:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lretrofit/converter/GsonConverter$JsonTypedOutput;-><init>([BLjava/lang/String;)V
    :try_end_13
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_13} :catch_14

    return-object v1

    .line 81
    :catch_14
    move-exception v0

    .line 82
    .local v0, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
