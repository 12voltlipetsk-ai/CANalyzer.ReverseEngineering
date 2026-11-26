.class public Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;
.super Ljava/lang/Object;
.source "NewsTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/NewsTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NewsObj"
.end annotation


# instance fields
.field private expand:Ljava/lang/String;

.field private newscategary:Ljava/lang/String;

.field private newscategaryid:Ljava/lang/String;

.field private newsheadline:Ljava/lang/String;

.field private newsid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getNewscategary()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newscategary:Ljava/lang/String;

    return-object v0
.end method

.method public getNewscategaryid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newscategaryid:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsheadline()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newsheadline:Ljava/lang/String;

    return-object v0
.end method

.method public getNewsid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newsid:Ljava/lang/String;

    return-object v0
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->expand:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setNewscategary(Ljava/lang/String;)V
    .registers 2
    .param p1, "newscategary"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newscategary:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setNewscategaryid(Ljava/lang/String;)V
    .registers 2
    .param p1, "newscategaryid"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newscategaryid:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setNewsheadline(Ljava/lang/String;)V
    .registers 2
    .param p1, "newsheadline"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newsheadline:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setNewsid(Ljava/lang/String;)V
    .registers 2
    .param p1, "newsid"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qinggan/datatracking/app/NewsTracking$NewsObj;->newsid:Ljava/lang/String;

    .line 72
    return-void
.end method
