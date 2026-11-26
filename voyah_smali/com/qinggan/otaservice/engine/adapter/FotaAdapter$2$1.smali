.class Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;
.super Ljava/lang/Object;
.source "FotaAdapter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;->onMessageArrived(Lcom/qinggan/tsp/push/OtaPushMessage;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;

.field final synthetic val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;Lcom/qinggan/tsp/push/OtaPushMessage;)V
    .registers 3
    .param p1, "this$1"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;

    iput-object p2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 12

    .prologue
    .line 116
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    invoke-virtual {v8}, Lcom/qinggan/tsp/push/OtaPushMessage;->getPushType()I

    move-result v3

    .line 117
    .local v3, "pushType":I
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "------------< push callback >-----pushType: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;->val$pushMessage:Lcom/qinggan/tsp/push/OtaPushMessage;

    invoke-virtual {v8}, Lcom/qinggan/tsp/push/OtaPushMessage;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "pushBody":Ljava/lang/String;
    if-eqz v2, :cond_7c

    const/4 v8, 0x1

    if-ne v3, v8, :cond_7c

    .line 121
    :try_start_2b
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 122
    .local v1, "jsonBody":Lorg/json/JSONObject;
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pushBody: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v8, "upgradeMode"

    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v7

    .line 125
    .local v7, "upgradeMode":I
    sget v8, Lcom/qinggan/otaservice/common/Constant;->FOTA_UPGRADE_MODE_SILENCE:I

    if-eq v7, v8, :cond_7d

    sget v8, Lcom/qinggan/otaservice/common/Constant;->FOTA_UPGRADE_MODE_COMMON:I

    if-eq v7, v8, :cond_7d

    .line 127
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "[OTAPush] upgradeMode: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " not support"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 155
    .end local v1    # "jsonBody":Lorg/json/JSONObject;
    .end local v7    # "upgradeMode":I
    :cond_7c
    :goto_7c
    return-void

    .line 133
    .restart local v1    # "jsonBody":Lorg/json/JSONObject;
    .restart local v7    # "upgradeMode":I
    :cond_7d
    const-string v8, "softwareList"

    .line 134
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    .line 135
    .local v6, "softwareList":Lorg/json/JSONArray;
    if-eqz v6, :cond_7c

    .line 136
    const/4 v8, 0x0

    invoke-virtual {v6, v8}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    .line 137
    .local v5, "software":Lorg/json/JSONObject;
    new-instance v4, Lcom/qinggan/otaservice/common/PushVersionInfo;

    invoke-direct {v4}, Lcom/qinggan/otaservice/common/PushVersionInfo;-><init>()V

    .line 138
    .local v4, "pushVersionInfo":Lcom/qinggan/otaservice/common/PushVersionInfo;
    const-string v8, "softwareVersionNo"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/qinggan/otaservice/common/PushVersionInfo;->setTargetVerNo(Ljava/lang/String;)V

    .line 139
    const-string v8, "releaseDate"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/qinggan/otaservice/common/PushVersionInfo;->setReleaseDate(Ljava/lang/String;)V

    .line 140
    const-string v8, "softwareCode"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/qinggan/otaservice/common/PushVersionInfo;->setTargetSoftware(Ljava/lang/String;)V

    .line 141
    const-string v8, "releaseDesc"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/qinggan/otaservice/common/PushVersionInfo;->setReleaseDesc(Ljava/lang/String;)V

    .line 142
    const-string v8, "softwarePkgSize"

    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Lcom/qinggan/otaservice/common/PushVersionInfo;->setUpdateSize(J)V

    .line 143
    invoke-virtual {v4, v7}, Lcom/qinggan/otaservice/common/PushVersionInfo;->setUpgradeMode(I)V

    .line 145
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;

    iget-object v8, v8, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;
    invoke-static {v8}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$600(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    move-result-object v8

    if-eqz v8, :cond_7c

    .line 147
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "PushVesionInfo: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v4}, Lcom/qinggan/otaservice/common/PushVersionInfo;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    iget-object v8, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2$1;->this$1:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;

    iget-object v8, v8, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$2;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mListener:Lcom/qinggan/otaservice/engine/ServerAdapterListener;
    invoke-static {v8}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$600(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Lcom/qinggan/otaservice/engine/ServerAdapterListener;

    move-result-object v8

    invoke-interface {v8, v4}, Lcom/qinggan/otaservice/engine/ServerAdapterListener;->onNewVersionNotify(Lcom/qinggan/otaservice/common/PushVersionInfo;)V
    :try_end_f2
    .catch Lorg/json/JSONException; {:try_start_2b .. :try_end_f2} :catch_f3

    goto :goto_7c

    .line 151
    .end local v1    # "jsonBody":Lorg/json/JSONObject;
    .end local v4    # "pushVersionInfo":Lcom/qinggan/otaservice/common/PushVersionInfo;
    .end local v5    # "software":Lorg/json/JSONObject;
    .end local v6    # "softwareList":Lorg/json/JSONArray;
    .end local v7    # "upgradeMode":I
    :catch_f3
    move-exception v0

    .line 152
    .local v0, "e":Lorg/json/JSONException;
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v8

    const-string v9, "[OTAPush] Msg Parse Error!"

    invoke-static {v8, v9}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_7c
.end method
