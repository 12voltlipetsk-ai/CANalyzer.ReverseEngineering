.class final Lcom/qinggan/otaservice/common/PatchUpgradePkg$1;
.super Ljava/lang/Object;
.source "PatchUpgradePkg.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/common/PatchUpgradePkg;
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
        "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 34
    new-instance v0, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    invoke-direct {v0}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;-><init>()V

    .line 35
    .local v0, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    # invokes: Lcom/qinggan/otaservice/common/PatchUpgradePkg;->readFromParce(Landroid/os/Parcel;)V
    invoke-static {v0, p1}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->access$000(Lcom/qinggan/otaservice/common/PatchUpgradePkg;Landroid/os/Parcel;)V

    .line 36
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/qinggan/otaservice/common/PatchUpgradePkg$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 40
    new-array v0, p1, [Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 31
    invoke-virtual {p0, p1}, Lcom/qinggan/otaservice/common/PatchUpgradePkg$1;->newArray(I)[Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    move-result-object v0

    return-object v0
.end method
