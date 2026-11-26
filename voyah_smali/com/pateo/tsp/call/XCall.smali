.class public Lcom/pateo/tsp/call/XCall;
.super Ljava/lang/Object;
.source "XCall.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/call/XCall;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field callID:I

.field telNumber:Ljava/lang/String;

.field xcallType:Lcom/pateo/tsp/call/XCallType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lcom/pateo/tsp/call/XCall$1;

    invoke-direct {v0}, Lcom/pateo/tsp/call/XCall$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/call/XCall;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 82
    const/4 v0, 0x0

    return v0
.end method

.method public getCallID()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/pateo/tsp/call/XCall;->callID:I

    return v0
.end method

.method public getTelNumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pateo/tsp/call/XCall;->telNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getXCallType()Lcom/pateo/tsp/call/XCallType;
    .registers 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    return-object v0
.end method

.method public setCallID(I)V
    .registers 2
    .param p1, "callID"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/pateo/tsp/call/XCall;->callID:I

    .line 33
    return-void
.end method

.method public setTelNumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "telNumber"    # Ljava/lang/String;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/pateo/tsp/call/XCall;->telNumber:Ljava/lang/String;

    .line 71
    return-void
.end method

.method public setXCallType(Lcom/pateo/tsp/call/XCallType;)V
    .registers 2
    .param p1, "xcallType"    # Lcom/pateo/tsp/call/XCallType;

    .prologue
    .line 48
    iput-object p1, p0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    .line 49
    return-void
.end method

.method public setXCallTypeByIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 52
    invoke-static {}, Lcom/pateo/tsp/call/XCallType;->values()[Lcom/pateo/tsp/call/XCallType;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_c

    .line 53
    sget-object v0, Lcom/pateo/tsp/call/XCallType;->ICALL:Lcom/pateo/tsp/call/XCallType;

    iput-object v0, p0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    .line 57
    :goto_b
    return-void

    .line 55
    :cond_c
    invoke-static {}, Lcom/pateo/tsp/call/XCallType;->values()[Lcom/pateo/tsp/call/XCallType;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "telNumber:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/call/XCall;->telNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",xcallType:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",callID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/call/XCall;->callID:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 87
    iget v0, p0, Lcom/pateo/tsp/call/XCall;->callID:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget-object v0, p0, Lcom/pateo/tsp/call/XCall;->xcallType:Lcom/pateo/tsp/call/XCallType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 89
    iget-object v0, p0, Lcom/pateo/tsp/call/XCall;->telNumber:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    return-void
.end method
