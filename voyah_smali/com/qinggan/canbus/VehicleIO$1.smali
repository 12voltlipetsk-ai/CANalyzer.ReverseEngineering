.class final Lcom/qinggan/canbus/VehicleIO$1;
.super Ljava/lang/Object;
.source "VehicleIO.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/VehicleIO;
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
        "Lcom/qinggan/canbus/VehicleIO;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/VehicleIO;
    .registers 6
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 33
    new-instance v0, Lcom/qinggan/canbus/VehicleIO;

    invoke-direct {v0}, Lcom/qinggan/canbus/VehicleIO;-><init>()V

    .line 34
    .local v0, "VehicleIO":Lcom/qinggan/canbus/VehicleIO;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2b

    move v1, v2

    :goto_e
    iput-boolean v1, v0, Lcom/qinggan/canbus/VehicleIO;->parkDetectOn:Z

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2d

    move v1, v2

    :goto_17
    iput-boolean v1, v0, Lcom/qinggan/canbus/VehicleIO;->reverseDetectOn:Z

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_2f

    move v1, v2

    :goto_20
    iput-boolean v1, v0, Lcom/qinggan/canbus/VehicleIO;->AVINDetectOn:Z

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_31

    :goto_28
    iput-boolean v2, v0, Lcom/qinggan/canbus/VehicleIO;->AVIDDetectOn:Z

    .line 38
    return-object v0

    :cond_2b
    move v1, v3

    .line 34
    goto :goto_e

    :cond_2d
    move v1, v3

    .line 35
    goto :goto_17

    :cond_2f
    move v1, v3

    .line 36
    goto :goto_20

    :cond_31
    move v2, v3

    .line 37
    goto :goto_28
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/VehicleIO$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/VehicleIO;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/VehicleIO;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 29
    new-array v0, p1, [Lcom/qinggan/canbus/VehicleIO;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/VehicleIO$1;->newArray(I)[Lcom/qinggan/canbus/VehicleIO;

    move-result-object v0

    return-object v0
.end method
