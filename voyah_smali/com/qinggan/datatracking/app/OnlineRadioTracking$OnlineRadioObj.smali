.class public Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;
.super Ljava/lang/Object;
.source "OnlineRadioTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/OnlineRadioTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnlineRadioObj"
.end annotation


# instance fields
.field private artist:Ljava/lang/String;

.field private categoryid:Ljava/lang/String;

.field private categoryname:Ljava/lang/String;

.field private city:Ljava/lang/String;

.field private expand:Ljava/lang/String;

.field private frequency:Ljava/lang/String;

.field private listenduration:Ljava/lang/String;

.field private playmode:Ljava/lang/String;

.field private playurl:Ljava/lang/String;

.field private programid:Ljava/lang/String;

.field private programname:Ljava/lang/String;

.field private times:Ljava/lang/String;

.field private updatetime:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->categoryid:Ljava/lang/String;

    return-object v0
.end method

.method public getCategoryname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->categoryname:Ljava/lang/String;

    return-object v0
.end method

.method public getCity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->city:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getFrequency()Ljava/lang/String;
    .registers 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->frequency:Ljava/lang/String;

    return-object v0
.end method

.method public getListenduration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->listenduration:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaymode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->playmode:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayurl()Ljava/lang/String;
    .registers 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->playurl:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->programid:Ljava/lang/String;

    return-object v0
.end method

.method public getProgramname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->programname:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->times:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdatetime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->updatetime:Ljava/lang/String;

    return-object v0
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->artist:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setCategoryid(Ljava/lang/String;)V
    .registers 2
    .param p1, "categoryid"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->categoryid:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setCategoryname(Ljava/lang/String;)V
    .registers 2
    .param p1, "categoryname"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->categoryname:Ljava/lang/String;

    .line 72
    return-void
.end method

.method public setCity(Ljava/lang/String;)V
    .registers 2
    .param p1, "city"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->city:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->expand:Ljava/lang/String;

    .line 160
    return-void
.end method

.method public setFrequency(Ljava/lang/String;)V
    .registers 2
    .param p1, "frequency"    # Ljava/lang/String;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->frequency:Ljava/lang/String;

    .line 136
    return-void
.end method

.method public setListenduration(Ljava/lang/String;)V
    .registers 2
    .param p1, "listenduration"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->listenduration:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setPlaymode(Ljava/lang/String;)V
    .registers 2
    .param p1, "playmode"    # Ljava/lang/String;

    .prologue
    .line 119
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->playmode:Ljava/lang/String;

    .line 120
    return-void
.end method

.method public setPlayurl(Ljava/lang/String;)V
    .registers 2
    .param p1, "playurl"    # Ljava/lang/String;

    .prologue
    .line 143
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->playurl:Ljava/lang/String;

    .line 144
    return-void
.end method

.method public setProgramid(Ljava/lang/String;)V
    .registers 2
    .param p1, "programid"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->programid:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setProgramname(Ljava/lang/String;)V
    .registers 2
    .param p1, "programname"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->programname:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .registers 2
    .param p1, "times"    # Ljava/lang/String;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->times:Ljava/lang/String;

    .line 128
    return-void
.end method

.method public setUpdatetime(Ljava/lang/String;)V
    .registers 2
    .param p1, "updatetime"    # Ljava/lang/String;

    .prologue
    .line 151
    iput-object p1, p0, Lcom/qinggan/datatracking/app/OnlineRadioTracking$OnlineRadioObj;->updatetime:Ljava/lang/String;

    .line 152
    return-void
.end method
