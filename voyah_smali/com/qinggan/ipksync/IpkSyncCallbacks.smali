.class public Lcom/qinggan/ipksync/IpkSyncCallbacks;
.super Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;
.source "IpkSyncCallbacks.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/qinggan/ipksync/IIpkSyncCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onIcmAck2EhuPhone(II)V
    .registers 3
    .param p1, "ack"    # I
    .param p2, "frameIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 32
    return-void
.end method

.method public onIcmAck2EhuStatus(I)V
    .registers 2
    .param p1, "ack"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 19
    return-void
.end method

.method public onIcmAck2EhuUpdate(I)V
    .registers 2
    .param p1, "ready"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public onIcmControlContactsAction(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 295
    return-void
.end method

.method public onIcmControlMedia(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 232
    return-void
.end method

.method public onIcmControlMediaType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    return-void
.end method

.method public onIcmControlPhoneAction(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    return-void
.end method

.method public onIcmControlRadio(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 245
    return-void
.end method

.method public onIcmControlRadioType(I)V
    .registers 2
    .param p1, "type"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 271
    return-void
.end method

.method public onIcmReq2EhuCamp()V
    .registers 1

    .prologue
    .line 385
    return-void
.end method

.method public onIcmReq2EhuCampStopSync()V
    .registers 1

    .prologue
    .line 393
    return-void
.end method

.method public onIcmReq2EhuContacts()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 108
    return-void
.end method

.method public onIcmReq2EhuFavorate(I)V
    .registers 2
    .param p1, "action"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 331
    return-void
.end method

.method public onIcmReq2EhuIpkPageChanged(I)V
    .registers 2
    .param p1, "ipkPageState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    return-void
.end method

.method public onIcmReq2EhuKeyCode(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    return-void
.end method

.method public onIcmReq2EhuLanguageState(II)V
    .registers 3
    .param p1, "businessType"    # I
    .param p2, "state"    # I

    .prologue
    .line 414
    return-void
.end method

.method public onIcmReq2EhuMedia()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 84
    return-void
.end method

.method public onIcmReq2EhuMediaStopSync()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 92
    return-void
.end method

.method public onIcmReq2EhuMuStatue(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 343
    return-void
.end method

.method public onIcmReq2EhuNaviShow(I)V
    .registers 2
    .param p1, "windowState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 56
    return-void
.end method

.method public onIcmReq2EhuNaviStopSync()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 64
    return-void
.end method

.method public onIcmReq2EhuNaviStopSyncType(I)V
    .registers 2
    .param p1, "windowState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 76
    return-void
.end method

.method public onIcmReq2EhuPauseByArea(I)V
    .registers 2
    .param p1, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 319
    return-void
.end method

.method public onIcmReq2EhuPhone()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 116
    return-void
.end method

.method public onIcmReq2EhuPhoneStopSync()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 133
    return-void
.end method

.method public onIcmReq2EhuRadio()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 100
    return-void
.end method

.method public onIcmReq2EhuRest()V
    .registers 1

    .prologue
    .line 369
    return-void
.end method

.method public onIcmReq2EhuRestStopSync()V
    .registers 1

    .prologue
    .line 377
    return-void
.end method

.method public onIcmReq2EhuShowByArea(I)V
    .registers 2
    .param p1, "area"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    return-void
.end method

.method public onIcmReq2EhuTbtInfo(I)V
    .registers 2
    .param p1, "status"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    return-void
.end method

.method public onIcmReq2EhuWarning(II)V
    .registers 3
    .param p1, "toneId"    # I
    .param p2, "toneType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    return-void
.end method

.method public onIcmReq2EhuWarningStopSync()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 149
    return-void
.end method

.method public onIcmStatus2EhuIpkState(I)V
    .registers 2
    .param p1, "ipkState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public onIcmStatus2EhuReceivePkg(I)V
    .registers 2
    .param p1, "receivePkgState"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 188
    return-void
.end method

.method public onIcmUpdateSetIkpMusic(I)V
    .registers 2
    .param p1, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    return-void
.end method

.method public onIcmUpdateSetTheme(I)V
    .registers 2
    .param p1, "themeId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 197
    return-void
.end method

.method public onIcmUpdateSetTimeFormat(I)V
    .registers 2
    .param p1, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 219
    return-void
.end method
