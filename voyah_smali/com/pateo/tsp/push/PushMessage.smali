.class public Lcom/pateo/tsp/push/PushMessage;
.super Lcom/pateo/tsp/push/PushObject;
.source "PushMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/push/PushMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field length:I

.field message:Ljava/lang/String;

.field msgTitle:Ljava/lang/String;

.field pushBodyType:I

.field pushType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/pateo/tsp/push/PushMessage$1;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushMessage$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/push/PushMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getLength()I
    .registers 2

    .prologue
    .line 44
    iget v0, p0, Lcom/pateo/tsp/push/PushMessage;->length:I

    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 36
    iget-object v0, p0, Lcom/pateo/tsp/push/PushMessage;->message:Ljava/lang/String;

    return-object v0
.end method

.method public getMsgTitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 28
    iget-object v0, p0, Lcom/pateo/tsp/push/PushMessage;->msgTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getPushBodyType()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/pateo/tsp/push/PushMessage;->pushBodyType:I

    return v0
.end method

.method public getPushType()I
    .registers 2

    .prologue
    .line 52
    iget v0, p0, Lcom/pateo/tsp/push/PushMessage;->pushType:I

    return v0
.end method

.method public setLength(I)V
    .registers 2
    .param p1, "length"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/pateo/tsp/push/PushMessage;->length:I

    .line 49
    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/pateo/tsp/push/PushMessage;->message:Ljava/lang/String;

    .line 41
    return-void
.end method

.method public setMsgTitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "msgTitle"    # Ljava/lang/String;

    .prologue
    .line 32
    iput-object p1, p0, Lcom/pateo/tsp/push/PushMessage;->msgTitle:Ljava/lang/String;

    .line 33
    return-void
.end method

.method public setPushBodyType(I)V
    .registers 2
    .param p1, "pushBodyType"    # I

    .prologue
    .line 24
    iput p1, p0, Lcom/pateo/tsp/push/PushMessage;->pushBodyType:I

    .line 25
    return-void
.end method

.method public setPushType(I)V
    .registers 2
    .param p1, "type"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/pateo/tsp/push/PushMessage;->pushType:I

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushMessage [message="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushMessage;->message:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushMessage;->length:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", pushType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushMessage;->pushType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", msgTitle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushMessage;->msgTitle:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",pushBodyType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushMessage;->pushBodyType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 74
    invoke-super {p0, p1, p2}, Lcom/pateo/tsp/push/PushObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 75
    iget v0, p0, Lcom/pateo/tsp/push/PushMessage;->pushType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/pateo/tsp/push/PushMessage;->pushBodyType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget-object v0, p0, Lcom/pateo/tsp/push/PushMessage;->msgTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 78
    iget-object v0, p0, Lcom/pateo/tsp/push/PushMessage;->message:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget v0, p0, Lcom/pateo/tsp/push/PushMessage;->length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
