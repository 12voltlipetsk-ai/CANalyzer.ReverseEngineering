.class public Lcom/qinggan/tsp/push/PushStringMessage;
.super Lcom/pateo/tsp/push/PushObject;
.source "PushStringMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/tsp/push/PushStringMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field stringMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/qinggan/tsp/push/PushStringMessage$1;

    invoke-direct {v0}, Lcom/qinggan/tsp/push/PushStringMessage$1;-><init>()V

    sput-object v0, Lcom/qinggan/tsp/push/PushStringMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    .line 35
    sget-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_STRINGMESSAGE:Lcom/pateo/tsp/push/PushType;

    iput-object v0, p0, Lcom/qinggan/tsp/push/PushStringMessage;->type:Lcom/pateo/tsp/push/PushType;

    .line 36
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/pateo/tsp/push/PushObject;-><init>()V

    .line 39
    const-class v0, Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/pateo/tsp/push/PushType;

    iput-object v0, p0, Lcom/qinggan/tsp/push/PushStringMessage;->type:Lcom/pateo/tsp/push/PushType;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/push/PushStringMessage;->stringMessage:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 25
    const/4 v0, 0x0

    return v0
.end method

.method public getStringMessage()Ljava/lang/String;
    .registers 2

    .prologue
    .line 56
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushStringMessage;->stringMessage:Ljava/lang/String;

    return-object v0
.end method

.method public setStringMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "stringMessage"    # Ljava/lang/String;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/qinggan/tsp/push/PushStringMessage;->stringMessage:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushStringMessage{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushStringMessage;->type:Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", stringMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/tsp/push/PushStringMessage;->stringMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-super {p0}, Lcom/pateo/tsp/push/PushObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 30
    invoke-super {p0, p1, p2}, Lcom/pateo/tsp/push/PushObject;->writeToParcel(Landroid/os/Parcel;I)V

    .line 31
    iget-object v0, p0, Lcom/qinggan/tsp/push/PushStringMessage;->stringMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 32
    return-void
.end method
