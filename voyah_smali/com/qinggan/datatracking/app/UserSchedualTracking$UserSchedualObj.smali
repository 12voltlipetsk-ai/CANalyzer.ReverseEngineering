.class public Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;
.super Ljava/lang/Object;
.source "UserSchedualTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/UserSchedualTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserSchedualObj"
.end annotation


# instance fields
.field private expand:Ljava/lang/String;


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
    .line 35
    iget-object v0, p0, Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/qinggan/datatracking/app/UserSchedualTracking$UserSchedualObj;->expand:Ljava/lang/String;

    .line 40
    return-void
.end method
