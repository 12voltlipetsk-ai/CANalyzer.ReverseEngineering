.class public interface abstract Lcom/qinggan/tsp/service/QGVoicePrint;
.super Ljava/lang/Object;
.source "QGVoicePrint.java"


# static fields
.field public static final AUTHORIZATION_KEY:Ljava/lang/String; = "Authorization"


# virtual methods
.method public abstract saveVoicePrint(Lokhttp3/RequestBody;)Lretrofit2/Call;
    .param p1    # Lokhttp3/RequestBody;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/RequestBody;",
            ")",
            "Lretrofit2/Call",
            "<",
            "Lcom/qinggan/tsp/models/BaseBean;",
            ">;"
        }
    .end annotation

    .annotation runtime Lretrofit2/http/POST;
        value = "/base/user/saveVoiceprint"
    .end annotation
.end method
