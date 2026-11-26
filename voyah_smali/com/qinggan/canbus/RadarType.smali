.class public final enum Lcom/qinggan/canbus/RadarType;
.super Ljava/lang/Enum;
.source "RadarType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/RadarType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/RadarType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/RadarType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Front:Lcom/qinggan/canbus/RadarType;

.field public static final enum Left:Lcom/qinggan/canbus/RadarType;

.field public static final enum Rear:Lcom/qinggan/canbus/RadarType;

.field public static final enum Right:Lcom/qinggan/canbus/RadarType;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/qinggan/canbus/RadarType;

    const-string v1, "Front"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/RadarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/RadarType;->Front:Lcom/qinggan/canbus/RadarType;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/RadarType;

    const-string v1, "Rear"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/canbus/RadarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/RadarType;->Rear:Lcom/qinggan/canbus/RadarType;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/RadarType;

    const-string v1, "Left"

    invoke-direct {v0, v1, v4}, Lcom/qinggan/canbus/RadarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/RadarType;->Left:Lcom/qinggan/canbus/RadarType;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/RadarType;

    const-string v1, "Right"

    invoke-direct {v0, v1, v5}, Lcom/qinggan/canbus/RadarType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/RadarType;->Right:Lcom/qinggan/canbus/RadarType;

    .line 7
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/qinggan/canbus/RadarType;

    sget-object v1, Lcom/qinggan/canbus/RadarType;->Front:Lcom/qinggan/canbus/RadarType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/qinggan/canbus/RadarType;->Rear:Lcom/qinggan/canbus/RadarType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/RadarType;->Left:Lcom/qinggan/canbus/RadarType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/RadarType;->Right:Lcom/qinggan/canbus/RadarType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/qinggan/canbus/RadarType;->$VALUES:[Lcom/qinggan/canbus/RadarType;

    .line 29
    new-instance v0, Lcom/qinggan/canbus/RadarType$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/RadarType$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/RadarType;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/RadarType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 7
    const-class v0, Lcom/qinggan/canbus/RadarType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/RadarType;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/RadarType;
    .registers 1

    .prologue
    .line 7
    sget-object v0, Lcom/qinggan/canbus/RadarType;->$VALUES:[Lcom/qinggan/canbus/RadarType;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/RadarType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/RadarType;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 18
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 26
    invoke-virtual {p0}, Lcom/qinggan/canbus/RadarType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 27
    return-void
.end method
