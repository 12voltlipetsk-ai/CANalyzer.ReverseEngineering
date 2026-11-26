.class public Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/common/Constants$Behavior;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Radio"
.end annotation


# static fields
.field public static AutoNextOnlineRadio:Ljava/lang/String;

.field public static CancelFav:Ljava/lang/String;

.field public static CancelFavLocal:Ljava/lang/String;

.field public static Fav:Ljava/lang/String;

.field public static FavLocal:Ljava/lang/String;

.field public static LeaveRadio:Ljava/lang/String;

.field public static LocalRadioAutoPlay:Ljava/lang/String;

.field public static LocalRadioClickIdentified:Ljava/lang/String;

.field public static LocalRadioFineTuning:Ljava/lang/String;

.field public static LocalRadioIdentify:Ljava/lang/String;

.field public static NextLocalRadio:Ljava/lang/String;

.field public static NextOnlineRadio:Ljava/lang/String;

.field public static OnlineRadio125Speed:Ljava/lang/String;

.field public static OnlineRadio15Speed:Ljava/lang/String;

.field public static OnlineRadioBuy:Ljava/lang/String;

.field public static OnlineRadioCategory:Ljava/lang/String;

.field public static OnlineRadioClickSearched:Ljava/lang/String;

.field public static OnlineRadioClickSubscribed:Ljava/lang/String;

.field public static OpenLocalRadio:Ljava/lang/String;

.field public static OpenOnlineRadio:Ljava/lang/String;

.field public static PauseLocalRadio:Ljava/lang/String;

.field public static PauseOnlineRadio:Ljava/lang/String;

.field public static PlayLocalRadio:Ljava/lang/String;

.field public static PlayMode:Ljava/lang/String;

.field public static PreLocalRadio:Ljava/lang/String;

.field public static PreOnlineRadio:Ljava/lang/String;

.field public static SearchLocalRadio:Ljava/lang/String;

.field public static SearchOnlineRadio:Ljava/lang/String;

.field public static clickOnlineRadio:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 368
    const-string v0, "1020"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OpenOnlineRadio:Ljava/lang/String;

    .line 370
    const-string v0, "102001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->clickOnlineRadio:Ljava/lang/String;

    .line 372
    const-string v0, "102002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->PauseOnlineRadio:Ljava/lang/String;

    .line 374
    const-string v0, "1020001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->SearchOnlineRadio:Ljava/lang/String;

    .line 376
    const-string v0, "1020002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->PreOnlineRadio:Ljava/lang/String;

    .line 378
    const-string v0, "1020003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->NextOnlineRadio:Ljava/lang/String;

    .line 381
    const-string v0, "1020004"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->PlayMode:Ljava/lang/String;

    .line 384
    const-string v0, "1020005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->Fav:Ljava/lang/String;

    .line 387
    const-string v0, "1020006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->CancelFav:Ljava/lang/String;

    .line 389
    const-string v0, "1020007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->AutoNextOnlineRadio:Ljava/lang/String;

    .line 391
    const-string v0, "1020008"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OnlineRadio125Speed:Ljava/lang/String;

    .line 393
    const-string v0, "1020009"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OnlineRadio15Speed:Ljava/lang/String;

    .line 395
    const-string v0, "1020010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OnlineRadioBuy:Ljava/lang/String;

    .line 397
    const-string v0, "1020011"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OnlineRadioCategory:Ljava/lang/String;

    .line 399
    const-string v0, "1020013"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OnlineRadioClickSubscribed:Ljava/lang/String;

    .line 401
    const-string v0, "1020014"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OnlineRadioClickSearched:Ljava/lang/String;

    .line 405
    const-string v0, "1021"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->OpenLocalRadio:Ljava/lang/String;

    .line 407
    const-string v0, "1021001"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->SearchLocalRadio:Ljava/lang/String;

    .line 409
    const-string v0, "1021002"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->PreLocalRadio:Ljava/lang/String;

    .line 411
    const-string v0, "1021003"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->NextLocalRadio:Ljava/lang/String;

    .line 413
    const-string v0, "1021005"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->FavLocal:Ljava/lang/String;

    .line 415
    const-string v0, "1021006"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->CancelFavLocal:Ljava/lang/String;

    .line 417
    const-string v0, "1021007"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->LocalRadioIdentify:Ljava/lang/String;

    .line 419
    const-string v0, "1021008"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->LocalRadioClickIdentified:Ljava/lang/String;

    .line 421
    const-string v0, "1021009"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->LocalRadioAutoPlay:Ljava/lang/String;

    .line 423
    const-string v0, "1021010"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->LocalRadioFineTuning:Ljava/lang/String;

    .line 425
    const-string v0, "102101"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->PlayLocalRadio:Ljava/lang/String;

    .line 427
    const-string v0, "102102"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->PauseLocalRadio:Ljava/lang/String;

    .line 429
    const-string v0, "10211"

    sput-object v0, Lcom/qinggan/datatracking/common/Constants$Behavior$Radio;->LeaveRadio:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
