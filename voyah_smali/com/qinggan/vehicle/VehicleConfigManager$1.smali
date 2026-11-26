.class Lcom/qinggan/vehicle/VehicleConfigManager$1;
.super Ljava/lang/Object;
.source "VehicleConfigManager.java"

# interfaces
.implements Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qinggan/vehicle/VehicleConfigManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/qinggan/vehicle/VehicleConfigManager;


# direct methods
.method constructor <init>(Lcom/qinggan/vehicle/VehicleConfigManager;)V
    .registers 2
    .param p1, "this$0"    # Lcom/qinggan/vehicle/VehicleConfigManager;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfigManager$1;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public IsServiceConnected(Z)V
    .registers 4
    .param p1, "isConnected"    # Z

    .prologue
    .line 228
    if-nez p1, :cond_a

    .line 229
    const-string v0, "VehicleConfigManager"

    const-string v1, "connect to CarSignalService failed"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    :cond_9
    :goto_9
    return-void

    .line 232
    :cond_a
    const-string v0, "VehicleConfigManager"

    const-string v1, "Connect to CarSignalService successful"

    invoke-static {v0, v1}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager$1;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    iget-object v1, p0, Lcom/qinggan/vehicle/VehicleConfigManager$1;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;
    invoke-static {v1}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$200(Lcom/qinggan/vehicle/VehicleConfigManager;)Lcom/qinggan/carsignal/CarSignalManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qinggan/carsignal/CarSignalManager;->getCarType()Ljava/lang/String;

    move-result-object v1

    # setter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$102(Lcom/qinggan/vehicle/VehicleConfigManager;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager$1;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    # getter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;
    invoke-static {v0}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$100(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_9

    .line 236
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager$1;->this$0:Lcom/qinggan/vehicle/VehicleConfigManager;

    const-string v1, "default"

    # setter for: Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;
    invoke-static {v0, v1}, Lcom/qinggan/vehicle/VehicleConfigManager;->access$102(Lcom/qinggan/vehicle/VehicleConfigManager;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_9
.end method
