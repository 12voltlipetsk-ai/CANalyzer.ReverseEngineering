.class public final enum Lcom/qinggan/canbus/CalcState;
.super Ljava/lang/Enum;
.source "CalcState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/CalcState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/CalcState;

.field public static final enum CALC_BEGIN:Lcom/qinggan/canbus/CalcState;

.field public static final enum CALC_FAIL:Lcom/qinggan/canbus/CalcState;

.field public static final enum CALC_SUCCESS:Lcom/qinggan/canbus/CalcState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/CalcState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum UNKNOWN:Lcom/qinggan/canbus/CalcState;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/qinggan/canbus/CalcState;

    const-string v1, "CALC_BEGIN"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/CalcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/CalcState;->CALC_BEGIN:Lcom/qinggan/canbus/CalcState;

    .line 8
    new-instance v0, Lcom/qinggan/canbus/CalcState;

    const-string v1, "CALC_SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/canbus/CalcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/CalcState;->CALC_SUCCESS:Lcom/qinggan/canbus/CalcState;

    .line 9
    new-instance v0, Lcom/qinggan/canbus/CalcState;

    const-string v1, "CALC_FAIL"

    invoke-direct {v0, v1, v4}, Lcom/qinggan/canbus/CalcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/CalcState;->CALC_FAIL:Lcom/qinggan/canbus/CalcState;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/CalcState;

    const-string v1, "UNKNOWN"

    invoke-direct {v0, v1, v5}, Lcom/qinggan/canbus/CalcState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/CalcState;->UNKNOWN:Lcom/qinggan/canbus/CalcState;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qinggan/canbus/CalcState;

    sget-object v1, Lcom/qinggan/canbus/CalcState;->CALC_BEGIN:Lcom/qinggan/canbus/CalcState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/canbus/CalcState;->CALC_SUCCESS:Lcom/qinggan/canbus/CalcState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/CalcState;->CALC_FAIL:Lcom/qinggan/canbus/CalcState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/CalcState;->UNKNOWN:Lcom/qinggan/canbus/CalcState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/canbus/CalcState;->$VALUES:[Lcom/qinggan/canbus/CalcState;

    .line 43
    new-instance v0, Lcom/qinggan/canbus/CalcState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/CalcState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/CalcState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    return-void
.end method

.method public static parseCaclState(Ljava/lang/String;)Lcom/qinggan/canbus/CalcState;
    .registers 2
    .param p0, "state"    # Ljava/lang/String;

    .prologue
    .line 18
    const-string v0, "calc_begin"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 19
    sget-object v0, Lcom/qinggan/canbus/CalcState;->CALC_BEGIN:Lcom/qinggan/canbus/CalcState;

    .line 25
    :goto_a
    return-object v0

    .line 20
    :cond_b
    const-string v0, "calc_success"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 21
    sget-object v0, Lcom/qinggan/canbus/CalcState;->CALC_SUCCESS:Lcom/qinggan/canbus/CalcState;

    goto :goto_a

    .line 22
    :cond_16
    const-string v0, "calc_fail"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 23
    sget-object v0, Lcom/qinggan/canbus/CalcState;->CALC_FAIL:Lcom/qinggan/canbus/CalcState;

    goto :goto_a

    .line 25
    :cond_21
    sget-object v0, Lcom/qinggan/canbus/CalcState;->UNKNOWN:Lcom/qinggan/canbus/CalcState;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/CalcState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/canbus/CalcState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/CalcState;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/CalcState;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/qinggan/canbus/CalcState;->$VALUES:[Lcom/qinggan/canbus/CalcState;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/CalcState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/CalcState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 32
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 40
    invoke-virtual {p0}, Lcom/qinggan/canbus/CalcState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    return-void
.end method
