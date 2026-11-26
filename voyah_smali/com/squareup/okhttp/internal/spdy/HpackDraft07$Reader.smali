.class final Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;
.super Ljava/lang/Object;
.source "HpackDraft07.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/squareup/okhttp/internal/spdy/HpackDraft07;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Reader"
.end annotation


# instance fields
.field private final emittedHeaders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation
.end field

.field emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

.field headerCount:I

.field headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

.field headerTableByteCount:I

.field private maxHeaderTableByteCount:I

.field private maxHeaderTableByteCountSetting:I

.field nextHeaderIndex:I

.field referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

.field private final source:Lokio/BufferedSource;


# direct methods
.method constructor <init>(ILokio/Source;)V
    .registers 5
    .param p1, "maxHeaderTableByteCountSetting"    # I
    .param p2, "source"    # Lokio/Source;

    .prologue
    const/4 v1, 0x0

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 116
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    .line 122
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/squareup/okhttp/internal/spdy/Header;

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 124
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 125
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 131
    new-instance v0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 136
    new-instance v0, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-direct {v0}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;-><init>()V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 137
    iput v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 140
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    .line 141
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 142
    invoke-static {p2}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v0

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    .line 143
    return-void
.end method

.method private adjustHeaderTableByteCount()V
    .registers 3

    .prologue
    .line 163
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    if-ge v0, v1, :cond_d

    .line 164
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-nez v0, :cond_e

    .line 165
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearHeaderTable()V

    .line 170
    :cond_d
    :goto_d
    return-void

    .line 167
    :cond_e
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    sub-int/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->evictToRecoverBytes(I)I

    goto :goto_d
.end method

.method private clearHeaderTable()V
    .registers 4

    .prologue
    const/4 v2, 0x0

    .line 173
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearReferenceSet()V

    .line 174
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 175
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 176
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 177
    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 178
    return-void
.end method

.method private clearReferenceSet()V
    .registers 2

    .prologue
    .line 240
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 241
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 242
    return-void
.end method

.method private evictToRecoverBytes(I)I
    .registers 9
    .param p1, "bytesToRecover"    # I

    .prologue
    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "entriesToEvict":I
    if-lez p1, :cond_4c

    .line 185
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v2, v2

    add-int/lit8 v1, v2, -0x1

    .local v1, "j":I
    :goto_8
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    if-lt v1, v2, :cond_2b

    if-lez p1, :cond_2b

    .line 186
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr p1, v2

    .line 187
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    .line 188
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 189
    add-int/lit8 v0, v0, 0x1

    .line 185
    add-int/lit8 v1, v1, -0x1

    goto :goto_8

    .line 191
    :cond_2b
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 192
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 193
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v5, v5, 0x1

    add-int/2addr v5, v0

    iget v6, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    invoke-static {v2, v3, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 195
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 197
    .end local v1    # "j":I
    :cond_4c
    return v0
.end method

.method private getName(I)Lokio/ByteString;
    .registers 4
    .param p1, "index"    # I

    .prologue
    .line 316
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->isStaticHeader(I)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 317
    # getter for: Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v0

    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    .line 319
    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v1

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/squareup/okhttp/internal/spdy/Header;->name:Lokio/ByteString;

    goto :goto_12
.end method

.method private headerTableIndex(I)I
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 287
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    add-int/lit8 v0, v0, 0x1

    add-int/2addr v0, p1

    return v0
.end method

.method private insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V
    .registers 11
    .param p1, "index"    # I
    .param p2, "entry"    # Lcom/squareup/okhttp/internal/spdy/Header;

    .prologue
    const/4 v6, -0x1

    .line 329
    iget v1, p2, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    .line 330
    .local v1, "delta":I
    if-eq p1, v6, :cond_10

    .line 331
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v5

    aget-object v4, v4, v5

    iget v4, v4, Lcom/squareup/okhttp/internal/spdy/Header;->hpackSize:I

    sub-int/2addr v1, v4

    .line 335
    :cond_10
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-le v1, v4, :cond_1d

    .line 336
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearHeaderTable()V

    .line 338
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v4, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 370
    :goto_1c
    return-void

    .line 343
    :cond_1d
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    add-int/2addr v4, v1

    iget v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    sub-int v0, v4, v5

    .line 344
    .local v0, "bytesToRecover":I
    invoke-direct {p0, v0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->evictToRecoverBytes(I)I

    move-result v3

    .line 346
    .local v3, "entriesEvicted":I
    if-ne p1, v6, :cond_93

    .line 347
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    if-le v4, v5, :cond_78

    .line 348
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v4, v4

    mul-int/lit8 v4, v4, 0x2

    new-array v2, v4, [Lcom/squareup/okhttp/internal/spdy/Header;

    .line 349
    .local v2, "doubled":[Lcom/squareup/okhttp/internal/spdy/Header;
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v6, v6

    iget-object v7, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v7, v7

    invoke-static {v4, v5, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 350
    array-length v4, v2

    const/16 v5, 0x40

    if-ne v4, v5, :cond_5f

    .line 351
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    check-cast v4, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 352
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    check-cast v4, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;

    invoke-virtual {v4}, Lcom/squareup/okhttp/internal/BitArray$FixedCapacity;->toVariableCapacity()Lcom/squareup/okhttp/internal/BitArray;

    move-result-object v4

    iput-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    .line 355
    :cond_5f
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 356
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v5, v5

    invoke-interface {v4, v5}, Lcom/squareup/okhttp/internal/BitArray;->shiftLeft(I)V

    .line 357
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 358
    iput-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    .line 360
    .end local v2    # "doubled":[Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_78
    iget p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .end local p1    # "index":I
    add-int/lit8 v4, p1, -0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    .line 361
    .restart local p1    # "index":I
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v4, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 362
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    .line 363
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    .line 369
    :goto_8d
    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    add-int/2addr v4, v1

    iput v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableByteCount:I

    goto :goto_1c

    .line 365
    :cond_93
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v4

    add-int/2addr v4, v3

    add-int/2addr p1, v4

    .line 366
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v4, p1}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 367
    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aput-object p2, v4, p1

    goto :goto_8d
.end method

.method private isStaticHeader(I)Z
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 324
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    if-lt p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method private readByte()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 373
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v0}, Lokio/BufferedSource;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method private readIndexedHeader(I)V
    .registers 7
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 264
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->isStaticHeader(I)Z

    move-result v2

    if-eqz v2, :cond_42

    .line 265
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerCount:I

    sub-int/2addr p1, v2

    .line 266
    # getter for: Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-le p1, v2, :cond_2d

    .line 267
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Header index too large "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    add-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 269
    :cond_2d
    # getter for: Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->STATIC_HEADER_TABLE:[Lcom/squareup/okhttp/internal/spdy/Header;
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$000()[Lcom/squareup/okhttp/internal/spdy/Header;

    move-result-object v2

    aget-object v1, v2, p1

    .line 270
    .local v1, "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-nez v2, :cond_3d

    .line 271
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    .end local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :goto_3c
    return-void

    .line 273
    .restart local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_3d
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    goto :goto_3c

    .line 276
    .end local v1    # "staticEntry":Lcom/squareup/okhttp/internal/spdy/Header;
    :cond_42
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTableIndex(I)I

    move-result v0

    .line 277
    .local v0, "headerTableIndex":I
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v2

    if-nez v2, :cond_5c

    .line 278
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v3, v3, v0

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->set(I)V

    .line 281
    :cond_5c
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v2, v0}, Lcom/squareup/okhttp/internal/BitArray;->toggle(I)V

    goto :goto_3c
.end method

.method private readLiteralHeaderWithIncrementalIndexingIndexedName(I)V
    .registers 6
    .param p1, "nameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 304
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 305
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 306
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    .line 307
    return-void
.end method

.method private readLiteralHeaderWithIncrementalIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    # invokes: Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 311
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 312
    .local v1, "value":Lokio/ByteString;
    const/4 v2, -0x1

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-direct {p0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->insertIntoHeaderTable(ILcom/squareup/okhttp/internal/spdy/Header;)V

    .line 313
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingIndexedName(I)V
    .registers 6
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 291
    invoke-direct {p0, p1}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->getName(I)Lokio/ByteString;

    move-result-object v0

    .line 292
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 293
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 294
    return-void
.end method

.method private readLiteralHeaderWithoutIndexingNewName()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 297
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v2

    # invokes: Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->checkLowercase(Lokio/ByteString;)Lokio/ByteString;
    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07;->access$100(Lokio/ByteString;)Lokio/ByteString;

    move-result-object v0

    .line 298
    .local v0, "name":Lokio/ByteString;
    invoke-virtual {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByteString()Lokio/ByteString;

    move-result-object v1

    .line 299
    .local v1, "value":Lokio/ByteString;
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    new-instance v3, Lcom/squareup/okhttp/internal/spdy/Header;

    invoke-direct {v3, v0, v1}, Lcom/squareup/okhttp/internal/spdy/Header;-><init>(Lokio/ByteString;Lokio/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 300
    return-void
.end method


# virtual methods
.method emitReferenceSet()V
    .registers 4

    .prologue
    .line 245
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_5
    iget v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->nextHeaderIndex:I

    if-eq v0, v1, :cond_25

    .line 246
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->referencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1, v0}, Lcom/squareup/okhttp/internal/BitArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_22

    .line 247
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->headerTable:[Lcom/squareup/okhttp/internal/spdy/Header;

    aget-object v2, v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    :cond_22
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    .line 250
    :cond_25
    return-void
.end method

.method getAndReset()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/internal/spdy/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 257
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 258
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/squareup/okhttp/internal/spdy/Header;>;"
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedHeaders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 259
    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->emittedReferencedHeaders:Lcom/squareup/okhttp/internal/BitArray;

    invoke-interface {v1}, Lcom/squareup/okhttp/internal/BitArray;->clear()V

    .line 260
    return-object v0
.end method

.method maxHeaderTableByteCount()I
    .registers 2

    .prologue
    .line 146
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    return v0
.end method

.method maxHeaderTableByteCountSetting(I)V
    .registers 3
    .param p1, "newMaxHeaderTableByteCountSetting"    # I

    .prologue
    .line 157
    iput p1, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    .line 158
    iget v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    iput v0, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 159
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->adjustHeaderTableByteCount()V

    .line 160
    return-void
.end method

.method readByteString()Lokio/ByteString;
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByte()I

    move-result v0

    .line 401
    .local v0, "firstByte":I
    and-int/lit16 v3, v0, 0x80

    const/16 v4, 0x80

    if-ne v3, v4, :cond_27

    const/4 v1, 0x1

    .line 402
    .local v1, "huffmanDecode":Z
    :goto_b
    const/16 v3, 0x7f

    invoke-virtual {p0, v0, v3}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v2

    .line 404
    .local v2, "length":I
    if-eqz v1, :cond_29

    .line 405
    invoke-static {}, Lcom/squareup/okhttp/internal/spdy/Huffman;->get()Lcom/squareup/okhttp/internal/spdy/Huffman;

    move-result-object v3

    iget-object v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    int-to-long v6, v2

    invoke-interface {v4, v6, v7}, Lokio/BufferedSource;->readByteArray(J)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/squareup/okhttp/internal/spdy/Huffman;->decode([B)[B

    move-result-object v3

    invoke-static {v3}, Lokio/ByteString;->of([B)Lokio/ByteString;

    move-result-object v3

    .line 407
    :goto_26
    return-object v3

    .line 401
    .end local v1    # "huffmanDecode":Z
    .end local v2    # "length":I
    :cond_27
    const/4 v1, 0x0

    goto :goto_b

    .line 407
    .restart local v1    # "huffmanDecode":Z
    .restart local v2    # "length":I
    :cond_29
    iget-object v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    int-to-long v4, v2

    invoke-interface {v3, v4, v5}, Lokio/BufferedSource;->readByteString(J)Lokio/ByteString;

    move-result-object v3

    goto :goto_26
.end method

.method readHeaders()V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/16 v7, 0x80

    const/16 v6, 0x40

    const/16 v5, 0x10

    const/16 v4, 0xf

    .line 206
    :goto_8
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->exhausted()Z

    move-result v2

    if-nez v2, :cond_b7

    .line 207
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->source:Lokio/BufferedSource;

    invoke-interface {v2}, Lokio/BufferedSource;->readByte()B

    move-result v2

    and-int/lit16 v0, v2, 0xff

    .line 208
    .local v0, "b":I
    if-ne v0, v7, :cond_22

    .line 209
    new-instance v2, Ljava/io/IOException;

    const-string v3, "index == 0"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 210
    :cond_22
    and-int/lit16 v2, v0, 0x80

    if-ne v2, v7, :cond_32

    .line 211
    const/16 v2, 0x7f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v1

    .line 212
    .local v1, "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readIndexedHeader(I)V

    goto :goto_8

    .line 213
    .end local v1    # "index":I
    :cond_32
    if-ne v0, v6, :cond_38

    .line 214
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithIncrementalIndexingNewName()V

    goto :goto_8

    .line 215
    :cond_38
    and-int/lit8 v2, v0, 0x40

    if-ne v2, v6, :cond_48

    .line 216
    const/16 v2, 0x3f

    invoke-virtual {p0, v0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v1

    .line 217
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithIncrementalIndexingIndexedName(I)V

    goto :goto_8

    .line 218
    .end local v1    # "index":I
    :cond_48
    and-int/lit8 v2, v0, 0x20

    const/16 v3, 0x20

    if-ne v2, v3, :cond_a3

    .line 219
    and-int/lit8 v2, v0, 0x10

    if-ne v2, v5, :cond_73

    .line 220
    and-int/lit8 v2, v0, 0xf

    if-eqz v2, :cond_6f

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid header table state change "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 221
    :cond_6f
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->clearReferenceSet()V

    goto :goto_8

    .line 223
    :cond_73
    invoke-virtual {p0, v0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v2

    iput v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    .line 224
    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    if-ltz v2, :cond_83

    iget v2, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    iget v3, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCountSetting:I

    if-le v2, v3, :cond_9e

    .line 226
    :cond_83
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid header table byte count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->maxHeaderTableByteCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 228
    :cond_9e
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->adjustHeaderTableByteCount()V

    goto/16 :goto_8

    .line 230
    :cond_a3
    if-eq v0, v5, :cond_a7

    if-nez v0, :cond_ac

    .line 231
    :cond_a7
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithoutIndexingNewName()V

    goto/16 :goto_8

    .line 233
    :cond_ac
    invoke-virtual {p0, v0, v4}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readInt(II)I

    move-result v1

    .line 234
    .restart local v1    # "index":I
    add-int/lit8 v2, v1, -0x1

    invoke-direct {p0, v2}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readLiteralHeaderWithoutIndexingIndexedName(I)V

    goto/16 :goto_8

    .line 237
    .end local v0    # "b":I
    .end local v1    # "index":I
    :cond_b7
    return-void
.end method

.method readInt(II)I
    .registers 8
    .param p1, "firstByte"    # I
    .param p2, "prefixMask"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 377
    and-int v1, p1, p2

    .line 378
    .local v1, "prefix":I
    if-ge v1, p2, :cond_5

    .line 395
    .end local v1    # "prefix":I
    :goto_4
    return v1

    .line 383
    .restart local v1    # "prefix":I
    :cond_5
    move v2, p2

    .line 384
    .local v2, "result":I
    const/4 v3, 0x0

    .line 386
    .local v3, "shift":I
    :goto_7
    invoke-direct {p0}, Lcom/squareup/okhttp/internal/spdy/HpackDraft07$Reader;->readByte()I

    move-result v0

    .line 387
    .local v0, "b":I
    and-int/lit16 v4, v0, 0x80

    if-eqz v4, :cond_16

    .line 388
    and-int/lit8 v4, v0, 0x7f

    shl-int/2addr v4, v3

    add-int/2addr v2, v4

    .line 389
    add-int/lit8 v3, v3, 0x7

    goto :goto_7

    .line 391
    :cond_16
    shl-int v4, v0, v3

    add-int/2addr v2, v4

    move v1, v2

    .line 395
    goto :goto_4
.end method
