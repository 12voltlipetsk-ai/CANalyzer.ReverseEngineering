.class public final enum Lcom/qinggan/canbus/FunctionType;
.super Ljava/lang/Enum;
.source "FunctionType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/FunctionType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/FunctionType;

.field public static final enum CANSteeringKeySupport:Lcom/qinggan/canbus/FunctionType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/FunctionType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum TravellingInfo:Lcom/qinggan/canbus/FunctionType;

.field public static final enum VehicleState:Lcom/qinggan/canbus/FunctionType;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/qinggan/canbus/FunctionType;

    const-string v1, "VehicleState"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/FunctionType;->VehicleState:Lcom/qinggan/canbus/FunctionType;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/FunctionType;

    const-string v1, "TravellingInfo"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/canbus/FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/FunctionType;->TravellingInfo:Lcom/qinggan/canbus/FunctionType;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/FunctionType;

    const-string v1, "CANSteeringKeySupport"

    invoke-direct {v0, v1, v4}, Lcom/qinggan/canbus/FunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/FunctionType;->CANSteeringKeySupport:Lcom/qinggan/canbus/FunctionType;

    .line 7
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/qinggan/canbus/FunctionType;

    sget-object v1, Lcom/qinggan/canbus/FunctionType;->VehicleState:Lcom/qinggan/canbus/FunctionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/canbus/FunctionType;->TravellingInfo:Lcom/qinggan/canbus/FunctionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/FunctionType;->CANSteeringKeySupport:Lcom/qinggan/canbus/FunctionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/qinggan/canbus/FunctionType;->$VALUES:[Lcom/qinggan/canbus/FunctionType;

    .line 27
    new-instance v0, Lcom/qinggan/canbus/FunctionType$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/FunctionType$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/FunctionType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 7
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/FunctionType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/FunctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/FunctionType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/FunctionType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/FunctionType;->$VALUES:[Lcom/qinggan/canbus/FunctionType;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/FunctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/FunctionType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 16
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 24
    invoke-virtual {p0}, Lcom/qinggan/canbus/FunctionType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    return-void
.end method
