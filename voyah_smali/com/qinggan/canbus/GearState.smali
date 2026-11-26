.class public final enum Lcom/qinggan/canbus/GearState;
.super Ljava/lang/Enum;
.source "GearState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/GearState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/GearState;

.field public static final enum Battery:Lcom/qinggan/canbus/GearState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/GearState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Drive:Lcom/qinggan/canbus/GearState;

.field public static final enum Neutral:Lcom/qinggan/canbus/GearState;

.field public static final enum Parking:Lcom/qinggan/canbus/GearState;

.field public static final enum Reverse:Lcom/qinggan/canbus/GearState;

.field public static final enum Unknown:Lcom/qinggan/canbus/GearState;


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

    .line 9
    new-instance v0, Lcom/qinggan/canbus/GearState;

    const-string v1, "Parking"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/canbus/GearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/GearState;->Parking:Lcom/qinggan/canbus/GearState;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/GearState;

    const-string v1, "Reverse"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/canbus/GearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/GearState;->Reverse:Lcom/qinggan/canbus/GearState;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/GearState;

    const-string v1, "Neutral"

    invoke-direct {v0, v1, v6, v6}, Lcom/qinggan/canbus/GearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/GearState;->Neutral:Lcom/qinggan/canbus/GearState;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/GearState;

    const-string v1, "Drive"

    invoke-direct {v0, v1, v7, v7}, Lcom/qinggan/canbus/GearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/GearState;->Drive:Lcom/qinggan/canbus/GearState;

    .line 13
    new-instance v0, Lcom/qinggan/canbus/GearState;

    const-string v1, "Battery"

    invoke-direct {v0, v1, v8, v8}, Lcom/qinggan/canbus/GearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/GearState;->Battery:Lcom/qinggan/canbus/GearState;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/GearState;

    const-string v1, "Unknown"

    const/4 v2, 0x5

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/GearState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/GearState;->Unknown:Lcom/qinggan/canbus/GearState;

    .line 7
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qinggan/canbus/GearState;

    sget-object v1, Lcom/qinggan/canbus/GearState;->Parking:Lcom/qinggan/canbus/GearState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/GearState;->Reverse:Lcom/qinggan/canbus/GearState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/GearState;->Neutral:Lcom/qinggan/canbus/GearState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/GearState;->Drive:Lcom/qinggan/canbus/GearState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/GearState;->Battery:Lcom/qinggan/canbus/GearState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/GearState;->Unknown:Lcom/qinggan/canbus/GearState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/GearState;->$VALUES:[Lcom/qinggan/canbus/GearState;

    .line 41
    new-instance v0, Lcom/qinggan/canbus/GearState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/GearState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/GearState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput p3, p0, Lcom/qinggan/canbus/GearState;->value:I

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/GearState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/GearState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/GearState;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/GearState;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/GearState;->$VALUES:[Lcom/qinggan/canbus/GearState;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/GearState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/GearState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 29
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/qinggan/canbus/GearState;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 37
    invoke-virtual {p0}, Lcom/qinggan/canbus/GearState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/qinggan/canbus/GearState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 39
    return-void
.end method
