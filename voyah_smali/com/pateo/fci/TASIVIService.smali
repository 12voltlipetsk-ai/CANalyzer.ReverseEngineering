.class public interface abstract Lcom/pateo/fci/TASIVIService;
.super Ljava/lang/Object;
.source "TASIVIService.java"


# virtual methods
.method public abstract getReverseImageConf(Ljava/lang/String;)Lcom/pateo/fci/models/tasivi/ReverseImageConfResponse;
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/GET;
        value = "/getReverseImageConf/{key}"
    .end annotation
.end method

.method public abstract getReverseImageConf(Ljava/lang/String;Lcom/pateo/fci/RestCallback;)V
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit/http/Path;
            value = "key"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/tasivi/ReverseImageConfResponse;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lretrofit/http/GET;
        value = "/getReverseImageConf/{key}"
    .end annotation
.end method
