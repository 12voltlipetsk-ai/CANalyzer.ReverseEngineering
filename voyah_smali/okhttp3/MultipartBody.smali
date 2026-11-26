.class public final Lokhttp3/MultipartBody;
.super Lokhttp3/RequestBody;
.source "MultipartBody.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lokhttp3/MultipartBody$Builder;,
        Lokhttp3/MultipartBody$Part;
    }
.end annotation


# static fields
.field public static final ALTERNATIVE:Lokhttp3/MediaType;

.field private static final COLONSPACE:[B

.field private static final CRLF:[B

.field private static final DASHDASH:[B

.field public static final DIGEST:Lokhttp3/MediaType;

.field public static final FORM:Lokhttp3/MediaType;

.field public static final MIXED:Lokhttp3/MediaType;

.field public static final PARALLEL:Lokhttp3/MediaType;


# instance fields
.field private final boundary:Lokio/ByteString;

.field private contentLength:J

.field private final contentType:Lokhttp3/MediaType;

.field private final originalType:Lokhttp3/MediaType;

.field private final parts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x2

    .line 34
    const-string v0, "multipart/mixed"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->MIXED:Lokhttp3/MediaType;

    .line 41
    const-string v0, "multipart/alternative"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->ALTERNATIVE:Lokhttp3/MediaType;

    .line 48
    const-string v0, "multipart/digest"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->DIGEST:Lokhttp3/MediaType;

    .line 54
    const-string v0, "multipart/parallel"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->PARALLEL:Lokhttp3/MediaType;

    .line 61
    const-string v0, "multipart/form-data"

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lokhttp3/MultipartBody;->FORM:Lokhttp3/MediaType;

    .line 63
    new-array v0, v1, [B

    fill-array-data v0, :array_40

    sput-object v0, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 64
    new-array v0, v1, [B

    fill-array-data v0, :array_46

    sput-object v0, Lokhttp3/MultipartBody;->CRLF:[B

    .line 65
    new-array v0, v1, [B

    fill-array-data v0, :array_4c

    sput-object v0, Lokhttp3/MultipartBody;->DASHDASH:[B

    return-void

    .line 63
    nop

    :array_40
    .array-data 1
        0x3at
        0x20t
    .end array-data

    .line 64
    nop

    :array_46
    .array-data 1
        0xdt
        0xat
    .end array-data

    .line 65
    nop

    :array_4c
    .array-data 1
        0x2dt
        0x2dt
    .end array-data
.end method

.method constructor <init>(Lokio/ByteString;Lokhttp3/MediaType;Ljava/util/List;)V
    .registers 6
    .param p1, "boundary"    # Lokio/ByteString;
    .param p2, "type"    # Lokhttp3/MediaType;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/ByteString;",
            "Lokhttp3/MediaType;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 73
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Lokhttp3/MultipartBody$Part;>;"
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 71
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 74
    iput-object p1, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    .line 75
    iput-object p2, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    .line 77
    invoke-static {p3}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    .line 78
    return-void
.end method

.method static appendQuotedString(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .registers 7
    .param p0, "target"    # Ljava/lang/StringBuilder;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/16 v4, 0x22

    .line 201
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    .local v2, "len":I
    :goto_a
    if-ge v1, v2, :cond_2b

    .line 203
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 204
    .local v0, "ch":C
    sparse-switch v0, :sswitch_data_30

    .line 215
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 202
    :goto_16
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    .line 206
    :sswitch_19
    const-string v3, "%0A"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 209
    :sswitch_1f
    const-string v3, "%0D"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 212
    :sswitch_25
    const-string v3, "%22"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 219
    .end local v0    # "ch":C
    :cond_2b
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 220
    return-object p0

    .line 204
    nop

    :sswitch_data_30
    .sparse-switch
        0xa -> :sswitch_19
        0xd -> :sswitch_1f
        0x22 -> :sswitch_25
    .end sparse-switch
.end method

.method private writeOrCountBytes(Lokio/BufferedSink;Z)J
    .registers 23
    .param p1, "sink"    # Lokio/BufferedSink;
    .param p2, "countBytes"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    const-wide/16 v4, 0x0

    .line 125
    .local v4, "byteCount":J
    const/4 v3, 0x0

    .line 126
    .local v3, "byteCountBuffer":Lokio/Buffer;
    if-eqz p2, :cond_c

    .line 127
    new-instance v3, Lokio/Buffer;

    .end local v3    # "byteCountBuffer":Lokio/Buffer;
    invoke-direct {v3}, Lokio/Buffer;-><init>()V

    .restart local v3    # "byteCountBuffer":Lokio/Buffer;
    move-object/from16 p1, v3

    .line 130
    :cond_c
    const/4 v14, 0x0

    .local v14, "p":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v16

    .local v16, "partCount":I
    :goto_17
    move/from16 v0, v16

    if-ge v14, v0, :cond_db

    .line 131
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lokhttp3/MultipartBody$Part;

    .line 132
    .local v15, "part":Lokhttp3/MultipartBody$Part;
    iget-object v13, v15, Lokhttp3/MultipartBody$Part;->headers:Lokhttp3/Headers;

    .line 133
    .local v13, "headers":Lokhttp3/Headers;
    iget-object v2, v15, Lokhttp3/MultipartBody$Part;->body:Lokhttp3/RequestBody;

    .line 135
    .local v2, "body":Lokhttp3/RequestBody;
    sget-object v17, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 136
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 137
    sget-object v17, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 139
    if-eqz v13, :cond_77

    .line 140
    const/4 v11, 0x0

    .local v11, "h":I
    invoke-virtual {v13}, Lokhttp3/Headers;->size()I

    move-result v12

    .local v12, "headerCount":I
    :goto_53
    if-ge v11, v12, :cond_77

    .line 141
    invoke-virtual {v13, v11}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v17

    sget-object v18, Lokhttp3/MultipartBody;->COLONSPACE:[B

    .line 142
    invoke-interface/range {v17 .. v18}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    move-result-object v17

    .line 143
    invoke-virtual {v13, v11}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v17

    sget-object v18, Lokhttp3/MultipartBody;->CRLF:[B

    .line 144
    invoke-interface/range {v17 .. v18}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 140
    add-int/lit8 v11, v11, 0x1

    goto :goto_53

    .line 148
    .end local v11    # "h":I
    .end local v12    # "headerCount":I
    :cond_77
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentType()Lokhttp3/MediaType;

    move-result-object v10

    .line 149
    .local v10, "contentType":Lokhttp3/MediaType;
    if-eqz v10, :cond_94

    .line 150
    const-string v17, "Content-Type: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v17

    .line 151
    invoke-virtual {v10}, Lokhttp3/MediaType;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-interface/range {v17 .. v18}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v17

    sget-object v18, Lokhttp3/MultipartBody;->CRLF:[B

    .line 152
    invoke-interface/range {v17 .. v18}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 155
    :cond_94
    invoke-virtual {v2}, Lokhttp3/RequestBody;->contentLength()J

    move-result-wide v8

    .line 156
    .local v8, "contentLength":J
    const-wide/16 v18, -0x1

    cmp-long v17, v8, v18

    if-eqz v17, :cond_cc

    .line 157
    const-string v17, "Content-Length: "

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->writeUtf8(Ljava/lang/String;)Lokio/BufferedSink;

    move-result-object v17

    .line 158
    move-object/from16 v0, v17

    invoke-interface {v0, v8, v9}, Lokio/BufferedSink;->writeDecimalLong(J)Lokio/BufferedSink;

    move-result-object v17

    sget-object v18, Lokhttp3/MultipartBody;->CRLF:[B

    .line 159
    invoke-interface/range {v17 .. v18}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 166
    :cond_b3
    sget-object v17, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 168
    if-eqz p2, :cond_d5

    .line 169
    add-long/2addr v4, v8

    .line 174
    :goto_bf
    sget-object v17, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 130
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_17

    .line 160
    :cond_cc
    if-eqz p2, :cond_b3

    .line 162
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    .line 163
    const-wide/16 v18, -0x1

    move-wide v6, v4

    .line 187
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v4    # "byteCount":J
    .end local v8    # "contentLength":J
    .end local v10    # "contentType":Lokhttp3/MediaType;
    .end local v13    # "headers":Lokhttp3/Headers;
    .end local v15    # "part":Lokhttp3/MultipartBody$Part;
    .local v6, "byteCount":J
    :goto_d4
    return-wide v18

    .line 171
    .end local v6    # "byteCount":J
    .restart local v2    # "body":Lokhttp3/RequestBody;
    .restart local v4    # "byteCount":J
    .restart local v8    # "contentLength":J
    .restart local v10    # "contentType":Lokhttp3/MediaType;
    .restart local v13    # "headers":Lokhttp3/Headers;
    .restart local v15    # "part":Lokhttp3/MultipartBody$Part;
    :cond_d5
    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Lokhttp3/RequestBody;->writeTo(Lokio/BufferedSink;)V

    goto :goto_bf

    .line 177
    .end local v2    # "body":Lokhttp3/RequestBody;
    .end local v8    # "contentLength":J
    .end local v10    # "contentType":Lokhttp3/MediaType;
    .end local v13    # "headers":Lokhttp3/Headers;
    .end local v15    # "part":Lokhttp3/MultipartBody$Part;
    :cond_db
    sget-object v17, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    move-object/from16 v17, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write(Lokio/ByteString;)Lokio/BufferedSink;

    .line 179
    sget-object v17, Lokhttp3/MultipartBody;->DASHDASH:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 180
    sget-object v17, Lokhttp3/MultipartBody;->CRLF:[B

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Lokio/BufferedSink;->write([B)Lokio/BufferedSink;

    .line 182
    if-eqz p2, :cond_10e

    .line 183
    invoke-virtual {v3}, Lokio/Buffer;->size()J

    move-result-wide v18

    add-long v4, v4, v18

    .line 184
    invoke-virtual {v3}, Lokio/Buffer;->clear()V

    :cond_10e
    move-wide v6, v4

    .end local v4    # "byteCount":J
    .restart local v6    # "byteCount":J
    move-wide/from16 v18, v4

    .line 187
    goto :goto_d4
.end method


# virtual methods
.method public boundary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 85
    iget-object v0, p0, Lokhttp3/MultipartBody;->boundary:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->utf8()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public contentLength()J
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 107
    iget-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    .line 108
    .local v0, "result":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_9

    .line 109
    .end local v0    # "result":J
    :goto_8
    return-wide v0

    .restart local v0    # "result":J
    :cond_9
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {p0, v2, v3}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    move-result-wide v0

    .end local v0    # "result":J
    iput-wide v0, p0, Lokhttp3/MultipartBody;->contentLength:J

    goto :goto_8
.end method

.method public contentType()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 103
    iget-object v0, p0, Lokhttp3/MultipartBody;->contentType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public part(I)Lokhttp3/MultipartBody$Part;
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 98
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lokhttp3/MultipartBody$Part;

    return-object v0
.end method

.method public parts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/MultipartBody$Part;",
            ">;"
        }
    .end annotation

    .prologue
    .line 94
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    return-object v0
.end method

.method public size()I
    .registers 2

    .prologue
    .line 90
    iget-object v0, p0, Lokhttp3/MultipartBody;->parts:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public type()Lokhttp3/MediaType;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lokhttp3/MultipartBody;->originalType:Lokhttp3/MediaType;

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .registers 3
    .param p1, "sink"    # Lokio/BufferedSink;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 113
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lokhttp3/MultipartBody;->writeOrCountBytes(Lokio/BufferedSink;Z)J

    .line 114
    return-void
.end method
