.class public Lcom/qinggan/canbus/DispinfoSettingStatus;
.super Ljava/lang/Object;
.source "DispinfoSettingStatus.java"


# static fields
.field public static final AMFM_STATUS_AM:I = 0x1

.field public static final AMFM_STATUS_FM:I = 0x2

.field public static final AMFM_STATUS_INVALID:I = 0x3

.field public static final AMFM_STATUS_OFF:I = 0x0

.field public static final CMD_ID_AMFM_STATUS:I = 0x191

.field public static final CMD_ID_AM_FREQUENCY:I = 0x199

.field public static final CMD_ID_DISPINFOSETTING_BASE:I = 0x190

.field public static final CMD_ID_DRV_DIRECTION:I = 0x193

.field public static final CMD_ID_FM_FREQUENCY:I = 0x19a

.field public static final CMD_ID_LANG_SETTING:I = 0x194

.field public static final CMD_ID_MUSIC_INPUT_TYPE:I = 0x195

.field public static final CMD_ID_NEXT_ROAD_INFO:I = 0x196

.field public static final CMD_ID_PAGE_CHANGE_CTRL:I = 0x198

.field public static final CMD_ID_PHONE_STATUS:I = 0x192

.field public static final CMD_ID_STEERING_SWITCH_MODE:I = 0x19b

.field public static final CMD_ID_TURNING_DISTANCE:I = 0x19c

.field public static final CMD_ID_TURNING_DISTANCE_OFF:I = 0x19d

.field public static final CMD_ID_TURN_DIRECTION:I = 0x197

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/DispinfoSettingStatus;",
            ">;"
        }
    .end annotation
.end field

.field public static final DRIVING_DIRECTION_EAST:I = 0x0

.field public static final DRIVING_DIRECTION_EAST_NOUTH:I = 0x4

.field public static final DRIVING_DIRECTION_EAST_SOUTH:I = 0x5

.field public static final DRIVING_DIRECTION_NOUTH:I = 0x3

.field public static final DRIVING_DIRECTION_SOUTH:I = 0x1

.field public static final DRIVING_DIRECTION_WEST:I = 0x2

.field public static final DRIVING_DIRECTION_WEST_NOUTH:I = 0x6

.field public static final DRIVING_DIRECTION_WEST_SOUTH:I = 0x7

.field public static final LANG_DISPLAY_ARAB:I = 0x2

.field public static final LANG_DISPLAY_CHINESE:I = 0x0

.field public static final LANG_DISPLAY_ENGLISH:I = 0x1

.field public static final LANG_DISPLAY_PORTUGUESE:I = 0x4

.field public static final LANG_DISPLAY_RUSSIAN:I = 0x3

.field public static final LANG_DISPLAY_SPANISH:I = 0x5

.field public static final MUSIC_INPUT_TYPE_AUX:I = 0x3

.field public static final MUSIC_INPUT_TYPE_BT:I = 0x6

.field public static final MUSIC_INPUT_TYPE_CD:I = 0x4

.field public static final MUSIC_INPUT_TYPE_DVD:I = 0x5

.field public static final MUSIC_INPUT_TYPE_INTERNET_MUSIC:I = 0x7

.field public static final MUSIC_INPUT_TYPE_INTERNET_RADIO:I = 0x8

.field public static final MUSIC_INPUT_TYPE_IPOD:I = 0x2

.field public static final MUSIC_INPUT_TYPE_OFF:I = 0x0

.field public static final MUSIC_INPUT_TYPE_USB:I = 0x1

.field public static final NEXT_ROAD_DESTINATION:I = 0x3

.field public static final NEXT_ROAD_INVALID:I = 0x7

.field public static final NEXT_ROAD_OFF:I = 0x0

.field public static final NEXT_ROAD_RESERVED1:I = 0x4

.field public static final NEXT_ROAD_RESERVED2:I = 0x5

.field public static final NEXT_ROAD_RESERVED3:I = 0x6

.field public static final NEXT_ROAD_ROTARY_ISLAND:I = 0x2

.field public static final NEXT_ROAD_STRAIGHT:I = 0x1

.field public static final PAGE_CHANGE_CTRL_DEFAULT:I = 0x0

.field public static final PAGE_CHANGE_CTRL_PAGE_BACK:I = 0x6

.field public static final PAGE_CHANGE_CTRL_PAGE_DOWN:I = 0x2

.field public static final PAGE_CHANGE_CTRL_PAGE_LEFT:I = 0x3

.field public static final PAGE_CHANGE_CTRL_PAGE_RESERVED:I = 0x7

.field public static final PAGE_CHANGE_CTRL_PAGE_RIGHT:I = 0x4

.field public static final PAGE_CHANGE_CTRL_PAGE_SET:I = 0x5

.field public static final PAGE_CHANGE_CTRL_PAGE_UP:I = 0x1

.field public static final PHONE_STATUS_BUSY:I = 0x3

.field public static final PHONE_STATUS_INCOMMING_CALL:I = 0x1

.field public static final PHONE_STATUS_NO_CALL:I = 0x0

.field public static final PHONE_STATUS_OUTGOING_CALL:I = 0x2

.field public static final PHONE_STATUS_TURNING_OFF:I = 0x4

.field public static final STEERING_SWITCH_MODE_ERROR:I = 0x3

.field public static final STEERING_SWITCH_MODE_ICU:I = 0x1

.field public static final STEERING_SWITCH_MODE_IHU:I = 0x2

.field public static final STEERING_SWITCH_MODE_INITIAL:I = 0x0

.field public static final TURNING_DISTANCE_OFF:I = 0x1

.field public static final TURNING_DISTANCE_ON:I = 0x0

.field public static final TURN_DIRECTION_0:I = 0x0

.field public static final TURN_DIRECTION_135:I = 0x3

.field public static final TURN_DIRECTION_180:I = 0x4

.field public static final TURN_DIRECTION_225:I = 0x5

.field public static final TURN_DIRECTION_270:I = 0x6

.field public static final TURN_DIRECTION_315:I = 0x7

.field public static final TURN_DIRECTION_45:I = 0x1

.field public static final TURN_DIRECTION_90:I = 0x2

.field public static final UNKNOWN_VALUE_INT:I


# instance fields
.field public mAMFMStatus:I

.field public mAMFrequency:I

.field public mDrivingDirection:I

.field public mFMFrequency:I

.field public mLangDisplay:I

.field public mMusicInputType:I

.field public mNextRoad:I

.field public mPageChangeCtrl:I

.field public mPhoneStatus:I

.field public mSteeringSwitchMode:I

.field public mTurnDirection:I

.field public mTurningDistance:I

.field public mTurningDistanceOff:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 327
    new-instance v0, Lcom/qinggan/canbus/DispinfoSettingStatus$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/DispinfoSettingStatus$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/DispinfoSettingStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 303
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 170
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFMStatus:I

    .line 182
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPhoneStatus:I

    .line 197
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mDrivingDirection:I

    .line 206
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mLangDisplay:I

    .line 222
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mMusicInputType:I

    .line 237
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mNextRoad:I

    .line 252
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurnDirection:I

    .line 267
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPageChangeCtrl:I

    .line 273
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFrequency:I

    .line 279
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mFMFrequency:I

    .line 289
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mSteeringSwitchMode:I

    .line 295
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistance:I

    .line 301
    iput v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistanceOff:I

    .line 305
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 308
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .prologue
    .line 352
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v0, "sb":Ljava/lang/StringBuffer;
    const-string v1, "dispinfo Setting :===============\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 354
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAMFMStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFMStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPhoneStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPhoneStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 356
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDrivingDirection: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mDrivingDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 357
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mLangDisplay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mLangDisplay:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 358
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMusicInputType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mMusicInputType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 359
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mNextRoad: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mNextRoad:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 360
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTurnDirection:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurnDirection:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 361
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPageChangeCtrl: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPageChangeCtrl:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 362
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mAMFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 363
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFMFrequency: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mFMFrequency:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSteeringSwitchMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mSteeringSwitchMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 365
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTurningDistance: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistance:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 366
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTurningDistanceOff: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistanceOff:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 312
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFMStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPhoneStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 314
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mDrivingDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 315
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mLangDisplay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 316
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mMusicInputType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 317
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mNextRoad:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 318
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurnDirection:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 319
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mPageChangeCtrl:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 320
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mAMFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 321
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mFMFrequency:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 322
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mSteeringSwitchMode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 323
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistance:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 324
    iget v0, p0, Lcom/qinggan/canbus/DispinfoSettingStatus;->mTurningDistanceOff:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 325
    return-void
.end method
