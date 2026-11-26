.class final Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo$1;
.super Ljava/lang/Object;
.source "DiagnosticInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 212
    new-instance v0, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    invoke-direct {v0}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;-><init>()V

    .line 213
    .local v0, "dest":Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mGroupType:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$002(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mMemberType:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$102(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData1:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$202(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData2:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$302(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData3:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$402(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData4:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$502(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData5:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$602(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->mData6:I
    invoke-static {v0, v1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;->access$702(Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;I)I

    .line 221
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 208
    new-array v0, p1, [Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 206
    invoke-virtual {p0, p1}, Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo$1;->newArray(I)[Lcom/qinggan/carsignal/diagnostic/DiagnosticInfo;

    move-result-object v0

    return-object v0
.end method
