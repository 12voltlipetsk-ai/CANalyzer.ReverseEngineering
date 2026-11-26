.class final Lcom/qinggan/canbus/NaviInfo$1;
.super Ljava/lang/Object;
.source "NaviInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/canbus/NaviInfo;
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
        "Lcom/qinggan/canbus/NaviInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/NaviInfo;
    .registers 5
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x1

    .line 175
    new-instance v0, Lcom/qinggan/canbus/NaviInfo;

    invoke-direct {v0}, Lcom/qinggan/canbus/NaviInfo;-><init>()V

    .line 176
    .local v0, "info":Lcom/qinggan/canbus/NaviInfo;
    const-class v1, Lcom/qinggan/canbus/GuideState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/GuideState;

    iput-object v1, v0, Lcom/qinggan/canbus/NaviInfo;->guideState:Lcom/qinggan/canbus/GuideState;

    .line 177
    const-class v1, Lcom/qinggan/canbus/CalcState;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/CalcState;

    # setter for: Lcom/qinggan/canbus/NaviInfo;->calcState:Lcom/qinggan/canbus/CalcState;
    invoke-static {v0, v1}, Lcom/qinggan/canbus/NaviInfo;->access$002(Lcom/qinggan/canbus/NaviInfo;Lcom/qinggan/canbus/CalcState;)Lcom/qinggan/canbus/CalcState;

    .line 178
    const-class v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/qinggan/canbus/TurnByTurnIconInfo;

    iput-object v1, v0, Lcom/qinggan/canbus/NaviInfo;->mTurnByTurnInfo:Lcom/qinggan/canbus/TurnByTurnIconInfo;

    .line 179
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/NaviInfo;->directionId:I

    .line 180
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/NaviInfo;->heading:I

    .line 181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/NaviInfo;->destDistance:I

    .line 182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/NaviInfo;->nextDistance:I

    .line 183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/NaviInfo;->remainTime:I

    .line 184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/qinggan/canbus/NaviInfo;->param:I

    .line 185
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/NaviInfo;->currentRoadName:Ljava/lang/String;

    .line 186
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/NaviInfo;->turnRoadName:Ljava/lang/String;

    .line 187
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-ne v1, v2, :cond_94

    move v1, v2

    :goto_68
    iput-boolean v1, v0, Lcom/qinggan/canbus/NaviInfo;->display:Z

    .line 188
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/qinggan/canbus/NaviInfo;->mRoundAboutAngle:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qinggan/canbus/NaviInfo;->access$102(Lcom/qinggan/canbus/NaviInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 189
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/NaviInfo;->mRoundAboutNum:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/NaviInfo;->access$202(Lcom/qinggan/canbus/NaviInfo;I)I

    .line 190
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/NaviInfo;->mRoundAboutOut:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/NaviInfo;->access$302(Lcom/qinggan/canbus/NaviInfo;I)I

    .line 191
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/qinggan/canbus/NaviInfo;->destName:Ljava/lang/String;

    .line 192
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/NaviInfo;->is_straight:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/NaviInfo;->access$402(Lcom/qinggan/canbus/NaviInfo;I)I

    .line 193
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    # setter for: Lcom/qinggan/canbus/NaviInfo;->tbtIconId:I
    invoke-static {v0, v1}, Lcom/qinggan/canbus/NaviInfo;->access$502(Lcom/qinggan/canbus/NaviInfo;I)I

    .line 194
    return-object v0

    .line 187
    :cond_94
    const/4 v1, 0x0

    goto :goto_68
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .registers 3

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/NaviInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qinggan/canbus/NaviInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/qinggan/canbus/NaviInfo;
    .registers 3
    .param p1, "size"    # I

    .prologue
    .line 171
    new-array v0, p1, [Lcom/qinggan/canbus/NaviInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .registers 3

    .prologue
    .line 169
    invoke-virtual {p0, p1}, Lcom/qinggan/canbus/NaviInfo$1;->newArray(I)[Lcom/qinggan/canbus/NaviInfo;

    move-result-object v0

    return-object v0
.end method
