.class public final enum Lcom/pateo/tsp/call/XCallEvent;
.super Ljava/lang/Enum;
.source "XCallEvent.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/pateo/tsp/call/XCallEvent;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/pateo/tsp/call/XCallEvent;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/call/XCallEvent;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum XCALL_EVENT_CALLCANCELED:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_CALLCANCELFAILED:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_CALLCANCELING:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_CALLESTABLISHED:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_CALLRINING:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_CALLSTARTED:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_CALLTERMINATED:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_ERROR:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_FAILED:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_PREPARING:Lcom/pateo/tsp/call/XCallEvent;

.field public static final enum XCALL_EVENT_REJECTED:Lcom/pateo/tsp/call/XCallEvent;


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
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_PREPARING"

    invoke-direct {v0, v1, v3}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_PREPARING:Lcom/pateo/tsp/call/XCallEvent;

    .line 8
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_REJECTED"

    invoke-direct {v0, v1, v4}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_REJECTED:Lcom/pateo/tsp/call/XCallEvent;

    .line 9
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_FAILED"

    invoke-direct {v0, v1, v5}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_FAILED:Lcom/pateo/tsp/call/XCallEvent;

    .line 10
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLSTARTED"

    invoke-direct {v0, v1, v6}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLSTARTED:Lcom/pateo/tsp/call/XCallEvent;

    .line 11
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLRINING"

    invoke-direct {v0, v1, v7}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLRINING:Lcom/pateo/tsp/call/XCallEvent;

    .line 12
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLESTABLISHED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLESTABLISHED:Lcom/pateo/tsp/call/XCallEvent;

    .line 13
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLTERMINATED"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLTERMINATED:Lcom/pateo/tsp/call/XCallEvent;

    .line 14
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLCANCELING"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELING:Lcom/pateo/tsp/call/XCallEvent;

    .line 15
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLCANCELED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELED:Lcom/pateo/tsp/call/XCallEvent;

    .line 16
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_CALLCANCELFAILED"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELFAILED:Lcom/pateo/tsp/call/XCallEvent;

    .line 17
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent;

    const-string v1, "XCALL_EVENT_ERROR"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/pateo/tsp/call/XCallEvent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_ERROR:Lcom/pateo/tsp/call/XCallEvent;

    .line 6
    const/16 v0, 0xb

    new-array v0, v0, [Lcom/pateo/tsp/call/XCallEvent;

    sget-object v1, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_PREPARING:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_REJECTED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v1, v0, v4

    sget-object v1, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_FAILED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v1, v0, v5

    sget-object v1, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLSTARTED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v1, v0, v6

    sget-object v1, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLRINING:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLESTABLISHED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLTERMINATED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELING:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELFAILED:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_ERROR:Lcom/pateo/tsp/call/XCallEvent;

    aput-object v2, v0, v1

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->$VALUES:[Lcom/pateo/tsp/call/XCallEvent;

    .line 59
    new-instance v0, Lcom/pateo/tsp/call/XCallEvent$1;

    invoke-direct {v0}, Lcom/pateo/tsp/call/XCallEvent$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/call/XCallEvent;->CREATOR:Landroid/os/Parcelable$Creator;

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

.method public static valueOf(I)Lcom/pateo/tsp/call/XCallEvent;
    .registers 2
    .param p0, "type"    # I

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_26

    .line 44
    const/4 v0, 0x0

    :goto_4
    return-object v0

    .line 22
    :pswitch_5
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_PREPARING:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 24
    :pswitch_8
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_REJECTED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 26
    :pswitch_b
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_FAILED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 28
    :pswitch_e
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLSTARTED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 30
    :pswitch_11
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLRINING:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 32
    :pswitch_14
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLESTABLISHED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 34
    :pswitch_17
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLTERMINATED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 36
    :pswitch_1a
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELING:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 38
    :pswitch_1d
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 40
    :pswitch_20
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_CALLCANCELFAILED:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 42
    :pswitch_23
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->XCALL_EVENT_ERROR:Lcom/pateo/tsp/call/XCallEvent;

    goto :goto_4

    .line 20
    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_5
        :pswitch_8
        :pswitch_b
        :pswitch_e
        :pswitch_11
        :pswitch_14
        :pswitch_17
        :pswitch_1a
        :pswitch_1d
        :pswitch_20
        :pswitch_23
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/pateo/tsp/call/XCallEvent;
    .registers 2
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 6
    const-class v0, Lcom/pateo/tsp/call/XCallEvent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/call/XCallEvent;

    return-object v0
.end method

.method public static values()[Lcom/pateo/tsp/call/XCallEvent;
    .registers 1

    .prologue
    .line 6
    sget-object v0, Lcom/pateo/tsp/call/XCallEvent;->$VALUES:[Lcom/pateo/tsp/call/XCallEvent;

    invoke-virtual {v0}, [Lcom/pateo/tsp/call/XCallEvent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/pateo/tsp/call/XCallEvent;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 56
    invoke-virtual {p0}, Lcom/pateo/tsp/call/XCallEvent;->ordinal()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    return-void
.end method
