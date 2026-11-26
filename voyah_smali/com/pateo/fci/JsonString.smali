.class public Lcom/pateo/fci/JsonString;
.super Lretrofit/mime/TypedString;
.source "JsonString.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "body"    # Ljava/lang/String;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lretrofit/mime/TypedString;-><init>(Ljava/lang/String;)V

    .line 8
    return-void
.end method


# virtual methods
.method public mimeType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 12
    const-string v0, "application/json"

    return-object v0
.end method
