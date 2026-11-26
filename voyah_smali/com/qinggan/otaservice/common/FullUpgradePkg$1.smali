.class final Lcom/qinggan/otaservice/common/FullUpgradePkg$1;
.super Ljava/lang/Object;
.source "FullUpgradePkg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/common/FullUpgradePkg;
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
        "Lcom/qinggan/otaservice/common/FullUpgradePkg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 33
    new-instance v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;

    invoke-direct {v0}, Lcom/qinggan/otaservice/common/FullUpgradePkg;-><init>()V

    .line 34
    .local v0, "pkg":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    # invokes: Lcom/qinggan/otaservice/common/FullUpgradePkg;->readFromParce(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Lcom/qinggan/otaservice/common/FullUpgradePkg;->access$000(Lcom/qinggan/otaservice/common/FullUpgradePkg;Landroid/os/Parcel;)V

    .line 35
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/qinggan/otaservice/common/FullUpgradePkg$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 39
    new-array v0, p1, [Lcom/qinggan/otaservice/common/FullUpgradePkg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 30
    invoke-virtual {p0, p1}, Lcom/qinggan/otaservice/common/FullUpgradePkg$1;->newArray(I)[Lcom/qinggan/otaservice/common/FullUpgradePkg;

    move-result-object v0

    return-object v0
.end method
