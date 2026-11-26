.class public final enum Lcom/qinggan/tsp/restmiddle/RestError$Kind;
.super Ljava/lang/Enum;
.source "RestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/restmiddle/RestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/tsp/restmiddle/RestError$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum CONVERSION:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum HTTP:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum NETWORK:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum OVER_SEAN_NOT_SUPPROT:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum PDSN_NOT_REGISTER:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum PDSN_NULL:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

.field public static final enum UNEXPECTED:Lcom/qinggan/tsp/restmiddle/RestError$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 56
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->NETWORK:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 58
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "CONVERSION"

    invoke-direct {v0, v1, v4}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->CONVERSION:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 60
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v5}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->HTTP:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 65
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "UNEXPECTED"

    invoke-direct {v0, v1, v6}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->UNEXPECTED:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 66
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "PDSN_NULL"

    invoke-direct {v0, v1, v7}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->PDSN_NULL:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 67
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "PDSN_NOT_REGISTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->PDSN_NOT_REGISTER:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 68
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    const-string v1, "OVER_SEAN_NOT_SUPPROT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qinggan/tsp/restmiddle/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->OVER_SEAN_NOT_SUPPROT:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    .line 54
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    sget-object v1, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->NETWORK:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->CONVERSION:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->HTTP:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->UNEXPECTED:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->PDSN_NULL:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->PDSN_NOT_REGISTER:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->OVER_SEAN_NOT_SUPPROT:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->$VALUES:[Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/qinggan/tsp/restmiddle/RestError$Kind;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 71
    packed-switch p0, :pswitch_data_18

    .line 85
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->UNEXPECTED:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    :goto_5
    return-object v0

    .line 73
    :pswitch_6
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->NETWORK:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    goto :goto_5

    .line 75
    :pswitch_9
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->CONVERSION:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    goto :goto_5

    .line 77
    :pswitch_c
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->HTTP:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    goto :goto_5

    .line 79
    :pswitch_f
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->UNEXPECTED:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    goto :goto_5

    .line 81
    :pswitch_12
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->PDSN_NULL:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    goto :goto_5

    .line 83
    :pswitch_15
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->PDSN_NOT_REGISTER:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    goto :goto_5

    .line 71
    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6
        :pswitch_9
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_15
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/tsp/restmiddle/RestError$Kind;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 54
    const-class v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/tsp/restmiddle/RestError$Kind;
    .registers 1

    .prologue
    .line 54
    sget-object v0, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->$VALUES:[Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    invoke-virtual {v0}, [Lcom/qinggan/tsp/restmiddle/RestError$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    return-object v0
.end method
