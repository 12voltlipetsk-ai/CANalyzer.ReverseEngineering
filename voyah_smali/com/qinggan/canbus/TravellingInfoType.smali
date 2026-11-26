.class public final enum Lcom/qinggan/canbus/TravellingInfoType;
.super Ljava/lang/Enum;
.source "TravellingInfoType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/TravellingInfoType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum AvgConsumptionLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum AvgConsumptionSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum AvgConsumptionSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum AvgSpeedLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum AvgSpeedSinceRefuelling:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum AvgSpeedSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/TravellingInfoType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DistanceLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum DistanceSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum DistanceSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum TravellingTimeLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum TravellingTimeSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

.field public static final enum TravellingTimeSinceStart:Lcom/qinggan/canbus/TravellingInfoType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 9
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "DistanceSinceStart"

    const/16 v2, 0x20

    invoke-direct {v0, v1, v4, v2}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->DistanceSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "DistanceSinceRefueling"

    const/16 v2, 0x21

    invoke-direct {v0, v1, v5, v2}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->DistanceSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "DistanceLongTerm"

    const/16 v2, 0x22

    invoke-direct {v0, v1, v6, v2}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->DistanceLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "AvgConsumptionSinceStart"

    const/16 v2, 0x30

    invoke-direct {v0, v1, v7, v2}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->AvgConsumptionSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    .line 13
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "AvgConsumptionSinceRefueling"

    const/16 v2, 0x31

    invoke-direct {v0, v1, v8, v2}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->AvgConsumptionSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "AvgConsumptionLongTerm"

    const/4 v2, 0x5

    const/16 v3, 0x32

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->AvgConsumptionLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    .line 15
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "AvgSpeedSinceStart"

    const/4 v2, 0x6

    const/16 v3, 0x40

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->AvgSpeedSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    .line 16
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "AvgSpeedSinceRefuelling"

    const/4 v2, 0x7

    const/16 v3, 0x41

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->AvgSpeedSinceRefuelling:Lcom/qinggan/canbus/TravellingInfoType;

    .line 17
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "AvgSpeedLongTerm"

    const/16 v2, 0x8

    const/16 v3, 0x42

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->AvgSpeedLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    .line 18
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "TravellingTimeSinceStart"

    const/16 v2, 0x9

    const/16 v3, 0x50

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->TravellingTimeSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    .line 19
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "TravellingTimeSinceRefueling"

    const/16 v2, 0xa

    const/16 v3, 0x51

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->TravellingTimeSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

    .line 20
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType;

    const-string v1, "TravellingTimeLongTerm"

    const/16 v2, 0xb

    const/16 v3, 0x52

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/TravellingInfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->TravellingTimeLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    .line 7
    const/16 v0, 0xc

    new-array v0, v0, [Lcom/qinggan/canbus/TravellingInfoType;

    sget-object v1, Lcom/qinggan/canbus/TravellingInfoType;->DistanceSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/TravellingInfoType;->DistanceSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/TravellingInfoType;->DistanceLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/TravellingInfoType;->AvgConsumptionSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/TravellingInfoType;->AvgConsumptionSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->AvgConsumptionLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->AvgSpeedSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->AvgSpeedSinceRefuelling:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->AvgSpeedLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->TravellingTimeSinceStart:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->TravellingTimeSinceRefueling:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/qinggan/canbus/TravellingInfoType;->TravellingTimeLongTerm:Lcom/qinggan/canbus/TravellingInfoType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->$VALUES:[Lcom/qinggan/canbus/TravellingInfoType;

    .line 47
    new-instance v0, Lcom/qinggan/canbus/TravellingInfoType$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/TravellingInfoType$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/TravellingInfoType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput p3, p0, Lcom/qinggan/canbus/TravellingInfoType;->value:I

    .line 26
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/TravellingInfoType;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/TravellingInfoType;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/TravellingInfoType;->value:I

    return p1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/TravellingInfoType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/TravellingInfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/TravellingInfoType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/TravellingInfoType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/TravellingInfoType;->$VALUES:[Lcom/qinggan/canbus/TravellingInfoType;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/TravellingInfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/TravellingInfoType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 35
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/qinggan/canbus/TravellingInfoType;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/qinggan/canbus/TravellingInfoType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    iget v0, p0, Lcom/qinggan/canbus/TravellingInfoType;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    return-void
.end method
