.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Phone"
.end annotation


# static fields
.field public static AnswerPhone:Ljava/lang/String;

.field public static CallPhone:Ljava/lang/String;

.field public static ClickGeneralContact:Ljava/lang/String;

.field public static EnterPhone:Ljava/lang/String;

.field public static HangUpPhone:Ljava/lang/String;

.field public static LeavePhoneApp:Ljava/lang/String;

.field public static SearchConective:Ljava/lang/String;

.field public static SyncAddressListManual:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 248
    const-string v0, "1005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->CallPhone:Ljava/lang/String;

    .line 250
    const-string v0, "100501"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->AnswerPhone:Ljava/lang/String;

    .line 252
    const-string v0, "100502"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->HangUpPhone:Ljava/lang/String;

    .line 254
    const-string v0, "1005001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->SearchConective:Ljava/lang/String;

    .line 256
    const-string v0, "1005002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->SyncAddressListManual:Ljava/lang/String;

    .line 258
    const-string v0, "1005003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->EnterPhone:Ljava/lang/String;

    .line 260
    const-string v0, "1005004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->ClickGeneralContact:Ljava/lang/String;

    .line 262
    const-string v0, "10051"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Phone;->LeavePhoneApp:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 246
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
