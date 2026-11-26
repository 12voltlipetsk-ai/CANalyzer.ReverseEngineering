.class public final Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
.super Ljava/lang/Object;
.source "DiagnosticInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final MSG_CMDID_ANT_STATE:I = 0x5

.field public static final MSG_CMDID_AUDIO_INFO:I = 0xf

.field public static final MSG_CMDID_BOARD_TEMP:I = 0x1

.field public static final MSG_CMDID_BT_INFO:I = 0x13

.field public static final MSG_CMDID_DISK_INFO:I = 0x11

.field public static final MSG_CMDID_MIC_STATE:I = 0x7

.field public static final MSG_CMDID_NETWORK_STATE:I = 0x3

.field public static final MSG_CMDID_RADIO_INFO:I = 0xd

.field public static final MSG_CMDID_RADIO_STRENGTH_INFO:I = 0x17

.field public static final MSG_CMDID_SPEAKER_STATE:I = 0x9

.field public static final MSG_CMDID_SWC_INFO:I = 0x15

.field public static final MSG_CMDID_USB_STATE:I = 0xb

.field public static final UNKNOWN:I


# instance fields
.field private mData1:I

.field private mData2:I

.field private mData3:I

.field private mData4:I

.field private mData5:I

.field private mData6:I

.field private mGroupType:I

.field private mMemberType:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 206
    new-instance v0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo$1;

    invoke-direct {v0}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    .line 41
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    .line 46
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    .line 50
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    .line 54
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    .line 58
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    .line 62
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    .line 66
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    .line 75
    return-void
.end method

.method public constructor <init>(IIIIIIII)V
    .registers 10
    .param p1, "mGroupType"    # I
    .param p2, "mMemberType"    # I
    .param p3, "data1"    # I
    .param p4, "data2"    # I
    .param p5, "data3"    # I
    .param p6, "data4"    # I
    .param p7, "data5"    # I
    .param p8, "data6"    # I

    .prologue
    const/4 v0, 0x0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    .line 41
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    .line 46
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    .line 50
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    .line 54
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    .line 58
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    .line 62
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    .line 66
    iput v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    .line 82
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    .line 83
    iput p2, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    .line 84
    iput p3, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    .line 85
    iput p4, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    .line 86
    iput p5, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    .line 87
    iput p6, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    .line 88
    iput p7, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    .line 89
    iput p8, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    .line 90
    return-void
.end method

.method static synthetic access$002(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    return p1
.end method

.method static synthetic access$102(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    return p1
.end method

.method static synthetic access$202(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    return p1
.end method

.method static synthetic access$302(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    return p1
.end method

.method static synthetic access$402(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    return p1
.end method

.method static synthetic access$502(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    return p1
.end method

.method static synthetic access$602(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    return p1
.end method

.method static synthetic access$702(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .param p1, "x1"    # I

    .prologue
    .line 7
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    return p1
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 191
    const/4 v0, 0x0

    return v0
.end method

.method public getData1()I
    .registers 2

    .prologue
    .line 119
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    return v0
.end method

.method public getData2()I
    .registers 2

    .prologue
    .line 131
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    return v0
.end method

.method public getData3()I
    .registers 2

    .prologue
    .line 143
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    return v0
.end method

.method public getData4()I
    .registers 2

    .prologue
    .line 155
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    return v0
.end method

.method public getData5()I
    .registers 2

    .prologue
    .line 167
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    return v0
.end method

.method public getData6()I
    .registers 2

    .prologue
    .line 179
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    return v0
.end method

.method public getGroupType()I
    .registers 2

    .prologue
    .line 95
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    return v0
.end method

.method public getMemberType()I
    .registers 2

    .prologue
    .line 107
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    return v0
.end method

.method public setData1(I)V
    .registers 2
    .param p1, "data1"    # I

    .prologue
    .line 125
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    .line 126
    return-void
.end method

.method public setData2(I)V
    .registers 2
    .param p1, "data2"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    .line 138
    return-void
.end method

.method public setData3(I)V
    .registers 2
    .param p1, "data3"    # I

    .prologue
    .line 149
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    .line 150
    return-void
.end method

.method public setData4(I)V
    .registers 2
    .param p1, "data4"    # I

    .prologue
    .line 161
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    .line 162
    return-void
.end method

.method public setData5(I)V
    .registers 2
    .param p1, "data5"    # I

    .prologue
    .line 173
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    .line 174
    return-void
.end method

.method public setData6(I)V
    .registers 2
    .param p1, "data6"    # I

    .prologue
    .line 185
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    .line 186
    return-void
.end method

.method public setGroupType(I)V
    .registers 2
    .param p1, "groupType"    # I

    .prologue
    .line 101
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    .line 102
    return-void
.end method

.method public setMemberType(I)V
    .registers 2
    .param p1, "memberType"    # I

    .prologue
    .line 113
    iput p1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    .line 114
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 228
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DiagnosticInfo{mGroupType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mMemberType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData1="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData3="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData4="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData5="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mData6="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

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
    .line 195
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 196
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 197
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 199
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 200
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget v0, p0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 204
    return-void
.end method
