.class public Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;
.super Ljava/lang/Object;
.source "LocalRadioTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/LocalRadioTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocalRadioObj"
.end annotation


# instance fields
.field private expand:Ljava/lang/String;

.field private listenduration:Ljava/lang/String;

.field private programname:Ljava/lang/String;

.field private radiohz:Ljava/lang/String;

.field private radioname:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getListenduration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->listenduration:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->programname:Ljava/lang/String;

    return-object v0
.end method

.method public getRadiohz()Ljava/lang/String;
    .registers 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->radiohz:Ljava/lang/String;

    return-object v0
.end method

.method public getRadioname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->radioname:Ljava/lang/String;

    return-object v0
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->expand:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setListenduration(Ljava/lang/String;)V
    .registers 2
    .param p1, "listenduration"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->listenduration:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setProgramname(Ljava/lang/String;)V
    .registers 2
    .param p1, "programname"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->programname:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setRadiohz(Ljava/lang/String;)V
    .registers 2
    .param p1, "radiohz"    # Ljava/lang/String;

    .prologue
    .line 47
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->radiohz:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public setRadioname(Ljava/lang/String;)V
    .registers 2
    .param p1, "radioname"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qinggan/datatracking/app/LocalRadioTracking$LocalRadioObj;->radioname:Ljava/lang/String;

    .line 56
    return-void
.end method
