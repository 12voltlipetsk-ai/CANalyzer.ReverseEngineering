.class public Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;
.super Ljava/lang/Object;
.source "VoiceLogTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/VoiceLogTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VoiceLogObj"
.end annotation


# instance fields
.field private colectedtime:Ljava/lang/String;

.field private comtype:Ljava/lang/String;

.field private nlumode:Ljava/lang/String;

.field private others:Ljava/lang/String;

.field private recoginizeresult:Ljava/lang/String;

.field private userId:Ljava/lang/String;

.field private voicefile:Ljava/lang/String;

.field private voicetext:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getColectedtime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->colectedtime:Ljava/lang/String;

    return-object v0
.end method

.method public getComtype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->comtype:Ljava/lang/String;

    return-object v0
.end method

.method public getNlumode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->nlumode:Ljava/lang/String;

    return-object v0
.end method

.method public getOthers()Ljava/lang/String;
    .registers 2

    .prologue
    .line 107
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->others:Ljava/lang/String;

    return-object v0
.end method

.method public getRecoginizeresult()Ljava/lang/String;
    .registers 2

    .prologue
    .line 99
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->recoginizeresult:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .registers 2

    .prologue
    .line 51
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicefile()Ljava/lang/String;
    .registers 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->voicefile:Ljava/lang/String;

    return-object v0
.end method

.method public getVoicetext()Ljava/lang/String;
    .registers 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->voicetext:Ljava/lang/String;

    return-object v0
.end method

.method public setColectedtime(Ljava/lang/String;)V
    .registers 2
    .param p1, "colectedtime"    # Ljava/lang/String;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->colectedtime:Ljava/lang/String;

    .line 96
    return-void
.end method

.method public setComtype(Ljava/lang/String;)V
    .registers 2
    .param p1, "comtype"    # Ljava/lang/String;

    .prologue
    .line 87
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->comtype:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setNlumode(Ljava/lang/String;)V
    .registers 2
    .param p1, "nlumode"    # Ljava/lang/String;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->nlumode:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public setOthers(Ljava/lang/String;)V
    .registers 2
    .param p1, "others"    # Ljava/lang/String;

    .prologue
    .line 111
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->others:Ljava/lang/String;

    .line 112
    return-void
.end method

.method public setRecoginizeresult(Ljava/lang/String;)V
    .registers 2
    .param p1, "recoginizeresult"    # Ljava/lang/String;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->recoginizeresult:Ljava/lang/String;

    .line 104
    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .registers 2
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->userId:Ljava/lang/String;

    .line 56
    return-void
.end method

.method public setVoicefile(Ljava/lang/String;)V
    .registers 2
    .param p1, "voicefile"    # Ljava/lang/String;

    .prologue
    .line 79
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->voicefile:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setVoicetext(Ljava/lang/String;)V
    .registers 2
    .param p1, "voicetext"    # Ljava/lang/String;

    .prologue
    .line 71
    iput-object p1, p0, Lcom/qinggan/datatracking/app/VoiceLogTracking$VoiceLogObj;->voicetext:Ljava/lang/String;

    .line 72
    return-void
.end method
