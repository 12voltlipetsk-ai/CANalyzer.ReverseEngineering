.class public Lcom/qinggan/datatracking/common/Constants$OrderType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OrderType"
.end annotation


# static fields
.field public static data:Ljava/lang/String;

.field public static hotel:Ljava/lang/String;

.field public static other:Ljava/lang/String;

.field public static park:Ljava/lang/String;

.field public static suning:Ljava/lang/String;

.field public static xmly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 80
    const-string v0, "-1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$OrderType;->other:Ljava/lang/String;

    .line 82
    const-string v0, "0"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$OrderType;->hotel:Ljava/lang/String;

    .line 84
    const-string v0, "1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$OrderType;->xmly:Ljava/lang/String;

    .line 86
    const-string v0, "2"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$OrderType;->suning:Ljava/lang/String;

    .line 88
    const-string v0, "3"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$OrderType;->park:Ljava/lang/String;

    .line 90
    const-string v0, "4"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$OrderType;->data:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
