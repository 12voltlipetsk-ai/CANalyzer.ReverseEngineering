.class public abstract Lcom/qinggan/tsp/restmiddle/RestCallback;
.super Ljava/lang/Object;
.source "RestCallback.java"

# interfaces
.implements Lretrofit2/Callback;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lretrofit2/Callback",
        "<TT;>;"
    }
.end annotation


# static fields
.field public static final ACTIONKICKEDOUT:Ljava/lang/String; = "com.qinggan.token.expired_gwm"


# instance fields
.field public TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 19
    .local p0, "this":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const-class v0, Lcom/qinggan/tsp/restmiddle/RestCallback;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public abstract failure(Lcom/qinggan/tsp/restmiddle/RestError;)V
.end method

.method public onFailure(Lretrofit2/Call;Ljava/lang/Throwable;)V
    .registers 7
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    if-eqz p2, :cond_33

    .line 78
    new-instance v0, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-direct {v0}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 79
    .local v0, "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    iget-object v1, p0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure error= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/restmiddle/RestError;->setMessage(Ljava/lang/String;)V

    .line 81
    sget-object v1, Lcom/qinggan/tsp/restmiddle/RestError$Kind;->NETWORK:Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    invoke-virtual {v0, v1}, Lcom/qinggan/tsp/restmiddle/RestError;->setKind(Lcom/qinggan/tsp/restmiddle/RestError$Kind;)V

    .line 82
    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/restmiddle/RestCallback;->failure(Lcom/qinggan/tsp/restmiddle/RestError;)V

    .line 87
    .end local v0    # "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    :goto_32
    return-void

    .line 84
    :cond_33
    iget-object v1, p0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "failure"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    new-instance v1, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-direct {v1}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    invoke-virtual {p0, v1}, Lcom/qinggan/tsp/restmiddle/RestCallback;->failure(Lcom/qinggan/tsp/restmiddle/RestError;)V

    goto :goto_32
.end method

.method public onResponse(Lretrofit2/Call;Lretrofit2/Response;)V
    .registers 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Call",
            "<TT;>;",
            "Lretrofit2/Response",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 29
    .local p0, "this":Lcom/qinggan/tsp/restmiddle/RestCallback;, "Lcom/qinggan/tsp/restmiddle/RestCallback<TT;>;"
    .local p1, "call":Lretrofit2/Call;, "Lretrofit2/Call<TT;>;"
    .local p2, "response":Lretrofit2/Response;, "Lretrofit2/Response<TT;>;"
    new-instance v10, Lcom/qinggan/tsp/restmiddle/RestResponse;

    move-object/from16 v0, p2

    invoke-direct {v10, v0}, Lcom/qinggan/tsp/restmiddle/RestResponse;-><init>(Lretrofit2/Response;)V

    .line 30
    .local v10, "restResponse":Lcom/qinggan/tsp/restmiddle/RestResponse;
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v1

    .line 31
    .local v1, "data":Ljava/lang/Object;, "TT;"
    if-eqz v1, :cond_13

    .line 32
    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v10}, Lcom/qinggan/tsp/restmiddle/RestCallback;->success(Ljava/lang/Object;Lcom/qinggan/tsp/restmiddle/RestResponse;)V

    .line 73
    :cond_12
    :goto_12
    return-void

    .line 36
    :cond_13
    :try_start_13
    invoke-virtual/range {p2 .. p2}, Lretrofit2/Response;->errorBody()Lokhttp3/ResponseBody;

    move-result-object v7

    .line 37
    .local v7, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v7, :cond_12

    .line 39
    new-instance v9, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-direct {v9}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 40
    .local v9, "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    invoke-virtual {v7}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/qinggan/tsp/restmiddle/RestError;->setMessage(Ljava/lang/String;)V

    .line 41
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "restError getCode: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v9}, Lcom/qinggan/tsp/restmiddle/RestError;->getCode()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    invoke-virtual {v9}, Lcom/qinggan/tsp/restmiddle/RestError;->getCode()I

    move-result v3

    .line 43
    .local v3, "errorCode":I
    const v13, 0x18af2

    if-ne v3, v13, :cond_65

    sget-object v13, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    if-eqz v13, :cond_65

    .line 44
    new-instance v5, Landroid/content/Intent;

    const-string v13, "com.qinggan.token.expired_gwm"

    invoke-direct {v5, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 45
    .local v5, "kickedOutIntent":Landroid/content/Intent;
    sget-object v13, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 46
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    const-string v14, "HuToken invalid sendBroadcast!"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    .end local v5    # "kickedOutIntent":Landroid/content/Intent;
    :cond_65
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/qinggan/tsp/restmiddle/RestCallback;->failure(Lcom/qinggan/tsp/restmiddle/RestError;)V

    .line 49
    invoke-virtual {v9}, Lcom/qinggan/tsp/restmiddle/RestError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_12

    .line 50
    new-instance v6, Lorg/json/JSONObject;

    invoke-virtual {v9}, Lcom/qinggan/tsp/restmiddle/RestError;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v6, v13}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 51
    .local v6, "object":Lorg/json/JSONObject;
    const-string v13, "statusCode"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    .line 52
    .local v12, "tspStatusCode":Ljava/lang/String;
    const-string v13, "errorCode"

    invoke-virtual {v6, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v11

    .line 54
    .local v11, "tspErrorCode":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v13

    const-string v14, "tokenStatus"

    invoke-virtual {v13, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    .line 55
    .local v4, "hasTokenStatus":Z
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "OkHttp, RestCallback, tspStatusCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", tspErrorCode = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ", --> hasTokenStatus = "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const-string v13, "11005302"

    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e9

    const-string v13, "11005301"

    .line 57
    invoke-static {v12, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e9

    const-string v13, "11005302"

    .line 58
    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_e9

    const-string v13, "11005301"

    .line 59
    invoke-static {v11, v13}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_12

    :cond_e9
    if-nez v4, :cond_12

    .line 60
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/qinggan/tsp/restmiddle/RestCallback;->TAG:Ljava/lang/String;

    const-string v14, "OkHttp, RestCallback sendBroadCast >> RESPONSEERROR"

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    new-instance v8, Landroid/content/Intent;

    const-string v13, "com.qinggan.tsp.response.error"

    invoke-direct {v8, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 62
    .local v8, "responseErrorIntent":Landroid/content/Intent;
    const-string v13, "com.qinggan.app.login"

    invoke-virtual {v8, v13}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    sget-object v13, Lcom/qinggan/tsp/TspManager;->mContext:Landroid/content/Context;

    invoke-virtual {v13, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V
    :try_end_105
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_105} :catch_107

    goto/16 :goto_12

    .line 67
    .end local v3    # "errorCode":I
    .end local v4    # "hasTokenStatus":Z
    .end local v6    # "object":Lorg/json/JSONObject;
    .end local v7    # "responseBody":Lokhttp3/ResponseBody;
    .end local v8    # "responseErrorIntent":Landroid/content/Intent;
    .end local v9    # "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    .end local v11    # "tspErrorCode":Ljava/lang/String;
    .end local v12    # "tspStatusCode":Ljava/lang/String;
    :catch_107
    move-exception v2

    .line 68
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    new-instance v9, Lcom/qinggan/tsp/restmiddle/RestError;

    invoke-direct {v9}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 70
    .restart local v9    # "restError":Lcom/qinggan/tsp/restmiddle/RestError;
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/qinggan/tsp/restmiddle/RestError;->setMessage(Ljava/lang/String;)V

    .line 71
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Lcom/qinggan/tsp/restmiddle/RestCallback;->failure(Lcom/qinggan/tsp/restmiddle/RestError;)V

    goto/16 :goto_12
.end method

.method public abstract success(Ljava/lang/Object;Lcom/qinggan/tsp/restmiddle/RestResponse;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/qinggan/tsp/restmiddle/RestResponse;",
            ")V"
        }
    .end annotation
.end method
