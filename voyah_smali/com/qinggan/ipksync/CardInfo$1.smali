.class final Lcom/qinggan/ipksync/CardInfo$1;
.super Ljava/lang/Object;
.source "CardInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/ipksync/CardInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qinggan/ipksync/CardInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/ipksync/CardInfo;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 49
    invoke-static {}, Lcom/qinggan/ipksync/CardInfo;->values()[Lcom/qinggan/ipksync/CardInfo;

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    aget-object v0, v1, v2

    .line 50
    .local v0, "type":Lcom/qinggan/ipksync/CardInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/ipksync/CardInfo;->value:I

    .line 52
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/qinggan/ipksync/CardInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/ipksync/CardInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/ipksync/CardInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 57
    new-array v0, p1, [Lcom/qinggan/ipksync/CardInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lcom/qinggan/ipksync/CardInfo$1;->newArray(I)[Lcom/qinggan/ipksync/CardInfo;

    move-result-object v0

    return-object v0
.end method
