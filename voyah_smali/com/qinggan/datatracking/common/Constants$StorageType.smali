.class public Lcom/qinggan/datatracking/common/Constants$StorageType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "StorageType"
.end annotation


# static fields
.field public static BT:Ljava/lang/String;

.field public static local:Ljava/lang/String;

.field public static network:Ljava/lang/String;

.field public static other:Ljava/lang/String;

.field public static uDisk:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 53
    const-string v0, "-1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$StorageType;->other:Ljava/lang/String;

    .line 55
    const-string v0, "0"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$StorageType;->network:Ljava/lang/String;

    .line 57
    const-string v0, "1"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$StorageType;->local:Ljava/lang/String;

    .line 59
    const-string v0, "2"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$StorageType;->uDisk:Ljava/lang/String;

    .line 61
    const-string v0, "3"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$StorageType;->BT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
