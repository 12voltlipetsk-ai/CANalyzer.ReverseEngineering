.class interface abstract Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$YeswayHttpAdapter;
.super Ljava/lang/Object;
.source "YeswayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "YeswayHttpAdapter"
.end annotation


# static fields
.field public static final URL:Ljava/lang/String; = "http://125.208.10.220"


# virtual methods
.method public abstract searchUpdate(Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchResponse;
    .param p1    # Lcom/qinggan/otaservice/engine/adapter/YeswayAdapter$SearchRequest;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "tuid"
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "appkey"
        .end annotation
    .end param
    .param p4    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "timestamp"
        .end annotation
    .end param
    .param p5    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Header;
            value = "sign"
        .end annotation
    .end param
    .annotation runtime Lretrofit2/http/POST;
        value = "/tms/version/get"
    .end annotation
.end method
