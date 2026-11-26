.class public Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;
.super Ljava/lang/Object;
.source "LoginTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/LoginTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginObj"
.end annotation


# instance fields
.field private logintype:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLogintype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;->logintype:Ljava/lang/String;

    return-object v0
.end method

.method public setLogintype(Ljava/lang/String;)V
    .registers 2
    .param p1, "logintype"    # Ljava/lang/String;

    .prologue
    .line 37
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LoginTracking$LoginObj;->logintype:Ljava/lang/String;

    .line 38
    return-void
.end method
