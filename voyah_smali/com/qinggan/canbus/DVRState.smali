.class public Lcom/qinggan/canbus/DVRState;
.super Ljava/lang/Object;
.source "DVRState.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/DVRState;",
            ">;"
        }
    .end annotation
.end field

.field public static final DVR_PHOTO_FAIL:I = 0x2

.field public static final DVR_PHOTO_FULL:I = 0x3

.field public static final DVR_PHOTO_NO_DISPLAY:I = 0x0

.field public static final DVR_PHOTO_SUCCESS:I = 0x1

.field public static final DVR_SYS_ERROR:I = 0x6

.field public static final DVR_SYS_INIT:I = 0x0

.field public static final DVR_SYS_RECORD:I = 0x1

.field public static final DVR_SYS_RECORD_BY_CRASH:I = 0x4

.field public static final DVR_SYS_RECORD_BY_USER:I = 0x3

.field public static final DVR_SYS_RECORD_PAUSR:I = 0x2

.field public static final DVR_SYS_UPDATE:I = 0x5

.field public static final DVR_WIFI_CLOSE:I = 0x0

.field public static final DVR_WIFI_CONNECT:I = 0x3

.field public static final DVR_WIFI_ERROR:I = 0x4

.field public static final DVR_WIFI_INIT:I = 0x1

.field public static final DVR_WIFI_NORMAL:I = 0x2

.field public static final H97_DVR_PHOTO_NO_DISPLAY:I = 0x0

.field public static final H97_DVR_PHOTO_SUCCESS:I = 0x1

.field public static final H97_DVR_SD_ERROR:I = 0x1

.field public static final H97_DVR_SD_FORMATE:I = 0x4

.field public static final H97_DVR_SD_NOMAL:I = 0x0

.field public static final H97_DVR_SD_PHOTO_FULL:I = 0x3

.field public static final H97_DVR_SD_URGENT_FULL:I = 0x2

.field public static final H97_DVR_SYS_ERROR:I = 0x7

.field public static final H97_DVR_SYS_INIT:I = 0x1

.field public static final H97_DVR_SYS_OFF:I = 0x0

.field public static final H97_DVR_SYS_RECORD:I = 0x2

.field public static final H97_DVR_SYS_RECORD_MONITOR:I = 0x6

.field public static final H97_DVR_SYS_RECORD_STOP:I = 0x3

.field public static final H97_DVR_SYS_RECORD_URGENT:I = 0x4

.field public static final H97_DVR_SYS_VIDEO_PLAY:I = 0x5


# instance fields
.field private dvrPhotoRes:I

.field private dvrSysState:I

.field private dvrWifiState:I

.field private dvrsdcardState:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 162
    new-instance v0, Lcom/qinggan/canbus/DVRState$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/DVRState$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/DVRState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, -0x1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput v0, p0, Lcom/qinggan/canbus/DVRState;->dvrSysState:I

    .line 84
    iput v0, p0, Lcom/qinggan/canbus/DVRState;->dvrWifiState:I

    .line 85
    iput v0, p0, Lcom/qinggan/canbus/DVRState;->dvrPhotoRes:I

    .line 86
    iput v0, p0, Lcom/qinggan/canbus/DVRState;->dvrsdcardState:I

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/canbus/DVRState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/DVRState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrSysState:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/canbus/DVRState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/DVRState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrWifiState:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/canbus/DVRState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/DVRState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrPhotoRes:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/canbus/DVRState;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/canbus/DVRState;
    .param p1, "x1"    # I

    .prologue
    .line 6
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrsdcardState:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public getDvrPhotoRes()I
    .registers 2

    .prologue
    .line 137
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrPhotoRes:I

    return v0
.end method

.method public getDvrSdcardState()I
    .registers 2

    .prologue
    .line 145
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrsdcardState:I

    return v0
.end method

.method public getDvrSysState()I
    .registers 2

    .prologue
    .line 106
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrSysState:I

    return v0
.end method

.method public getDvrWifiState()I
    .registers 2

    .prologue
    .line 122
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrWifiState:I

    return v0
.end method

.method public setDvrPhotoRes(I)V
    .registers 2
    .param p1, "res"    # I

    .prologue
    .line 126
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrPhotoRes:I

    .line 127
    return-void
.end method

.method public setDvrSdcardState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrsdcardState:I

    .line 142
    return-void
.end method

.method public setDvrSysState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 93
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrSysState:I

    .line 94
    return-void
.end method

.method public setDvrWifiState(I)V
    .registers 2
    .param p1, "state"    # I

    .prologue
    .line 110
    iput p1, p0, Lcom/qinggan/canbus/DVRState;->dvrWifiState:I

    .line 111
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 156
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrSysState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrWifiState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrPhotoRes:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v0, p0, Lcom/qinggan/canbus/DVRState;->dvrsdcardState:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    return-void
.end method
