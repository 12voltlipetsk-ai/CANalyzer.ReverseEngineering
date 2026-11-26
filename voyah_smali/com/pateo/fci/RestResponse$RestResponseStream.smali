.class public Lcom/pateo/fci/RestResponse$RestResponseStream;
.super Ljava/lang/Object;
.source "RestResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/fci/RestResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestResponseStream"
.end annotation


# instance fields
.field private body:Lretrofit/mime/TypedInput;

.field final synthetic this$0:Lcom/pateo/fci/RestResponse;


# direct methods
.method public constructor <init>(Lcom/pateo/fci/RestResponse;Lretrofit/mime/TypedInput;)V
    .registers 3
    .param p1, "this$0"    # Lcom/pateo/fci/RestResponse;
    .param p2, "body"    # Lretrofit/mime/TypedInput;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/pateo/fci/RestResponse$RestResponseStream;->this$0:Lcom/pateo/fci/RestResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p2, p0, Lcom/pateo/fci/RestResponse$RestResponseStream;->body:Lretrofit/mime/TypedInput;

    .line 54
    return-void
.end method


# virtual methods
.method public in()Ljava/io/InputStream;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 72
    iget-object v0, p0, Lcom/pateo/fci/RestResponse$RestResponseStream;->body:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->in()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public length()J
    .registers 3

    .prologue
    .line 63
    iget-object v0, p0, Lcom/pateo/fci/RestResponse$RestResponseStream;->body:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public mimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 58
    iget-object v0, p0, Lcom/pateo/fci/RestResponse$RestResponseStream;->body:Lretrofit/mime/TypedInput;

    invoke-interface {v0}, Lretrofit/mime/TypedInput;->mimeType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
