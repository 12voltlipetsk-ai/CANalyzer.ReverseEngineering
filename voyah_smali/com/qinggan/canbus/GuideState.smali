.class public final enum Lcom/qinggan/canbus/GuideState;
.super Ljava/lang/Enum;
.source "GuideState.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/qinggan/canbus/GuideState;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/qinggan/canbus/GuideState;

.field public static final enum AUTO_STOP:Lcom/qinggan/canbus/GuideState;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/GuideState;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum GUIDING:Lcom/qinggan/canbus/GuideState;

.field public static final enum MAN_STOP:Lcom/qinggan/canbus/GuideState;

.field public static final enum OVER_PASS:Lcom/qinggan/canbus/GuideState;

.field public static final enum ROAM:Lcom/qinggan/canbus/GuideState;

.field public static final enum START:Lcom/qinggan/canbus/GuideState;

.field public static final enum Simulating:Lcom/qinggan/canbus/GuideState;

.field public static final enum UNKNOWN:Lcom/qinggan/canbus/GuideState;

.field public static final enum YAW_GUIDE:Lcom/qinggan/canbus/GuideState;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "START"

    invoke-direct {v0, v1, v3}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->START:Lcom/qinggan/canbus/GuideState;

    .line 8
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "AUTO_STOP"

    invoke-direct {v0, v1, v4}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->AUTO_STOP:Lcom/qinggan/canbus/GuideState;

    .line 9
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "MAN_STOP"

    invoke-direct {v0, v1, v5}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->MAN_STOP:Lcom/qinggan/canbus/GuideState;

    .line 10
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "YAW_GUIDE"

    invoke-direct {v0, v1, v6}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->YAW_GUIDE:Lcom/qinggan/canbus/GuideState;

    .line 11
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "OVER_PASS"

    invoke-direct {v0, v1, v7}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->OVER_PASS:Lcom/qinggan/canbus/GuideState;

    .line 12
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "GUIDING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->GUIDING:Lcom/qinggan/canbus/GuideState;

    .line 13
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "Simulating"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->Simulating:Lcom/qinggan/canbus/GuideState;

    .line 14
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "ROAM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->ROAM:Lcom/qinggan/canbus/GuideState;

    .line 15
    new-instance v0, Lcom/qinggan/canbus/GuideState;

    const-string v1, "UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/qinggan/canbus/GuideState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->UNKNOWN:Lcom/qinggan/canbus/GuideState;

    .line 6
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/qinggan/canbus/GuideState;

    sget-object v1, Lcom/qinggan/canbus/GuideState;->START:Lcom/qinggan/canbus/GuideState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/qinggan/canbus/GuideState;->AUTO_STOP:Lcom/qinggan/canbus/GuideState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/qinggan/canbus/GuideState;->MAN_STOP:Lcom/qinggan/canbus/GuideState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/qinggan/canbus/GuideState;->YAW_GUIDE:Lcom/qinggan/canbus/GuideState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/qinggan/canbus/GuideState;->OVER_PASS:Lcom/qinggan/canbus/GuideState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/qinggan/canbus/GuideState;->GUIDING:Lcom/qinggan/canbus/GuideState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/qinggan/canbus/GuideState;->Simulating:Lcom/qinggan/canbus/GuideState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/qinggan/canbus/GuideState;->ROAM:Lcom/qinggan/canbus/GuideState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/qinggan/canbus/GuideState;->UNKNOWN:Lcom/qinggan/canbus/GuideState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/qinggan/canbus/GuideState;->$VALUES:[Lcom/qinggan/canbus/GuideState;

    .line 58
    new-instance v0, Lcom/qinggan/canbus/GuideState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/GuideState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/GuideState;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 20
    return-void
.end method

.method public static parseGuideState(Ljava/lang/String;)Lcom/qinggan/canbus/GuideState;
    .registers 2
    .param p0, "state"    # Ljava/lang/String;

    .prologue
    .line 23
    const-string v0, "start_guide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    sget-object v0, Lcom/qinggan/canbus/GuideState;->START:Lcom/qinggan/canbus/GuideState;

    .line 40
    :goto_a
    return-object v0

    .line 25
    :cond_b
    const-string v0, "auto_stop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 26
    sget-object v0, Lcom/qinggan/canbus/GuideState;->AUTO_STOP:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 27
    :cond_16
    const-string v0, "man_stop"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 28
    sget-object v0, Lcom/qinggan/canbus/GuideState;->MAN_STOP:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 29
    :cond_21
    const-string v0, "yaw_guide"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 30
    sget-object v0, Lcom/qinggan/canbus/GuideState;->YAW_GUIDE:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 31
    :cond_2c
    const-string v0, "change_overpass"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_37

    .line 32
    sget-object v0, Lcom/qinggan/canbus/GuideState;->OVER_PASS:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 33
    :cond_37
    const-string v0, "guiding"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_42

    .line 34
    sget-object v0, Lcom/qinggan/canbus/GuideState;->GUIDING:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 35
    :cond_42
    const-string v0, "simulating"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4d

    .line 36
    sget-object v0, Lcom/qinggan/canbus/GuideState;->Simulating:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 37
    :cond_4d
    const-string v0, "roam"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    .line 38
    sget-object v0, Lcom/qinggan/canbus/GuideState;->ROAM:Lcom/qinggan/canbus/GuideState;

    goto :goto_a

    .line 40
    :cond_58
    sget-object v0, Lcom/qinggan/canbus/GuideState;->UNKNOWN:Lcom/qinggan/canbus/GuideState;

    goto :goto_a
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/qinggan/canbus/GuideState;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/qinggan/canbus/GuideState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/qinggan/canbus/GuideState;

    return-object v0
.end method

.method public static values()[Lcom/qinggan/canbus/GuideState;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/qinggan/canbus/GuideState;->$VALUES:[Lcom/qinggan/canbus/GuideState;

    invoke-virtual {v0}, [Lcom/qinggan/canbus/GuideState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/qinggan/canbus/GuideState;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 55
    invoke-virtual {p0}, Lcom/qinggan/canbus/GuideState;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    return-void
.end method
