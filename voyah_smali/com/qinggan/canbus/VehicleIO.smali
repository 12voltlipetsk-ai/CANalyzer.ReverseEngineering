.class public final Lcom/qinggan/canbus/VehicleIO;
.super Ljava/lang/Object;
.source "VehicleIO.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/VehicleIO;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public AVIDDetectOn:Z

.field public AVINDetectOn:Z

.field public parkDetectOn:Z

.field public reverseDetectOn:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 27
    new-instance v0, Lcom/qinggan/canbus/VehicleIO$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/VehicleIO$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/VehicleIO;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 17
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VehicleIO{parkDetectOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/canbus/VehicleIO;->parkDetectOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", reverseDetectOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/canbus/VehicleIO;->reverseDetectOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AVINDetectOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/canbus/VehicleIO;->AVINDetectOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", AVIDDetectOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/qinggan/canbus/VehicleIO;->AVIDDetectOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 6
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 21
    iget-boolean v0, p0, Lcom/qinggan/canbus/VehicleIO;->parkDetectOn:Z

    if-eqz v0, :cond_22

    move v0, v1

    :goto_7
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 22
    iget-boolean v0, p0, Lcom/qinggan/canbus/VehicleIO;->reverseDetectOn:Z

    if-eqz v0, :cond_24

    move v0, v1

    :goto_f
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 23
    iget-boolean v0, p0, Lcom/qinggan/canbus/VehicleIO;->AVINDetectOn:Z

    if-eqz v0, :cond_26

    move v0, v1

    :goto_17
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    iget-boolean v0, p0, Lcom/qinggan/canbus/VehicleIO;->AVIDDetectOn:Z

    if-eqz v0, :cond_28

    :goto_1e
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 25
    return-void

    :cond_22
    move v0, v2

    .line 21
    goto :goto_7

    :cond_24
    move v0, v2

    .line 22
    goto :goto_f

    :cond_26
    move v0, v2

    .line 23
    goto :goto_17

    :cond_28
    move v1, v2

    .line 24
    goto :goto_1e
.end method
