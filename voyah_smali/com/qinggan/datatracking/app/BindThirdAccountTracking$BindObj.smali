.class public Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;
.super Ljava/lang/Object;
.source "BindThirdAccountTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/BindThirdAccountTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BindObj"
.end annotation


# instance fields
.field private thirdpart_platformid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getThirdpart_platformid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 32
    iget-object v0, p0, Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;->thirdpart_platformid:Ljava/lang/String;

    return-object v0
.end method

.method public setThirdpart_platformid(Ljava/lang/String;)V
    .registers 2
    .param p1, "thirdpart_platformid"    # Ljava/lang/String;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/qinggan/datatracking/app/BindThirdAccountTracking$BindObj;->thirdpart_platformid:Ljava/lang/String;

    .line 37
    return-void
.end method
