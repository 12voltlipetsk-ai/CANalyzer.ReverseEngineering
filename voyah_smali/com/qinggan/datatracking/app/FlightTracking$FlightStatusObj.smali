.class public Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;
.super Ljava/lang/Object;
.source "FlightTracking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/datatracking/app/FlightTracking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FlightStatusObj"
.end annotation


# instance fields
.field private airlinecode:Ljava/lang/String;

.field private airlinename:Ljava/lang/String;

.field private alreadyflying:Ljava/lang/String;

.field private alternateairport:Ljava/lang/String;

.field private alternatedate:Ljava/lang/String;

.field private alternatestatus:Ljava/lang/String;

.field private alternatetimezone:Ljava/lang/String;

.field private ata:Ljava/lang/String;

.field private atd:Ljava/lang/String;

.field private carousel:Ljava/lang/String;

.field private ckicounter:Ljava/lang/String;

.field private currentflydistance:Ljava/lang/String;

.field private currentflytime:Ljava/lang/String;

.field private deptairportcode:Ljava/lang/String;

.field private deptairportname:Ljava/lang/String;

.field private deptalternatetime:Ljava/lang/String;

.field private deptcity:Ljava/lang/String;

.field private deptcitycode:Ljava/lang/String;

.field private deptdelaytime:Ljava/lang/String;

.field private deptflightdate:Ljava/lang/String;

.field private deptgate:Ljava/lang/String;

.field private depttemp:Ljava/lang/String;

.field private deptterminal:Ljava/lang/String;

.field private deptweather:Ljava/lang/String;

.field private destairportcode:Ljava/lang/String;

.field private destairportname:Ljava/lang/String;

.field private destalternatetime:Ljava/lang/String;

.field private destcity:Ljava/lang/String;

.field private destcitycode:Ljava/lang/String;

.field private destdelaytime:Ljava/lang/String;

.field private destexit:Ljava/lang/String;

.field private destflightdate:Ljava/lang/String;

.field private desttemp:Ljava/lang/String;

.field private destterminal:Ljava/lang/String;

.field private destweather:Ljava/lang/String;

.field private distancedesc:Ljava/lang/String;

.field private eta:Ljava/lang/String;

.field private etd:Ljava/lang/String;

.field private flightno:Ljava/lang/String;

.field private flightnolist:Ljava/lang/String;

.field private flightstatus:Ljava/lang/String;

.field private flightstatuslist:Ljava/lang/String;

.field private flightstopinfolist:Ljava/lang/String;

.field private flydistance:Ljava/lang/String;

.field private flymaptitle:Ljava/lang/String;

.field private flyratio:Ljava/lang/String;

.field private flytime:Ljava/lang/String;

.field private flytimedesc:Ljava/lang/String;

.field private hintcontent:Ljava/lang/String;

.field private hinttitle:Ljava/lang/String;

.field private hostairline:Ljava/lang/String;

.field private hostflightdesc:Ljava/lang/String;

.field private ishaveflightstop:Ljava/lang/String;

.field private isshowdeptgatemap:Ljava/lang/String;

.field private landpos:Ljava/lang/String;

.field private planeregno:Ljava/lang/String;

.field private planetype:Ljava/lang/String;

.field private predeptcity:Ljava/lang/String;

.field private predeptdelaytime:Ljava/lang/String;

.field private predestcity:Ljava/lang/String;

.field private predestdelaytime:Ljava/lang/String;

.field private preflightno:Ljava/lang/String;

.field private preflightstatus:Ljava/lang/String;

.field private preflightstatusdesc:Ljava/lang/String;

.field private punctualityrate:Ljava/lang/String;

.field private sta:Ljava/lang/String;

.field private std:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .prologue
    .line 323
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAirlinecode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 508
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->airlinecode:Ljava/lang/String;

    return-object v0
.end method

.method public getAirlinename()Ljava/lang/String;
    .registers 2

    .prologue
    .line 516
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->airlinename:Ljava/lang/String;

    return-object v0
.end method

.method public getAlreadyflying()Ljava/lang/String;
    .registers 2

    .prologue
    .line 524
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alreadyflying:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternateairport()Ljava/lang/String;
    .registers 2

    .prologue
    .line 532
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternateairport:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternatedate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 540
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternatedate:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternatestatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 548
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternatestatus:Ljava/lang/String;

    return-object v0
.end method

.method public getAlternatetimezone()Ljava/lang/String;
    .registers 2

    .prologue
    .line 556
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternatetimezone:Ljava/lang/String;

    return-object v0
.end method

.method public getAta()Ljava/lang/String;
    .registers 2

    .prologue
    .line 564
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->ata:Ljava/lang/String;

    return-object v0
.end method

.method public getAtd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 572
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->atd:Ljava/lang/String;

    return-object v0
.end method

.method public getCarousel()Ljava/lang/String;
    .registers 2

    .prologue
    .line 580
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->carousel:Ljava/lang/String;

    return-object v0
.end method

.method public getCkicounter()Ljava/lang/String;
    .registers 2

    .prologue
    .line 588
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->ckicounter:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentflydistance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 596
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->currentflydistance:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentflytime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 604
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->currentflytime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptairportcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 460
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptairportcode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptairportname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 612
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptairportname:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptalternatetime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 620
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptalternatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptcity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 628
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptcity:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptcitycode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 636
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptcitycode:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptdelaytime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 644
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptdelaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptflightdate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptflightdate:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptgate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 652
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptgate:Ljava/lang/String;

    return-object v0
.end method

.method public getDepttemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 660
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->depttemp:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptterminal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptterminal:Ljava/lang/String;

    return-object v0
.end method

.method public getDeptweather()Ljava/lang/String;
    .registers 2

    .prologue
    .line 676
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptweather:Ljava/lang/String;

    return-object v0
.end method

.method public getDestairportcode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 476
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destairportcode:Ljava/lang/String;

    return-object v0
.end method

.method public getDestairportname()Ljava/lang/String;
    .registers 2

    .prologue
    .line 684
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destairportname:Ljava/lang/String;

    return-object v0
.end method

.method public getDestalternatetime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 692
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destalternatetime:Ljava/lang/String;

    return-object v0
.end method

.method public getDestcity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destcity:Ljava/lang/String;

    return-object v0
.end method

.method public getDestcitycode()Ljava/lang/String;
    .registers 2

    .prologue
    .line 708
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destcitycode:Ljava/lang/String;

    return-object v0
.end method

.method public getDestdelaytime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 716
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destdelaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getDestexit()Ljava/lang/String;
    .registers 2

    .prologue
    .line 724
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destexit:Ljava/lang/String;

    return-object v0
.end method

.method public getDestflightdate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 732
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destflightdate:Ljava/lang/String;

    return-object v0
.end method

.method public getDesttemp()Ljava/lang/String;
    .registers 2

    .prologue
    .line 740
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->desttemp:Ljava/lang/String;

    return-object v0
.end method

.method public getDestterminal()Ljava/lang/String;
    .registers 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destterminal:Ljava/lang/String;

    return-object v0
.end method

.method public getDestweather()Ljava/lang/String;
    .registers 2

    .prologue
    .line 756
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destweather:Ljava/lang/String;

    return-object v0
.end method

.method public getDistancedesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->distancedesc:Ljava/lang/String;

    return-object v0
.end method

.method public getEta()Ljava/lang/String;
    .registers 2

    .prologue
    .line 772
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->eta:Ljava/lang/String;

    return-object v0
.end method

.method public getEtd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 780
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->etd:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightno()Ljava/lang/String;
    .registers 2

    .prologue
    .line 484
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightno:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightnolist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 492
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightnolist:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightstatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 788
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightstatus:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightstatuslist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 500
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightstatuslist:Ljava/lang/String;

    return-object v0
.end method

.method public getFlightstopinfolist()Ljava/lang/String;
    .registers 2

    .prologue
    .line 796
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightstopinfolist:Ljava/lang/String;

    return-object v0
.end method

.method public getFlydistance()Ljava/lang/String;
    .registers 2

    .prologue
    .line 804
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flydistance:Ljava/lang/String;

    return-object v0
.end method

.method public getFlymaptitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 812
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flymaptitle:Ljava/lang/String;

    return-object v0
.end method

.method public getFlyratio()Ljava/lang/String;
    .registers 2

    .prologue
    .line 820
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flyratio:Ljava/lang/String;

    return-object v0
.end method

.method public getFlytime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 828
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flytime:Ljava/lang/String;

    return-object v0
.end method

.method public getFlytimedesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 836
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flytimedesc:Ljava/lang/String;

    return-object v0
.end method

.method public getHintcontent()Ljava/lang/String;
    .registers 2

    .prologue
    .line 844
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hintcontent:Ljava/lang/String;

    return-object v0
.end method

.method public getHinttitle()Ljava/lang/String;
    .registers 2

    .prologue
    .line 852
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hinttitle:Ljava/lang/String;

    return-object v0
.end method

.method public getHostairline()Ljava/lang/String;
    .registers 2

    .prologue
    .line 860
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hostairline:Ljava/lang/String;

    return-object v0
.end method

.method public getHostflightdesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 868
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hostflightdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getIshaveflightstop()Ljava/lang/String;
    .registers 2

    .prologue
    .line 876
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->ishaveflightstop:Ljava/lang/String;

    return-object v0
.end method

.method public getIsshowdeptgatemap()Ljava/lang/String;
    .registers 2

    .prologue
    .line 884
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->isshowdeptgatemap:Ljava/lang/String;

    return-object v0
.end method

.method public getLandpos()Ljava/lang/String;
    .registers 2

    .prologue
    .line 892
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->landpos:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaneregno()Ljava/lang/String;
    .registers 2

    .prologue
    .line 900
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->planeregno:Ljava/lang/String;

    return-object v0
.end method

.method public getPlanetype()Ljava/lang/String;
    .registers 2

    .prologue
    .line 908
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->planetype:Ljava/lang/String;

    return-object v0
.end method

.method public getPredeptcity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 916
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predeptcity:Ljava/lang/String;

    return-object v0
.end method

.method public getPredeptdelaytime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 924
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predeptdelaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getPredestcity()Ljava/lang/String;
    .registers 2

    .prologue
    .line 932
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predestcity:Ljava/lang/String;

    return-object v0
.end method

.method public getPredestdelaytime()Ljava/lang/String;
    .registers 2

    .prologue
    .line 940
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predestdelaytime:Ljava/lang/String;

    return-object v0
.end method

.method public getPreflightno()Ljava/lang/String;
    .registers 2

    .prologue
    .line 948
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->preflightno:Ljava/lang/String;

    return-object v0
.end method

.method public getPreflightstatus()Ljava/lang/String;
    .registers 2

    .prologue
    .line 956
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->preflightstatus:Ljava/lang/String;

    return-object v0
.end method

.method public getPreflightstatusdesc()Ljava/lang/String;
    .registers 2

    .prologue
    .line 964
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->preflightstatusdesc:Ljava/lang/String;

    return-object v0
.end method

.method public getPunctualityrate()Ljava/lang/String;
    .registers 2

    .prologue
    .line 972
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->punctualityrate:Ljava/lang/String;

    return-object v0
.end method

.method public getSta()Ljava/lang/String;
    .registers 2

    .prologue
    .line 980
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->sta:Ljava/lang/String;

    return-object v0
.end method

.method public getStd()Ljava/lang/String;
    .registers 2

    .prologue
    .line 988
    iget-object v0, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->std:Ljava/lang/String;

    return-object v0
.end method

.method public setAirlinecode(Ljava/lang/String;)V
    .registers 2
    .param p1, "airlinecode"    # Ljava/lang/String;

    .prologue
    .line 512
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->airlinecode:Ljava/lang/String;

    .line 513
    return-void
.end method

.method public setAirlinename(Ljava/lang/String;)V
    .registers 2
    .param p1, "airlinename"    # Ljava/lang/String;

    .prologue
    .line 520
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->airlinename:Ljava/lang/String;

    .line 521
    return-void
.end method

.method public setAlreadyflying(Ljava/lang/String;)V
    .registers 2
    .param p1, "alreadyflying"    # Ljava/lang/String;

    .prologue
    .line 528
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alreadyflying:Ljava/lang/String;

    .line 529
    return-void
.end method

.method public setAlternateairport(Ljava/lang/String;)V
    .registers 2
    .param p1, "alternateairport"    # Ljava/lang/String;

    .prologue
    .line 536
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternateairport:Ljava/lang/String;

    .line 537
    return-void
.end method

.method public setAlternatedate(Ljava/lang/String;)V
    .registers 2
    .param p1, "alternatedate"    # Ljava/lang/String;

    .prologue
    .line 544
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternatedate:Ljava/lang/String;

    .line 545
    return-void
.end method

.method public setAlternatestatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "alternatestatus"    # Ljava/lang/String;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternatestatus:Ljava/lang/String;

    .line 553
    return-void
.end method

.method public setAlternatetimezone(Ljava/lang/String;)V
    .registers 2
    .param p1, "alternatetimezone"    # Ljava/lang/String;

    .prologue
    .line 560
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->alternatetimezone:Ljava/lang/String;

    .line 561
    return-void
.end method

.method public setAta(Ljava/lang/String;)V
    .registers 2
    .param p1, "ata"    # Ljava/lang/String;

    .prologue
    .line 568
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->ata:Ljava/lang/String;

    .line 569
    return-void
.end method

.method public setAtd(Ljava/lang/String;)V
    .registers 2
    .param p1, "atd"    # Ljava/lang/String;

    .prologue
    .line 576
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->atd:Ljava/lang/String;

    .line 577
    return-void
.end method

.method public setCarousel(Ljava/lang/String;)V
    .registers 2
    .param p1, "carousel"    # Ljava/lang/String;

    .prologue
    .line 584
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->carousel:Ljava/lang/String;

    .line 585
    return-void
.end method

.method public setCkicounter(Ljava/lang/String;)V
    .registers 2
    .param p1, "ckicounter"    # Ljava/lang/String;

    .prologue
    .line 592
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->ckicounter:Ljava/lang/String;

    .line 593
    return-void
.end method

.method public setCurrentflydistance(Ljava/lang/String;)V
    .registers 2
    .param p1, "currentflydistance"    # Ljava/lang/String;

    .prologue
    .line 600
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->currentflydistance:Ljava/lang/String;

    .line 601
    return-void
.end method

.method public setCurrentflytime(Ljava/lang/String;)V
    .registers 2
    .param p1, "currentflytime"    # Ljava/lang/String;

    .prologue
    .line 608
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->currentflytime:Ljava/lang/String;

    .line 609
    return-void
.end method

.method public setDeptairportcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptairportcode"    # Ljava/lang/String;

    .prologue
    .line 464
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptairportcode:Ljava/lang/String;

    .line 465
    return-void
.end method

.method public setDeptairportname(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptairportname"    # Ljava/lang/String;

    .prologue
    .line 616
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptairportname:Ljava/lang/String;

    .line 617
    return-void
.end method

.method public setDeptalternatetime(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptalternatetime"    # Ljava/lang/String;

    .prologue
    .line 624
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptalternatetime:Ljava/lang/String;

    .line 625
    return-void
.end method

.method public setDeptcity(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptcity"    # Ljava/lang/String;

    .prologue
    .line 632
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptcity:Ljava/lang/String;

    .line 633
    return-void
.end method

.method public setDeptcitycode(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptcitycode"    # Ljava/lang/String;

    .prologue
    .line 640
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptcitycode:Ljava/lang/String;

    .line 641
    return-void
.end method

.method public setDeptdelaytime(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptdelaytime"    # Ljava/lang/String;

    .prologue
    .line 648
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptdelaytime:Ljava/lang/String;

    .line 649
    return-void
.end method

.method public setDeptflightdate(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptflightdate"    # Ljava/lang/String;

    .prologue
    .line 472
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptflightdate:Ljava/lang/String;

    .line 473
    return-void
.end method

.method public setDeptgate(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptgate"    # Ljava/lang/String;

    .prologue
    .line 656
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptgate:Ljava/lang/String;

    .line 657
    return-void
.end method

.method public setDepttemp(Ljava/lang/String;)V
    .registers 2
    .param p1, "depttemp"    # Ljava/lang/String;

    .prologue
    .line 664
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->depttemp:Ljava/lang/String;

    .line 665
    return-void
.end method

.method public setDeptterminal(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptterminal"    # Ljava/lang/String;

    .prologue
    .line 672
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptterminal:Ljava/lang/String;

    .line 673
    return-void
.end method

.method public setDeptweather(Ljava/lang/String;)V
    .registers 2
    .param p1, "deptweather"    # Ljava/lang/String;

    .prologue
    .line 680
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->deptweather:Ljava/lang/String;

    .line 681
    return-void
.end method

.method public setDestairportcode(Ljava/lang/String;)V
    .registers 2
    .param p1, "destairportcode"    # Ljava/lang/String;

    .prologue
    .line 480
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destairportcode:Ljava/lang/String;

    .line 481
    return-void
.end method

.method public setDestairportname(Ljava/lang/String;)V
    .registers 2
    .param p1, "destairportname"    # Ljava/lang/String;

    .prologue
    .line 688
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destairportname:Ljava/lang/String;

    .line 689
    return-void
.end method

.method public setDestalternatetime(Ljava/lang/String;)V
    .registers 2
    .param p1, "destalternatetime"    # Ljava/lang/String;

    .prologue
    .line 696
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destalternatetime:Ljava/lang/String;

    .line 697
    return-void
.end method

.method public setDestcity(Ljava/lang/String;)V
    .registers 2
    .param p1, "destcity"    # Ljava/lang/String;

    .prologue
    .line 704
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destcity:Ljava/lang/String;

    .line 705
    return-void
.end method

.method public setDestcitycode(Ljava/lang/String;)V
    .registers 2
    .param p1, "destcitycode"    # Ljava/lang/String;

    .prologue
    .line 712
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destcitycode:Ljava/lang/String;

    .line 713
    return-void
.end method

.method public setDestdelaytime(Ljava/lang/String;)V
    .registers 2
    .param p1, "destdelaytime"    # Ljava/lang/String;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destdelaytime:Ljava/lang/String;

    .line 721
    return-void
.end method

.method public setDestexit(Ljava/lang/String;)V
    .registers 2
    .param p1, "destexit"    # Ljava/lang/String;

    .prologue
    .line 728
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destexit:Ljava/lang/String;

    .line 729
    return-void
.end method

.method public setDestflightdate(Ljava/lang/String;)V
    .registers 2
    .param p1, "destflightdate"    # Ljava/lang/String;

    .prologue
    .line 736
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destflightdate:Ljava/lang/String;

    .line 737
    return-void
.end method

.method public setDesttemp(Ljava/lang/String;)V
    .registers 2
    .param p1, "desttemp"    # Ljava/lang/String;

    .prologue
    .line 744
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->desttemp:Ljava/lang/String;

    .line 745
    return-void
.end method

.method public setDestterminal(Ljava/lang/String;)V
    .registers 2
    .param p1, "destterminal"    # Ljava/lang/String;

    .prologue
    .line 752
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destterminal:Ljava/lang/String;

    .line 753
    return-void
.end method

.method public setDestweather(Ljava/lang/String;)V
    .registers 2
    .param p1, "destweather"    # Ljava/lang/String;

    .prologue
    .line 760
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->destweather:Ljava/lang/String;

    .line 761
    return-void
.end method

.method public setDistancedesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "distancedesc"    # Ljava/lang/String;

    .prologue
    .line 768
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->distancedesc:Ljava/lang/String;

    .line 769
    return-void
.end method

.method public setEta(Ljava/lang/String;)V
    .registers 2
    .param p1, "eta"    # Ljava/lang/String;

    .prologue
    .line 776
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->eta:Ljava/lang/String;

    .line 777
    return-void
.end method

.method public setEtd(Ljava/lang/String;)V
    .registers 2
    .param p1, "etd"    # Ljava/lang/String;

    .prologue
    .line 784
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->etd:Ljava/lang/String;

    .line 785
    return-void
.end method

.method public setFlightno(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightno"    # Ljava/lang/String;

    .prologue
    .line 488
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightno:Ljava/lang/String;

    .line 489
    return-void
.end method

.method public setFlightnolist(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightnolist"    # Ljava/lang/String;

    .prologue
    .line 496
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightnolist:Ljava/lang/String;

    .line 497
    return-void
.end method

.method public setFlightstatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightstatus"    # Ljava/lang/String;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightstatus:Ljava/lang/String;

    .line 793
    return-void
.end method

.method public setFlightstatuslist(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightstatuslist"    # Ljava/lang/String;

    .prologue
    .line 504
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightstatuslist:Ljava/lang/String;

    .line 505
    return-void
.end method

.method public setFlightstopinfolist(Ljava/lang/String;)V
    .registers 2
    .param p1, "flightstopinfolist"    # Ljava/lang/String;

    .prologue
    .line 800
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flightstopinfolist:Ljava/lang/String;

    .line 801
    return-void
.end method

.method public setFlydistance(Ljava/lang/String;)V
    .registers 2
    .param p1, "flydistance"    # Ljava/lang/String;

    .prologue
    .line 808
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flydistance:Ljava/lang/String;

    .line 809
    return-void
.end method

.method public setFlymaptitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "flymaptitle"    # Ljava/lang/String;

    .prologue
    .line 816
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flymaptitle:Ljava/lang/String;

    .line 817
    return-void
.end method

.method public setFlyratio(Ljava/lang/String;)V
    .registers 2
    .param p1, "flyratio"    # Ljava/lang/String;

    .prologue
    .line 824
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flyratio:Ljava/lang/String;

    .line 825
    return-void
.end method

.method public setFlytime(Ljava/lang/String;)V
    .registers 2
    .param p1, "flytime"    # Ljava/lang/String;

    .prologue
    .line 832
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flytime:Ljava/lang/String;

    .line 833
    return-void
.end method

.method public setFlytimedesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "flytimedesc"    # Ljava/lang/String;

    .prologue
    .line 840
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->flytimedesc:Ljava/lang/String;

    .line 841
    return-void
.end method

.method public setHintcontent(Ljava/lang/String;)V
    .registers 2
    .param p1, "hintcontent"    # Ljava/lang/String;

    .prologue
    .line 848
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hintcontent:Ljava/lang/String;

    .line 849
    return-void
.end method

.method public setHinttitle(Ljava/lang/String;)V
    .registers 2
    .param p1, "hinttitle"    # Ljava/lang/String;

    .prologue
    .line 856
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hinttitle:Ljava/lang/String;

    .line 857
    return-void
.end method

.method public setHostairline(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostairline"    # Ljava/lang/String;

    .prologue
    .line 864
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hostairline:Ljava/lang/String;

    .line 865
    return-void
.end method

.method public setHostflightdesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "hostflightdesc"    # Ljava/lang/String;

    .prologue
    .line 872
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->hostflightdesc:Ljava/lang/String;

    .line 873
    return-void
.end method

.method public setIshaveflightstop(Ljava/lang/String;)V
    .registers 2
    .param p1, "ishaveflightstop"    # Ljava/lang/String;

    .prologue
    .line 880
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->ishaveflightstop:Ljava/lang/String;

    .line 881
    return-void
.end method

.method public setIsshowdeptgatemap(Ljava/lang/String;)V
    .registers 2
    .param p1, "isshowdeptgatemap"    # Ljava/lang/String;

    .prologue
    .line 888
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->isshowdeptgatemap:Ljava/lang/String;

    .line 889
    return-void
.end method

.method public setLandpos(Ljava/lang/String;)V
    .registers 2
    .param p1, "landpos"    # Ljava/lang/String;

    .prologue
    .line 896
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->landpos:Ljava/lang/String;

    .line 897
    return-void
.end method

.method public setPlaneregno(Ljava/lang/String;)V
    .registers 2
    .param p1, "planeregno"    # Ljava/lang/String;

    .prologue
    .line 904
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->planeregno:Ljava/lang/String;

    .line 905
    return-void
.end method

.method public setPlanetype(Ljava/lang/String;)V
    .registers 2
    .param p1, "planetype"    # Ljava/lang/String;

    .prologue
    .line 912
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->planetype:Ljava/lang/String;

    .line 913
    return-void
.end method

.method public setPredeptcity(Ljava/lang/String;)V
    .registers 2
    .param p1, "predeptcity"    # Ljava/lang/String;

    .prologue
    .line 920
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predeptcity:Ljava/lang/String;

    .line 921
    return-void
.end method

.method public setPredeptdelaytime(Ljava/lang/String;)V
    .registers 2
    .param p1, "predeptdelaytime"    # Ljava/lang/String;

    .prologue
    .line 928
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predeptdelaytime:Ljava/lang/String;

    .line 929
    return-void
.end method

.method public setPredestcity(Ljava/lang/String;)V
    .registers 2
    .param p1, "predestcity"    # Ljava/lang/String;

    .prologue
    .line 936
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predestcity:Ljava/lang/String;

    .line 937
    return-void
.end method

.method public setPredestdelaytime(Ljava/lang/String;)V
    .registers 2
    .param p1, "predestdelaytime"    # Ljava/lang/String;

    .prologue
    .line 944
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->predestdelaytime:Ljava/lang/String;

    .line 945
    return-void
.end method

.method public setPreflightno(Ljava/lang/String;)V
    .registers 2
    .param p1, "preflightno"    # Ljava/lang/String;

    .prologue
    .line 952
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->preflightno:Ljava/lang/String;

    .line 953
    return-void
.end method

.method public setPreflightstatus(Ljava/lang/String;)V
    .registers 2
    .param p1, "preflightstatus"    # Ljava/lang/String;

    .prologue
    .line 960
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->preflightstatus:Ljava/lang/String;

    .line 961
    return-void
.end method

.method public setPreflightstatusdesc(Ljava/lang/String;)V
    .registers 2
    .param p1, "preflightstatusdesc"    # Ljava/lang/String;

    .prologue
    .line 968
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->preflightstatusdesc:Ljava/lang/String;

    .line 969
    return-void
.end method

.method public setPunctualityrate(Ljava/lang/String;)V
    .registers 2
    .param p1, "punctualityrate"    # Ljava/lang/String;

    .prologue
    .line 976
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->punctualityrate:Ljava/lang/String;

    .line 977
    return-void
.end method

.method public setSta(Ljava/lang/String;)V
    .registers 2
    .param p1, "sta"    # Ljava/lang/String;

    .prologue
    .line 984
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->sta:Ljava/lang/String;

    .line 985
    return-void
.end method

.method public setStd(Ljava/lang/String;)V
    .registers 2
    .param p1, "std"    # Ljava/lang/String;

    .prologue
    .line 992
    iput-object p1, p0, Lcom/qinggan/datatracking/app/FlightTracking$FlightStatusObj;->std:Ljava/lang/String;

    .line 993
    return-void
.end method
