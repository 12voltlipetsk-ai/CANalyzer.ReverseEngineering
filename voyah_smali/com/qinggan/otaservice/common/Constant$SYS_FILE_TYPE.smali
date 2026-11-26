.class public final enum Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;
.super Ljava/lang/Enum;
.source "Constant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/common/Constant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SYS_FILE_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

.field public static final enum FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

.field public static final enum FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

.field public static final enum NA:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

.field public static final enum PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;


# instance fields
.field private iValue:I


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    const-string v1, "FACTORY"

    invoke-direct {v0, v1, v2, v2}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    new-instance v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    const-string v1, "FULL"

    invoke-direct {v0, v1, v3, v3}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    new-instance v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    const-string v1, "PATCH"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    new-instance v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    const-string v1, "NA"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->NA:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FACTORY:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->FULL:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->PATCH:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->NA:Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->$VALUES:[Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 5
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->iValue:I

    .line 57
    iput p3, p0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->iValue:I

    .line 58
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 52
    const-class v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;
    .registers 1

    .prologue
    .line 52
    sget-object v0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->$VALUES:[Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    invoke-virtual {v0}, [Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    .prologue
    .line 61
    iget v0, p0, Lcom/qinggan/otaservice/common/Constant$SYS_FILE_TYPE;->iValue:I

    return v0
.end method
