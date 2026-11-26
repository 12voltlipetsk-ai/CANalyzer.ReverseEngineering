.class public Lcom/qinggan/datatracking/common/Constants$ClientType;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ClientType"
.end annotation


# static fields
.field public static Glass:Ljava/lang/String;

.field public static IPDA:Ljava/lang/String;

.field public static OBD:Ljava/lang/String;

.field public static Pad:Ljava/lang/String;

.field public static SmartPhone:Ljava/lang/String;

.field public static TBox:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 14
    const-string v0, "IPDA"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ClientType;->IPDA:Ljava/lang/String;

    .line 16
    const-string v0, "Glass"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ClientType;->Glass:Ljava/lang/String;

    .line 18
    const-string v0, "SmartPhone"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ClientType;->SmartPhone:Ljava/lang/String;

    .line 20
    const-string v0, "TBox"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ClientType;->TBox:Ljava/lang/String;

    .line 22
    const-string v0, "Pad"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ClientType;->Pad:Ljava/lang/String;

    .line 24
    const-string v0, "OBD"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$ClientType;->OBD:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
