.class public final Lcom/qinggan/canbus/DoorStatus;
.super Ljava/lang/Object;
.source "DoorStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CLOSED:I = 0x0

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/DoorStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DOOR_STATUS_CLOSED:I = 0x0

.field public static final DOOR_STATUS_LOCK:I = 0x0

.field public static final DOOR_STATUS_OPEN:I = 0x1

.field public static final DOOR_STATUS_UNKNOWN:I = -0x1

.field public static final DOOR_STATUS_UNLOCK:I = 0x1

.field public static final OPEN:I = 0x1


# instance fields
.field public bonnetDoor:I

.field public fLDoor:I

.field public fLDoorLockStatus:I

.field public fRDoor:I

.field public fRDoorLockStatus:I

.field public loadSpace:I

.field public rLDoor:I

.field public rLDoorLockStatus:I

.field public rRDoor:I

.field public rRDoorLockStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 159
    new-instance v0, Lcom/qinggan/canbus/DoorStatus$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/DoorStatus$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/DoorStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->bonnetDoor:I

    .line 31
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoor:I

    .line 33
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoor:I

    .line 35
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->loadSpace:I

    .line 37
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoor:I

    .line 39
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoor:I

    .line 41
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoorLockStatus:I

    .line 43
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoorLockStatus:I

    .line 45
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoorLockStatus:I

    .line 47
    iput v0, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoorLockStatus:I

    .line 50
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 142
    const/4 v0, 0x0

    return v0
.end method

.method public getBonnetDoor()I
    .registers 2

    .prologue
    .line 54
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->bonnetDoor:I

    return v0
.end method

.method public getFLDoor()I
    .registers 2

    .prologue
    .line 59
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoor:I

    return v0
.end method

.method public getFRDoor()I
    .registers 2

    .prologue
    .line 64
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoor:I

    return v0
.end method

.method public getLoadSpace()I
    .registers 2

    .prologue
    .line 79
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->loadSpace:I

    return v0
.end method

.method public getRLDoor()I
    .registers 2

    .prologue
    .line 69
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoor:I

    return v0
.end method

.method public getRRDoor()I
    .registers 2

    .prologue
    .line 74
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoor:I

    return v0
.end method

.method public getfLDoorLockStatus()I
    .registers 2

    .prologue
    .line 109
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoorLockStatus:I

    return v0
.end method

.method public getfRDoorLockStatus()I
    .registers 2

    .prologue
    .line 118
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoorLockStatus:I

    return v0
.end method

.method public getrLDoorLockStatus()I
    .registers 2

    .prologue
    .line 126
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoorLockStatus:I

    return v0
.end method

.method public getrRDoorLockStatus()I
    .registers 2

    .prologue
    .line 134
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoorLockStatus:I

    return v0
.end method

.method public setBonnetDoor(I)V
    .registers 2
    .param p1, "bonnetDoor"    # I

    .prologue
    .line 84
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->bonnetDoor:I

    .line 85
    return-void
.end method

.method public setFLDoor(I)V
    .registers 2
    .param p1, "flDoor"    # I

    .prologue
    .line 89
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoor:I

    .line 90
    return-void
.end method

.method public setFRDoor(I)V
    .registers 2
    .param p1, "frDoor"    # I

    .prologue
    .line 94
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoor:I

    .line 95
    return-void
.end method

.method public setRLDoor(I)V
    .registers 2
    .param p1, "rlDoor"    # I

    .prologue
    .line 99
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoor:I

    .line 100
    return-void
.end method

.method public setRRDoor(I)V
    .registers 2
    .param p1, "rrDoor"    # I

    .prologue
    .line 104
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoor:I

    .line 105
    return-void
.end method

.method public setfLDoorLockStatus(I)V
    .registers 2
    .param p1, "fLDoorLkStatus"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoorLockStatus:I

    .line 115
    return-void
.end method

.method public setfRDoorLockStatus(I)V
    .registers 2
    .param p1, "fRDoorLockStatus"    # I

    .prologue
    .line 122
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoorLockStatus:I

    .line 123
    return-void
.end method

.method public setrLDoorLockStatus(I)V
    .registers 2
    .param p1, "rLDoorLockStatus"    # I

    .prologue
    .line 130
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoorLockStatus:I

    .line 131
    return-void
.end method

.method public setrRDoorLockStatus(I)V
    .registers 2
    .param p1, "rRDoorLockStatus"    # I

    .prologue
    .line 138
    iput p1, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoorLockStatus:I

    .line 139
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DoorStatus{bonnetDoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->bonnetDoor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLDoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fRDoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", loadSpace="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->loadSpace:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rLDoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRDoor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fLDoorLockStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoorLockStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", fRDoorLockStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoorLockStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rLDoorLockStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoorLockStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", rRDoorLockStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoorLockStatus:I

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
    .line 147
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->bonnetDoor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 150
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->loadSpace:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 152
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoor:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fLDoorLockStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 154
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->fRDoorLockStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rLDoorLockStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 156
    iget v0, p0, Lcom/qinggan/canbus/DoorStatus;->rRDoorLockStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return-void
.end method
