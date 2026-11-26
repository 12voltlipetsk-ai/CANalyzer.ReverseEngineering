.class public Lcom/pateo/tsp/push/PushUrlBack;
.super Lcom/pateo/tsp/push/PushObject;
.source "PushUrlBack.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/push/PushUrlBack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field timeToLive:I

.field url:Ljava/lang/String;

.field whileMoving:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 66
    new-instance v0, Lcom/pateo/tsp/push/PushUrlBack$1;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushUrlBack$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/push/PushUrlBack;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getTimeToLive()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/pateo/tsp/push/PushUrlBack;->timeToLive:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/pateo/tsp/push/PushUrlBack;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWhileMoving()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/pateo/tsp/push/PushUrlBack;->whileMoving:I

    return v0
.end method

.method public setTimeToLive(I)V
    .registers 2
    .param p1, "timeToLive"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/pateo/tsp/push/PushUrlBack;->timeToLive:I

    .line 36
    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/pateo/tsp/push/PushUrlBack;->url:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setWhileMoving(I)V
    .registers 2
    .param p1, "whileMoving"    # I

    .prologue
    .line 27
    iput p1, p0, Lcom/pateo/tsp/push/PushUrlBack;->whileMoving:I

    .line 28
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "whileMoving:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushUrlBack;->whileMoving:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",timeToLive:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/pateo/tsp/push/PushUrlBack;->timeToLive:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushUrlBack;->url:Ljava/lang/String;

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
    .line 59
    invoke-super {p0, p1, p2}, Lcom/pateo/tsp/push/PushObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 60
    iget v0, p0, Lcom/pateo/tsp/push/PushUrlBack;->whileMoving:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 61
    iget v0, p0, Lcom/pateo/tsp/push/PushUrlBack;->timeToLive:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 62
    iget-object v0, p0, Lcom/pateo/tsp/push/PushUrlBack;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 64
    return-void
.end method
