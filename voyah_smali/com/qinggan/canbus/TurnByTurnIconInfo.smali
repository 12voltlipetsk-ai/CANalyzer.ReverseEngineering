.class public final enum Lcom/qinggan/canbus/TurnByTurnIconInfo;
.super Ljava/lang/Enum;
.source "TurnByTurnIconInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/TurnByTurnIconInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum ARIVE_CHARGE:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum ARIVE_SERVICE:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT1:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT10:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT2:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT3:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT4:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT5:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT6:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT7:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT8:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum AROUND_EXIT9:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum ASSIST_AOAD:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/TurnByTurnIconInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum INVALID:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum LEFT_BACK:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum LEFT_DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum MAIN_ROAD:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum PASSING_POINT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum RIGHT_BACK:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum RIGHT_DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum TARGET:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum TUNNEL:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum TURN:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum TURN_LEFT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

.field public static final enum TURN_RIGHT:Lcom/qinggan/canbus/TurnByTurnIconInfo;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->INVALID:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 8
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "DIRECT"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 9
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "TURN_LEFT"

    invoke-direct {v0, v1, v6, v6}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TURN_LEFT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "TURN_RIGHT"

    invoke-direct {v0, v1, v7, v7}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TURN_RIGHT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "LEFT_DIRECT"

    invoke-direct {v0, v1, v8, v8}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->LEFT_DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "RIGHT_DIRECT"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->RIGHT_DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 13
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "TURN"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TURN:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "RIGHT_BACK"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->RIGHT_BACK:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 15
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "LEFT_BACK"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->LEFT_BACK:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 16
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 17
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT1"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT1:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 18
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT2"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT2:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 19
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT3"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT3:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 20
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT4"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT4:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 21
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT5"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT5:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 22
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT6"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT6:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 23
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT7"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT7:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 24
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT8"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT8:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 25
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT9"

    const/16 v2, 0x12

    const/16 v3, 0x12

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT9:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 26
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "AROUND_EXIT10"

    const/16 v2, 0x13

    const/16 v3, 0x13

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT10:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 27
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "MAIN_ROAD"

    const/16 v2, 0x14

    const/16 v3, 0x14

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->MAIN_ROAD:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 28
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "ASSIST_AOAD"

    const/16 v2, 0x15

    const/16 v3, 0x15

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ASSIST_AOAD:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 29
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "PASSING_POINT"

    const/16 v2, 0x16

    const/16 v3, 0x16

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->PASSING_POINT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 30
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "TARGET"

    const/16 v2, 0x17

    const/16 v3, 0x17

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TARGET:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 31
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "TUNNEL"

    const/16 v2, 0x18

    const/16 v3, 0x18

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TUNNEL:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 32
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "ARIVE_SERVICE"

    const/16 v2, 0x19

    const/16 v3, 0x19

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ARIVE_SERVICE:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 33
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    const-string v1, "ARIVE_CHARGE"

    const/16 v2, 0x1a

    const/16 v3, 0x1a

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TurnByTurnIconInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ARIVE_CHARGE:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 6
    const/16 v0, 0x1b

    new-array v0, v0, [Lcom/qinggan/canbus/TurnByTurnIconInfo;

    sget-object v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;->INVALID:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;->DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TURN_LEFT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TURN_RIGHT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;->LEFT_DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->RIGHT_DIRECT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TURN:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->RIGHT_BACK:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->LEFT_BACK:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT1:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT2:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT3:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT4:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT5:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT6:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT7:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT8:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT9:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->AROUND_EXIT10:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->MAIN_ROAD:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ASSIST_AOAD:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->PASSING_POINT:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TARGET:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->TUNNEL:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ARIVE_SERVICE:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ARIVE_CHARGE:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->$VALUES:[Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 57
    new-instance v0, Lcom/qinggan/canbus/TurnByTurnIconInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/TurnByTurnIconInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .registers 4
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 37
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 38
    iput p3, p0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->value:I

    .line 39
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/TurnByTurnIconInfo;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/TurnByTurnIconInfo;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->$VALUES:[Lcom/qinggan/canbus/TurnByTurnIconInfo;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/TurnByTurnIconInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/TurnByTurnIconInfo;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 42
    iget v0, p0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 53
    invoke-virtual {p0}, Lcom/qinggan/canbus/TurnByTurnIconInfo;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lcom/qinggan/canbus/TurnByTurnIconInfo;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    return-void
.end method
