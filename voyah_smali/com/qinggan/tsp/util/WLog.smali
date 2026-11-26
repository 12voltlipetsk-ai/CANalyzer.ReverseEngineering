.class public Lcom/qinggan/tsp/util/WLog;
.super Ljava/lang/Object;
.source "WLog.java"


# static fields
.field private static final CHUNK_SIZE:I = 0xfa0

.field private static final DEBUG:I = 0x3

.field private static DEBUG_ENABLE:Z = false

.field private static final ERROR:I = 0x6

.field private static final INFO:I = 0x4

.field private static final VERBOSE:I = 0x2

.field private static final WARN:I = 0x5

.field private static isLongSupport:Z

.field private static moduleName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 25
    const/4 v0, 0x1

    sput-boolean v0, Lcom/qinggan/tsp/util/WLog;->DEBUG_ENABLE:Z

    .line 34
    const-string v0, "tspApi"

    sput-object v0, Lcom/qinggan/tsp/util/WLog;->moduleName:Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    sput-boolean v0, Lcom/qinggan/tsp/util/WLog;->isLongSupport:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 51
    sget-boolean v0, Lcom/qinggan/tsp/util/WLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_a

    .line 53
    const/4 v0, 0x3

    sget-object v1, Lcom/qinggan/tsp/util/WLog;->moduleName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/qinggan/tsp/util/WLog;->logContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :cond_a
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 67
    sget-boolean v0, Lcom/qinggan/tsp/util/WLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_a

    .line 69
    const/4 v0, 0x6

    sget-object v1, Lcom/qinggan/tsp/util/WLog;->moduleName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/qinggan/tsp/util/WLog;->logContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    :cond_a
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 59
    sget-boolean v0, Lcom/qinggan/tsp/util/WLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_a

    .line 61
    const/4 v0, 0x4

    sget-object v1, Lcom/qinggan/tsp/util/WLog;->moduleName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/qinggan/tsp/util/WLog;->logContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_a
    return-void
.end method

.method private static logContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10
    .param p0, "type"    # I
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xfa0

    .line 82
    if-eqz p3, :cond_a

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 102
    :cond_a
    :goto_a
    return-void

    .line 86
    :cond_b
    sget-boolean v4, Lcom/qinggan/tsp/util/WLog;->isLongSupport:Z

    if-nez v4, :cond_13

    .line 87
    invoke-static {p0, p1, p2, p3}, Lcom/qinggan/tsp/util/WLog;->logPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 91
    :cond_13
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    .line 93
    .local v2, "length":I
    if-ge v2, v5, :cond_1d

    .line 94
    invoke-static {p0, p1, p2, p3}, Lcom/qinggan/tsp/util/WLog;->logPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a

    .line 96
    :cond_1d
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1e
    if-ge v1, v2, :cond_a

    .line 97
    sub-int v4, v2, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 98
    .local v0, "count":I
    new-instance v3, Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-direct {v3, v4, v1, v0}, Ljava/lang/String;-><init>([BII)V

    .line 99
    .local v3, "msg":Ljava/lang/String;
    invoke-static {p0, p1, p2, v3}, Lcom/qinggan/tsp/util/WLog;->logPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    add-int/lit16 v1, v1, 0xfa0

    goto :goto_1e
.end method

.method private static logPrint(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p0, "type"    # I
    .param p1, "moduleName"    # Ljava/lang/String;
    .param p2, "tag"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    .line 105
    packed-switch p0, :pswitch_data_ac

    .line 124
    :goto_3
    return-void

    .line 107
    :pswitch_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 110
    :pswitch_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 113
    :pswitch_46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 116
    :pswitch_67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 119
    :pswitch_89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[ "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ] : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 105
    nop

    :pswitch_data_ac
    .packed-switch 0x2
        :pswitch_4
        :pswitch_25
        :pswitch_46
        :pswitch_67
        :pswitch_89
    .end packed-switch
.end method

.method public static setLongContentSupport(Z)V
    .registers 1
    .param p0, "support"    # Z

    .prologue
    .line 38
    sput-boolean p0, Lcom/qinggan/tsp/util/WLog;->isLongSupport:Z

    .line 39
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 43
    sget-boolean v0, Lcom/qinggan/tsp/util/WLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_a

    .line 45
    const/4 v0, 0x2

    sget-object v1, Lcom/qinggan/tsp/util/WLog;->moduleName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/qinggan/tsp/util/WLog;->logContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    :cond_a
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p0, "tag"    # Ljava/lang/String;
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 75
    sget-boolean v0, Lcom/qinggan/tsp/util/WLog;->DEBUG_ENABLE:Z

    if-eqz v0, :cond_a

    .line 77
    const/4 v0, 0x5

    sget-object v1, Lcom/qinggan/tsp/util/WLog;->moduleName:Ljava/lang/String;

    invoke-static {v0, v1, p0, p1}, Lcom/qinggan/tsp/util/WLog;->logContent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    :cond_a
    return-void
.end method
