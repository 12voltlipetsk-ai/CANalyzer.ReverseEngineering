.class Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$4;
.super Ljava/lang/Object;
.source "FotaAdapter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->sort(Ljava/util/List;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 519
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$4;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;)I
    .registers 5
    .param p1, "patchProfile"    # Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;
    .param p2, "patchProfile2"    # Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    .prologue
    .line 523
    if-eqz p1, :cond_4

    if-nez p2, :cond_6

    .line 524
    :cond_4
    const/4 v0, 0x0

    .line 526
    :goto_5
    return v0

    :cond_6
    iget-object v0, p1, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->targetVersionNo:Ljava/lang/String;

    iget-object v1, p2, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;->targetVersionNo:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_5
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 519
    check-cast p1, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    check-cast p2, Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;

    invoke-virtual {p0, p1, p2}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$4;->compare(Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;Lcom/qinggan/tsp/models/Update/fota/VersionCheckResopnse$PatchPkgInfo;)I

    move-result v0

    return v0
.end method
