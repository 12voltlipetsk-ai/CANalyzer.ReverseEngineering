.class public Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;
.super Ljava/lang/Object;
.source "PhoneTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/PhoneTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CallTextObj"
.end annotation


# instance fields
.field private calllong:Ljava/lang/String;

.field private expand:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCalllong()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;->calllong:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public setCalllong(Ljava/lang/String;)V
    .registers 2
    .param p1, "calllong"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;->calllong:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qinggan/datatracking/app/PhoneTracking$CallTextObj;->expand:Ljava/lang/String;

    .line 62
    return-void
.end method
