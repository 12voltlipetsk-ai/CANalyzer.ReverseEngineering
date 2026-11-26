.class public final Lcom/qinggan/canbus/SWCAngle;
.super Ljava/lang/Object;
.source "SWCAngle.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/SWCAngle;",
            ">;"
        }
    .end annotation
.end field

.field public static final SWC_DIR_CENTER:I = 0x0

.field public static final SWC_DIR_LEFT:I = 0x2

.field public static final SWC_DIR_RIGHT:I = 0x1

.field public static final UNKNOWN:I = -0x80000000


# instance fields
.field public mWheelAngle:I

.field public mWheelDirection:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 45
    new-instance v0, Lcom/qinggan/canbus/SWCAngle$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/SWCAngle$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/SWCAngle;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/high16 v0, -0x80000000

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelDirection:I

    .line 14
    iput v0, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelAngle:I

    .line 18
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 37
    const/4 v0, 0x0

    return v0
.end method

.method public getWheelAngle()I
    .registers 2

    .prologue
    .line 29
    iget v0, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelAngle:I

    return v0
.end method

.method public getWheelDirection()I
    .registers 2

    .prologue
    .line 21
    iget v0, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelDirection:I

    return v0
.end method

.method public setWheelAngle(I)V
    .registers 2
    .param p1, "wheelAngle"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelAngle:I

    .line 34
    return-void
.end method

.method public setWheelDirection(I)V
    .registers 2
    .param p1, "wheelDirection"    # I

    .prologue
    .line 25
    iput p1, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelDirection:I

    .line 26
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SWCAngle{mWheelDirection="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelDirection:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mWheelAngle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelAngle:I

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
    .line 41
    iget v0, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    iget v0, p0, Lcom/qinggan/canbus/SWCAngle;->mWheelAngle:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    return-void
.end method
