.class Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;
.super Ljava/lang/Thread;
.source "FotaAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->processUpdate(Lcom/qinggan/otaservice/common/OtaProcessInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

.field final synthetic val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Lcom/qinggan/otaservice/common/OtaProcessInfo;)V
    .registers 3
    .param p1, "this$0"    # Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    .prologue
    .line 337
    iput-object p1, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    iput-object p2, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .prologue
    .line 340
    iget-object v5, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    if-nez v5, :cond_e

    .line 341
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ProcessInfo null"

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    :cond_d
    :goto_d
    return-void

    .line 344
    :cond_e
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processUpdate: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processUpdate taskId "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " taskItemId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-wide v8, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    invoke-virtual {v6, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 348
    :try_start_52
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 349
    .local v2, "item":Lorg/json/JSONObject;
    const-string v5, "objectType"

    const/4 v6, 0x0

    invoke-virtual {v2, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "objectId"

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mVinCode:Ljava/lang/String;
    invoke-static {v7}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$800(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "taskSid"

    sget-wide v8, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskSid:J

    .line 350
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "taskItemSid"

    sget-wide v8, Lcom/qinggan/otaservice/common/SYSCache;->sCachedTaskItemSid:J

    .line 351
    invoke-virtual {v5, v6, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "progressId"

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .line 352
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;->getProgressId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "startTime"

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .line 353
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;->getStartTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "endTime"

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .line 354
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;->getEndTime()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "remark"

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .line 355
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;->getRemark()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "status"

    iget-object v7, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->val$processInfo:Lcom/qinggan/otaservice/common/OtaProcessInfo;

    .line 356
    invoke-virtual {v7}, Lcom/qinggan/otaservice/common/OtaProcessInfo;->getStatus()S

    move-result v7

    invoke-virtual {v5, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 357
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processUpdate is: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 358
    iget-object v5, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mTspManager:Lcom/qinggan/tsp/TspManager;
    invoke-static {v5}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$300(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;)Lcom/qinggan/tsp/TspManager;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/qinggan/tsp/TspManager;->upgradeProcessReport(Lorg/json/JSONObject;)Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;

    move-result-object v4

    .line 359
    .local v4, "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 360
    .local v1, "gson":Lcom/google/gson/Gson;
    invoke-virtual {v1, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 361
    .local v3, "json":Ljava/lang/String;
    # getter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "processUpdate Response is :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 362
    if-eqz v4, :cond_d

    iget-object v5, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->code:Ljava/lang/String;

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 363
    iget-object v5, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    iget-object v6, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->code:Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    # setter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorCode:J
    invoke-static {v5, v6, v7}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$902(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;J)J

    .line 364
    iget-object v5, p0, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter$3;->this$0:Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;

    iget-object v6, v4, Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;->description:Ljava/lang/String;

    # setter for: Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->mErrorMsg:Ljava/lang/String;
    invoke-static {v5, v6}, Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;->access$1002(Lcom/qinggan/otaservice/engine/adapter/FotaAdapter;Ljava/lang/String;)Ljava/lang/String;
    :try_end_11a
    .catch Lorg/json/JSONException; {:try_start_52 .. :try_end_11a} :catch_11c
    .catch Ljava/lang/Exception; {:try_start_52 .. :try_end_11a} :catch_122

    goto/16 :goto_d

    .line 366
    .end local v1    # "gson":Lcom/google/gson/Gson;
    .end local v2    # "item":Lorg/json/JSONObject;
    .end local v3    # "json":Ljava/lang/String;
    .end local v4    # "response":Lcom/qinggan/tsp/models/Update/fota/FotaStatusResponse;
    :catch_11c
    move-exception v0

    .line 367
    .local v0, "e":Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto/16 :goto_d

    .line 368
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_122
    move-exception v0

    .line 369
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_d
.end method
