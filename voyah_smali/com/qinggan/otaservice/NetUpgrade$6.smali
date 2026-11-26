.class Lcom/qinggan/otaservice/NetUpgrade$6;
.super Ljava/lang/Object;
.source "NetUpgrade.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/NetUpgrade;->setFromServerPushPatch(Ljava/util/List;)V
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
        "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/NetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/NetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/NetUpgrade;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/qinggan/otaservice/NetUpgrade$6;->this$0:Lcom/qinggan/otaservice/NetUpgrade;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/qinggan/otaservice/common/PatchUpgradePkg;Lcom/qinggan/otaservice/common/PatchUpgradePkg;)I
    .registers 5
    .param p1, "patchUpgradePkg"    # Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .param p2, "patchUpgradePkg2"    # Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .prologue
    .line 292
    iget-object v0, p1, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    iget-object v1, p2, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/qinggan/otaservice/common/Tool;->compareCombinedVersionCode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    .prologue
    .line 288
    check-cast p1, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    check-cast p2, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    invoke-virtual {p0, p1, p2}, Lcom/qinggan/otaservice/NetUpgrade$6;->compare(Lcom/qinggan/otaservice/common/PatchUpgradePkg;Lcom/qinggan/otaservice/common/PatchUpgradePkg;)I

    move-result v0

    return v0
.end method
