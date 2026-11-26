.class Lcom/pateo/fci/FCIAPI$1;
.super Ljava/lang/Object;
.source "FCIAPI.java"

# interfaces
.implements Lretrofit/RequestInterceptor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pateo/fci/FCIAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pateo/fci/FCIAPI;


# direct methods
.method constructor <init>(Lcom/pateo/fci/FCIAPI;)V
    .registers 2
    .param p1, "this$0"    # Lcom/pateo/fci/FCIAPI;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/pateo/fci/FCIAPI$1;->this$0:Lcom/pateo/fci/FCIAPI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lretrofit/RequestInterceptor$RequestFacade;)V
    .registers 4
    .param p1, "request"    # Lretrofit/RequestInterceptor$RequestFacade;

    .prologue
    .line 102
    const-string v0, "Accept"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "Content-Type"

    const-string v1, "application/json"

    invoke-interface {p1, v0, v1}, Lretrofit/RequestInterceptor$RequestFacade;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    return-void
.end method
