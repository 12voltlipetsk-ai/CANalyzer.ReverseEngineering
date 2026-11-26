.class public Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;
.super Ljava/lang/Object;
.source "SoftwareUpdateTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/SoftwareUpdateTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SoftwareObj"
.end annotation


# instance fields
.field private current_version:Ljava/lang/String;

.field private expand:Ljava/lang/String;

.field private failure_reason:Ljava/lang/String;

.field private software_type:Ljava/lang/String;

.field private success:Ljava/lang/String;

.field private target_version:Ljava/lang/String;

.field private update_way:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getCurrent_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->current_version:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getFailure_reason()Ljava/lang/String;
    .registers 2

    .prologue
    .line 89
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->failure_reason:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftware_type()Ljava/lang/String;
    .registers 2

    .prologue
    .line 73
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->software_type:Ljava/lang/String;

    return-object v0
.end method

.method public getSuccess()Ljava/lang/String;
    .registers 2

    .prologue
    .line 81
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->success:Ljava/lang/String;

    return-object v0
.end method

.method public getTarget_version()Ljava/lang/String;
    .registers 2

    .prologue
    .line 65
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->target_version:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate_way()Ljava/lang/String;
    .registers 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->update_way:Ljava/lang/String;

    return-object v0
.end method

.method public setCurrent_version(Ljava/lang/String;)V
    .registers 2
    .param p1, "current_version"    # Ljava/lang/String;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->current_version:Ljava/lang/String;

    .line 62
    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 101
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->expand:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public setFailure_reason(Ljava/lang/String;)V
    .registers 2
    .param p1, "failure_reason"    # Ljava/lang/String;

    .prologue
    .line 93
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->failure_reason:Ljava/lang/String;

    .line 94
    return-void
.end method

.method public setSoftware_type(Ljava/lang/String;)V
    .registers 2
    .param p1, "software_type"    # Ljava/lang/String;

    .prologue
    .line 77
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->software_type:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setSuccess(Ljava/lang/String;)V
    .registers 2
    .param p1, "success"    # Ljava/lang/String;

    .prologue
    .line 85
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->success:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public setTarget_version(Ljava/lang/String;)V
    .registers 2
    .param p1, "target_version"    # Ljava/lang/String;

    .prologue
    .line 69
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->target_version:Ljava/lang/String;

    .line 70
    return-void
.end method

.method public setUpdate_way(Ljava/lang/String;)V
    .registers 2
    .param p1, "update_way"    # Ljava/lang/String;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/qinggan/datatracking/app/SoftwareUpdateTracking$SoftwareObj;->update_way:Ljava/lang/String;

    .line 54
    return-void
.end method
