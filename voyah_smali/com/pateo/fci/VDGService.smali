.class public interface abstract Lcom/pateo/fci/VDGService;
.super Ljava/lang/Object;
.source "VDGService.java"


# virtual methods
.method public abstract getNearbyPlaces(Lretrofit/mime/TypedInput;)Lcom/pateo/fci/models/vdg/NearbyPlaces;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation runtime Lretrofit/http/POST;
        value = "/fuel/getNearbyPlaces"
    .end annotation
.end method

.method public abstract getNearbyPlaces(Lretrofit/mime/TypedInput;Lcom/pateo/fci/RestCallback;)Lcom/pateo/fci/models/vdg/NearbyPlaces;
    .param p1    # Lretrofit/mime/TypedInput;
        .annotation runtime Lretrofit/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit/mime/TypedInput;",
            "Lcom/pateo/fci/RestCallback",
            "<",
            "Lcom/pateo/fci/models/vdg/NearbyPlaces;",
            ">;)",
            "Lcom/pateo/fci/models/vdg/NearbyPlaces;"
        }
    .end annotation

    .annotation runtime Lretrofit/http/POST;
        value = "/fuel/getNearbyPlaces"
    .end annotation
.end method
