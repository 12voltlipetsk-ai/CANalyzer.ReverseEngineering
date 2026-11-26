.class public Lcom/qinggan/canbus/BAPClimateInfo;
.super Ljava/lang/Object;
.source "BAPClimateInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/BAPClimateInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAirCleanStatus:I

.field private mAirCleanSwitch:I

.field private mLeftSeatVentilationStatus:I

.field private mRightSeatingVentilationStatus:I

.field private mSteeringWheelHeatingSwitch:I

.field private mSteeringWheelHeatingSwitchoperability:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 82
    new-instance v0, Lcom/qinggan/canbus/BAPClimateInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/BAPClimateInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/BAPClimateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I

    .line 8
    iput v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I

    .line 9
    iput v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I

    .line 10
    iput v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I

    .line 11
    iput v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I

    .line 12
    iput v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I

    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/BAPClimateInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPClimateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/BAPClimateInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPClimateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/BAPClimateInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPClimateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/BAPClimateInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPClimateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/canbus/BAPClimateInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPClimateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I

    return p1
.end method

.method static synthetic access$502(Lcom/qinggan/canbus/BAPClimateInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/BAPClimateInfo;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public getmAirCleanStatus()I
    .registers 2

    .prologue
    .line 49
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I

    return v0
.end method

.method public getmAirCleanSwitch()I
    .registers 2

    .prologue
    .line 41
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I

    return v0
.end method

.method public getmLeftSeatVentilationStatus()I
    .registers 2

    .prologue
    .line 25
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I

    return v0
.end method

.method public getmRightSeatingVentilationStatus()I
    .registers 2

    .prologue
    .line 33
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I

    return v0
.end method

.method public getmSteeringWheelHeatingSwitch()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I

    return v0
.end method

.method public getmSteeringWheelHeatingSwitchoperability()I
    .registers 2

    .prologue
    .line 58
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I

    return v0
.end method

.method public setmAirCleanStatus(I)V
    .registers 2
    .param p1, "mAirCleanStatus"    # I

    .prologue
    .line 53
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I

    .line 54
    return-void
.end method

.method public setmAirCleanSwitch(I)V
    .registers 2
    .param p1, "mAirCleanSwitch"    # I

    .prologue
    .line 45
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I

    .line 46
    return-void
.end method

.method public setmLeftSeatVentilationStatus(I)V
    .registers 2
    .param p1, "mLeftSeatVentilationStatus"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I

    .line 30
    return-void
.end method

.method public setmRightSeatingVentilationStatus(I)V
    .registers 2
    .param p1, "mRightSeatingVentilationStatus"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I

    .line 38
    return-void
.end method

.method public setmSteeringWheelHeatingSwitch(I)V
    .registers 2
    .param p1, "mSteeringWheelHeatingSwitch"    # I

    .prologue
    .line 21
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I

    .line 22
    return-void
.end method

.method public setmSteeringWheelHeatingSwitchoperability(I)V
    .registers 2
    .param p1, "mSteeringWheelHeatingSwitchoperability"    # I

    .prologue
    .line 63
    iput p1, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I

    .line 64
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 103
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 104
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "BAPClimateInfo  :===============\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSteeringWheelHeatingSwitch: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLeftSeatVentilationStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mRightSeatingVentilationStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirCleanSwitch:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAirCleanStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSteeringWheelHeatingSwitchoperability:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 111
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 74
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mLeftSeatVentilationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mRightSeatingVentilationStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanSwitch:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 78
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mAirCleanStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    iget v0, p0, Lcom/qinggan/canbus/BAPClimateInfo;->mSteeringWheelHeatingSwitchoperability:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    return-void
.end method
