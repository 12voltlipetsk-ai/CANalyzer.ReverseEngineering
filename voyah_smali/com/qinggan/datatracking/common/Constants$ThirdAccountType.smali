.class public Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThirdAccountType"
.end annotation


# static fields
.field public static airtip:Ljava/lang/String;

.field public static baidu:Ljava/lang/String;

.field public static etcp:Ljava/lang/String;

.field public static ezparking:Ljava/lang/String;

.field public static icloud:Ljava/lang/String;

.field public static kuwo:Ljava/lang/String;

.field public static other:Ljava/lang/String;

.field public static suning:Ljava/lang/String;

.field public static xmly:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 97
    const-string v0, "-1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->other:Ljava/lang/String;

    .line 99
    const-string v0, "0"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->baidu:Ljava/lang/String;

    .line 101
    const-string v0, "1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->xmly:Ljava/lang/String;

    .line 103
    const-string v0, "2"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->suning:Ljava/lang/String;

    .line 105
    const-string v0, "3"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->icloud:Ljava/lang/String;

    .line 107
    const-string v0, "4"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->kuwo:Ljava/lang/String;

    .line 109
    const-string v0, "5"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->airtip:Ljava/lang/String;

    .line 111
    const-string v0, "6"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->etcp:Ljava/lang/String;

    .line 113
    const-string v0, "7"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ThirdAccountType;->ezparking:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
