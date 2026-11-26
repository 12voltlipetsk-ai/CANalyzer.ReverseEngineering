.class public Lcom/qinggan/otaservice/engine/SettingLastMemory;
.super Ljava/lang/Object;
.source "SettingLastMemory.java"


# static fields
.field private static final LAUNCHER_DEFAULT_PATH:Ljava/lang/String; = "setting_save_path"

.field private static _instance:Lcom/qinggan/otaservice/engine/SettingLastMemory;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDataInterface:Lcom/qinggan/content/XmlOperator;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 19
    const/4 v0, 0x0

    sput-object v0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->_instance:Lcom/qinggan/otaservice/engine/SettingLastMemory;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lcom/qinggan/content/XmlOperator;

    iget-object v1, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mContext:Landroid/content/Context;

    const-string v2, "setting_save_path"

    invoke-direct {v0, v1, v2}, Lcom/qinggan/content/XmlOperator;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    .line 34
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    invoke-virtual {v0}, Lcom/qinggan/content/XmlOperator;->create()Z

    .line 35
    return-void
.end method

.method public static get(Landroid/content/Context;)Lcom/qinggan/otaservice/engine/SettingLastMemory;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 38
    sget-object v0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->_instance:Lcom/qinggan/otaservice/engine/SettingLastMemory;

    if-nez v0, :cond_b

    .line 39
    new-instance v0, Lcom/qinggan/otaservice/engine/SettingLastMemory;

    invoke-direct {v0, p0}, Lcom/qinggan/otaservice/engine/SettingLastMemory;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->_instance:Lcom/qinggan/otaservice/engine/SettingLastMemory;

    .line 40
    :cond_b
    sget-object v0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->_instance:Lcom/qinggan/otaservice/engine/SettingLastMemory;

    return-object v0
.end method


# virtual methods
.method public clearUpgradePkgs()V
    .registers 5

    .prologue
    .line 149
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v1, "setting_save_path"

    const-string v2, "fullPkg"

    const-string v3, "{}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qinggan/content/XmlOperator;->writeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v1, "setting_save_path"

    const-string v2, "patchPkgs"

    const-string v3, "{}"

    invoke-virtual {v0, v1, v2, v3}, Lcom/qinggan/content/XmlOperator;->writeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method public readForceFullUpgrade()Z
    .registers 2

    .prologue
    .line 144
    const/4 v0, 0x0

    return v0
.end method

.method public readFullUpgradePkg()Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .registers 9

    .prologue
    const/4 v4, 0x0

    .line 76
    iget-object v5, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v6, "setting_save_path"

    const-string v7, "fullPkg"

    invoke-virtual {v5, v6, v7, v4}, Lcom/qinggan/content/XmlOperator;->readString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 78
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_54

    .line 81
    :try_start_d
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 82
    .local v2, "object":Lorg/json/JSONObject;
    new-instance v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;

    invoke-direct {v3}, Lcom/qinggan/otaservice/common/FullUpgradePkg;-><init>()V

    .line 83
    .local v3, "p":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    const-string v5, "softwareVersion"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 84
    const-string v5, "url"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    .line 85
    const-string v5, "checkCode"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    .line 86
    const-string v5, "signAlg"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    .line 87
    const-string v5, "signInfo"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    .line 88
    const-string v5, "features"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    .line 89
    const-string v5, "size"

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    iput-wide v6, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J
    :try_end_4f
    .catch Lorg/json/JSONException; {:try_start_d .. :try_end_4f} :catch_50

    .line 96
    .end local v2    # "object":Lorg/json/JSONObject;
    .end local v3    # "p":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    :goto_4f
    return-object v3

    .line 91
    :catch_50
    move-exception v1

    .line 92
    .local v1, "e":Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    .end local v1    # "e":Lorg/json/JSONException;
    :cond_54
    move-object v3, v4

    .line 96
    goto :goto_4f
.end method

.method public readPatchUpgradePkg()Ljava/util/ArrayList;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 44
    iget-object v10, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v11, "setting_save_path"

    const-string v12, "patchPkgs"

    invoke-virtual {v10, v11, v12, v9}, Lcom/qinggan/content/XmlOperator;->readString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "a":Ljava/lang/String;
    if-eqz v0, :cond_76

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 50
    .local v7, "pkg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    :try_start_12
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1, v0}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 51
    .local v1, "array":Lorg/json/JSONArray;
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 52
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1c
    if-ge v3, v4, :cond_77

    .line 53
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 54
    .local v8, "s":Ljava/lang/String;
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v8}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 55
    .local v5, "object":Lorg/json/JSONObject;
    new-instance v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    invoke-direct {v6}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;-><init>()V

    .line 56
    .local v6, "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    const-string v10, "softwareVersion"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 57
    const-string v10, "appliedVersion"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    .line 58
    const-string v10, "url"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    .line 59
    const-string v10, "checkCode"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->checkCode:Ljava/lang/String;

    .line 60
    const-string v10, "signAlg"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signAlg:Ljava/lang/String;

    .line 61
    const-string v10, "signInfo"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signInfo:Ljava/lang/String;

    .line 62
    const-string v10, "features"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    iput-object v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->features:Ljava/lang/String;

    .line 63
    const-string v10, "size"

    invoke-virtual {v5, v10}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v10

    iput-wide v10, v6, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    .line 64
    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_6f
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_6f} :catch_72

    .line 52
    add-int/lit8 v3, v3, 0x1

    goto :goto_1c

    .line 67
    .end local v1    # "array":Lorg/json/JSONArray;
    .end local v3    # "i":I
    .end local v4    # "len":I
    .end local v5    # "object":Lorg/json/JSONObject;
    .end local v6    # "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    .end local v8    # "s":Ljava/lang/String;
    :catch_72
    move-exception v2

    .line 68
    .local v2, "e":Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .end local v2    # "e":Lorg/json/JSONException;
    .end local v7    # "pkg":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    :cond_76
    move-object v7, v9

    .line 72
    :cond_77
    return-object v7
.end method

.method public saveFullPkg(Lcom/qinggan/otaservice/common/FullUpgradePkg;)V
    .registers 8
    .param p1, "fullPkg"    # Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .prologue
    .line 122
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 123
    .local v1, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v2, "softwareVersion"

    iget-object v3, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    const-string v2, "url"

    iget-object v3, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    const-string v2, "checkCode"

    iget-object v3, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v2, "signAlg"

    iget-object v3, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v2, "signInfo"

    iget-object v3, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v2, "features"

    iget-object v3, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v2, "size"

    iget-wide v4, p1, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 131
    .local v0, "i":Lorg/json/JSONObject;
    iget-object v2, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v3, "setting_save_path"

    const-string v4, "fullPkg"

    .line 132
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    .line 131
    invoke-virtual {v2, v3, v4, v5}, Lcom/qinggan/content/XmlOperator;->writeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    return-void
.end method

.method public savePatchUpgradePkg(Ljava/util/List;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/otaservice/common/PatchUpgradePkg;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 100
    .local p1, "pkgs":Ljava/util/List;, "Ljava/util/List<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    if-nez p1, :cond_3

    .line 119
    :goto_2
    return-void

    .line 102
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v4, "pkgsMap":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/json/JSONObject;>;"
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_62

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    .line 104
    .local v3, "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v2, "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v6, "softwareVersion"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    const-string v6, "appliedVersion"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    const-string v6, "url"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    const-string v6, "checkCode"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->checkCode:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v6, "signAlg"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signAlg:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    const-string v6, "signInfo"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->signInfo:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    const-string v6, "features"

    iget-object v7, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->features:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    const-string v6, "size"

    iget-wide v8, v3, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v2, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 114
    .local v1, "i":Lorg/json/JSONObject;
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_c

    .line 116
    .end local v1    # "i":Lorg/json/JSONObject;
    .end local v2    # "item":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3    # "p":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_62
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, v4}, Lorg/json/JSONArray;-><init>(Ljava/util/Collection;)V

    .line 117
    .local v0, "array":Lorg/json/JSONArray;
    iget-object v5, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v6, "setting_save_path"

    const-string v7, "patchPkgs"

    .line 118
    invoke-virtual {v0}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v8

    .line 117
    invoke-virtual {v5, v6, v7, v8}, Lcom/qinggan/content/XmlOperator;->writeString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public setForceFullUpgrade(Z)V
    .registers 6
    .param p1, "force"    # Z

    .prologue
    .line 136
    iget-object v1, p0, Lcom/qinggan/otaservice/engine/SettingLastMemory;->mDataInterface:Lcom/qinggan/content/XmlOperator;

    const-string v2, "setting_save_path"

    const-string v3, "forceFull"

    if-eqz p1, :cond_d

    const/4 v0, 0x1

    :goto_9
    invoke-virtual {v1, v2, v3, v0}, Lcom/qinggan/content/XmlOperator;->writeInt(Ljava/lang/String;Ljava/lang/String;I)V

    .line 138
    return-void

    .line 136
    :cond_d
    const/4 v0, 0x0

    goto :goto_9
.end method
