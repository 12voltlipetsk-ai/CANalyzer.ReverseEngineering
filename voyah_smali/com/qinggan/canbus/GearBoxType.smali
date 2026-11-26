.class public final enum Lcom/qinggan/canbus/GearBoxType;
.super Ljava/lang/Enum;
.source "GearBoxType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/GearBoxType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/GearBoxType;

.field public static final enum Auto:Lcom/qinggan/canbus/GearBoxType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/GearBoxType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Man:Lcom/qinggan/canbus/GearBoxType;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/qinggan/canbus/GearBoxType;

    const-string v1, "Auto"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/GearBoxType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GearBoxType;->Auto:Lcom/qinggan/canbus/GearBoxType;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/GearBoxType;

    const-string v1, "Man"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/canbus/GearBoxType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GearBoxType;->Man:Lcom/qinggan/canbus/GearBoxType;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/qinggan/canbus/GearBoxType;

    sget-object v1, Lcom/qinggan/canbus/GearBoxType;->Auto:Lcom/qinggan/canbus/GearBoxType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/canbus/GearBoxType;->Man:Lcom/qinggan/canbus/GearBoxType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/qinggan/canbus/GearBoxType;->$VALUES:[Lcom/qinggan/canbus/GearBoxType;

    .line 27
    new-instance v0, Lcom/qinggan/canbus/GearBoxType$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/GearBoxType$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/GearBoxType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/GearBoxType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/GearBoxType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/GearBoxType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/GearBoxType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/GearBoxType;->$VALUES:[Lcom/qinggan/canbus/GearBoxType;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/GearBoxType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/GearBoxType;

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
    invoke-virtual {p0}, Lcom/qinggan/canbus/GearBoxType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    return-void
.end method
