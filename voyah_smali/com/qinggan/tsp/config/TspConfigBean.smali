.class public Lcom/qinggan/tsp/config/TspConfigBean;
.super Ljava/lang/Object;
.source "TspConfigBean.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/tsp/config/TspConfigBean$TspType;
    }
.end annotation


# instance fields
.field private connectTimeout:I

.field private headers:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private hostUrl:Ljava/lang/String;

.field private hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field private readTimeout:I

.field private sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private tspType:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .registers 4
    .param p1, "tspType"    # I
    .param p2, "hostUrl"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    const/16 v0, 0x1e

    iput v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->readTimeout:I

    .line 31
    const/4 v0, 0x5

    iput v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->connectTimeout:I

    .line 34
    iput p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->tspType:I

    .line 35
    iput-object p2, p0, Lcom/qinggan/tsp/config/TspConfigBean;->hostUrl:Ljava/lang/String;

    .line 36
    return-void
.end method


# virtual methods
.method public clone()Lcom/qinggan/tsp/config/TspConfigBean;
    .registers 5

    .prologue
    .line 97
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v2

    .line 98
    .local v2, "obj":Ljava/lang/Object;
    if-eqz v2, :cond_10

    instance-of v3, v2, Lcom/qinggan/tsp/config/TspConfigBean;

    if-eqz v3, :cond_10

    .line 99
    move-object v0, v2

    check-cast v0, Lcom/qinggan/tsp/config/TspConfigBean;

    move-object v1, v0
    :try_end_e
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_e} :catch_f

    .line 104
    .end local v2    # "obj":Ljava/lang/Object;
    :goto_e
    return-object v1

    .line 102
    :catch_f
    move-exception v3

    .line 104
    :cond_10
    const/4 v1, 0x0

    goto :goto_e
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 12
    invoke-virtual {p0}, Lcom/qinggan/tsp/config/TspConfigBean;->clone()Lcom/qinggan/tsp/config/TspConfigBean;

    move-result-object v0

    return-object v0
.end method

.method public getConnectTimeout()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->connectTimeout:I

    return v0
.end method

.method public getHeaders()Ljava/util/LinkedHashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->headers:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public getHostUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->hostUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getHostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public getReadTimeout()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->readTimeout:I

    return v0
.end method

.method public getSslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 63
    iget-object v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public getTspType()I
    .registers 2

    .prologue
    .line 47
    iget v0, p0, Lcom/qinggan/tsp/config/TspConfigBean;->tspType:I

    return v0
.end method

.method public setConnectTimeout(I)V
    .registers 2
    .param p1, "connectTimeout"    # I

    .prologue
    .line 83
    iput p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->connectTimeout:I

    .line 84
    return-void
.end method

.method public setHeaders(Ljava/util/LinkedHashMap;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "headers":Ljava/util/LinkedHashMap;, "Ljava/util/LinkedHashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->headers:Ljava/util/LinkedHashMap;

    .line 60
    return-void
.end method

.method public setHostUrl(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostUrl"    # Ljava/lang/String;

    .prologue
    .line 43
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->hostUrl:Ljava/lang/String;

    .line 44
    return-void
.end method

.method public setHostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)V
    .registers 2
    .param p1, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;

    .prologue
    .line 91
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 92
    return-void
.end method

.method public setReadTimeout(I)V
    .registers 2
    .param p1, "readTimeout"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->readTimeout:I

    .line 76
    return-void
.end method

.method public setSslSocketFactory(Ljavax/net/ssl/SSLSocketFactory;)V
    .registers 2
    .param p1, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;

    .prologue
    .line 67
    iput-object p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 68
    return-void
.end method

.method public setTspType(I)V
    .registers 2
    .param p1, "tspType"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/qinggan/tsp/config/TspConfigBean;->tspType:I

    .line 52
    return-void
.end method
