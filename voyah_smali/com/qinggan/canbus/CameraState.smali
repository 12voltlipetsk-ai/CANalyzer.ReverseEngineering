.class public Lcom/qinggan/canbus/CameraState;
.super Ljava/lang/Object;
.source "CameraState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CAMERA_SYS_CLOSE:I = 0x0

.field public static final CAMERA_SYS_ERROR:I = 0x2

.field public static final CAMERA_SYS_OPEN:I = 0x1

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/CameraState;",
            ">;"
        }
    .end annotation
.end field

.field public static final FACEID_DEFAULT:I = 0x0

.field public static final FACEID_LOGIN_FAIL:I = 0x6

.field public static final FACEID_LOGIN_INPROGRESS:I = 0x4

.field public static final FACEID_LOGIN_SUCCESS:I = 0x5

.field public static final FACEID_REGIST_FAIL:I = 0x3

.field public static final FACEID_REGIST_INPROGRESS:I = 0x1

.field public static final FACEID_REGIST_SUCCESS:I = 0x2


# instance fields
.field private arCameraState:I

.field private dmsAPPState:I

.field private dmsCameraState:I

.field private dmsHicarState:I

.field private dvrAPPState:I

.field private dvrCameraState:I

.field private dvrHicarState:I

.field private faceidLoginState:I

.field private faceidRegistState:I

.field private nvsCameraState:I

.field private roaAPPState:I

.field private roaCameraState:I

.field private roaHicarState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 215
    new-instance v0, Lcom/qinggan/canbus/CameraState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/CameraState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/CameraState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->faceidLoginState:I

    .line 37
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->faceidRegistState:I

    .line 40
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->arCameraState:I

    .line 44
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->dvrHicarState:I

    .line 45
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->roaHicarState:I

    .line 46
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->dmsHicarState:I

    .line 49
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->dvrAPPState:I

    .line 50
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->roaAPPState:I

    .line 52
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->dvrCameraState:I

    .line 53
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->roaCameraState:I

    .line 54
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->dmsCameraState:I

    .line 58
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->nvsCameraState:I

    .line 59
    iput v0, p0, Lcom/qinggan/canbus/CameraState;->dmsAPPState:I

    .line 63
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->faceidLoginState:I

    return p1
.end method

.method static synthetic access$1002(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dmsCameraState:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->faceidRegistState:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->arCameraState:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dvrHicarState:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->roaHicarState:I

    return p1
.end method

.method static synthetic access$502(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dmsHicarState:I

    return p1
.end method

.method static synthetic access$602(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dvrAPPState:I

    return p1
.end method

.method static synthetic access$702(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->roaAPPState:I

    return p1
.end method

.method static synthetic access$802(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dvrCameraState:I

    return p1
.end method

.method static synthetic access$902(Lcom/qinggan/canbus/CameraState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/CameraState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->roaCameraState:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 197
    const/4 v0, 0x0

    return v0
.end method

.method public getarCameraState()I
    .registers 2

    .prologue
    .line 92
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->arCameraState:I

    return v0
.end method

.method public getdmsAPPState()I
    .registers 2

    .prologue
    .line 181
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dmsAPPState:I

    return v0
.end method

.method public getdmsCameraState()I
    .registers 2

    .prologue
    .line 170
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dmsCameraState:I

    return v0
.end method

.method public getdmsHicarState()I
    .registers 2

    .prologue
    .line 121
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dmsHicarState:I

    return v0
.end method

.method public getdvrAPPState()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dvrAPPState:I

    return v0
.end method

.method public getdvrCameraState()I
    .registers 2

    .prologue
    .line 151
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dvrCameraState:I

    return v0
.end method

.method public getdvrHicarState()I
    .registers 2

    .prologue
    .line 102
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dvrHicarState:I

    return v0
.end method

.method public getfaceidLoginState()I
    .registers 2

    .prologue
    .line 73
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->faceidLoginState:I

    return v0
.end method

.method public getfaceidRegistState()I
    .registers 2

    .prologue
    .line 83
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->faceidRegistState:I

    return v0
.end method

.method public getnvsCameraState()I
    .registers 2

    .prologue
    .line 190
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->nvsCameraState:I

    return v0
.end method

.method public getroaAPPState()I
    .registers 2

    .prologue
    .line 140
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->roaAPPState:I

    return v0
.end method

.method public getroaCameraState()I
    .registers 2

    .prologue
    .line 160
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->roaCameraState:I

    return v0
.end method

.method public getroaHicarState()I
    .registers 2

    .prologue
    .line 112
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->roaHicarState:I

    return v0
.end method

.method public setarCameraState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 88
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->arCameraState:I

    .line 89
    return-void
.end method

.method public setdmsAPPState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 176
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dmsAPPState:I

    .line 177
    return-void
.end method

.method public setdmsCameraState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 165
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dmsCameraState:I

    .line 166
    return-void
.end method

.method public setdmsHicarState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 117
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dmsHicarState:I

    .line 118
    return-void
.end method

.method public setdvrAPPState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 127
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dvrAPPState:I

    .line 128
    return-void
.end method

.method public setdvrCameraState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 147
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dvrCameraState:I

    .line 148
    return-void
.end method

.method public setdvrHicarState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 98
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->dvrHicarState:I

    .line 99
    return-void
.end method

.method public setfaceidLoginState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 68
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->faceidLoginState:I

    .line 69
    return-void
.end method

.method public setfaceidRegistState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 79
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->faceidRegistState:I

    .line 80
    return-void
.end method

.method public setnvsCameraState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->nvsCameraState:I

    .line 186
    return-void
.end method

.method public setroaAPPState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 136
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->roaAPPState:I

    .line 137
    return-void
.end method

.method public setroaCameraState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->roaCameraState:I

    .line 157
    return-void
.end method

.method public setroaHicarState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 108
    iput p1, p0, Lcom/qinggan/canbus/CameraState;->roaHicarState:I

    .line 109
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraState{prio1===>[(dms arg)faceidLoginState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->faceidLoginState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",(dms)faceidRegistState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->faceidRegistState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],prio2===>[(dvr)arCameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->arCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],prio3===>[(dvr)dvrHicarState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->dvrHicarState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prio3  (roa)roaHicarState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->roaHicarState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prio3  (dms)dmsHicarState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->dmsHicarState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],prio4===>[(dvr)dvrAPPState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->dvrAPPState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prio4  (roa)roaAPPState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->roaAPPState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prio4  (dvr)dvrCameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->dvrCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prio4  (roa)roaCameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->roaCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",prio4  (dms)dmsCameraState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/CameraState;->dmsCameraState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "],end  ================================================="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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
    .line 202
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->faceidLoginState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->faceidRegistState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->arCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 205
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dvrHicarState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 206
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->roaHicarState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 207
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dmsHicarState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dvrAPPState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->roaAPPState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 210
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dvrCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->roaCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    iget v0, p0, Lcom/qinggan/canbus/CameraState;->dmsCameraState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 213
    return-void
.end method
