.class public Lcom/qinggan/otaservice/OTAApplication;
.super Lcom/qinggan/app/QGApplication;
.source "OTAApplication.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 6
    invoke-direct {p0}, Lcom/qinggan/app/QGApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .registers 2

    .prologue
    .line 10
    invoke-super {p0}, Lcom/qinggan/app/QGApplication;->onCreate()V

    .line 11
    const-string v0, "OTAService"

    invoke-static {v0}, Lcom/qinggan/util/Log;->init(Ljava/lang/String;)V

    .line 12
    return-void
.end method
