.class public Lcom/qinggan/canbus/BAPOPSInfo;
.super Ljava/lang/Object;
.source "BAPOPSInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/BAPOPSInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mOPSDragConnectionSwitch:I

.field private mOPSMuteSwitch:I

.field private mOPSMuteSwitchOperability:I

.field private mOPSPopSwitch:I

.field private mRadarProbeCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 93
    new-instance v0, Lcom/qinggan/canbus/BAPOPSInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/BAPOPSInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/BAPOPSInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I

    .line 23
    iput v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I

    .line 31
    iput v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I

    .line 33
    iput v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I

    .line 35
    iput v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I

    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/BAPOPSInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPOPSInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/BAPOPSInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPOPSInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/BAPOPSInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPOPSInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/BAPOPSInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPOPSInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/canbus/BAPOPSInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPOPSInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public getmOPSDragConnectionSwitch()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I

    return v0
.end method

.method public getmOPSMuteSwitch()I
    .registers 2

    .prologue
    .line 38
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I

    return v0
.end method

.method public getmOPSMuteSwitchOperability()I
    .registers 2

    .prologue
    .line 63
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I

    return v0
.end method

.method public getmOPSPopSwitch()I
    .registers 2

    .prologue
    .line 46
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I

    return v0
.end method

.method public getmRadarProbeCount()I
    .registers 2

    .prologue
    .line 71
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I

    return v0
.end method

.method public setmOPSDragConnectionSwitch(I)V
    .registers 2
    .param p1, "mOPSDragConnectionSwitch"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I

    .line 59
    return-void
.end method

.method public setmOPSMuteSwitch(I)V
    .registers 2
    .param p1, "mOPSMuteSwitch"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I

    .line 43
    return-void
.end method

.method public setmOPSMuteSwitchOperability(I)V
    .registers 2
    .param p1, "mOPSMuteSwitchOperability"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I

    .line 68
    return-void
.end method

.method public setmOPSPopSwitch(I)V
    .registers 2
    .param p1, "mOPSPopSwitch"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I

    .line 51
    return-void
.end method

.method public setmRadarProbeCount(I)V
    .registers 2
    .param p1, "mRadarProbeCount"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I

    .line 76
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 115
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 116
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "BAPOPSInfo : =============== \n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOPSMuteSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOPSPopSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 119
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOPSDragConnectionSwitch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mOPSMuteSwitchOperability = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRadarProbeCount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 86
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSPopSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSDragConnectionSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mOPSMuteSwitchOperability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 90
    iget v0, p0, Lcom/qinggan/canbus/BAPOPSInfo;->mRadarProbeCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    return-void
.end method
