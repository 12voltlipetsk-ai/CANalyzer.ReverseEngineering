.class public final Lcom/qinggan/canbus/WindowStatus;
.super Ljava/lang/Object;
.source "WindowStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ANTIPINCH:I = 0x5

.field public static final ANTIPINCH_IN_PARTIALLT_SLIDE:I = 0x4

.field public static final ANTIPINCH_IN_VENT:I = 0x2

.field public static final AUTO_DOWN_MOVING:I = 0x5

.field public static final AUTO_UP_MOVING:I = 0x3

.field public static final CLOSED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/WindowStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final FIRST_HALF_OF_SLIDE:I = 0x1

.field public static final FULLY_CLOSE:I = 0x3

.field public static final FULLY_OPEN:I = 0x6

.field public static final HALF_OPEN:I = 0x4

.field public static final MANUAL_DOWN_MOVING:I = 0x6

.field public static final MANUAL_UP_MOVING:I = 0x4

.field public static final OPEN:I = 0x1

.field public static final PARTIALLT_SLIDE:I = 0x5

.field public static final SECOND_HALF_OF_SLIDE:I = 0x2

.field public static final STOPPED:I = 0x2

.field public static final TILT_UP:I = 0x0

.field public static final UNKNOWN:I = -0x1

.field public static final VENT_AREA:I = 0x1


# instance fields
.field public fLWindow:I

.field public fLWindowHotProtect:I

.field public fLWindowLearn:I

.field public fLWindowPosition:I

.field public fRWindow:I

.field public fRWindowHotProtect:I

.field public fRWindowLearn:I

.field public fRWindowPosition:I

.field public rLWindow:I

.field public rLWindowHotProtect:I

.field public rLWindowLearn:I

.field public rLWindowPosition:I

.field public rRWindow:I

.field public rRWindowHotProtect:I

.field public rRWindowLearn:I

.field public rRWindowPosition:I

.field public roll:I

.field public rollPosition:I

.field public sunroof:I

.field public sunroofPosition:I

.field public sunroofTilt:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 132
    new-instance v0, Lcom/qinggan/canbus/WindowStatus$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/WindowStatus$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/WindowStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public getFLWindow()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindow:I

    return v0
.end method

.method public getFRWindow()I
    .registers 2

    .prologue
    .line 77
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindow:I

    return v0
.end method

.method public getRLWindow()I
    .registers 2

    .prologue
    .line 85
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindow:I

    return v0
.end method

.method public getRRWindow()I
    .registers 2

    .prologue
    .line 93
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindow:I

    return v0
.end method

.method public setFLWindow(I)V
    .registers 2
    .param p1, "fLWindow"    # I

    .prologue
    .line 73
    iput p1, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindow:I

    .line 74
    return-void
.end method

.method public setFRWindow(I)V
    .registers 2
    .param p1, "fRWindow"    # I

    .prologue
    .line 81
    iput p1, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindow:I

    .line 82
    return-void
.end method

.method public setRLWindow(I)V
    .registers 2
    .param p1, "rLWindow"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindow:I

    .line 90
    return-void
.end method

.method public setRRWindow(I)V
    .registers 2
    .param p1, "rRWindow"    # I

    .prologue
    .line 97
    iput p1, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindow:I

    .line 98
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WindowStatus{fLWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fRWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rLWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRWindow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindow:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunroof="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->sunroof:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", roll="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->roll:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunroofPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->sunroofPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rollPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rollPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLWindowPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindowPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fRWindowPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindowPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rLWindowPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindowPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRWindowPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindowPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sunroofTilt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->sunroofTilt:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLWindowHotProtect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindowHotProtect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fRWindowHotProtect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindowHotProtect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rLWindowHotProtect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindowHotProtect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRWindowHotProtect="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindowHotProtect:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLWindowLearn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindowLearn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fRWindowLearn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindowLearn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rLWindowLearn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindowLearn:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRWindowLearn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindowLearn:I

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
    .line 107
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 108
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 109
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 110
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindow:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->sunroof:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 112
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->roll:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 113
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->sunroofPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 114
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rollPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindowPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindowPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindowPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindowPosition:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->sunroofTilt:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindowHotProtect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindowHotProtect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindowHotProtect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindowHotProtect:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fLWindowLearn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->fRWindowLearn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rLWindowLearn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget v0, p0, Lcom/qinggan/canbus/WindowStatus;->rRWindowLearn:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 130
    return-void
.end method
