.class public final enum Lcom/pateo/fci/RestError$Kind;
.super Ljava/lang/Enum;
.source "RestError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/fci/RestError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Kind"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/fci/RestError$Kind;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/fci/RestError$Kind;

.field public static final enum CONVERSION:Lcom/pateo/fci/RestError$Kind;

.field public static final enum HTTP:Lcom/pateo/fci/RestError$Kind;

.field public static final enum NETWORK:Lcom/pateo/fci/RestError$Kind;

.field public static final enum PDSN_NOT_REGISTER:Lcom/pateo/fci/RestError$Kind;

.field public static final enum PDSN_NULL:Lcom/pateo/fci/RestError$Kind;

.field public static final enum UNEXPECTED:Lcom/pateo/fci/RestError$Kind;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lcom/pateo/fci/RestError$Kind;

    const-string v1, "NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/pateo/fci/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->NETWORK:Lcom/pateo/fci/RestError$Kind;

    .line 29
    new-instance v0, Lcom/pateo/fci/RestError$Kind;

    const-string v1, "CONVERSION"

    invoke-direct {v0, v1, v4}, Lcom/pateo/fci/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->CONVERSION:Lcom/pateo/fci/RestError$Kind;

    .line 31
    new-instance v0, Lcom/pateo/fci/RestError$Kind;

    const-string v1, "HTTP"

    invoke-direct {v0, v1, v5}, Lcom/pateo/fci/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->HTTP:Lcom/pateo/fci/RestError$Kind;

    .line 36
    new-instance v0, Lcom/pateo/fci/RestError$Kind;

    const-string v1, "UNEXPECTED"

    invoke-direct {v0, v1, v6}, Lcom/pateo/fci/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->UNEXPECTED:Lcom/pateo/fci/RestError$Kind;

    .line 37
    new-instance v0, Lcom/pateo/fci/RestError$Kind;

    const-string v1, "PDSN_NULL"

    invoke-direct {v0, v1, v7}, Lcom/pateo/fci/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->PDSN_NULL:Lcom/pateo/fci/RestError$Kind;

    .line 38
    new-instance v0, Lcom/pateo/fci/RestError$Kind;

    const-string v1, "PDSN_NOT_REGISTER"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pateo/fci/RestError$Kind;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->PDSN_NOT_REGISTER:Lcom/pateo/fci/RestError$Kind;

    .line 25
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/pateo/fci/RestError$Kind;

    sget-object v1, Lcom/pateo/fci/RestError$Kind;->NETWORK:Lcom/pateo/fci/RestError$Kind;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/fci/RestError$Kind;->CONVERSION:Lcom/pateo/fci/RestError$Kind;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/fci/RestError$Kind;->HTTP:Lcom/pateo/fci/RestError$Kind;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/fci/RestError$Kind;->UNEXPECTED:Lcom/pateo/fci/RestError$Kind;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pateo/fci/RestError$Kind;->PDSN_NULL:Lcom/pateo/fci/RestError$Kind;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pateo/fci/RestError$Kind;->PDSN_NOT_REGISTER:Lcom/pateo/fci/RestError$Kind;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pateo/fci/RestError$Kind;->$VALUES:[Lcom/pateo/fci/RestError$Kind;

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
    .line 25
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(I)Lcom/pateo/fci/RestError$Kind;
    .registers 2
    .param p0, "value"    # I

    .prologue
    .line 41
    packed-switch p0, :pswitch_data_18

    .line 55
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->UNEXPECTED:Lcom/pateo/fci/RestError$Kind;

    :goto_5
    return-object v0

    .line 43
    :pswitch_6
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->NETWORK:Lcom/pateo/fci/RestError$Kind;

    goto :goto_5

    .line 45
    :pswitch_9
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->CONVERSION:Lcom/pateo/fci/RestError$Kind;

    goto :goto_5

    .line 47
    :pswitch_c
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->HTTP:Lcom/pateo/fci/RestError$Kind;

    goto :goto_5

    .line 49
    :pswitch_f
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->UNEXPECTED:Lcom/pateo/fci/RestError$Kind;

    goto :goto_5

    .line 51
    :pswitch_12
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->PDSN_NULL:Lcom/pateo/fci/RestError$Kind;

    goto :goto_5

    .line 53
    :pswitch_15
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->PDSN_NOT_REGISTER:Lcom/pateo/fci/RestError$Kind;

    goto :goto_5

    .line 41
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

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/fci/RestError$Kind;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 25
    const-class v0, Lcom/pateo/fci/RestError$Kind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/fci/RestError$Kind;

    return-object v0
.end method

.method public static values()[Lcom/pateo/fci/RestError$Kind;
    .registers 1

    .prologue
    .line 25
    sget-object v0, Lcom/pateo/fci/RestError$Kind;->$VALUES:[Lcom/pateo/fci/RestError$Kind;

    invoke-virtual {v0}, [Lcom/pateo/fci/RestError$Kind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/fci/RestError$Kind;

    return-object v0
.end method
