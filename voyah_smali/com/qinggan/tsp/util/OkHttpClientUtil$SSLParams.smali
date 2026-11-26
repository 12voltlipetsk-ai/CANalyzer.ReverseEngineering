.class public Lcom/qinggan/tsp/util/OkHttpClientUtil$SSLParams;
.super Ljava/lang/Object;
.source "OkHttpClientUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/tsp/util/OkHttpClientUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SSLParams"
.end annotation


# instance fields
.field public sslSocketFactoryVerifyCa:Ljavax/net/ssl/SSLSocketFactory;

.field public trustManagerVerifyCa:Ljavax/net/ssl/X509TrustManager;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
