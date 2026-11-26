.class public Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;
.super Ljava/lang/Object;
.source "MusicTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/MusicTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MusicObj"
.end annotation


# instance fields
.field private album:Ljava/lang/String;

.field private artist:Ljava/lang/String;

.field private contentid:Ljava/lang/String;

.field private expand:Ljava/lang/String;

.field private getway:Ljava/lang/String;

.field private listenduration:Ljava/lang/String;

.field private musicsource:Ljava/lang/String;

.field private playmode:Ljava/lang/String;

.field private resid:Ljava/lang/String;

.field private songname:Ljava/lang/String;

.field private storagetype:Ljava/lang/String;

.field private times:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAlbum()Ljava/lang/String;
    .registers 2

    .prologue
    .line 100
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->album:Ljava/lang/String;

    return-object v0
.end method

.method public getArtist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->artist:Ljava/lang/String;

    return-object v0
.end method

.method public getContentid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->contentid:Ljava/lang/String;

    return-object v0
.end method

.method public getExpand()Ljava/lang/String;
    .registers 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->expand:Ljava/lang/String;

    return-object v0
.end method

.method public getGetway()Ljava/lang/String;
    .registers 2

    .prologue
    .line 140
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->getway:Ljava/lang/String;

    return-object v0
.end method

.method public getListenduration()Ljava/lang/String;
    .registers 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->listenduration:Ljava/lang/String;

    return-object v0
.end method

.method public getMusicsource()Ljava/lang/String;
    .registers 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->musicsource:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaymode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->playmode:Ljava/lang/String;

    return-object v0
.end method

.method public getResid()Ljava/lang/String;
    .registers 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->resid:Ljava/lang/String;

    return-object v0
.end method

.method public getSongname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 76
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->songname:Ljava/lang/String;

    return-object v0
.end method

.method public getStoragetype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->storagetype:Ljava/lang/String;

    return-object v0
.end method

.method public getTimes()Ljava/lang/String;
    .registers 2

    .prologue
    .line 132
    iget-object v0, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->times:Ljava/lang/String;

    return-object v0
.end method

.method public setAlbum(Ljava/lang/String;)V
    .registers 2
    .param p1, "album"    # Ljava/lang/String;

    .prologue
    .line 104
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->album:Ljava/lang/String;

    .line 105
    return-void
.end method

.method public setArtist(Ljava/lang/String;)V
    .registers 2
    .param p1, "artist"    # Ljava/lang/String;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->artist:Ljava/lang/String;

    .line 89
    return-void
.end method

.method public setContentid(Ljava/lang/String;)V
    .registers 2
    .param p1, "contentid"    # Ljava/lang/String;

    .prologue
    .line 96
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->contentid:Ljava/lang/String;

    .line 97
    return-void
.end method

.method public setExpand(Ljava/lang/String;)V
    .registers 2
    .param p1, "expand"    # Ljava/lang/String;

    .prologue
    .line 160
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->expand:Ljava/lang/String;

    .line 161
    return-void
.end method

.method public setGetway(Ljava/lang/String;)V
    .registers 2
    .param p1, "getway"    # Ljava/lang/String;

    .prologue
    .line 144
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->getway:Ljava/lang/String;

    .line 145
    return-void
.end method

.method public setListenduration(Ljava/lang/String;)V
    .registers 2
    .param p1, "listenduration"    # Ljava/lang/String;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->listenduration:Ljava/lang/String;

    .line 113
    return-void
.end method

.method public setMusicsource(Ljava/lang/String;)V
    .registers 2
    .param p1, "musicsource"    # Ljava/lang/String;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->musicsource:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public setPlaymode(Ljava/lang/String;)V
    .registers 2
    .param p1, "playmode"    # Ljava/lang/String;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->playmode:Ljava/lang/String;

    .line 121
    return-void
.end method

.method public setResid(Ljava/lang/String;)V
    .registers 2
    .param p1, "resid"    # Ljava/lang/String;

    .prologue
    .line 72
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->resid:Ljava/lang/String;

    .line 73
    return-void
.end method

.method public setSongname(Ljava/lang/String;)V
    .registers 2
    .param p1, "songname"    # Ljava/lang/String;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->songname:Ljava/lang/String;

    .line 81
    return-void
.end method

.method public setStoragetype(Ljava/lang/String;)V
    .registers 2
    .param p1, "storagetype"    # Ljava/lang/String;

    .prologue
    .line 128
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->storagetype:Ljava/lang/String;

    .line 129
    return-void
.end method

.method public setTimes(Ljava/lang/String;)V
    .registers 2
    .param p1, "times"    # Ljava/lang/String;

    .prologue
    .line 136
    iput-object p1, p0, Lcom/qinggan/datatracking/app/MusicTracking$MusicObj;->times:Ljava/lang/String;

    .line 137
    return-void
.end method
