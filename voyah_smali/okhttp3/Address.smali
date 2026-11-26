.class public final Lokhttp3/Address;
.super Ljava/lang/Object;
.source "Address.java"


# instance fields
.field final certificatePinner:Lokhttp3/CertificatePinner;

.field final connectionSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation
.end field

.field final dns:Lokhttp3/Dns;

.field final hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

.field final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation
.end field

.field final proxy:Ljava/net/Proxy;

.field final proxyAuthenticator:Lokhttp3/Authenticator;

.field final proxySelector:Ljava/net/ProxySelector;

.field final socketFactory:Ljavax/net/SocketFactory;

.field final sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field final url:Lokhttp3/HttpUrl;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILokhttp3/Dns;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lokhttp3/CertificatePinner;Lokhttp3/Authenticator;Ljava/net/Proxy;Ljava/util/List;Ljava/util/List;Ljava/net/ProxySelector;)V
    .registers 15
    .param p1, "uriHost"    # Ljava/lang/String;
    .param p2, "uriPort"    # I
    .param p3, "dns"    # Lokhttp3/Dns;
    .param p4, "socketFactory"    # Ljavax/net/SocketFactory;
    .param p5, "sslSocketFactory"    # Ljavax/net/ssl/SSLSocketFactory;
    .param p6, "hostnameVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p7, "certificatePinner"    # Lokhttp3/CertificatePinner;
    .param p8, "proxyAuthenticator"    # Lokhttp3/Authenticator;
    .param p9, "proxy"    # Ljava/net/Proxy;
    .param p12, "proxySelector"    # Ljava/net/ProxySelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Lokhttp3/Dns;",
            "Ljavax/net/SocketFactory;",
            "Ljavax/net/ssl/SSLSocketFactory;",
            "Ljavax/net/ssl/HostnameVerifier;",
            "Lokhttp3/CertificatePinner;",
            "Lokhttp3/Authenticator;",
            "Ljava/net/Proxy;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;",
            "Ljava/net/ProxySelector;",
            ")V"
        }
    .end annotation

    .prologue
    .line 53
    .local p10, "protocols":Ljava/util/List;, "Ljava/util/List<Lokhttp3/Protocol;>;"
    .local p11, "connectionSpecs":Ljava/util/List;, "Ljava/util/List<Lokhttp3/ConnectionSpec;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v1, Lokhttp3/HttpUrl$Builder;

    invoke-direct {v1}, Lokhttp3/HttpUrl$Builder;-><init>()V

    if-eqz p5, :cond_28

    const-string v0, "https"

    .line 55
    :goto_c
    invoke-virtual {v1, v0}, Lokhttp3/HttpUrl$Builder;->scheme(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Lokhttp3/HttpUrl$Builder;->host(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0, p2}, Lokhttp3/HttpUrl$Builder;->port(I)Lokhttp3/HttpUrl$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 60
    if-nez p3, :cond_2b

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "dns == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 54
    :cond_28
    const-string v0, "http"

    goto :goto_c

    .line 61
    :cond_2b
    iput-object p3, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    .line 63
    if-nez p4, :cond_37

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "socketFactory == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_37
    iput-object p4, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    .line 66
    if-nez p8, :cond_43

    .line 67
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxyAuthenticator == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_43
    iput-object p8, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 71
    if-nez p10, :cond_4f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "protocols == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_4f
    invoke-static {p10}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 74
    if-nez p11, :cond_5f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "connectionSpecs == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_5f
    invoke-static {p11}, Lokhttp3/internal/Util;->immutableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 77
    if-nez p12, :cond_6f

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "proxySelector == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 78
    :cond_6f
    iput-object p12, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 80
    iput-object p9, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 81
    iput-object p5, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 82
    iput-object p6, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 83
    iput-object p7, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 84
    return-void
.end method


# virtual methods
.method public certificatePinner()Lokhttp3/CertificatePinner;
    .registers 2

    .prologue
    .line 149
    iget-object v0, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    return-object v0
.end method

.method public connectionSpecs()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/ConnectionSpec;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    return-object v0
.end method

.method public dns()Lokhttp3/Dns;
    .registers 2

    .prologue
    .line 96
    iget-object v0, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 153
    instance-of v2, p1, Lokhttp3/Address;

    if-eqz v2, :cond_6d

    move-object v0, p1

    .line 154
    check-cast v0, Lokhttp3/Address;

    .line 155
    .local v0, "that":Lokhttp3/Address;
    iget-object v2, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    iget-object v3, v0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v2, v3}, Lokhttp3/HttpUrl;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    iget-object v3, v0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    iget-object v3, v0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    .line 157
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    iget-object v3, v0, Lokhttp3/Address;->protocols:Ljava/util/List;

    .line 158
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    iget-object v3, v0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    .line 159
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    iget-object v3, v0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    .line 160
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    iget-object v3, v0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    .line 161
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v3, v0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 162
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    iget-object v3, v0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 163
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    iget-object v3, v0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    .line 164
    invoke-static {v2, v3}, Lokhttp3/internal/Util;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    const/4 v1, 0x1

    .line 166
    .end local v0    # "that":Lokhttp3/Address;
    :cond_6d
    return v1
.end method

.method public hashCode()I
    .registers 5

    .prologue
    const/4 v2, 0x0

    .line 170
    const/16 v0, 0x11

    .line 171
    .local v0, "result":I
    iget-object v1, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 172
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Address;->dns:Lokhttp3/Dns;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 173
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 174
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 175
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Address;->connectionSpecs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 176
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int v0, v1, v3

    .line 177
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_76

    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1}, Ljava/net/Proxy;->hashCode()I

    move-result v1

    :goto_49
    add-int v0, v3, v1

    .line 178
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-eqz v1, :cond_78

    iget-object v1, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_57
    add-int v0, v3, v1

    .line 179
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    if-eqz v1, :cond_7a

    iget-object v1, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_65
    add-int v0, v3, v1

    .line 180
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    if-eqz v3, :cond_73

    iget-object v2, p0, Lokhttp3/Address;->certificatePinner:Lokhttp3/CertificatePinner;

    invoke-virtual {v2}, Lokhttp3/CertificatePinner;->hashCode()I

    move-result v2

    :cond_73
    add-int v0, v1, v2

    .line 181
    return v0

    :cond_76
    move v1, v2

    .line 177
    goto :goto_49

    :cond_78
    move v1, v2

    .line 178
    goto :goto_57

    :cond_7a
    move v1, v2

    .line 179
    goto :goto_65
.end method

.method public hostnameVerifier()Ljavax/net/ssl/HostnameVerifier;
    .registers 2

    .prologue
    .line 144
    iget-object v0, p0, Lokhttp3/Address;->hostnameVerifier:Ljavax/net/ssl/HostnameVerifier;

    return-object v0
.end method

.method public protocols()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lokhttp3/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 114
    iget-object v0, p0, Lokhttp3/Address;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public proxy()Ljava/net/Proxy;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    return-object v0
.end method

.method public proxyAuthenticator()Lokhttp3/Authenticator;
    .registers 2

    .prologue
    .line 106
    iget-object v0, p0, Lokhttp3/Address;->proxyAuthenticator:Lokhttp3/Authenticator;

    return-object v0
.end method

.method public proxySelector()Ljava/net/ProxySelector;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    return-object v0
.end method

.method public socketFactory()Ljavax/net/SocketFactory;
    .registers 2

    .prologue
    .line 101
    iget-object v0, p0, Lokhttp3/Address;->socketFactory:Ljavax/net/SocketFactory;

    return-object v0
.end method

.method public sslSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lokhttp3/Address;->sslSocketFactory:Ljavax/net/ssl/SSLSocketFactory;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 185
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Address{"

    .line 186
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    .line 187
    invoke-virtual {v2}, Lokhttp3/HttpUrl;->host()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->port()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 189
    .local v0, "result":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    if-eqz v1, :cond_3e

    .line 190
    const-string v1, ", proxy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->proxy:Ljava/net/Proxy;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    :goto_34
    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    :cond_3e
    const-string v1, ", proxySelector="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lokhttp3/Address;->proxySelector:Ljava/net/ProxySelector;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_34
.end method

.method public url()Lokhttp3/HttpUrl;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lokhttp3/Address;->url:Lokhttp3/HttpUrl;

    return-object v0
.end method
