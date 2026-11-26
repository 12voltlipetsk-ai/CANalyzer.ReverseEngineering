.class public abstract Lcom/pateo/tsp/push/PushObject;
.super Ljava/lang/Object;
.source "PushObject.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/pateo/tsp/push/PushObject;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public type:Lcom/pateo/tsp/push/PushType;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 43
    new-instance v0, Lcom/pateo/tsp/push/PushObject$1;

    invoke-direct {v0}, Lcom/pateo/tsp/push/PushObject$1;-><init>()V

    sput-object v0, Lcom/pateo/tsp/push/PushObject;->CREATOR:Landroid/os/Parcelable$Creator;

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
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public getType()Lcom/pateo/tsp/push/PushType;
    .registers 2

    .prologue
    .line 15
    iget-object v0, p0, Lcom/pateo/tsp/push/PushObject;->type:Lcom/pateo/tsp/push/PushType;

    return-object v0
.end method

.method public setType(Lcom/pateo/tsp/push/PushType;)V
    .registers 2
    .param p1, "type"    # Lcom/pateo/tsp/push/PushType;

    .prologue
    .line 19
    iput-object p1, p0, Lcom/pateo/tsp/push/PushObject;->type:Lcom/pateo/tsp/push/PushType;

    .line 20
    return-void
.end method

.method public setTypeByIndex(I)V
    .registers 3
    .param p1, "index"    # I

    .prologue
    .line 23
    invoke-static {}, Lcom/pateo/tsp/push/PushType;->values()[Lcom/pateo/tsp/push/PushType;

    move-result-object v0

    array-length v0, v0

    if-lt p1, v0, :cond_c

    .line 24
    sget-object v0, Lcom/pateo/tsp/push/PushType;->PUSH_POI:Lcom/pateo/tsp/push/PushType;

    iput-object v0, p0, Lcom/pateo/tsp/push/PushObject;->type:Lcom/pateo/tsp/push/PushType;

    .line 28
    :goto_b
    return-void

    .line 26
    :cond_c
    invoke-static {}, Lcom/pateo/tsp/push/PushType;->values()[Lcom/pateo/tsp/push/PushType;

    move-result-object v0

    aget-object v0, v0, p1

    iput-object v0, p0, Lcom/pateo/tsp/push/PushObject;->type:Lcom/pateo/tsp/push/PushType;

    goto :goto_b
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PushObject{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/tsp/push/PushObject;->type:Lcom/pateo/tsp/push/PushType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

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
    .line 39
    iget-object v0, p0, Lcom/pateo/tsp/push/PushObject;->type:Lcom/pateo/tsp/push/PushType;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 41
    return-void
.end method
