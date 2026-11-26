.class public final enum Lcom/pateo/tsp/push/PushType;
.super Ljava/lang/Enum;
.source "PushType.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/push/PushType;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/push/PushType;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/push/PushType;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PUSH_GUIDANCE:Lcom/pateo/tsp/push/PushType;

.field public static final enum PUSH_MESSAGE:Lcom/pateo/tsp/push/PushType;

.field public static final enum PUSH_POI:Lcom/pateo/tsp/push/PushType;

.field public static final enum PUSH_STRINGMESSAGE:Lcom/pateo/tsp/push/PushType;

.field public static final enum PUSH_URLBACK:Lcom/pateo/tsp/push/PushType;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7
    new-instance v0, Lcom/pateo/tsp/push/PushType;

    const-string v1, "PUSH_POI"

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/push/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_POI:Lcom/pateo/tsp/push/PushType;

    .line 8
    new-instance v0, Lcom/pateo/tsp/push/PushType;

    const-string v1, "PUSH_GUIDANCE"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/push/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_GUIDANCE:Lcom/pateo/tsp/push/PushType;

    .line 9
    new-instance v0, Lcom/pateo/tsp/push/PushType;

    const-string v1, "PUSH_URLBACK"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/push/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_URLBACK:Lcom/pateo/tsp/push/PushType;

    .line 10
    new-instance v0, Lcom/pateo/tsp/push/PushType;

    const-string v1, "PUSH_MESSAGE"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/push/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_MESSAGE:Lcom/pateo/tsp/push/PushType;

    .line 11
    new-instance v0, Lcom/pateo/tsp/push/PushType;

    const-string v1, "PUSH_STRINGMESSAGE"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/push/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_STRINGMESSAGE:Lcom/pateo/tsp/push/PushType;

    .line 6
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/pateo/tsp/push/PushType;

    sget-object v1, Lcom/pateo/tsp/push/PushType;->PUSH_POI:Lcom/pateo/tsp/push/PushType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/pateo/tsp/push/PushType;->PUSH_GUIDANCE:Lcom/pateo/tsp/push/PushType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/push/PushType;->PUSH_URLBACK:Lcom/pateo/tsp/push/PushType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/push/PushType;->PUSH_MESSAGE:Lcom/pateo/tsp/push/PushType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/push/PushType;->PUSH_STRINGMESSAGE:Lcom/pateo/tsp/push/PushType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/pateo/tsp/push/PushType;->$VALUES:[Lcom/pateo/tsp/push/PushType;

    .line 26
    new-instance v0, Lcom/pateo/tsp/push/PushType$1;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushType$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/push/PushType;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 6
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/push/PushType;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/pateo/tsp/push/PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/push/PushType;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/push/PushType;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/pateo/tsp/push/PushType;->$VALUES:[Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v0}, [Lcom/pateo/tsp/push/PushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/push/PushType;

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
    .line 23
    invoke-virtual {p0}, Lcom/pateo/tsp/push/PushType;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    return-void
.end method
