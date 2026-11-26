.class public final enum Lcom/qinggan/ipksync/CardInfo;
.super Ljava/lang/Enum;
.source "CardInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/ipksync/CardInfo;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/ipksync/CardInfo;

.field public static final enum ALARMINFO_1:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_ENERGYFLOW:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_FUEL:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_FUELCONS:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_INFO:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_START:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_TIRE:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum CARINFO_TRIPA:Lcom/qinggan/ipksync/CardInfo;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/ipksync/CardInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum MEDIA_CARD:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum NAVI_CARD:Lcom/qinggan/ipksync/CardInfo;

.field public static final enum NAVI_CARD_SMALL:Lcom/qinggan/ipksync/CardInfo;


# instance fields
.field value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x6

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x1

    .line 8
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_START"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v4}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_START:Lcom/qinggan/ipksync/CardInfo;

    .line 9
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_FUEL"

    invoke-direct {v0, v1, v4, v5}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_FUEL:Lcom/qinggan/ipksync/CardInfo;

    .line 10
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_TRIPA"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v6}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_TRIPA:Lcom/qinggan/ipksync/CardInfo;

    .line 11
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_FUELCONS"

    invoke-direct {v0, v1, v5, v7}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_FUELCONS:Lcom/qinggan/ipksync/CardInfo;

    .line 12
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_ENERGYFLOW"

    invoke-direct {v0, v1, v6, v8}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_ENERGYFLOW:Lcom/qinggan/ipksync/CardInfo;

    .line 13
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_TIRE"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v7, v2}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_TIRE:Lcom/qinggan/ipksync/CardInfo;

    .line 14
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "CARINFO_INFO"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v8, v2}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CARINFO_INFO:Lcom/qinggan/ipksync/CardInfo;

    .line 15
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "NAVI_CARD"

    const/4 v2, 0x7

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->NAVI_CARD:Lcom/qinggan/ipksync/CardInfo;

    .line 16
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "MEDIA_CARD"

    const/16 v2, 0x8

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->MEDIA_CARD:Lcom/qinggan/ipksync/CardInfo;

    .line 17
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "ALARMINFO_1"

    const/16 v2, 0x9

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->ALARMINFO_1:Lcom/qinggan/ipksync/CardInfo;

    .line 18
    new-instance v0, Lcom/qinggan/ipksync/CardInfo;

    const-string v1, "NAVI_CARD_SMALL"

    const/16 v2, 0xa

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/ipksync/CardInfo;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->NAVI_CARD_SMALL:Lcom/qinggan/ipksync/CardInfo;

    .line 7
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/qinggan/ipksync/CardInfo;

    const/4 v1, 0x0

    sget-object v2, Lcom/qinggan/ipksync/CardInfo;->CARINFO_START:Lcom/qinggan/ipksync/CardInfo;

    aput-object v2, v0, v1

    sget-object v1, Lcom/qinggan/ipksync/CardInfo;->CARINFO_FUEL:Lcom/qinggan/ipksync/CardInfo;

    aput-object v1, v0, v4

    const/4 v1, 0x2

    sget-object v2, Lcom/qinggan/ipksync/CardInfo;->CARINFO_TRIPA:Lcom/qinggan/ipksync/CardInfo;

    aput-object v2, v0, v1

    sget-object v1, Lcom/qinggan/ipksync/CardInfo;->CARINFO_FUELCONS:Lcom/qinggan/ipksync/CardInfo;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/ipksync/CardInfo;->CARINFO_ENERGYFLOW:Lcom/qinggan/ipksync/CardInfo;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/ipksync/CardInfo;->CARINFO_TIRE:Lcom/qinggan/ipksync/CardInfo;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/ipksync/CardInfo;->CARINFO_INFO:Lcom/qinggan/ipksync/CardInfo;

    aput-object v1, v0, v8

    const/4 v1, 0x7

    sget-object v2, Lcom/qinggan/ipksync/CardInfo;->NAVI_CARD:Lcom/qinggan/ipksync/CardInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qinggan/ipksync/CardInfo;->MEDIA_CARD:Lcom/qinggan/ipksync/CardInfo;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/qinggan/ipksync/CardInfo;->ALARMINFO_1:Lcom/qinggan/ipksync/CardInfo;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/qinggan/ipksync/CardInfo;->NAVI_CARD_SMALL:Lcom/qinggan/ipksync/CardInfo;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->$VALUES:[Lcom/qinggan/ipksync/CardInfo;

    .line 46
    new-instance v0, Lcom/qinggan/ipksync/CardInfo$1;

    invoke-direct {v0}, Lcom/qinggan/ipksync/CardInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/ipksync/CardInfo;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 23
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 24
    iput p3, p0, Lcom/qinggan/ipksync/CardInfo;->value:I

    .line 25
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/ipksync/CardInfo;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/ipksync/CardInfo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/ipksync/CardInfo;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/ipksync/CardInfo;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/ipksync/CardInfo;->$VALUES:[Lcom/qinggan/ipksync/CardInfo;

    invoke-virtual {v0}, [Lcom/qinggan/ipksync/CardInfo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/ipksync/CardInfo;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 28
    iget v0, p0, Lcom/qinggan/ipksync/CardInfo;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/qinggan/ipksync/CardInfo;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget v0, p0, Lcom/qinggan/ipksync/CardInfo;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    return-void
.end method
