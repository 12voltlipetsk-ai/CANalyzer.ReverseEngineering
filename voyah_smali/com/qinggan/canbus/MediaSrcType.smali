.class public final enum Lcom/qinggan/canbus/MediaSrcType;
.super Ljava/lang/Enum;
.source "MediaSrcType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/MediaSrcType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum A2DP:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum A2DP_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum AM:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum AUX:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum CDC:Lcom/qinggan/canbus/MediaSrcType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/MediaSrcType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DVBT:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum Disc:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum FM:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum IPDALink:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum IPod:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum Navi:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum Network:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum NetworkMusic:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum NetworkRadio:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum OFF:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum Other:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum Phone:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum QQ:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum SD:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum TV:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum USB:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum USB1_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum USB2:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum USB2_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

.field public static final enum XMLY:Lcom/qinggan/canbus/MediaSrcType;


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

    .line 10
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "OFF"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->OFF:Lcom/qinggan/canbus/MediaSrcType;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "FM"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->FM:Lcom/qinggan/canbus/MediaSrcType;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "AM"

    invoke-direct {v0, v1, v6, v6}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->AM:Lcom/qinggan/canbus/MediaSrcType;

    .line 13
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "Disc"

    invoke-direct {v0, v1, v7, v7}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->Disc:Lcom/qinggan/canbus/MediaSrcType;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "TV"

    invoke-direct {v0, v1, v8, v8}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->TV:Lcom/qinggan/canbus/MediaSrcType;

    .line 15
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "Navi"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->Navi:Lcom/qinggan/canbus/MediaSrcType;

    .line 16
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "Phone"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->Phone:Lcom/qinggan/canbus/MediaSrcType;

    .line 17
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "IPod"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->IPod:Lcom/qinggan/canbus/MediaSrcType;

    .line 18
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "AUX"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->AUX:Lcom/qinggan/canbus/MediaSrcType;

    .line 19
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "USB"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->USB:Lcom/qinggan/canbus/MediaSrcType;

    .line 20
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "SD"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->SD:Lcom/qinggan/canbus/MediaSrcType;

    .line 21
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "DVBT"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->DVBT:Lcom/qinggan/canbus/MediaSrcType;

    .line 22
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "A2DP"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->A2DP:Lcom/qinggan/canbus/MediaSrcType;

    .line 23
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "Other"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->Other:Lcom/qinggan/canbus/MediaSrcType;

    .line 24
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "CDC"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->CDC:Lcom/qinggan/canbus/MediaSrcType;

    .line 26
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "Network"

    const/16 v2, 0xf

    const/16 v3, 0x24

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->Network:Lcom/qinggan/canbus/MediaSrcType;

    .line 27
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "QQ"

    const/16 v2, 0x10

    const/16 v3, 0x25

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->QQ:Lcom/qinggan/canbus/MediaSrcType;

    .line 28
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "IPDALink"

    const/16 v2, 0x11

    const/16 v3, 0x26

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->IPDALink:Lcom/qinggan/canbus/MediaSrcType;

    .line 29
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "NetworkMusic"

    const/16 v2, 0x12

    const/16 v3, 0x27

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->NetworkMusic:Lcom/qinggan/canbus/MediaSrcType;

    .line 30
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "NetworkRadio"

    const/16 v2, 0x13

    const/16 v3, 0x28

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->NetworkRadio:Lcom/qinggan/canbus/MediaSrcType;

    .line 32
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "USB2"

    const/16 v2, 0x14

    const/16 v3, 0x29

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->USB2:Lcom/qinggan/canbus/MediaSrcType;

    .line 33
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "USB1_DISMISS"

    const/16 v2, 0x15

    const/16 v3, 0x2a

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->USB1_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

    .line 34
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "USB2_DISMISS"

    const/16 v2, 0x16

    const/16 v3, 0x2b

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->USB2_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

    .line 35
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "A2DP_DISMISS"

    const/16 v2, 0x17

    const/16 v3, 0x2c

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->A2DP_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

    .line 37
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType;

    const-string v1, "XMLY"

    const/16 v2, 0x18

    const/16 v3, 0x2d

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/MediaSrcType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->XMLY:Lcom/qinggan/canbus/MediaSrcType;

    .line 7
    const/16 v0, 0x19

    new-array v0, v0, [Lcom/qinggan/canbus/MediaSrcType;

    sget-object v1, Lcom/qinggan/canbus/MediaSrcType;->OFF:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/MediaSrcType;->FM:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/MediaSrcType;->AM:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/MediaSrcType;->Disc:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/MediaSrcType;->TV:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->Navi:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->Phone:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->IPod:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->AUX:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->USB:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->SD:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->DVBT:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->A2DP:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->Other:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->CDC:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->Network:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->QQ:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->IPDALink:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->NetworkMusic:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->NetworkRadio:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->USB2:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->USB1_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->USB2_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->A2DP_DISMISS:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/qinggan/canbus/MediaSrcType;->XMLY:Lcom/qinggan/canbus/MediaSrcType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->$VALUES:[Lcom/qinggan/canbus/MediaSrcType;

    .line 65
    new-instance v0, Lcom/qinggan/canbus/MediaSrcType$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/MediaSrcType$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/MediaSrcType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/qinggan/canbus/MediaSrcType;->value:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/MediaSrcType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/MediaSrcType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/MediaSrcType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/MediaSrcType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/MediaSrcType;->$VALUES:[Lcom/qinggan/canbus/MediaSrcType;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/MediaSrcType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/MediaSrcType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/qinggan/canbus/MediaSrcType;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/qinggan/canbus/MediaSrcType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget v0, p0, Lcom/qinggan/canbus/MediaSrcType;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 63
    return-void
.end method
