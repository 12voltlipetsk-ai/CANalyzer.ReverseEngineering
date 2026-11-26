.class public Lcom/qinggan/vehicle/VehicleConfigManager;
.super Ljava/lang/Object;
.source "VehicleConfigManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;
    }
.end annotation


# static fields
.field private static final CAMERA_TYPE:Ljava/lang/String; = "camera"

.field private static final CAR_TYPE:Ljava/lang/String; = "cartype"

.field public static final CAR_TYPE_C35DB:Ljava/lang/String; = "C35DB"

.field public static final CAR_TYPE_C62:Ljava/lang/String; = "c3005h"

.field public static final CAR_TYPE_CS75:Ljava/lang/String; = "f0705"

.field public static final CAR_TYPE_C_40_DB:Ljava/lang/String; = "C40DB"

.field public static final CAR_TYPE_C_51:Ljava/lang/String; = "c_51"

.field public static final CAR_TYPE_C_51_BJ:Ljava/lang/String; = "e0001h"

.field public static final CAR_TYPE_C_53_F:Ljava/lang/String; = "c3004h"

.field public static final CAR_TYPE_D0001:Ljava/lang/String; = "d0001"

.field public static final CAR_TYPE_D0002:Ljava/lang/String; = "d0002"

.field public static final CAR_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final CAR_TYPE_H56:Ljava/lang/String; = "f0503h"

.field public static final CAR_TYPE_H56A:Ljava/lang/String; = "f0505h"

.field public static final CAR_TYPE_H6N:Ljava/lang/String; = "w0001h"

.field public static final CAR_TYPE_H97:Ljava/lang/String; = "f0501h"

.field public static final CAR_TYPE_H97A:Ljava/lang/String; = "f0506h"

.field public static final CAR_TYPE_H97C:Ljava/lang/String; = "f6802h"

.field public static final CAR_TYPE_NL_3:Ljava/lang/String; = "nl_3+"

.field public static final CAR_TYPE_NL_3A:Ljava/lang/String; = "nl_3a"

.field public static final CAR_TYPE_Q3:Ljava/lang/String; = "by1706"

.field public static final CAR_TYPE_X37:Ljava/lang/String; = "f0307h"

.field private static final CONFIG_FILE_NAME:Ljava/lang/String; = "vehicle.xml"

.field private static final DEFAULT_CAR_TYPE:Ljava/lang/String; = "default"

.field private static final NAME:Ljava/lang/String; = "name"

.field private static final SHUTDOWN:Ljava/lang/String; = "shutdown"

.field public static final SHUTDOWN_MODE_ACC_OFF:I = 0x1

.field public static final SHUTDOWN_MODE_DOOR_OFF:I = 0x0

.field public static final TAG:Ljava/lang/String; = "VehicleConfigManager"

.field private static final VALUE:Ljava/lang/String; = "value"


# instance fields
.field private mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

.field private mCarType:Ljava/lang/String;

.field private mInitCarSignalManagerListener:Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

.field private mVehicleConfigList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/qinggan/vehicle/VehicleConfig;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;

    .line 97
    const-string v0, "default"

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/qinggan/vehicle/VehicleConfigManager$1;

    invoke-direct {v0, p0}, Lcom/qinggan/vehicle/VehicleConfigManager$1;-><init>(Lcom/qinggan/vehicle/VehicleConfigManager;)V

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mInitCarSignalManagerListener:Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .line 107
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    if-nez v0, :cond_24

    .line 108
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mInitCarSignalManagerListener:Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    invoke-static {p1, v0}, Lcom/qinggan/carsignal/CarSignalManager;->getInstance(Landroid/content/Context;Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;)Lcom/qinggan/carsignal/CarSignalManager;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 111
    :cond_24
    invoke-direct {p0}, Lcom/qinggan/vehicle/VehicleConfigManager;->loadConfigData()V

    .line 112
    return-void
.end method

.method public constructor <init>(Lcom/qinggan/carsignal/CarSignalManager;)V
    .registers 3
    .param p1, "carSignalManager"    # Lcom/qinggan/carsignal/CarSignalManager;

    .prologue
    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 96
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;

    .line 97
    const-string v0, "default"

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    .line 225
    new-instance v0, Lcom/qinggan/vehicle/VehicleConfigManager$1;

    invoke-direct {v0, p0}, Lcom/qinggan/vehicle/VehicleConfigManager$1;-><init>(Lcom/qinggan/vehicle/VehicleConfigManager;)V

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mInitCarSignalManagerListener:Lcom/qinggan/carsignal/CarSignalManager$CarSignalManagerCallback;

    .line 120
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    .line 121
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    if-eqz v0, :cond_26

    .line 122
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    invoke-virtual {v0}, Lcom/qinggan/carsignal/CarSignalManager;->getCarType()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    .line 125
    :cond_26
    invoke-direct {p0}, Lcom/qinggan/vehicle/VehicleConfigManager;->loadConfigData()V

    .line 126
    return-void
.end method

.method static synthetic access$000(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/util/List;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/vehicle/VehicleConfigManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/qinggan/vehicle/VehicleConfigManager;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/vehicle/VehicleConfigManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/qinggan/vehicle/VehicleConfigManager;Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/vehicle/VehicleConfigManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 55
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$200(Lcom/qinggan/vehicle/VehicleConfigManager;)Lcom/qinggan/carsignal/CarSignalManager;
    .registers 2
    .param p0, "x0"    # Lcom/qinggan/vehicle/VehicleConfigManager;

    .prologue
    .line 55
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarSignalManager:Lcom/qinggan/carsignal/CarSignalManager;

    return-object v0
.end method

.method private loadConfigData()V
    .registers 5

    .prologue
    .line 163
    const-string v1, "VehicleConfigManager"

    const-string v2, "#### load vehicle config ####"

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 164
    const-string v1, "vehicle.xml"

    invoke-static {v1}, Lcom/qinggan/common/QGConfig;->getConfigFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    .local v0, "configFile":Ljava/lang/String;
    if-eqz v0, :cond_2a

    .line 166
    const-string v1, "VehicleConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vehicle config file Path:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    invoke-direct {p0, v0}, Lcom/qinggan/vehicle/VehicleConfigManager;->parseConfigFile(Ljava/lang/String;)V

    .line 169
    :cond_2a
    return-void
.end method

.method private parseConfigFile(Ljava/lang/String;)V
    .registers 10
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 173
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v3

    .line 174
    .local v3, "spf":Ljavax/xml/parsers/SAXParserFactory;
    invoke-virtual {v3}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v2

    .line 175
    .local v2, "sp":Ljavax/xml/parsers/SAXParser;
    invoke-virtual {v2}, Ljavax/xml/parsers/SAXParser;->getXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v4

    .line 176
    .local v4, "xr":Lorg/xml/sax/XMLReader;
    new-instance v1, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;

    invoke-direct {v1, p0}, Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;-><init>(Lcom/qinggan/vehicle/VehicleConfigManager;)V

    .line 177
    .local v1, "handler":Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;
    invoke-interface {v4, v1}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 178
    new-instance v5, Lorg/xml/sax/InputSource;

    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v6}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v4, v5}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    .line 182
    .end local v1    # "handler":Lcom/qinggan/vehicle/VehicleConfigManager$ConfigFileHandler;
    .end local v2    # "sp":Ljavax/xml/parsers/SAXParser;
    .end local v3    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    .end local v4    # "xr":Lorg/xml/sax/XMLReader;
    :goto_21
    return-void

    .line 179
    :catch_22
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    const-string v5, "VehicleConfigManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "parse config file exception: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_21
.end method


# virtual methods
.method public getCarType()Ljava/lang/String;
    .registers 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    return-object v0
.end method

.method public getReverseCameraType()Lcom/qinggan/vehicle/ReverseCameraType;
    .registers 5

    .prologue
    .line 150
    iget-object v1, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/vehicle/VehicleConfig;

    .line 151
    .local v0, "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    iget-object v2, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/qinggan/vehicle/VehicleConfig;->getCarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 152
    invoke-virtual {v0}, Lcom/qinggan/vehicle/VehicleConfig;->getCameraType()Lcom/qinggan/vehicle/ReverseCameraType;

    move-result-object v1

    .line 159
    .end local v0    # "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    :goto_22
    return-object v1

    .line 156
    :cond_23
    const-string v1, "VehicleConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not find the match car type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return default reverse camera type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    sget-object v1, Lcom/qinggan/vehicle/ReverseCameraType;->Normal:Lcom/qinggan/vehicle/ReverseCameraType;

    goto :goto_22
.end method

.method public getShutDownMode()I
    .registers 5

    .prologue
    .line 137
    iget-object v1, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mVehicleConfigList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qinggan/vehicle/VehicleConfig;

    .line 138
    .local v0, "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    iget-object v2, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/qinggan/vehicle/VehicleConfig;->getCarType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 139
    invoke-virtual {v0}, Lcom/qinggan/vehicle/VehicleConfig;->getShutDownMode()I

    move-result v1

    .line 146
    .end local v0    # "cfg":Lcom/qinggan/vehicle/VehicleConfig;
    :goto_22
    return v1

    .line 143
    :cond_23
    const-string v1, "VehicleConfigManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "not find the match car type : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", return default shutdown mode ACC OFF"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/qinggan/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    const/4 v1, 0x1

    goto :goto_22
.end method

.method public setCarType(Ljava/lang/String;)V
    .registers 2
    .param p1, "carType"    # Ljava/lang/String;

    .prologue
    .line 129
    iput-object p1, p0, Lcom/qinggan/vehicle/VehicleConfigManager;->mCarType:Ljava/lang/String;

    .line 130
    return-void
.end method
