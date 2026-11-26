.class public final Lcom/qinggan/canbus/WheelCount;
.super Ljava/lang/Object;
.source "WheelCount.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/WheelCount;",
            ">;"
        }
    .end annotation
.end field

.field public static final WHEEL_COUNT_UNKNOWN:I = -0x80000000


# instance fields
.field public leftWheelCount:I

.field public rightWheelCount:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 42
    new-instance v0, Lcom/qinggan/canbus/WheelCount$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/WheelCount$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/WheelCount;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public getLeftWheelCount()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/qinggan/canbus/WheelCount;->leftWheelCount:I

    return v0
.end method

.method public getRightWheelCount()I
    .registers 2

    .prologue
    .line 17
    iget v0, p0, Lcom/qinggan/canbus/WheelCount;->rightWheelCount:I

    return v0
.end method

.method public setLeftWheelCount(I)V
    .registers 2
    .param p1, "leftWheelCount"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/qinggan/canbus/WheelCount;->leftWheelCount:I

    .line 30
    return-void
.end method

.method public setRightWheelCount(I)V
    .registers 2
    .param p1, "rightWheelCount"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/qinggan/canbus/WheelCount;->rightWheelCount:I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WheelCount{rightWheelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelCount;->rightWheelCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", leftWheelCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WheelCount;->leftWheelCount:I

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
    .line 37
    iget v0, p0, Lcom/qinggan/canbus/WheelCount;->rightWheelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget v0, p0, Lcom/qinggan/canbus/WheelCount;->leftWheelCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 40
    return-void
.end method
