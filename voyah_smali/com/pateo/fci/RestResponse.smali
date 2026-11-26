.class public Lcom/pateo/fci/RestResponse;
.super Ljava/lang/Object;
.source "RestResponse.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pateo/fci/RestResponse$RestResponseStream;
    }
.end annotation


# instance fields
.field private response:Lretrofit/client/Response;


# direct methods
.method public constructor <init>(Lretrofit/client/Response;)V
    .registers 2
    .param p1, "response"    # Lretrofit/client/Response;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    .line 18
    return-void
.end method

.method private getHeadersStr()Ljava/lang/String;
    .registers 6

    .prologue
    .line 87
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 88
    .local v1, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/pateo/fci/RestResponse;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_29

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pateo/fci/RestHeader;

    .line 89
    .local v0, "header":Lcom/pateo/fci/RestHeader;
    invoke-virtual {v0}, Lcom/pateo/fci/RestHeader;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v0}, Lcom/pateo/fci/RestHeader;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_d

    .line 91
    .end local v0    # "header":Lcom/pateo/fci/RestHeader;
    :cond_29
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public getBody()Lretrofit/mime/TypedInput;
    .registers 2

    .prologue
    .line 46
    iget-object v0, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    invoke-virtual {v0}, Lretrofit/client/Response;->getBody()Lretrofit/mime/TypedInput;

    move-result-object v0

    return-object v0
.end method

.method public getHeaders()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/pateo/fci/RestHeader;",
            ">;"
        }
    .end annotation

    .prologue
    .line 37
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/pateo/fci/RestHeader;>;"
    iget-object v2, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    invoke-virtual {v2}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_24

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 39
    .local v0, "header":Lretrofit/client/Header;
    new-instance v3, Lcom/pateo/fci/RestHeader;

    invoke-direct {v3, v0}, Lcom/pateo/fci/RestHeader;-><init>(Lretrofit/client/Header;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 41
    .end local v0    # "header":Lretrofit/client/Header;
    :cond_24
    return-object v1
.end method

.method public getReason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    invoke-virtual {v0}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()I
    .registers 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    invoke-virtual {v0}, Lretrofit/client/Response;->getStatus()I

    move-result v0

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 22
    iget-object v0, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    invoke-virtual {v0}, Lretrofit/client/Response;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 78
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RestResponse{response="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    .line 79
    invoke-virtual {v1}, Lretrofit/client/Response;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/pateo/fci/RestResponse;->response:Lretrofit/client/Response;

    invoke-virtual {v1}, Lretrofit/client/Response;->getHeaders()Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 81
    invoke-direct {p0}, Lcom/pateo/fci/RestResponse;->getHeadersStr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    return-object v0
.end method
