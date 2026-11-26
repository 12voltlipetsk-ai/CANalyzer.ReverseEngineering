.class public Lcom/pateo/fci/RestHeader;
.super Ljava/lang/Object;
.source "RestHeader.java"


# instance fields
.field private header:Lretrofit/client/Header;


# direct methods
.method public constructor <init>(Lretrofit/client/Header;)V
    .registers 2
    .param p1, "header"    # Lretrofit/client/Header;

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/pateo/fci/RestHeader;->header:Lretrofit/client/Header;

    .line 10
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 13
    iget-object v0, p0, Lcom/pateo/fci/RestHeader;->header:Lretrofit/client/Header;

    invoke-virtual {v0}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    .prologue
    .line 17
    iget-object v0, p0, Lcom/pateo/fci/RestHeader;->header:Lretrofit/client/Header;

    invoke-virtual {v0}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
