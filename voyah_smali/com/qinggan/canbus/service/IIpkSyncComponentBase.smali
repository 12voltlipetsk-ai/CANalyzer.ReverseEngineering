.class public interface abstract Lcom/qinggan/canbus/service/IIpkSyncComponentBase;
.super Ljava/lang/Object;
.source "IIpkSyncComponentBase.java"


# virtual methods
.method public abstract attachIpkSyncCallbacks(Lcom/qinggan/ipksync/IIpkSyncCallbacks;)V
.end method

.method public abstract customThreeAreas(III)V
.end method

.method public abstract factoryUpgrade()V
.end method

.method public abstract getAreaIndex(I)I
.end method

.method public abstract getMUStateformICM()I
.end method

.method public abstract getWindowState()I
.end method

.method public abstract mediaRadioFocusChange(II)V
.end method

.method public abstract registerIpkUpdateCallback(Lcom/qinggan/ipksync/IIpkUpdataCallback;)V
.end method

.method public abstract restoreFactory()V
.end method

.method public abstract sendLanguageState(Ljava/lang/String;I)V
.end method

.method public abstract setLogState(I)V
.end method

.method public abstract startFileTransfer(I)V
.end method

.method public abstract startLogReceive()V
.end method

.method public abstract startUpload()V
.end method

.method public abstract startUploadtype(I)V
.end method

.method public abstract switchToRecoveryMode()V
.end method

.method public abstract syncEhu2IcmACK(II)V
.end method

.method public abstract syncEhuFirstIsOK(II)V
.end method

.method public abstract syncEhuMUState(II)V
.end method

.method public abstract syncEhuNaviDirection(I)V
.end method

.method public abstract syncEhuPhone2IcmSyncCallTime(I)V
.end method

.method public abstract syncEhuPhone2IcmSyncCallTimed(IZ)V
.end method

.method public abstract syncEhuPhone2IcmSyncName(Ljava/lang/String;Z)V
.end method

.method public abstract syncEhuReqMediaRadioChange(I)V
.end method

.method public abstract syncEhuSetIPKMusic(I)V
.end method

.method public abstract syncEhuSetTheme(I)V
.end method

.method public abstract syncEhuSetTimeFormat(I)V
.end method

.method public abstract syncEhuStatus2IcmPushCampByNavi(I)V
.end method

.method public abstract syncEhuStatus2IcmPushRestByNavi(I)V
.end method

.method public abstract syncEhuStaus2IcmAudioReady(I)V
.end method

.method public abstract syncEhuStaus2IcmBTContactsRecordStatus(I)V
.end method

.method public abstract syncEhuStaus2IcmBTStatus(I)V
.end method

.method public abstract syncEhuStaus2IcmMediaEvent()V
.end method

.method public abstract syncEhuStaus2IcmMediaReady(I)V
.end method

.method public abstract syncEhuStaus2IcmMediaTypeReady(II)V
.end method

.method public abstract syncEhuStaus2IcmNaviEvents()V
.end method

.method public abstract syncEhuStaus2IcmNaviReady(I)V
.end method

.method public abstract syncEhuStaus2IcmPhoneStatus(I)V
.end method

.method public abstract syncEhuStaus2IcmPushNaviByDirection(II)V
.end method

.method public abstract syncEhuStaus2IcmPushNaviVideoEvent()V
.end method

.method public abstract syncEhuStaus2IcmStartNaviEvent()V
.end method

.method public abstract syncEhuStaus2IcmSyncingVideo(I)V
.end method

.method public abstract syncEhuStaus2IcmSyncingVideoType(II)V
.end method

.method public abstract syncEhuStaus2IcmSyncingVideoTypeArea(III)V
.end method

.method public abstract syncEhuStaus2IcmUpdatePkgTransferStatus(I)V
.end method

.method public abstract syncICMShowModeType(II)V
.end method

.method public abstract syncICMVehicleState(I)V
.end method

.method public abstract syncMenuCardInfo(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Lcom/qinggan/ipksync/CardInfo;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract syncNaviStatus(I)V
.end method

.method public abstract syncUploadFile(IIII)V
.end method
