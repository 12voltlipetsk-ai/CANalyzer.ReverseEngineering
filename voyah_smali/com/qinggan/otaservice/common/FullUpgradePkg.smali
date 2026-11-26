.class public Lcom/qinggan/otaservice/common/FullUpgradePkg;
.super Ljava/lang/Object;
.source "FullUpgradePkg.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/otaservice/common/FullUpgradePkg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public checkCode:Ljava/lang/String;

.field public features:Ljava/lang/String;

.field public signAlg:Ljava/lang/String;

.field public signInfo:Ljava/lang/String;

.field public size:J

.field public softwareVersion:Ljava/lang/String;

.field public type:I

.field public url:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 29
    new-instance v0, Lcom/qinggan/otaservice/common/FullUpgradePkg$1;

    invoke-direct {v0}, Lcom/qinggan/otaservice/common/FullUpgradePkg$1;-><init>()V

    sput-object v0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/otaservice/common/FullUpgradePkg;Landroid/os/Parcel;)V
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/otaservice/common/FullUpgradePkg;
    .param p1, "x1"    # Landroid/os/Parcel;

    .prologue
    .line 7
    invoke-direct {p0, p1}, Lcom/qinggan/otaservice/common/FullUpgradePkg;->readFromParce(Landroid/os/Parcel;)V

    return-void
.end method

.method private readFromParce(Landroid/os/Parcel;)V
    .registers 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    .line 57
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    .line 59
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    .line 62
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    .line 63
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    .line 64
    return-void
.end method


# virtual methods
.method public convert()Lcom/qinggan/ota/OTAFullPkg;
    .registers 5

    .prologue
    .line 91
    new-instance v0, Lcom/qinggan/ota/OTAFullPkg;

    invoke-direct {v0}, Lcom/qinggan/ota/OTAFullPkg;-><init>()V

    .line 92
    .local v0, "fullPkg":Lcom/qinggan/ota/OTAFullPkg;
    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-static {v1}, Lcom/qinggan/otaservice/common/Tool;->getOTAVersion(Ljava/lang/String;)Lcom/qinggan/ota/OTAVersion;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/ota/OTAFullPkg;->version:Lcom/qinggan/ota/OTAVersion;

    .line 93
    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    iput-object v1, v0, Lcom/qinggan/ota/OTAFullPkg;->description:Ljava/lang/String;

    .line 94
    iget-wide v2, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    iput-wide v2, v0, Lcom/qinggan/ota/OTAFullPkg;->size:J

    .line 95
    iget v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    iput v1, v0, Lcom/qinggan/ota/OTAFullPkg;->type:I

    .line 96
    return-object v0
.end method

.method public describeContents()I
    .registers 2

    .prologue
    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "softwareVersion:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],url:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],checkCode:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],features:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],size:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],type:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],signAlg:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],signInfo:["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 5
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 72
    iget-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->softwareVersion:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 73
    iget-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->checkCode:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 75
    iget-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->features:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 76
    iget-wide v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->size:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 77
    iget v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->type:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signAlg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 79
    iget-object v0, p0, Lcom/qinggan/otaservice/common/FullUpgradePkg;->signInfo:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    return-void
.end method
