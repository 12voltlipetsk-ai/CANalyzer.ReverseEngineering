.class Lcom/qinggan/otaservice/EthernetUpgrade$5;
.super Lcom/qinggan/canbus/CanBusListener;
.source "EthernetUpgrade.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/otaservice/EthernetUpgrade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/otaservice/EthernetUpgrade;


# direct methods
.method constructor <init>(Lcom/qinggan/otaservice/EthernetUpgrade;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/otaservice/EthernetUpgrade;

    .prologue
    .line 766
    iput-object p1, p0, Lcom/qinggan/otaservice/EthernetUpgrade$5;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    invoke-direct {p0}, Lcom/qinggan/canbus/CanBusListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onVehicleStateChanged(Lcom/qinggan/canbus/VehicleState;I)V
    .registers 4
    .param p1, "vehicle"    # Lcom/qinggan/canbus/VehicleState;
    .param p2, "state"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 770
    sget-object v0, Lcom/qinggan/canbus/VehicleState;->TBOX_VEHICLE_MODE:Lcom/qinggan/canbus/VehicleState;

    if-ne v0, p1, :cond_9

    .line 771
    iget-object v0, p0, Lcom/qinggan/otaservice/EthernetUpgrade$5;->this$0:Lcom/qinggan/otaservice/EthernetUpgrade;

    # invokes: Lcom/qinggan/otaservice/EthernetUpgrade;->checkOTAMode()V
    invoke-static {v0}, Lcom/qinggan/otaservice/EthernetUpgrade;->access$1700(Lcom/qinggan/otaservice/EthernetUpgrade;)V

    .line 773
    :cond_9
    return-void
.end method
