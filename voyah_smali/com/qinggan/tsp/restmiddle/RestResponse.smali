.class public Lcom/qinggan/tsp/restmiddle/RestResponse;
.super Ljava/lang/Object;
.source "RestResponse.java"


# instance fields
.field private response:Lretrofit2/Response;


# direct methods
.method public constructor <init>(Lretrofit2/Response;)V
    .registers 2
    .param p1, "response"    # Lretrofit2/Response;

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/qinggan/tsp/restmiddle/RestResponse;->response:Lretrofit2/Response;

    .line 12
    return-void
.end method

.method private getHeadersStr()Ljava/lang/String;
    .registers 3

    .prologue
    .line 82
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 86
    .local v0, "sb":Ljava/lang/StringBuffer;
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    const-string v0, ""

    return-object v0
.end method
