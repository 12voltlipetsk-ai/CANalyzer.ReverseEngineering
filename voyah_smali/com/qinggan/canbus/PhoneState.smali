.class public final enum Lcom/qinggan/canbus/PhoneState;
.super Ljava/lang/Enum;
.source "PhoneState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/PhoneState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/PhoneState;

.field public static final enum COMING_CALL:Lcom/qinggan/canbus/PhoneState;

.field public static final enum CONNECTED:Lcom/qinggan/canbus/PhoneState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/PhoneState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GOING_CALL:Lcom/qinggan/canbus/PhoneState;

.field public static final enum HANG_UP:Lcom/qinggan/canbus/PhoneState;

.field public static final enum HOLD:Lcom/qinggan/canbus/PhoneState;

.field public static final enum NOTHING:Lcom/qinggan/canbus/PhoneState;


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
    new-instance v0, Lcom/qinggan/canbus/PhoneState;

    const-string v1, "NOTHING"

    invoke-direct {v0, v1, v4, v4}, Lcom/qinggan/canbus/PhoneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->NOTHING:Lcom/qinggan/canbus/PhoneState;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/PhoneState;

    const-string v1, "COMING_CALL"

    invoke-direct {v0, v1, v5, v5}, Lcom/qinggan/canbus/PhoneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->COMING_CALL:Lcom/qinggan/canbus/PhoneState;

    .line 18
    new-instance v0, Lcom/qinggan/canbus/PhoneState;

    const-string v1, "HOLD"

    invoke-direct {v0, v1, v6, v6}, Lcom/qinggan/canbus/PhoneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->HOLD:Lcom/qinggan/canbus/PhoneState;

    .line 22
    new-instance v0, Lcom/qinggan/canbus/PhoneState;

    const-string v1, "HANG_UP"

    invoke-direct {v0, v1, v7, v7}, Lcom/qinggan/canbus/PhoneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->HANG_UP:Lcom/qinggan/canbus/PhoneState;

    .line 26
    new-instance v0, Lcom/qinggan/canbus/PhoneState;

    const-string v1, "GOING_CALL"

    invoke-direct {v0, v1, v8, v8}, Lcom/qinggan/canbus/PhoneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->GOING_CALL:Lcom/qinggan/canbus/PhoneState;

    .line 30
    new-instance v0, Lcom/qinggan/canbus/PhoneState;

    const-string v1, "CONNECTED"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/qinggan/canbus/PhoneState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->CONNECTED:Lcom/qinggan/canbus/PhoneState;

    .line 6
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/qinggan/canbus/PhoneState;

    sget-object v1, Lcom/qinggan/canbus/PhoneState;->NOTHING:Lcom/qinggan/canbus/PhoneState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/PhoneState;->COMING_CALL:Lcom/qinggan/canbus/PhoneState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/PhoneState;->HOLD:Lcom/qinggan/canbus/PhoneState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/PhoneState;->HANG_UP:Lcom/qinggan/canbus/PhoneState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/qinggan/canbus/PhoneState;->GOING_CALL:Lcom/qinggan/canbus/PhoneState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/PhoneState;->CONNECTED:Lcom/qinggan/canbus/PhoneState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->$VALUES:[Lcom/qinggan/canbus/PhoneState;

    .line 55
    new-instance v0, Lcom/qinggan/canbus/PhoneState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/PhoneState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/PhoneState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 35
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 36
    iput p3, p0, Lcom/qinggan/canbus/PhoneState;->value:I

    .line 37
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/PhoneState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/canbus/PhoneState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/PhoneState;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/PhoneState;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/qinggan/canbus/PhoneState;->$VALUES:[Lcom/qinggan/canbus/PhoneState;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/PhoneState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/PhoneState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .registers 2

    .prologue
    .line 40
    iget v0, p0, Lcom/qinggan/canbus/PhoneState;->value:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "arg0"    # Landroid/os/Parcel;
    .param p2, "arg1"    # I

    .prologue
    .line 51
    invoke-virtual {p0}, Lcom/qinggan/canbus/PhoneState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lcom/qinggan/canbus/PhoneState;->value:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    return-void
.end method
