.class public Lcom/qinggan/datatracking/common/Constants$Behavior$WeChat;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeChat"
.end annotation


# static fields
.field public static OpenWeChat:Ljava/lang/String;

.field public static ReceiveWeChat:Ljava/lang/String;

.field public static ResponseWeChat:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 586
    const-string v0, "1029"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$WeChat;->OpenWeChat:Ljava/lang/String;

    .line 588
    const-string v0, "1029010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$WeChat;->ReceiveWeChat:Ljava/lang/String;

    .line 590
    const-string v0, "1029020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$WeChat;->ResponseWeChat:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 584
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
