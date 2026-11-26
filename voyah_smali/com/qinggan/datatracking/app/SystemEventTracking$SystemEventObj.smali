.class public Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;
.super Ljava/lang/Object;
.source "SystemEventTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/SystemEventTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemEventObj"
.end annotation


# instance fields
.field private context:Ljava/lang/String;

.field private pageId:Ljava/lang/String;

.field private pageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->context:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 53
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->context:Ljava/lang/String;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getPageName()Ljava/lang/String;
    .registers 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->pageName:Ljava/lang/String;

    return-object v0
.end method

.method public setContext(Ljava/lang/String;)V
    .registers 2
    .param p1, "context"    # Ljava/lang/String;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->context:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public setPageId(Ljava/lang/String;)V
    .registers 2
    .param p1, "pageId"    # Ljava/lang/String;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->pageId:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public setPageName(Ljava/lang/String;)V
    .registers 2
    .param p1, "pageName"    # Ljava/lang/String;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SystemEventTracking$SystemEventObj;->pageName:Ljava/lang/String;

    .line 50
    return-void
.end method
