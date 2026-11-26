.class Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;
.super Ljava/lang/Object;
.source "TspAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;->onMessageArrived(Lcom/qinggan/tsp/push/OtaPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

.field final synthetic val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;Lcom/qinggan/tsp/push/OtaPushMessage;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    .prologue
    .line 105
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    iput-object p2, p0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 19

    .prologue
    .line 109
    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$000()Ljava/lang/String;

    move-result-object v14

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "------------ push callback: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    invoke-virtual {v14}, Lcom/qinggan/tsp/push/OtaPushMessage;->getPushType()I

    move-result v13

    .line 111
    .local v13, "pushType":I
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    invoke-virtual {v14}, Lcom/qinggan/tsp/push/OtaPushMessage;->getMessage()Ljava/lang/String;

    move-result-object v12

    .line 112
    .local v12, "pushBody":Ljava/lang/String;
    if-eqz v12, :cond_115

    const/4 v14, 0x2

    if-ne v13, v14, :cond_115

    .line 114
    :try_start_35
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5, v12}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 115
    .local v5, "jsonBody":Lorg/json/JSONObject;
    const-string v14, "content"

    .line 116
    invoke-virtual {v5, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    .line 117
    .local v6, "jsonContent":Lorg/json/JSONObject;
    const-string v14, "patchProfileList"

    .line 118
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    .line 119
    .local v9, "jsonPatchArray":Lorg/json/JSONArray;
    if-eqz v9, :cond_a4

    .line 120
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v10, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_4e
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v14

    if-ge v4, v14, :cond_9b

    .line 123
    invoke-virtual {v9, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    .line 124
    .local v8, "jsonPatch":Lorg/json/JSONObject;
    new-instance v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;

    invoke-direct {v11}, Lcom/qinggan/otaservice/common/PatchUpgradePkg;-><init>()V

    .line 125
    .local v11, "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    const-string v14, "swAppliedReference"

    .line 126
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->appliedVersion:Ljava/lang/String;

    .line 127
    const-string v14, "releaseNote"

    .line 128
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->features:Ljava/lang/String;

    .line 129
    const-string v14, "swReference"

    .line 130
    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 131
    const-string v14, "fileUrl"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->url:Ljava/lang/String;

    .line 132
    const-string v14, "updateMode"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->type:I

    .line 133
    const-string v14, "swSize"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->size:J

    .line 134
    const-string v14, "checkCode"

    invoke-virtual {v8, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v11, Lcom/qinggan/otaservice/common/PatchUpgradePkg;->checkCode:Ljava/lang/String;

    .line 135
    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 121
    add-int/lit8 v4, v4, 0x1

    goto :goto_4e

    .line 137
    .end local v8    # "jsonPatch":Lorg/json/JSONObject;
    .end local v11    # "pkg":Lcom/qinggan/otaservice/common/PatchUpgradePkg;
    :cond_9b
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    iget-object v14, v14, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mPatchPkgs:Ljava/util/List;
    invoke-static {v14, v10}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$602(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Ljava/util/List;)Ljava/util/List;

    .line 139
    .end local v4    # "i":I
    .end local v10    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/qinggan/otaservice/common/PatchUpgradePkg;>;"
    :cond_a4
    const-string v14, "fullProfile"

    .line 140
    invoke-virtual {v6, v14}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v7

    .line 141
    .local v7, "jsonFull":Lorg/json/JSONObject;
    if-eqz v7, :cond_ea

    .line 142
    new-instance v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;

    invoke-direct {v3}, Lcom/qinggan/otaservice/common/FullUpgradePkg;-><init>()V

    .line 143
    .local v3, "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    const-string v14, "fileUrl"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    .line 144
    const-string v14, "swReference"

    .line 145
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 146
    const-string v14, "releaseNote"

    .line 147
    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    .line 148
    const-string v14, "updateMode"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    .line 149
    const-string v14, "swSize"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v14

    iput-wide v14, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    .line 150
    const-string v14, "checkCode"

    invoke-virtual {v7, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    iput-object v14, v3, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    .line 151
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    iget-object v14, v14, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mFullPkg:Lcom/qinggan/otaservice/common/FullUpgradePkg;
    invoke-static {v14, v3}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$702(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;Lcom/qinggan/otaservice/common/FullUpgradePkg;)Lcom/qinggan/otaservice/common/FullUpgradePkg;

    .line 153
    .end local v3    # "full":Lcom/qinggan/otaservice/common/FullUpgradePkg;
    :cond_ea
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    iget-object v14, v14, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    const-string v15, "timestamp"

    invoke-virtual {v6, v15}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v16

    move-wide/from16 v0, v16

    # setter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mSendTime:J
    invoke-static {v14, v0, v1}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$802(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;J)J
    :try_end_fb
    .catch Lorg/json/JSONException; {:try_start_35 .. :try_end_fb} :catch_116

    .line 158
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    iget-object v14, v14, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;
    invoke-static {v14}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$900(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    move-result-object v14

    if-eqz v14, :cond_115

    .line 159
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;

    iget-object v14, v14, Lcom/qinggan/otaservice/engine/adapter/TspAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/TspAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;
    invoke-static {v14}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$900(Lcom/qinggan/otaservice/engine/adapter/TspAdapter;)Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    move-result-object v14

    const/4 v15, 0x0

    invoke-interface {v14, v15}, Lcom/qinggan/otaservice/engine/ServerAdapterListener;->onNewVersionNotify(Lcom/qinggan/otaservice/common/PushVersionInfo;)V

    .line 162
    .end local v5    # "jsonBody":Lorg/json/JSONObject;
    .end local v6    # "jsonContent":Lorg/json/JSONObject;
    .end local v7    # "jsonFull":Lorg/json/JSONObject;
    .end local v9    # "jsonPatchArray":Lorg/json/JSONArray;
    :cond_115
    :goto_115
    return-void

    .line 154
    :catch_116
    move-exception v2

    .line 155
    .local v2, "e":Lorg/json/JSONException;
    # getter for: Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/TspAdapter;->access$000()Ljava/lang/String;

    move-result-object v14

    const-string v15, "Ota push message parse fail"

    invoke-static {v14, v15}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_115
.end method
