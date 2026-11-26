.class public interface abstract Lcom/pateo/fci/PushService;
.super Ljava/lang/Object;
.source "PushService.java"


# virtual methods
.method public abstract pushMessage(Lretrofit/mime/TypedInput;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/push/PushResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/pushmessage/{vin}/{date}"
    .end annotation
.end method

.method public abstract pushMessage(Lretrofit/mime/TypedInput;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/push/PushResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/pushmessage/{vin}/{date}"
    .end annotation
.end method

.method public abstract pushPoi(Lretrofit/mime/TypedInput;Ljava/lang/String;Ljava/lang/String;)Lcom/pateo/fci/models/push/PushResponse;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/pushpoi/{vin}/{date}"
    .end annotation
.end method

.method public abstract pushPoi(Lretrofit/mime/TypedInput;Ljava/lang/String;Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "vin"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "date"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/push/PushResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/pushpoi/{vin}/{date}"
    .end annotation
.end method
