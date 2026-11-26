.class public final Lcom/squareup/okhttp/CacheControl;
.super Ljava/lang/Object;
.source "CacheControl.java"


# instance fields
.field private final isPublic:Z

.field private final maxAgeSeconds:I

.field private final maxStaleSeconds:I

.field private final minFreshSeconds:I

.field private final mustRevalidate:Z

.field private final noCache:Z

.field private final noStore:Z

.field private final onlyIfCached:Z

.field private final sMaxAgeSeconds:I


# direct methods
.method private constructor <init>(ZZIIZZIIZ)V
    .registers 10
    .param p1, "noCache"    # Z
    .param p2, "noStore"    # Z
    .param p3, "maxAgeSeconds"    # I
    .param p4, "sMaxAgeSeconds"    # I
    .param p5, "isPublic"    # Z
    .param p6, "mustRevalidate"    # Z
    .param p7, "maxStaleSeconds"    # I
    .param p8, "minFreshSeconds"    # I
    .param p9, "onlyIfCached"    # Z

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-boolean p1, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    .line 28
    iput-boolean p2, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    .line 29
    iput p3, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    .line 30
    iput p4, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    .line 31
    iput-boolean p5, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    .line 32
    iput-boolean p6, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    .line 33
    iput p7, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    .line 34
    iput p8, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    .line 35
    iput-boolean p9, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    .line 36
    return-void
.end method

.method public static parse(Lcom/squareup/okhttp/Headers;)Lcom/squareup/okhttp/CacheControl;
    .registers 22
    .param p0, "headers"    # Lcom/squareup/okhttp/Headers;

    .prologue
    .line 104
    const/4 v4, 0x0

    .line 105
    .local v4, "noCache":Z
    const/4 v5, 0x0

    .line 106
    .local v5, "noStore":Z
    const/4 v6, -0x1

    .line 107
    .local v6, "maxAgeSeconds":I
    const/4 v7, -0x1

    .line 108
    .local v7, "sMaxAgeSeconds":I
    const/4 v8, 0x0

    .line 109
    .local v8, "isPublic":Z
    const/4 v9, 0x0

    .line 110
    .local v9, "mustRevalidate":Z
    const/4 v10, -0x1

    .line 111
    .local v10, "maxStaleSeconds":I
    const/4 v11, -0x1

    .line 112
    .local v11, "minFreshSeconds":I
    const/4 v12, 0x0

    .line 114
    .local v12, "onlyIfCached":Z
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_a
    invoke-virtual/range {p0 .. p0}, Lcom/squareup/okhttp/Headers;->size()I

    move-result v3

    if-ge v14, v3, :cond_148

    .line 115
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    const-string v20, "Cache-Control"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/squareup/okhttp/Headers;->name(I)Ljava/lang/String;

    move-result-object v3

    const-string v20, "Pragma"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_33

    .line 114
    :cond_30
    add-int/lit8 v14, v14, 0x1

    goto :goto_a

    .line 120
    :cond_33
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/squareup/okhttp/Headers;->value(I)Ljava/lang/String;

    move-result-object v18

    .line 121
    .local v18, "string":Ljava/lang/String;
    const/16 v17, 0x0

    .line 122
    .local v17, "pos":I
    :cond_3b
    :goto_3b
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_30

    .line 123
    move/from16 v19, v17

    .line 124
    .local v19, "tokenStart":I
    const-string v3, "=,;"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 125
    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .line 128
    .local v13, "directive":Ljava/lang/String;
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-eq v0, v3, :cond_81

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x2c

    move/from16 v0, v20

    if-eq v3, v0, :cond_81

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x3b

    move/from16 v0, v20

    if-ne v3, v0, :cond_8e

    .line 129
    :cond_81
    add-int/lit8 v17, v17, 0x1

    .line 130
    const/4 v15, 0x0

    .line 151
    .local v15, "parameter":Ljava/lang/String;
    :goto_84
    const-string v3, "no-cache"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e4

    .line 152
    const/4 v4, 0x1

    goto :goto_3b

    .line 132
    .end local v15    # "parameter":Ljava/lang/String;
    :cond_8e
    add-int/lit8 v17, v17, 0x1

    .line 133
    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipWhitespace(Ljava/lang/String;I)I

    move-result v17

    .line 136
    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v17

    if-ge v0, v3, :cond_c9

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v20, 0x22

    move/from16 v0, v20

    if-ne v3, v0, :cond_c9

    .line 137
    add-int/lit8 v17, v17, 0x1

    .line 138
    move/from16 v16, v17

    .line 139
    .local v16, "parameterStart":I
    const-string v3, "\""

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 140
    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 141
    .restart local v15    # "parameter":Ljava/lang/String;
    add-int/lit8 v17, v17, 0x1

    .line 144
    goto :goto_84

    .line 145
    .end local v15    # "parameter":Ljava/lang/String;
    .end local v16    # "parameterStart":I
    :cond_c9
    move/from16 v16, v17

    .line 146
    .restart local v16    # "parameterStart":I
    const-string v3, ",;"

    move-object/from16 v0, v18

    move/from16 v1, v17

    invoke-static {v0, v1, v3}, Lcom/squareup/okhttp/internal/http/HeaderParser;->skipUntil(Ljava/lang/String;ILjava/lang/String;)I

    move-result v17

    .line 147
    move-object/from16 v0, v18

    move/from16 v1, v16

    move/from16 v2, v17

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v15

    .restart local v15    # "parameter":Ljava/lang/String;
    goto :goto_84

    .line 153
    .end local v16    # "parameterStart":I
    :cond_e4
    const-string v3, "no-store"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_ef

    .line 154
    const/4 v5, 0x1

    goto/16 :goto_3b

    .line 155
    :cond_ef
    const-string v3, "max-age"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_fd

    .line 156
    invoke-static {v15}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v6

    goto/16 :goto_3b

    .line 157
    :cond_fd
    const-string v3, "s-maxage"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_10b

    .line 158
    invoke-static {v15}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v7

    goto/16 :goto_3b

    .line 159
    :cond_10b
    const-string v3, "public"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_116

    .line 160
    const/4 v8, 0x1

    goto/16 :goto_3b

    .line 161
    :cond_116
    const-string v3, "must-revalidate"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_121

    .line 162
    const/4 v9, 0x1

    goto/16 :goto_3b

    .line 163
    :cond_121
    const-string v3, "max-stale"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_12f

    .line 164
    invoke-static {v15}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v10

    goto/16 :goto_3b

    .line 165
    :cond_12f
    const-string v3, "min-fresh"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_13d

    .line 166
    invoke-static {v15}, Lcom/squareup/okhttp/internal/http/HeaderParser;->parseSeconds(Ljava/lang/String;)I

    move-result v11

    goto/16 :goto_3b

    .line 167
    :cond_13d
    const-string v3, "only-if-cached"

    invoke-virtual {v3, v13}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3b

    .line 168
    const/4 v12, 0x1

    goto/16 :goto_3b

    .line 173
    .end local v13    # "directive":Ljava/lang/String;
    .end local v15    # "parameter":Ljava/lang/String;
    .end local v17    # "pos":I
    .end local v18    # "string":Ljava/lang/String;
    .end local v19    # "tokenStart":I
    :cond_148
    new-instance v3, Lcom/squareup/okhttp/CacheControl;

    invoke-direct/range {v3 .. v12}, Lcom/squareup/okhttp/CacheControl;-><init>(ZZIIZZIIZ)V

    return-object v3
.end method


# virtual methods
.method public isPublic()Z
    .registers 2

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->isPublic:Z

    return v0
.end method

.method public maxAgeSeconds()I
    .registers 2

    .prologue
    .line 60
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->maxAgeSeconds:I

    return v0
.end method

.method public maxStaleSeconds()I
    .registers 2

    .prologue
    .line 81
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->maxStaleSeconds:I

    return v0
.end method

.method public minFreshSeconds()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->minFreshSeconds:I

    return v0
.end method

.method public mustRevalidate()Z
    .registers 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->mustRevalidate:Z

    return v0
.end method

.method public noCache()Z
    .registers 2

    .prologue
    .line 47
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noCache:Z

    return v0
.end method

.method public noStore()Z
    .registers 2

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->noStore:Z

    return v0
.end method

.method public onlyIfCached()Z
    .registers 2

    .prologue
    .line 96
    iget-boolean v0, p0, Lcom/squareup/okhttp/CacheControl;->onlyIfCached:Z

    return v0
.end method

.method public sMaxAgeSeconds()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/squareup/okhttp/CacheControl;->sMaxAgeSeconds:I

    return v0
.end method
