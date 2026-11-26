.class public Lcom/qinggan/otaservice/engine/ServerAdapterFactory;
.super Ljava/lang/Object;
.source "ServerAdapterFactory.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAdapter(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/ServerAdapter;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    const-string v1, "ro.qg.ota_vendor"

    invoke-static {v1}, Lcom/qinggan/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, "vendor":Ljava/lang/String;
    if-eqz v0, :cond_16

    const-string v1, "95"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 15
    new-instance v1, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;-><init>(Landroid/content/Context;)V

    .line 18
    :goto_15
    return-object v1

    :cond_16
    new-instance v1, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    invoke-direct {v1, p0}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;-><init>(Landroid/content/Context;)V

    goto :goto_15
.end method
