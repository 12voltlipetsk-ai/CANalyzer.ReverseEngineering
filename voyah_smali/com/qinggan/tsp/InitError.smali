.class public Lcom/qinggan/tsp/InitError;
.super Lcom/qinggan/tsp/restmiddle/RestError;
.source "InitError.java"


# instance fields
.field private errMessage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/qinggan/tsp/restmiddle/RestError$Kind;Ljava/lang/String;)V
    .registers 4
    .param p1, "kind"    # Lcom/qinggan/tsp/restmiddle/RestError$Kind;
    .param p2, "errMessage"    # Ljava/lang/String;

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/InitError;->errMessage:Ljava/lang/String;

    .line 12
    invoke-virtual {p0, p1}, Lcom/qinggan/tsp/InitError;->setKind(Lcom/qinggan/tsp/restmiddle/RestError$Kind;)V

    .line 13
    invoke-virtual {p0, p2}, Lcom/qinggan/tsp/InitError;->setErrMessage(Ljava/lang/String;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Lcom/qinggan/tsp/restmiddle/RestError;)V
    .registers 3
    .param p1, "restError"    # Lcom/qinggan/tsp/restmiddle/RestError;

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/qinggan/tsp/restmiddle/RestError;-><init>()V

    .line 20
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/tsp/InitError;->errMessage:Ljava/lang/String;

    .line 16
    invoke-virtual {p1}, Lcom/qinggan/tsp/restmiddle/RestError;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/InitError;->setMessage(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p1}, Lcom/qinggan/tsp/restmiddle/RestError;->getKind()Lcom/qinggan/tsp/restmiddle/RestError$Kind;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/InitError;->setKind(Lcom/qinggan/tsp/restmiddle/RestError$Kind;)V

    .line 18
    invoke-virtual {p1}, Lcom/qinggan/tsp/restmiddle/RestError;->getResponse()Lcom/qinggan/tsp/restmiddle/RestResponse;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/qinggan/tsp/InitError;->setResponse(Lcom/qinggan/tsp/restmiddle/RestResponse;)V

    .line 19
    return-void
.end method


# virtual methods
.method public getErrMessage()Ljava/lang/String;
    .registers 3

    .prologue
    .line 22
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/qinggan/tsp/InitError;->errMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-super {p0}, Lcom/qinggan/tsp/restmiddle/RestError;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setErrMessage(Ljava/lang/String;)V
    .registers 2
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lcom/qinggan/tsp/InitError;->errMessage:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 31
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "InitError{errMessage=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Lcom/qinggan/tsp/InitError;->getErrMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "} "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 33
    invoke-super {p0}, Lcom/qinggan/tsp/restmiddle/RestError;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    return-object v0
.end method
