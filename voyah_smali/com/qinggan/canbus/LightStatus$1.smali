.class final Lcom/qinggan/canbus/LightStatus$1;
.super Ljava/lang/Object;
.source "LightStatus.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/LightStatus;
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
        "Lcom/qinggan/canbus/LightStatus;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 196
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/LightStatus;
    .registers 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 203
    new-instance v0, Lcom/qinggan/canbus/LightStatus;

    invoke-direct {v0}, Lcom/qinggan/canbus/LightStatus;-><init>()V

    .line 204
    .local v0, "lightStatus":Lcom/qinggan/canbus/LightStatus;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->directionL:I

    .line 205
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->directionR:I

    .line 206
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->fogFront:I

    .line 207
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->fogRear:I

    .line 208
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->mainBeam:I

    .line 209
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->sideLight:I

    .line 210
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->ebdLamp:I

    .line 211
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->dippedBeam:I

    .line 212
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->positionLamp:I

    .line 213
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->dayLight:I

    .line 214
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->stopLight:I

    .line 215
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->reversLight:I

    .line 216
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/LightStatus;->cautionLight:I

    .line 217
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/LightStatus;->headLight:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/LightStatus;->access$002(Lcom/qinggan/canbus/LightStatus;I)I

    .line 218
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/LightStatus;->headLightLevel:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/LightStatus;->access$102(Lcom/qinggan/canbus/LightStatus;I)I

    .line 219
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/LightStatus;->headLightStatusOperability:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/LightStatus;->access$202(Lcom/qinggan/canbus/LightStatus;I)I

    .line 220
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/LightStatus;->autoLamp:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/LightStatus;->access$302(Lcom/qinggan/canbus/LightStatus;I)I

    .line 221
    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/LightStatus$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/LightStatus;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/LightStatus;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 198
    new-array v0, p1, [Lcom/qinggan/canbus/LightStatus;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 196
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/LightStatus$1;->newArray(I)[Lcom/qinggan/canbus/LightStatus;

    move-result-object v0

    return-object v0
.end method
