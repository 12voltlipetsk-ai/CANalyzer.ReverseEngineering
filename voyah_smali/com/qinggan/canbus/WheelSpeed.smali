.class public final Lcom/qinggan/canbus/WheelSpeed;
.super Ljava/lang/Object;
.source "WheelSpeed.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/WheelSpeed;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHEEL_SPEED_UNKNOWN:I = -0x80000000


# instance fields
.field private frontLeftWheelSpd:I

.field private frontRightWheelSpd:I

.field public leftWheelSpeed:I

.field private rearLeftWheelSpd:I

.field private rearRightWheelSpd:I

.field public rightWheelSpeed:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 85
    new-instance v0, Lcom/qinggan/canbus/WheelSpeed$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/WheelSpeed$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/WheelSpeed;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/WheelSpeed;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/WheelSpeed;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->frontLeftWheelSpd:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/WheelSpeed;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/WheelSpeed;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->frontRightWheelSpd:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/WheelSpeed;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/WheelSpeed;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->rearLeftWheelSpd:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/WheelSpeed;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/WheelSpeed;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->rearRightWheelSpd:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 71
    const/4 v0, 0x0

    return v0
.end method

.method public getFrontLeftWheelSpd()I
    .registers 2

    .prologue
    .line 31
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->frontLeftWheelSpd:I

    return v0
.end method

.method public getFrontRightWheelSpd()I
    .registers 2

    .prologue
    .line 35
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->frontRightWheelSpd:I

    return v0
.end method

.method public getLeftWheelSpeed()I
    .registers 2

    .prologue
    .line 27
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->leftWheelSpeed:I

    return v0
.end method

.method public getRearLeftWheelSpd()I
    .registers 2

    .prologue
    .line 39
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->rearLeftWheelSpd:I

    return v0
.end method

.method public getRearRightWheelSpd()I
    .registers 2

    .prologue
    .line 43
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->rearRightWheelSpd:I

    return v0
.end method

.method public getRightWheelSpeed()I
    .registers 2

    .prologue
    .line 23
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->rightWheelSpeed:I

    return v0
.end method

.method public setFrontLeftWheelSpd(I)V
    .registers 2
    .param p1, "wheelSpeed"    # I

    .prologue
    .line 47
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->frontLeftWheelSpd:I

    .line 48
    return-void
.end method

.method public setFrontRightWheelSpd(I)V
    .registers 2
    .param p1, "wheelSpeed"    # I

    .prologue
    .line 51
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->frontRightWheelSpd:I

    .line 52
    return-void
.end method

.method public setLeftWheelSpeed(I)V
    .registers 2
    .param p1, "leftWheelSpeed"    # I

    .prologue
    .line 67
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->leftWheelSpeed:I

    .line 68
    return-void
.end method

.method public setRearLeftWheelSpd(I)V
    .registers 2
    .param p1, "wheelSpeed"    # I

    .prologue
    .line 55
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->rearLeftWheelSpd:I

    .line 56
    return-void
.end method

.method public setRearRightWheelSpd(I)V
    .registers 2
    .param p1, "wheelSpeed"    # I

    .prologue
    .line 59
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->rearRightWheelSpd:I

    .line 60
    return-void
.end method

.method public setRightWheelSpeed(I)V
    .registers 2
    .param p1, "rightWheelSpeed"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/qinggan/canbus/WheelSpeed;->rightWheelSpeed:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WheelSpeed{rightWheelSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelSpeed;->rightWheelSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftWheelSpeed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelSpeed;->leftWheelSpeed:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frontLeftWheelSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelSpeed;->frontLeftWheelSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", frontRightWheelSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelSpeed;->frontRightWheelSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rearLeftWheelSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelSpeed;->rearLeftWheelSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rearRightWheelSpd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelSpeed;->rearRightWheelSpd:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 75
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->rightWheelSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->leftWheelSpeed:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->frontLeftWheelSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->frontRightWheelSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->rearLeftWheelSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Lcom/qinggan/canbus/WheelSpeed;->rearRightWheelSpd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    return-void
.end method
