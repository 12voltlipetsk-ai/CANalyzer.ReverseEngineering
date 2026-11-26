.class public Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;
.super Ljava/lang/Object;
.source "FlightTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/FlightTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightPlanningObj"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;
    }
.end annotation


# instance fields
.field private boardingnumber:Ljava/lang/String;

.field private certid:Ljava/lang/String;

.field private certtype:Ljava/lang/String;

.field private ffplevel:Ljava/lang/String;

.field private ffpnum:Ljava/lang/String;

.field private ffptype:Ljava/lang/String;

.field private passengername:Ljava/lang/String;

.field private s2ccheckintravelinfo:Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;

.field private surname:Ljava/lang/String;

.field private usermobile:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoardingnumber()Ljava/lang/String;
    .registers 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->boardingnumber:Ljava/lang/String;

    return-object v0
.end method

.method public getCertid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 78
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->certid:Ljava/lang/String;

    return-object v0
.end method

.method public getCerttype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->certtype:Ljava/lang/String;

    return-object v0
.end method

.method public getFfplevel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 118
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->ffplevel:Ljava/lang/String;

    return-object v0
.end method

.method public getFfpnum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 126
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->ffpnum:Ljava/lang/String;

    return-object v0
.end method

.method public getFfptype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->ffptype:Ljava/lang/String;

    return-object v0
.end method

.method public getPassengername()Ljava/lang/String;
    .registers 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->passengername:Ljava/lang/String;

    return-object v0
.end method

.method public getS2ccheckintravelinfo()Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;
    .registers 2

    .prologue
    .line 142
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->s2ccheckintravelinfo:Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;

    return-object v0
.end method

.method public getSurname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 102
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->surname:Ljava/lang/String;

    return-object v0
.end method

.method public getUsermobile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->usermobile:Ljava/lang/String;

    return-object v0
.end method

.method public setBoardingnumber(Ljava/lang/String;)V
    .registers 2
    .param p1, "boardingnumber"    # Ljava/lang/String;

    .prologue
    .line 74
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->boardingnumber:Ljava/lang/String;

    .line 75
    return-void
.end method

.method public setCertid(Ljava/lang/String;)V
    .registers 2
    .param p1, "certid"    # Ljava/lang/String;

    .prologue
    .line 82
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->certid:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public setCerttype(Ljava/lang/String;)V
    .registers 2
    .param p1, "certtype"    # Ljava/lang/String;

    .prologue
    .line 90
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->certtype:Ljava/lang/String;

    .line 91
    return-void
.end method

.method public setFfplevel(Ljava/lang/String;)V
    .registers 2
    .param p1, "ffplevel"    # Ljava/lang/String;

    .prologue
    .line 122
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->ffplevel:Ljava/lang/String;

    .line 123
    return-void
.end method

.method public setFfpnum(Ljava/lang/String;)V
    .registers 2
    .param p1, "ffpnum"    # Ljava/lang/String;

    .prologue
    .line 130
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->ffpnum:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setFfptype(Ljava/lang/String;)V
    .registers 2
    .param p1, "ffptype"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->ffptype:Ljava/lang/String;

    .line 139
    return-void
.end method

.method public setPassengername(Ljava/lang/String;)V
    .registers 2
    .param p1, "passengername"    # Ljava/lang/String;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->passengername:Ljava/lang/String;

    .line 99
    return-void
.end method

.method public setS2ccheckintravelinfo(Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;)V
    .registers 2
    .param p1, "s2ccheckintravelinfo"    # Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->s2ccheckintravelinfo:Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj$S2ccheckinObj;

    .line 147
    return-void
.end method

.method public setSurname(Ljava/lang/String;)V
    .registers 2
    .param p1, "surname"    # Ljava/lang/String;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->surname:Ljava/lang/String;

    .line 107
    return-void
.end method

.method public setUsermobile(Ljava/lang/String;)V
    .registers 2
    .param p1, "usermobile"    # Ljava/lang/String;

    .prologue
    .line 114
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightPlanningObj;->usermobile:Ljava/lang/String;

    .line 115
    return-void
.end method
