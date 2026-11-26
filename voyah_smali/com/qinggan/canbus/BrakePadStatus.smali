.class public final Lcom/qinggan/canbus/BrakePadStatus;
.super Ljava/lang/Object;
.source "BrakePadStatus.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/qinggan/canbus/BrakePadStatus;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mFrontPadStatus:I

.field public mRearPadStatus:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 44
    new-instance v0, Lcom/qinggan/canbus/BrakePadStatus$1;

    invoke-direct {v0}, Lcom/qinggan/canbus/BrakePadStatus$1;-><init>()V

    sput-object v0, Lcom/qinggan/canbus/BrakePadStatus;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public constructor <init>(II)V
    .registers 3
    .param p1, "front"    # I
    .param p2, "rear"    # I

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput p1, p0, Lcom/qinggan/canbus/BrakePadStatus;->mFrontPadStatus:I

    .line 13
    iput p2, p0, Lcom/qinggan/canbus/BrakePadStatus;->mRearPadStatus:I

    .line 14
    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public getFrontPad()I
    .registers 2

    .prologue
    .line 20
    iget v0, p0, Lcom/qinggan/canbus/BrakePadStatus;->mFrontPadStatus:I

    return v0
.end method

.method public getRearPad()I
    .registers 2

    .prologue
    .line 24
    iget v0, p0, Lcom/qinggan/canbus/BrakePadStatus;->mRearPadStatus:I

    return v0
.end method

.method public setFrontPad(I)V
    .registers 2
    .param p1, "frontPad"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/qinggan/canbus/BrakePadStatus;->mFrontPadStatus:I

    .line 29
    return-void
.end method

.method public setRearPad(I)V
    .registers 2
    .param p1, "rearPad"    # I

    .prologue
    .line 32
    iput p1, p0, Lcom/qinggan/canbus/BrakePadStatus;->mRearPadStatus:I

    .line 33
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .prologue
    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "BrakePadStatus{mFrontPadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/BrakePadStatus;->mFrontPadStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", mRearPadStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/qinggan/canbus/BrakePadStatus;->mRearPadStatus:I

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
    .line 40
    iget v0, p0, Lcom/qinggan/canbus/BrakePadStatus;->mFrontPadStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 41
    iget v0, p0, Lcom/qinggan/canbus/BrakePadStatus;->mRearPadStatus:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    return-void
.end method
