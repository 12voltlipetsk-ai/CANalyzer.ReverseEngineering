.class public Lcom/qinggan/canbus/PreChargeInfo;
.super Ljava/lang/Object;
.source "PreChargeInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/PreChargeInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final OFF:I = 0x0

.field public static final ON:I = 0x1


# instance fields
.field public mCancelFlag:I

.field public mEndHour:I

.field public mEndMinute:I

.field public mStartFlag:I

.field public mStartHour:I

.field public mStartMinute:I

.field public mUserDetermineFlag:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 81
    new-instance v0, Lcom/qinggan/canbus/PreChargeInfo$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/PreChargeInfo$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/PreChargeInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .prologue
    const/4 v0, 0x0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mStartHour:I

    .line 20
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mStartMinute:I

    .line 28
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mEndHour:I

    .line 35
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mEndMinute:I

    .line 44
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mUserDetermineFlag:I

    .line 54
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mStartFlag:I

    .line 63
    iput v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mCancelFlag:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 77
    iget v0, p0, Lcom/qinggan/canbus/PreChargeInfo;->mStartHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    return-void
.end method
